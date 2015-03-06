package com.zhike.sql.dao;

import java.util.List;

import com.zhike.sql.beans.KeywordsBean;

public interface KeywordsDAO {
	public int addKeywordByUserAndAppId(KeywordsBean keywordBean);

	public int deleteKeywordByUserAndAppId(KeywordsBean keywordBean);
	
	public int deleteKeywordByIdAndAppId(KeywordsBean keywordBean);

	public KeywordsBean selectKeywordByUserAndAppId(KeywordsBean keywordBean);
	
	public List<KeywordsBean> selectKeywordListByUserAndAppId(KeywordsBean keywordBean);

	public int updateKeywordByUserAndAppId(KeywordsBean keywordBean);
	
	public List<KeywordsBean> selectKeywordForKeywordReply(KeywordsBean keywordBean);
	public KeywordsBean selectKeywordForFocus(KeywordsBean keywordBean);
	
	public int selectKeywordCountByAPPID(KeywordsBean keywordBean);
}
