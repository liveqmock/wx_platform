package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.KeywordsBean;
import com.zhike.viewmodels.KeywordViewModel;

public interface KeywordsService {
	public int addKeywordByUserAndAppId(KeywordViewModel keywordViewModel);// 增加

	public boolean deleteKeywordByUserAndAppId(KeywordViewModel keywordViewModel);// 删除
	
	public boolean deleteKeywordByIdAndAppId(KeywordViewModel keywordViewModel);// 删除

	public KeywordsBean selectKeywordByUserAndAppId(KeywordViewModel keywordViewModel);//查询
	
	public List<KeywordsBean> selectKeywordListByUserAndAppId(KeywordViewModel keywordViewModel);//查询关键词集合
	
	public int updateKeywordByUserAndAppId(KeywordViewModel keywordViewModel);//更新
	
	public int saveOrUpdateKeywordByUserAndAppId(KeywordViewModel keywordViewModel);//保存或者更新
	
	public List<KeywordsBean> selectKeywordForKeywordReply(KeywordsBean keywordBean);
	public KeywordsBean selectKeywordForFocus(KeywordsBean keywordBean);
	public int selectKeywordCountByAPPID(KeywordsBean keywordBean);
}
