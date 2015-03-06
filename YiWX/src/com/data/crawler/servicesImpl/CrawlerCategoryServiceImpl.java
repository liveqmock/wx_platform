package com.data.crawler.servicesImpl;

import java.util.List;

import com.data.crawler.dao.CrawlerCategoryDAO;
import com.data.crawler.db.model.CrawlerCategoryBean;
import com.data.crawler.services.CrawlerCategoryService;

public class CrawlerCategoryServiceImpl implements CrawlerCategoryService{

	public CrawlerCategoryDAO getCrawlerCategoryDAO() {
		return crawlerCategoryDAO;
	}

	public void setCrawlerCategoryDAO(CrawlerCategoryDAO crawlerCategoryDAO) {
		this.crawlerCategoryDAO = crawlerCategoryDAO;
	}

	public CrawlerCategoryDAO crawlerCategoryDAO;
	
	public boolean addNewCrawlerCategory(CrawlerCategoryBean bean) {
		return crawlerCategoryDAO.addNewCrawlerCategory(bean) > 0;
	}

	public boolean deleteCrawlerCategoryById(CrawlerCategoryBean bean) {
		return false;
	}

	public List<CrawlerCategoryBean> selectAllCrawlerCategory(
			CrawlerCategoryBean bean) {
		return crawlerCategoryDAO.selectAllCrawlerCategory(bean);
	}

}
