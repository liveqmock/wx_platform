package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.HashMap;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.services.CheckLoginService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.ExpresssoinValidateUtil;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.StringUtils;
import com.zhike.viewmodels.LoginViewModel;

/**
 * 
 * @author Administrator 管理Action
 */
public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;

	public LoginViewModel getLoginViewModel() {
		return loginViewModel;
	}

	public void setLoginViewModel(LoginViewModel loginViewModel) {
		this.loginViewModel = loginViewModel;
	}

	public LoginViewModel loginViewModel;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String loginOut() throws Exception {
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory
				.SessionScope().get(Constat.LOGIN_SESSION);
		if (checkLoginBean != null)
			RequestScopeFactory.SessionScope().remove(Constat.LOGIN_SESSION);
		return SUCCESS;
	}

	public String login() throws Exception {
		String result = null;
		if (loginViewModel == null
				|| StringUtils.isEmptyString(loginViewModel.getUsername())
				|| StringUtils.isEmptyString(loginViewModel.getPassword())) {
			result = new String("{status:'error',content:'请输入账号密码。'}");
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			return SUCCESS;
		}

		CheckLoginService checkLoginService = (CheckLoginService) ApplicationContextFactory
				.getBean(Constat.CHECKLOGINSERVICE);
		CheckLoginBean bean = checkLoginService.isLogin(loginViewModel);

		if (bean == null) {
			result = new String("{status:'error',content:'不存在该帐户。'}");
		}else if( loginViewModel.getPassword().compareTo(bean.getPassword()) != 0){
			result = new String("{status:'error',content:'您输入的帐号或者密码不正确，请重新输入。'}");
		}else {
			result = new String("{status:'success',content:'wx_wechat/wx_index.jsp'}");
			RequestScopeFactory.SessionScope().put(Constat.LOGIN_SESSION, bean);
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public String regNewUser() throws Exception {
		// 判断用户是否存在
		String result = null;
		int checkStatus = isFullRegInformation(loginViewModel);
		if (checkStatus != 0) {
			switch (checkStatus) {
			case 2:
				result = new String("{status:'error',errorId:'errorUsername',content:'用户名不能为空。'}");
				break;
			case 3:
				result = new String("{status:'error',errorId:'errorPassword',content:'密码不能为空。'}");
				break;
			case 4:
				result = new String("{status:'error',errorId:'errorRepassword',content:'确认密码不能为空。'}");
				break;
			case 5:
				result = new String("{status:'error',errorId:'errorUsername',content:'用户名格式不正确,11位手机号码。'}");
				break;
			case 6:
				result = new String("{status:'error',errorId:'errorPassword',content:'请输入长度为6-18位的密码。'}");
				break;
			case 7:
				result = new String("{status:'error',errorId:'errorRepassword',content:'确认密码和密码不一致。'}");
				break;
			case 8:
				result = new String("{status:'error',errorId:'errorContact',content:'联系人必须为中文。'}");
				break;
			case 9:
				result = new String("{status:'error',errorId:'errorEmail',content:'邮箱格式不正确。'}");
				break;
			}
		} else {
			// 插入注册
			CheckLoginService checkLoginService = (CheckLoginService) ApplicationContextFactory
					.getBean(Constat.CHECKLOGINSERVICE);
			String remoteIp = RequestScopeFactory.RequestScope()
					.getRemoteAddr();

			loginViewModel.setCreateip(remoteIp);
			loginViewModel.setLastip(remoteIp);
			int regStatus = checkLoginService.regUser(loginViewModel);

			if (regStatus == 1) {
				//注册成功
				result = new String("{status:'success',content:'wx_wechat/wx_index.jsp'}");
				CheckLoginBean bean = checkLoginService.isLogin(loginViewModel);
				RequestScopeFactory.SessionScope().put(Constat.LOGIN_SESSION,
						bean);
			} else if (regStatus == 2) {
				//用户名已存在
				result = new String("{status:'error',errorId:'errorUsername',content:'用户名已存在。'}");
			} else {
				//注册失败联系客服
				result = new String("{status:'error',errorId:'errorReg',content:'注册失败请联系客服。'}");
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public int isFullRegInformation(LoginViewModel model) {
		String result=null;
		if (model == null)
			return 1;
		if (StringUtils.isEmptyString(model.getUsername()))
			//用户名为空
			return 2;
		if (!ExpresssoinValidateUtil.isMobilePhone(model.getUsername()))
			//确认手机号码格式
			return 5;	
		if (StringUtils.isEmptyString(model.getPassword()))
			//密码为空
			return 3;
		if (model.getPassword().length()<6||model.getPassword().length()>18)
			//密码长度6-18
			return 6;	
		if (StringUtils.isEmptyString(model.getRepassword()))
			//确认密码为空
			return 4;
		if (model.getPassword().compareTo(model.getRepassword()) != 0)
			//密码和重复密码不同
			return 7;	
		
		if (!StringUtils.isEmptyString(model.getContact())
				&& !ExpresssoinValidateUtil.isChineseString(model.getContact()))
			//联系人中文
			return 8;	
		if (!StringUtils.isEmptyString(model.getEmail())
				&& !ExpresssoinValidateUtil.isEmail(model.getEmail()))
			//邮箱格式
			return 9;

		return 0;
	}
}
