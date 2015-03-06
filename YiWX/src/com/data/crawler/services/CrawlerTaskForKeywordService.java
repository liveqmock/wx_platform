package com.data.crawler.services;

import java.util.List;

import com.data.crawler.db.model.CrawlerTaskForKeywordBean;

public interface CrawlerTaskForKeywordService {
	public List<CrawlerTaskForKeywordBean> selectAllCrawlerTaskForKeyword(CrawlerTaskForKeywordBean bean);
	public boolean updateStartTime(CrawlerTaskForKeywordBean bean);
}
