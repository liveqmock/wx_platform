package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.dao.APPDAO;
import com.zhike.sql.services.APPService;
import com.zhike.viewmodels.APPKeyViewModel;

public class APPServiceImpl implements APPService {
	
	public APPDAO getAppDAO() {
		return appDAO;
	}

	public void setAppDAO(APPDAO appDAO) {
		this.appDAO = appDAO;
	}

	public APPDAO appDAO;

	public boolean addNewAppKey(APPKeyViewModel appKeyViewModel) {
		APPBean appBean = new APPBean();
		appBean.setId(appKeyViewModel.getId());
		appBean.setUid(appKeyViewModel.getUid());
		
		appBean.setId(appKeyViewModel.getId());
		appBean.setUid(appKeyViewModel.getUid());
		appBean.setWx_account(appKeyViewModel.getWx_account());
		appBean.setWx_appkey("AppId");
		appBean.setWx_id(appKeyViewModel.getWx_id());
		appBean.setWx_name(appKeyViewModel.getWx_name());
		appBean.setWx_appsecret("AppSecret");
		appBean.setWx_token(appKeyViewModel.getWx_token());
		appBean.setWx_type(appKeyViewModel.getWx_type());
		appBean.setWx_url(appKeyViewModel.getWx_url());
		appBean.setWx_verified(appKeyViewModel.getWx_verified());	
		appBean.setWx_header_url(appKeyViewModel.getWx_upload_file());
		return appDAO.addNewAPP(appBean) > 0;
	}
	
	public List<APPBean> selectAllAPPSByUserId(APPKeyViewModel appKeyViewModel){
		APPBean appBean = new APPBean();
		appBean.setUid(appKeyViewModel.getUid());
		
		return appDAO.selectAllAPPSByUserId(appBean);
	}
	
	public boolean deleteAppByUserIdAndAPPID(APPKeyViewModel appKeyViewModel){
		APPBean appBean = new APPBean();
		appBean.setUid(appKeyViewModel.getUid());
		appBean.setId(appKeyViewModel.getId());
		return appDAO.deleteAppByUserIdAndAPPID(appBean) > 0;
	}
	
	public APPBean selectAppByUserIdAndAppId(APPKeyViewModel appKeyViewModel){
		APPBean appBean = new APPBean();
		appBean.setUid(appKeyViewModel.getUid());
		appBean.setId(appKeyViewModel.getId());
		
		return appDAO.selectAppByUserIdAndAppId(appBean);
	}
	
	public boolean editAppKey(APPKeyViewModel appKeyViewModel) {
		APPBean appBean = new APPBean();
		appBean.setId(appKeyViewModel.getId());
		appBean.setWx_name(appKeyViewModel.getWx_name());
		appBean.setWx_id(appKeyViewModel.getWx_id());
		appBean.setWx_account(appKeyViewModel.getWx_account());
		appBean.setWx_header_url(appKeyViewModel.getWx_upload_file());
		appBean.setWx_type(appKeyViewModel.getWx_type());
		appBean.setWx_verified(appKeyViewModel.getWx_verified());	
		
		return appDAO.editAppKey(appBean) > 0;
	}

	public boolean delOneAppKey(APPKeyViewModel appKeyViewModel) {
		APPBean appBean = new APPBean();
		appBean.setId(appKeyViewModel.getId());
		return appDAO.delOneAppKey(appBean)>0;
	}
	
	public APPBean selectAppKeyAndSecretByAPPID(APPBean appBean){
		return appDAO.selectAppKeyAndSecretByAPPID(appBean);
	}

	public int updateAppForAppkeyAndAppsecret(APPBean appBean) {
		return appDAO.updateAppForAppkeyAndAppsecret(appBean);
	}
	
	public boolean selectIfAPPExists(APPBean appBean){
		return appDAO.selectIfAPPExists(appBean) > 0;
	}
}
