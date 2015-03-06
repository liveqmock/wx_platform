package com.data.crawler.services;

import java.util.List;

import com.data.crawler.db.model.CrawlerTaskForUserBean;

public interface CrawlerTaskForUserService {
	//查询所有得人物微博
	public List<CrawlerTaskForUserBean> selectAllCrawlerTaskForUser(CrawlerTaskForUserBean bean);
	//更新用户得微博
	public boolean updateSinceId(CrawlerTaskForUserBean bean);
}
