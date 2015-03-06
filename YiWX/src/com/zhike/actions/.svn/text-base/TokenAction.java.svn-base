package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.services.APPService;
import com.zhike.utils.APPManager;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.StringUtils;
import com.zhike.utils.TokenUtils;
import com.zhike.viewmodels.APPKeyViewModel;

public class TokenAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;
	

	public APPKeyViewModel getViewModel() {
		return viewModel;
	}

	public void setViewModel(APPKeyViewModel viewModel) {
		this.viewModel = viewModel;
	}

	private APPKeyViewModel viewModel ;
	
	@Override
	//创建
	public String execute() throws Exception {
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		viewModel.setId(TokenUtils.ToGuid(viewModel.getWx_base64()));
		viewModel.setUid(String.valueOf(checkLoginBean.getId()));
		
		//0,注册
		int type = 0;
		//校验格式
		String result = isFullWXInformation(viewModel,type);
		//List<APPBean>  appBeans = appService.selectAllAPPSByUserId(viewModel);
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	//修改
	public String editApp() throws Exception {
		
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		viewModel.setUid(String.valueOf(checkLoginBean.getId()));
		//1,修改
		int type = 1;
		//校验格式
		String result = isFullWXInformation(viewModel,type);
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	//删除
	public String delApp() throws Exception {
		String result = null;
		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		if(appService.delOneAppKey(viewModel)){
			//删除其他数据 TODO
			//1 删除素材库？
			//2 删除关键词
			//3 删除刮刮卡,级联中奖信息
			result = "success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	
	private String isFullWXInformation(APPKeyViewModel viewModel,int type) {
		String status = "success";
		String temp1 = "error_wx_name:'',";
		String temp2 = "error_wx_id:'',";
		String temp3 = "error_wx_upload_file:'',";
		String temp4 = "error_wx_account:''";;
		if(viewModel!=null){
			//名称为空
			if (StringUtils.isEmptyString(viewModel.getWx_name())){
				temp1 = "error_wx_name:'请填写公众号名称',";
				status = "error";
			}else if(viewModel.getWx_name().length()>20){
				//名称长度
				temp1 = "error_wx_name:'请输入20位以内的公众号名称',";
				status = "error";
			}
			//原始ID为空
			if(StringUtils.isEmptyString(viewModel.getWx_id())){
				temp2 = "error_wx_id:'请填写原始ID',";
				status = "error";
			}else if(viewModel.getWx_id().length()>20){
				//原始ID长度
				temp2 = "error_wx_id:'请输入20位以内的原始ID',";
				status = "error";
				
			}
			//头像为空
			if(StringUtils.isEmptyString(viewModel.getWx_upload_file())){
				temp3 = "error_wx_upload_file:'请选择或上传微信头像',";
				status = "error";
			}else if(viewModel.getWx_upload_file().length()>250){
				//头像URl长度
				temp3 = "error_wx_upload_file:'头像URL地址过长,请选择其他头像或重新上传',";
				status = "error";
			}
	
			//微信号长度
			if(viewModel.getWx_account().length()>20){
				temp4 = "error_wx_account:'请输入20位以内的微信号'";
				status = "error";
			}
		}else{
			status = "error";
		}
		
		
		
		String result = null;
		if(status.equals("success")){
			APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
			if(type==0){
				//添加新微信号
				try {
					if(!StringUtils.isEmptyString(viewModel.getId())){
						if(appService.addNewAppKey(viewModel)){
							result = new String("{status:'success'}");
							APPManager.appendAPPKey(viewModel);
						}else{
							throw new Exception("token can not be null");
						}
					}
					else{
						throw new Exception("token can not be null");
					}
				} catch (Exception e) {
					result = new String("{status:'error'}");
				}
			}else{
				//修改微信号
				try {
					if(!StringUtils.isEmptyString(viewModel.getId())){
						if(appService.editAppKey(viewModel)){
							result = new String("{status:'success'}");
							APPManager.appendAPPKey(viewModel);
						}else{
							throw new Exception("token can not be null");
						}
					}
					else{
						throw new Exception("token can not be null");
					}
				} catch (Exception e) {
					result = new String("{status:'error'}");
				}
			}

			
		}else{
			result ="{status:'error',"+temp1+temp2+temp3+temp4+"}";
		}

		return result;
	}
	

	public String selectAllAppsByUserId() throws Exception{
		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		APPKeyViewModel appKeyViewModel = new APPKeyViewModel();
		appKeyViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		List<APPBean> appBeans = appService.selectAllAPPSByUserId(appKeyViewModel);
		RequestScopeFactory.SessionScope().put(Constat.APPKEYS, appBeans);
		
		//生成添加到服务器的数据
		String token = TokenUtils.createGuid();
		//wx_base64什么用
		RequestScopeFactory.RequestScope().setAttribute("wx_base64",token );
		RequestScopeFactory.RequestScope().setAttribute("wx_token", "yiwx2014");
		RequestScopeFactory.RequestScope().setAttribute("wx_url", Constat.HOST+"api?t="+token);
		return SUCCESS;
	}
	
	public String selectAppByUserIdAndAppId() throws Exception{
		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		APPKeyViewModel appKeyViewModel = new APPKeyViewModel();
		appKeyViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		
		
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		appKeyViewModel.setId(appId);
		APPBean appBean = appService.selectAppByUserIdAndAppId(appKeyViewModel);
		
		RequestScopeFactory.RequestScope().setAttribute("APPBEANINFO", appBean);
		
		return appBean == null ? ERROR : SUCCESS;
	}
	
	
	public String deleteAppByUserIdAndAPPID() throws Exception{
		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		APPKeyViewModel appKeyViewModel = new APPKeyViewModel();
		appKeyViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		
		String appId = (String) RequestScopeFactory.RequestScope().getParameter("appid");
		appKeyViewModel.setId(appId);
		
		appService.deleteAppByUserIdAndAPPID(appKeyViewModel);
		
		return SUCCESS;
	}
}
