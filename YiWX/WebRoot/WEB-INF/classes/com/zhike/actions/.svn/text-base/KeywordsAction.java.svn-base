package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import weibo4j.org.json.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.KeywordsBean;
import com.zhike.sql.services.KeywordsService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.KeywordViewModel;

public class KeywordsAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public KeywordViewModel getKeywordViewModel() {
		return keywordViewModel;
	}

	public void setKeywordViewModel(KeywordViewModel keywordViewModel) {
		this.keywordViewModel = keywordViewModel;
	}

	public KeywordViewModel keywordViewModel;// 数据接收Model

	private final String GZ = "gz";
	private final String MR = "mr";
	private final String ZD = "zd";

	private final int GZ_VARIABLES = 0;
	private final int ZD_VARIABLES = 1; 
	private final int AUTO_VARIABLES = 2;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;

	public String getKeywordsRule() {
		return keywordsRule;
	}

	public void setKeywordsRule(String keywordsRule) {
		this.keywordsRule = keywordsRule;
	}

	public String keywordsRule;

	private int bean_id;
	
	@Override
	public String execute() throws Exception {
		String actionType = RequestScopeFactory.RequestScope().getParameter(
				"action");
		KeywordsService keywordsService = (KeywordsService) ApplicationContextFactory
				.getBean(Constat.KEYWORDSSERVICE);
		KeywordViewModel viewModel = new KeywordViewModel();
		
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		viewModel.setWx_uid(checkLoginBean.getId());
		
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		viewModel.setWx_app_keyid(appId);
		
		
		if (actionType == null || GZ.compareTo(actionType) == 0) {
			viewModel.setWx_msg_type(GZ_VARIABLES);
			KeywordsBean keywordsBean = keywordsService.selectKeywordByUserAndAppId(viewModel);
			RequestScopeFactory.RequestScope().setAttribute("L_GZ_TYPE", "gz");
			RequestScopeFactory.RequestScope().setAttribute("L_GZ_BEAN",keywordsBean);
			RequestScopeFactory.SessionScope().put("L_GZ_TYPE", "gz");
			RequestScopeFactory.SessionScope().put("L_GZ_BEAN",keywordsBean);
			return GZ;
		} else if (MR.compareTo(actionType) == 0) {
			viewModel.setWx_msg_type(ZD_VARIABLES);
			KeywordsBean keywordsBean = keywordsService.selectKeywordByUserAndAppId(viewModel);
			RequestScopeFactory.RequestScope().setAttribute("L_GZ_BEAN",keywordsBean);
			RequestScopeFactory.SessionScope().put("L_GZ_BEAN",keywordsBean);
			
			return MR;
		} else if (ZD.compareTo(actionType) == 0) {
			viewModel.setWx_msg_type(AUTO_VARIABLES);
			List<KeywordsBean> keywordsBeans = keywordsService.selectKeywordListByUserAndAppId(viewModel);
			RequestScopeFactory.RequestScope().setAttribute("L_GZ_BEAN",keywordsBeans);
			
			RequestScopeFactory.SessionScope().put("L_GZ_BEAN",keywordsBeans);
			
			return ZD;
		}

		return actionType == null ? GZ : actionType;
	}

	/**
	 * 添加关键词
	 * 
	 * @return 增加状态
	 * @throws Exception
	 */
	public String saveOrUpdateKeyword() throws Exception {
		String result = null;
		KeywordsService keywordsService = (KeywordsService) ApplicationContextFactory
				.getBean(Constat.KEYWORDSSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		
		keywordViewModel.setWx_app_keyid(appId);
		keywordViewModel.setWx_uid(checkLoginBean.getId());
		
		if (keywordViewModel == null) {
			result = new String("{status:'fail'}");
		} else {
			/*int bean_id = 0;
			if(keywordViewModel.getId() == 0){
				bean_id = keywordsService.addKeywordByUserAndAppId(keywordViewModel);
			}
			else{
				
			}*/
			
			KeywordsBean keywordBean = new KeywordsBean();
			keywordBean.setWx_app_keyid(keywordViewModel.getWx_app_keyid());
			keywordBean.setWx_msg_type(keywordViewModel.getWx_msg_type());
			if(keywordsService.selectKeywordCountByAPPID(keywordBean) > 0){
				bean_id = keywordsService.updateKeywordByUserAndAppId(keywordViewModel);
			}else{
				bean_id = keywordsService.addKeywordByUserAndAppId(keywordViewModel);
			}
			//int bean_id = keywordsService.saveOrUpdateKeywordByUserAndAppId(keywordViewModel);
			if (bean_id > 0) {
				result = new String("{status:'ok'}");
			} else {
				result = new String("{status:'fail'}");
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public String saveOrUpdateKeywordsAuto() throws Exception {
		String result = null;
		KeywordsService keywordsService = (KeywordsService) ApplicationContextFactory
				.getBean(Constat.KEYWORDSSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if (keywordsRule == null) {
			result = new String("{status:'fail'}");
		} else {
			KeywordViewModel keywordViewModel = new KeywordViewModel();
			JSONObject jsonObject = new JSONObject(keywordsRule);

			keywordViewModel.setWx_app_keyid(appId);
			keywordViewModel.setWx_uid(checkLoginBean.getId());

			// 添加或者更新
			int ruleType = jsonObject.getInt("ruleType");

			// 回复类型
			if (jsonObject.has("replyType") && jsonObject.has("replyValue")) {
				String replyType = jsonObject.getString("replyType");
				String replyValue = jsonObject.getString("replyValue");
				if ("media".compareTo(replyType) == 0) {
					keywordViewModel.setWx_msg_reply_type(1);
					keywordViewModel.setWx_msg_reply_template(Long.parseLong(replyValue));
				} else {
					keywordViewModel.setWx_msg_reply_type(0);
					keywordViewModel.setWx_msg_reply_text(replyValue);
				}
			}

			if (jsonObject.has("ruleName")) {
				keywordViewModel.setWx_keyword_rulename(jsonObject
						.getString("ruleName"));
			}

			if (jsonObject.has("keywordList")) {
				keywordViewModel.setWx_keyword_content(jsonObject
						.getString("keywordList"));
			}
			// keywordViewModel.setWx_msg_reply_template(wxMsgReplyTemplate);
			// keywordViewModel.setWx_msg_reply_text(wxMsgReplyText);
			// keywordViewModel.setWx_msg_reply_type(wxMsgReplyType);

			keywordViewModel.setWx_msg_type(AUTO_VARIABLES);
			int bean_id = 0;

			if (ruleType == 0) {
				bean_id = keywordsService.addKeywordByUserAndAppId(keywordViewModel);
			} else {
				keywordViewModel.setId(ruleType);
				bean_id = keywordsService.updateKeywordByUserAndAppId(keywordViewModel);
			}
			//keywordsService.saveOrUpdateKeywordByUserAndAppId(keywordViewModel);
			if (bean_id > 0) {
				result = new String("{status:'ok',id:" + bean_id + "}");
			} else {
				result = new String("{status:'fail'}");
			}
		}

		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public String deleteKeyword() throws Exception {
		String result = null;
		KeywordsService keywordsService = (KeywordsService) ApplicationContextFactory.getBean(Constat.KEYWORDSSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		keywordViewModel.setWx_app_keyid(appId);
		keywordViewModel.setWx_uid(checkLoginBean.getId());
		
		if (keywordsService.deleteKeywordByUserAndAppId(keywordViewModel)) {
			result = new String("{status:'ok'}");
		} else {
			result = new String("{status:'fail'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public String deleteKeywordByIdAndAppId() throws Exception {

		String result = null;
		KeywordsService keywordsService = (KeywordsService) ApplicationContextFactory.getBean(Constat.KEYWORDSSERVICE);
		JSONObject jsonObject = new JSONObject(keywordsRule);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");

		
		if (jsonObject.has("id")) {
			keywordViewModel = new KeywordViewModel();
			keywordViewModel.setId(jsonObject.getInt("id"));
			keywordViewModel.setWx_app_keyid(appId);
			keywordViewModel.setWx_uid(checkLoginBean.getId());
			if (keywordsService.deleteKeywordByIdAndAppId(keywordViewModel)) {
				result = new String("{status:'ok'}");
			} else {
				result = new String("{status:'fail'}");
			}
		} else {
			result = new String("{status:'fail'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
}
