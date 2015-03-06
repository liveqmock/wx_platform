package com.data.crawler.services;

import java.util.List;

import com.data.crawler.db.model.CrawlerCategoryBean;

public interface CrawlerCategoryService {

	public boolean addNewCrawlerCategory(CrawlerCategoryBean bean);
	
	public boolean deleteCrawlerCategoryById(CrawlerCategoryBean bean);
	
	public List<CrawlerCategoryBean> selectAllCrawlerCategory(CrawlerCategoryBean bean);
	
}
