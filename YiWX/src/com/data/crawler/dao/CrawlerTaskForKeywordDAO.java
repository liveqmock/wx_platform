package com.data.crawler.dao;

import java.util.List;
import com.data.crawler.db.model.CrawlerTaskForKeywordBean;

public interface CrawlerTaskForKeywordDAO {
	public List<CrawlerTaskForKeywordBean> selectAllCrawlerTaskForKeyword(CrawlerTaskForKeywordBean bean);
	public int updateStartTime(CrawlerTaskForKeywordBean bean);
}
