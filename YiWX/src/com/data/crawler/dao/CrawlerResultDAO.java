package com.data.crawler.dao;

import java.util.List;

import com.data.crawler.db.model.CrawlerResultBean;

public interface CrawlerResultDAO {

	public int addNewCrawlerResult(CrawlerResultBean bean);
	public long selectMaxCrawlerResultWIDByUserType(CrawlerResultBean bean);
	public long selectMaxCrawlerResultWIDByKeywordType(CrawlerResultBean bean);
	public List<CrawlerResultBean> selectCrawlerResultByCondition(CrawlerResultBean bean);
	public List<CrawlerResultBean> selectCrawlerResultByConditionExceptImgCondition(CrawlerResultBean bean);
}