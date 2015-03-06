package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.KeywordsBean;
import com.zhike.sql.dao.KeywordsDAO;
import com.zhike.sql.services.KeywordsService;
import com.zhike.viewmodels.KeywordViewModel;

public class KeywordsServiceImpl implements KeywordsService {

	public KeywordsDAO getKeywordsDAO() {
		return keywordsDAO;
	}

	public void setKeywordsDAO(KeywordsDAO keywordsDAO) {
		this.keywordsDAO = keywordsDAO;
	}

	public KeywordsDAO keywordsDAO;

	public int addKeywordByUserAndAppId(KeywordViewModel keywordViewModel) {
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
		keywordBean.setWx_keyword_content(keywordViewModel.getWx_keyword_content());
		keywordBean.setWx_keyword_rulename(keywordViewModel.getWx_keyword_rulename());
		keywordBean.setWx_msg_reply_template(keywordViewModel.getWx_msg_reply_template());
		keywordBean.setWx_msg_reply_type(keywordViewModel.getWx_msg_reply_type());
		keywordBean.setWx_msg_reply_text(keywordViewModel.getWx_msg_reply_text());
		return keywordsDAO.addKeywordByUserAndAppId(keywordBean) > 0 ? Integer.valueOf(keywordBean.getId()) : 0;
	}

	public int updateKeywordByUserAndAppId(KeywordViewModel keywordViewModel) {
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setId(keywordViewModel.getId());
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
		keywordBean.setWx_keyword_content(keywordViewModel.getWx_keyword_content());
		keywordBean.setWx_keyword_rulename(keywordViewModel.getWx_keyword_rulename());
		keywordBean.setWx_msg_reply_template(keywordViewModel.getWx_msg_reply_template());
		keywordBean.setWx_msg_reply_type(keywordViewModel.getWx_msg_reply_type());
		keywordBean.setWx_msg_reply_text(keywordViewModel.getWx_msg_reply_text());
		return keywordsDAO.updateKeywordByUserAndAppId(keywordBean) ;
	}

	public boolean deleteKeywordByUserAndAppId(KeywordViewModel keywordViewModel) {
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setId(keywordViewModel.getId());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
		return keywordsDAO.deleteKeywordByUserAndAppId(keywordBean) > 0;
	}
	
	public boolean deleteKeywordByIdAndAppId(KeywordViewModel keywordViewModel){
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setId(keywordViewModel.getId());
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		return keywordsDAO.deleteKeywordByIdAndAppId(keywordBean) > 0;
	}

	public KeywordsBean selectKeywordByUserAndAppId(KeywordViewModel keywordViewModel) {
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
		return keywordsDAO.selectKeywordByUserAndAppId(keywordBean);
	}
	
	public List<KeywordsBean> selectKeywordListByUserAndAppId(KeywordViewModel keywordViewModel){
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
		return keywordsDAO.selectKeywordListByUserAndAppId(keywordBean);
	}

	public int saveOrUpdateKeywordByUserAndAppId(KeywordViewModel keywordViewModel) {
		KeywordsBean keywordBean = new KeywordsBean();
		keywordBean.setId(keywordViewModel.getId());
		keywordBean.setWx_uid(keywordViewModel.getWx_uid());
		keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
		keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
		keywordBean.setWx_msg_reply_text(keywordViewModel.getWx_msg_reply_text());
		KeywordsBean bean = null;
		try {
			bean = keywordsDAO.selectKeywordByUserAndAppId(keywordBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bean != null) {
			return updateKeywordByUserAndAppId(keywordViewModel);
		} else {
			return addKeywordByUserAndAppId(keywordViewModel);
		}
	}

	public List<KeywordsBean> selectKeywordForKeywordReply(
			KeywordsBean keywordBean) {
		return keywordsDAO.selectKeywordForKeywordReply(keywordBean);
	}

	public KeywordsBean selectKeywordForFocus(KeywordsBean keywordBean) {
		return keywordsDAO.selectKeywordForFocus(keywordBean);
	}
	
	public int selectKeywordCountByAPPID(KeywordsBean keywordBean){
		return keywordsDAO.selectKeywordCountByAPPID(keywordBean);
	}
}
