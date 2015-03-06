package com.zhike.sql.services;

import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.viewmodels.LoginViewModel;

public interface CheckLoginService {

	/**
	 * 判断用户是否能登录
	 */
	public CheckLoginBean isLogin(LoginViewModel bean);
	/**
	 * 注册用户
	 * @return 返回注册状态
	 */
	public int regUser(LoginViewModel bean);

	/**
	 * 找回密码
	 */
	public int findPassword(LoginViewModel bean);
	
	/**
	 * 编辑用户信息
	 */
	public int editUser(LoginViewModel bean);
	
	public boolean updateCheckLoginBean(LoginViewModel loginViewModel);
}
