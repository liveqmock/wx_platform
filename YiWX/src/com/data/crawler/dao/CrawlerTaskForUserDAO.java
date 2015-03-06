package com.data.crawler.dao;

import java.util.List;
import com.data.crawler.db.model.CrawlerTaskForUserBean;

public interface CrawlerTaskForUserDAO {

	public List<CrawlerTaskForUserBean> selectAllCrawlerTaskForUser(CrawlerTaskForUserBean bean);

	public int updateSinceId(CrawlerTaskForUserBean bean);
}
