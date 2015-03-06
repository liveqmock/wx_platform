package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.WebsiteBean;
import com.zhike.sql.beans.WebsiteTempBean;
import com.zhike.sql.dao.WebSiteDAO;
import com.zhike.sql.services.WebSiteService;

public class WebSiteServiceImpl implements WebSiteService{
	public WebSiteDAO getWebSiteDAO() {
		return webSiteDAO;
	}

	public void setWebSiteDAO(WebSiteDAO webSiteDAO) {
		this.webSiteDAO = webSiteDAO;
	}

	private WebSiteDAO webSiteDAO;

	public boolean updateWebsiteByAppId(WebsiteBean websiteBean) {
		if(webSiteDAO.updateWebsiteByAppId(websiteBean) > 0){
			return true;
		}
		else{
			return webSiteDAO.addNewWebsiteByAppId(websiteBean) > 0;
		}
	}
	public WebsiteBean selectWebsiteByAppId(WebsiteBean websiteBean){
		return webSiteDAO.selectWebsiteByAppId(websiteBean);
	}
	
	public WebsiteBean selectPreviewWebsiteByAppId(WebsiteBean websiteBean){
		return webSiteDAO.selectPreviewWebsiteByAppId(websiteBean);
	}
//	查询所有模板
	public List<WebsiteTempBean> selWebsiteTempList(){
		return webSiteDAO.selWebsiteTempList();
	}
}
