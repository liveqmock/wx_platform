package com.data.crawler;

import java.util.List;
import java.util.TimerTask;
import weibo4j.Search;
import weibo4j.Timeline;
import weibo4j.model.Paging;
import weibo4j.model.Status;
import weibo4j.model.StatusWapper;
import weibo4j.model.WeiboException;
import weibo4j.util.WeiboConfig;
import com.data.crawler.db.model.CrawlerResultBean;
import com.data.crawler.db.model.CrawlerTaskForKeywordBean;
import com.data.crawler.db.model.CrawlerTaskForUserBean;
import com.data.crawler.services.CrawlerResultService;
import com.data.crawler.services.CrawlerTaskForKeywordService;
import com.data.crawler.services.CrawlerTaskForUserService;
import com.zhike.finals.Constat;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.StringUtils;

public class CrawlerExecute extends TimerTask{
	
	public static Object lock = null;
	public static boolean isRunning = false;
	
	public CrawlerExecute() {
		if(CrawlerExecute.lock == null)
		{
			CrawlerExecute.lock = new Object();
		}
	}
	
	@Override
	public void run() {
		if(CrawlerExecute.isRunning()) return;
		CrawlerExecute.setRunningStatus(true);
		//task start
		executeUserTask();
		executeKeywordTask();
		//task end
		CrawlerExecute.setRunningStatus(false);
	}
	
	public CrawlerResultBean convertStatusToCrawlerResultBean(Status status,int parentId,int type,int refId){
		CrawlerResultBean bean = new CrawlerResultBean();
		bean.setWid(Long.parseLong(status.getId()));
		bean.setUid(Long.parseLong(status.getUser().getId()));
		bean.setText(status.getText());
		bean.setThumb(status.getThumbnailPic());
		if(type == 0)//timeline
		{
			bean.setImg(status.getPic_urls());
		}
		else{
			//http://ww1.sinaimg.cn/thumbnail/4c55bf47jw1elx1ykz14jj20c82p87fm.jpg
			//http://ww2.sinaimg.cn/thumbnail/4c55bf47jw1elx1ykz14jj20c82p87fm.jpg
			//http://ww3.sinaimg.cn/thumbnail/4c55bf47jw1elx1ykz14jj20c82p87fm.jpg
			//http://ww4.sinaimg.cn/thumbnail/4c55bf47jw1elx1ykz14jj20c82p87fm.jpg
			//展现方式为 baseUrl ＋ name + ".jpg"
			//thumbnail
			//bmiddle
			bean.setImg(status.getPic_ids());
		}
		
		if(!StringUtils.isEmptyString(bean.getImg()) && bean.getImg().length() > 2){
			bean.setHasPic(1);
		}
		
		bean.setCreateTime(status.getCreatedAt().toString());
		bean.setType(type);
		bean.setGoodNumber(status.getRepostsCount());
		bean.setCommentNumber(status.getCommentsCount());
		bean.setCategoryId(parentId);
		bean.setRefId(refId);
		return bean;
	}
	
	public void executeUserTask(){
		CrawlerTaskForUserService userService = (CrawlerTaskForUserService) ApplicationContextFactory.getBean(Constat.CRAWLERTASKFORUSERSERVICE);
		List<CrawlerTaskForUserBean> userBeans = userService.selectAllCrawlerTaskForUser(null);		
	
		if(userBeans == null) return ;
		Paging paging = new Paging(1,100);

		CrawlerResultService resultService = (CrawlerResultService) ApplicationContextFactory.getBean(Constat.CRAWLERRESULTSERVICE);
		for(CrawlerTaskForUserBean bean : userBeans){
			Timeline timeline = new Timeline();
			timeline.setToken(WeiboConfig.getValue("tokenA"));
			StatusWapper statusWapper = null;
			//boolean bQuit = false;
			long maxId = (StringUtils.isEmptyString(bean.getSince_id()) ? 0 : Long.parseLong(bean.getSince_id()))+1;
			long since_id = maxId;
			do{
				try {
					statusWapper = timeline.getUserTimelineByUid(bean.getUid(), paging, 0, 0,String.valueOf(since_id));
					List<Status> list = statusWapper.getStatuses();
					for(Status status : list){
						long wId =  Long.parseLong(status.getId());
						maxId = (maxId > wId? maxId : wId);
						//insert into db
						boolean bInsert = resultService.addNewCrawlerResult(convertStatusToCrawlerResultBean(status, bean.getParentId(),0,bean.getId()));
						if(bInsert){
							System.out.println("successed!");
						}
						else{
							System.out.println("failed!");
						}
					}
				} 
				catch (WeiboException e) {
					statusWapper = null;
				}
				finally{
					paging.setPage(paging.getPage()+1);
				}				
			}while(statusWapper != null && statusWapper.getStatuses().size() >0);
			bean.setSince_id(String.valueOf(maxId));
			userService.updateSinceId(bean);
		}
	}
	
	public void executeKeywordTask(){
		CrawlerTaskForKeywordService keywordService = (CrawlerTaskForKeywordService) ApplicationContextFactory.getBean(Constat.CRAWLERTASKFORKEYWORDSERVICE);
		List<CrawlerTaskForKeywordBean> keywordBeans = keywordService.selectAllCrawlerTaskForKeyword(null);		
		if(keywordBeans == null) return ;
		Paging paging = new Paging(1,50);
		CrawlerResultService resultService = (CrawlerResultService) ApplicationContextFactory.getBean(Constat.CRAWLERRESULTSERVICE);
		for(CrawlerTaskForKeywordBean bean : keywordBeans){
			Search search = new Search();
			search.setToken(WeiboConfig.getValue("tokenA"));
			StatusWapper statusWapper = null;
			long startTime = bean.getStartTime() > 0 ? bean.getStartTime() - 1800: 0 ;
			do{
				try {
					statusWapper = search.searchStatuses(bean.getKeyword(), 0, 0, paging.getCount(), paging.getPage(), String.valueOf(startTime),true);
					List<Status> list = statusWapper.getStatuses();
					for(Status status : list){
						//insert into db
						boolean bInsert = resultService.addNewCrawlerResult(convertStatusToCrawlerResultBean(status, bean.getParentId(),1,bean.getId()));
						if(bInsert){
							System.out.println("successed!");
						}
						else{
							System.out.println("failed!");
						}
					}
				} 
				catch (WeiboException e) {
					statusWapper = null;
				}
				finally{
					paging.setPage(paging.getPage()+1);
				}
			}while(statusWapper != null && statusWapper.getStatuses().size() >0);
			bean.setStartTime(System.currentTimeMillis()/1000);
			keywordService.updateStartTime(bean);
		}
	}

	public static void setRunningStatus(boolean isRunning){
		synchronized (CrawlerExecute.lock) {
			CrawlerExecute.isRunning = isRunning;	
		}
	}

	public static boolean isRunning(){
		return CrawlerExecute.isRunning;
	}
}
