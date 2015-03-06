package com.data.crawler.servicesImpl;

import java.util.List;

import com.data.crawler.dao.CrawlerTaskForKeywordDAO;
import com.data.crawler.db.model.CrawlerTaskForKeywordBean;
import com.data.crawler.services.CrawlerTaskForKeywordService;

public class CrawlerTaskForKeywordImpl implements CrawlerTaskForKeywordService {

	public CrawlerTaskForKeywordDAO getCrawlerTaskForKeywordDAO() {
		return crawlerTaskForKeywordDAO;
	}

	public void setCrawlerTaskForKeywordDAO(
			CrawlerTaskForKeywordDAO crawlerTaskForKeywordDAO) {
		this.crawlerTaskForKeywordDAO = crawlerTaskForKeywordDAO;
	}

	public CrawlerTaskForKeywordDAO crawlerTaskForKeywordDAO ;

	public List<CrawlerTaskForKeywordBean> selectAllCrawlerTaskForKeyword(
			CrawlerTaskForKeywordBean bean) {
		return crawlerTaskForKeywordDAO.selectAllCrawlerTaskForKeyword(bean);
	}

	public boolean updateStartTime(CrawlerTaskForKeywordBean bean){
		return crawlerTaskForKeywordDAO.updateStartTime(bean) > 0;
	}
}
