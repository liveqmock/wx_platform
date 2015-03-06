package com.data.crawler.servicesImpl;

import java.util.List;

import com.data.crawler.dao.CrawlerResultDAO;
import com.data.crawler.db.model.CrawlerResultBean;
import com.data.crawler.services.CrawlerResultService;

public class CrawlerResultServiceImpl implements CrawlerResultService{

	public CrawlerResultDAO getCrawlerResultDAO() {
		return crawlerResultDAO;
	}

	public void setCrawlerResultDAO(CrawlerResultDAO crawlerResultDAO) {
		this.crawlerResultDAO = crawlerResultDAO;
	}

	public CrawlerResultDAO crawlerResultDAO;
	
	public boolean addNewCrawlerResult(CrawlerResultBean bean) {
		int result = 0;
		try{
			result = crawlerResultDAO.addNewCrawlerResult(bean);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result > 0;
	}

	public long selectMaxCrawlerResultWIDByUserType(CrawlerResultBean bean){
		return crawlerResultDAO.selectMaxCrawlerResultWIDByUserType(bean);

	}
	
	public long selectMaxCrawlerResultWIDByKeywordType(CrawlerResultBean bean){
		return crawlerResultDAO.selectMaxCrawlerResultWIDByKeywordType(bean);
	}
	
	public List<CrawlerResultBean> selectCrawlerResultByCondition(CrawlerResultBean bean){
		return crawlerResultDAO.selectCrawlerResultByCondition(bean);
	}
	
	public List<CrawlerResultBean> selectCrawlerResultByConditionExceptImgCondition(CrawlerResultBean bean){
		return crawlerResultDAO.selectCrawlerResultByConditionExceptImgCondition(bean);
	}
}
