package com.data.crawler.servicesImpl;

import java.util.List;

import com.data.crawler.dao.CrawlerTaskForUserDAO;
import com.data.crawler.db.model.CrawlerTaskForUserBean;
import com.data.crawler.services.CrawlerTaskForUserService;

public class CrawlerTaskForUserServiceImpl implements CrawlerTaskForUserService {

	public CrawlerTaskForUserDAO getCrawlerTaskForUserDAO() {
		return crawlerTaskForUserDAO;
	}

	public void setCrawlerTaskForUserDAO(CrawlerTaskForUserDAO crawlerTaskForUserDAO) {
		this.crawlerTaskForUserDAO = crawlerTaskForUserDAO;
	}

	public CrawlerTaskForUserDAO crawlerTaskForUserDAO ;

	public List<CrawlerTaskForUserBean> selectAllCrawlerTaskForUser(
			CrawlerTaskForUserBean bean) {
		return crawlerTaskForUserDAO.selectAllCrawlerTaskForUser(bean);
	}
	
	public boolean updateSinceId(CrawlerTaskForUserBean bean){
		return crawlerTaskForUserDAO.updateSinceId(bean) > 0;
	}
	
}
