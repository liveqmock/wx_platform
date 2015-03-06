package com.data.crawler.dao;

import java.util.List;

import com.data.crawler.db.model.CrawlerCategoryBean;

public interface CrawlerCategoryDAO {

	public int addNewCrawlerCategory(CrawlerCategoryBean bean);
	
	public int deleteCrawlerCategoryById(CrawlerCategoryBean bean);
	
	public List<CrawlerCategoryBean> selectAllCrawlerCategory(CrawlerCategoryBean bean);
	
}
