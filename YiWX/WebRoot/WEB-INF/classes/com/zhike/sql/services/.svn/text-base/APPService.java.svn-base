package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.viewmodels.APPKeyViewModel;

public interface APPService {
	public boolean addNewAppKey(APPKeyViewModel appKeyViewModel);
	
	public List<APPBean> selectAllAPPSByUserId(APPKeyViewModel appKeyViewModel);
	
	public boolean deleteAppByUserIdAndAPPID(APPKeyViewModel appKeyViewModel);
	
	public APPBean selectAppByUserIdAndAppId(APPKeyViewModel appKeyViewModel);
	
	public boolean editAppKey(APPKeyViewModel viewModel);

	public boolean delOneAppKey(APPKeyViewModel viewModel);
	
	public APPBean selectAppKeyAndSecretByAPPID(APPBean appBean);

	public int updateAppForAppkeyAndAppsecret(APPBean appBean);
	
	public boolean selectIfAPPExists(APPBean appBean);

}
