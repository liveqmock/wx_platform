package com.zhike.utils;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.servicesImpl.APPManagerServiceImpl;
import com.zhike.viewmodels.APPKeyViewModel;

public class APPManager {
	public static boolean verifyAPPKey(String string) {
		return APPManagerServiceImpl.verifyAPPKey(string);
	}

	public static boolean verifyAppKey(String string, boolean needConvert) {
		return APPManagerServiceImpl.verifyAppKey(string, needConvert);
	}

	public static boolean appendAPPKey(APPKeyViewModel appKeyViewModel) {
		APPBean appBean = new APPBean();
		appBean.setId(appKeyViewModel.getId());
		appBean.setUid(appKeyViewModel.getUid());
		
		appBean.setId(appKeyViewModel.getId());
		appBean.setUid(appKeyViewModel.getUid());
		appBean.setWx_account(appKeyViewModel.getWx_account());
		appBean.setWx_appkey(appKeyViewModel.getWx_appkey());
		appBean.setWx_id(appKeyViewModel.getWx_id());
		appBean.setWx_name(appKeyViewModel.getWx_name());
		appBean.setWx_appsecret(appKeyViewModel.getWx_secret());
		appBean.setWx_token(appKeyViewModel.getWx_token());
		appBean.setWx_type(appKeyViewModel.getWx_type());
		appBean.setWx_url(appKeyViewModel.getWx_url());
		appBean.setWx_verified(appKeyViewModel.getWx_verified());
		return APPManagerServiceImpl.appendAPPKey(appBean);
	}
}
