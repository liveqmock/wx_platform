package com.zhike.sql.dao;

import java.util.List;

import com.zhike.sql.beans.APPBean;

public interface APPDAO {
	public int addNewAPP(APPBean appBean);
	
	public int editAppKey(APPBean appBean);
	
	public List<APPBean> selectAllAPPS();
	
	public List<APPBean> selectAllAPPSByUserId(APPBean appBean);

	public int delOneAppKey(APPBean appBean);
	
	
	public int deleteAppByUserIdAndAPPID(APPBean appBean);
	
	public APPBean selectAppByUserIdAndAppId(APPBean appBean);
	
	public APPBean selectAppKeyAndSecretByAPPID(APPBean appBean);

	public int updateAppForAppkeyAndAppsecret(APPBean appBean);
	
	public int selectIfAPPExists(APPBean appBean);
}
