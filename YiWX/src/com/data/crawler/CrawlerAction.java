package com.data.crawler;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONObject;
import com.data.crawler.db.model.CrawlerCategoryBean;
import com.data.crawler.db.model.CrawlerResultBean;
import com.data.crawler.services.CrawlerCategoryService;
import com.data.crawler.services.CrawlerResultService;
import com.data.crawler.view.model.CrawlerQueryModel;
import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.StringUtils;

public class CrawlerAction extends ActionSupport{

	public CrawlerCategoryBean getCategoryBean() {
		return categoryBean;
	}

	public void setCategoryBean(CrawlerCategoryBean categoryBean) {
		this.categoryBean = categoryBean;
	}

	public CrawlerCategoryBean categoryBean ;
	
	public CrawlerQueryModel getQueryModel() {
		return queryModel;
	}

	public void setQueryModel(CrawlerQueryModel queryModel) {
		this.queryModel = queryModel;
	}

	public CrawlerQueryModel queryModel;
	
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public InputStream inputStream;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		return super.execute();
	}
	
	/*
	 * 获得所有得分类
	 */
	public String selectAllCategory() throws Exception{
		CrawlerCategoryService service = (CrawlerCategoryService) ApplicationContextFactory.getBean(Constat.CRAWLERCATEGORYSERVICE);
		List<CrawlerCategoryBean> list = service.selectAllCrawlerCategory(null);
		
		JSONArray jsonArray = new JSONArray();
		for(CrawlerCategoryBean bean : list){
			JSONObject json = new JSONObject();
			json.put("id", bean.getId());
			json.put("categoryName", bean.getCategoryName());
			json.put("weight", bean.getWeight());
			jsonArray.put(json);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", jsonArray);
		inputStream = new ByteArrayInputStream(jsonObject.toString().getBytes("UTF-8"));
		return SUCCESS;
	}
	
	private boolean validQueryParamters(CrawlerResultBean queryBean)
	{
		boolean bSuccessed = true;
		if(queryModel == null){
			bSuccessed = false;
		}
		/*else if(1 != 1){//StringUtils.isEmptyString(queryModel.categoryId)){
			bSuccessed = false;
		}
		//deal string val param
		if(bSuccessed){
			//queryBean.setCategoryId(Integer.parseInt(queryModel.getCategoryId()));
			
			//if(StringUtils.isEmptyString(queryModel.categoryId))
		}*/
		else{
			queryBean.setCategoryId(queryModel.getCategoryId());
			queryBean.setPage(queryModel.getPage());
			queryBean.setNumber(queryModel.getNumber() > 50 ? 50 : queryModel.getNumber());
			queryBean.setHasPic(queryModel.getHasPic() > 0 ? 1 : 0);
		}
		return bSuccessed;
	}
	
	public String selectCrawlerResultByConditionForAll() throws Exception{
		String result = "{status:0,error:'参数不正确!'}";
		CrawlerResultBean queryBean = new CrawlerResultBean();
		if(validQueryParamters(queryBean)){
			CrawlerResultService service = (CrawlerResultService) ApplicationContextFactory.getBean(Constat.CRAWLERRESULTSERVICE);
			List<CrawlerResultBean> results = service.selectCrawlerResultByConditionExceptImgCondition(queryBean);
			
			JSONArray jsonArray = new JSONArray();
			for(CrawlerResultBean bean : results){
				/*JSONObject json = new JSONObject();
				json.put("id", bean.getId());
				json.put("categoryName", bean.getCategoryName());
				json.put("weight", bean.getWeight());*/
				jsonArray.put(bean.toString());
			}
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("result", jsonArray);
			jsonObject.put("statues", 1);
			jsonObject.put("resultNumber", results.size());
			result = jsonObject.toString();
		}
		//分类
		
		//页码
		
		//条数
		
		//是否包含图片
		
		//order by wid,微博发布时间进行排序，逆序
		inputStream = new ByteArrayInputStream(result.toString().getBytes("UTF-8"));
		return SUCCESS;
	}

	/*
	 * 根据categoryID和page以及count获取微博数目
	 */
	public String selectCrawlerResultByCondition() throws Exception{
		String result = "{status:0,error:'参数不正确!'}";
		CrawlerResultBean queryBean = new CrawlerResultBean();
		if(validQueryParamters(queryBean)){
			CrawlerResultService service = (CrawlerResultService) ApplicationContextFactory.getBean(Constat.CRAWLERRESULTSERVICE);
			List<CrawlerResultBean> results = service.selectCrawlerResultByCondition(queryBean);
			
			JSONArray jsonArray = new JSONArray();
			for(CrawlerResultBean bean : results){
				/*JSONObject json = new JSONObject();
				json.put("id", bean.getId());
				json.put("categoryName", bean.getCategoryName());
				json.put("weight", bean.getWeight());*/
				jsonArray.put(bean.toString());
			}
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("result", jsonArray);
			jsonObject.put("statues", 1);
			jsonObject.put("resultNumber", results.size());
			result = jsonObject.toString();
		}
		//分类
		
		//页码
		
		//条数
		
		//是否包含图片
		
		//order by wid,微博发布时间进行排序，逆序
		inputStream = new ByteArrayInputStream(result.toString().getBytes("UTF-8"));
		return SUCCESS;
	}
	
	/*public String addNewCategory() throws Exception{
		CrawlerCategoryService service = (CrawlerCategoryService) ApplicationContextFactory.getBean(Constat.CRAWLERCATEGORYSERVICE);
		String result = null;
		
		if(service.addNewCrawlerCategory(categoryBean)){
			result = "{result:0,error=''}";
		}
		else{
			result = "{result:1,error:''}";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}*/
}
