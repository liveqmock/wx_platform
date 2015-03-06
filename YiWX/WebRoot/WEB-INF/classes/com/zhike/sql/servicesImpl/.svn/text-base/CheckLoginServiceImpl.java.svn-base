package com.zhike.sql.servicesImpl;

import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.dao.CheckLoginDAO;
import com.zhike.sql.services.CheckLoginService;
import com.zhike.viewmodels.LoginViewModel;

public class CheckLoginServiceImpl implements CheckLoginService {

	/**
	 * Spring 注入
	 */
	public CheckLoginDAO getCheckLoginDAO() {
		return checkLoginDAO;
	}

	public void setCheckLoginDAO(CheckLoginDAO checkLoginDAO) {
		this.checkLoginDAO = checkLoginDAO;
	}

	public CheckLoginDAO checkLoginDAO;

	public CheckLoginBean isLogin(LoginViewModel loginViewModel) {

		CheckLoginBean checkLoginBean = new CheckLoginBean();
		checkLoginBean.setUsername(loginViewModel.getUsername());
		checkLoginBean.setPassword(loginViewModel.getPassword());

//		CheckLoginBean bean = checkLoginDAO.selectPassword(checkLoginBean);
//		if (bean == null) {
//			return false;
//		} else {
//			return checkLoginBean.getPassword().compareTo(bean.getPassword()) == 0;
//		}
		return checkLoginDAO.selectUserByUserName(checkLoginBean);
	}

	public int editUser(LoginViewModel bean) {
		return 0;
	}

	public int findPassword(LoginViewModel bean) {
		return 0;
	}

	/**
	 * 注册用户
	 */
	public int regUser(LoginViewModel bean) {
		CheckLoginBean checkLoginBean = new CheckLoginBean();
		checkLoginBean.setContact(bean.getContact());
		checkLoginBean.setCreateip(bean.getCreateip());
		checkLoginBean.setEmail(bean.getEmail());
		checkLoginBean.setLastip(bean.getLastip());
		checkLoginBean.setMobile(bean.getUsername());
		checkLoginBean.setPassword(bean.getPassword());
		checkLoginBean.setUsername(bean.getUsername());
		checkLoginBean.setContact(bean.getContact());
		checkLoginBean.setQq(bean.getQq());
		if(checkLoginDAO.selectUserCountByUserName(checkLoginBean) > 0){
			//用户已经存在
			return 2;
		}
		return checkLoginDAO.addNewUser(checkLoginBean);
	}
	
	/**
	 * 更新用户信息
	 */
	public boolean updateCheckLoginBean(LoginViewModel loginViewModel) {
		CheckLoginBean checkLoginBean = new CheckLoginBean();
		checkLoginBean.setId(Long.parseLong(loginViewModel.getId()));
		checkLoginBean.setPassword(loginViewModel.getPassword());
		checkLoginBean.setContact(loginViewModel.getContact());
		checkLoginBean.setEmail(loginViewModel.getEmail());
		checkLoginBean.setMobile(loginViewModel.getMobile());
		checkLoginBean.setQq(loginViewModel.getQq());
		
		return checkLoginDAO.updateCheckLoginBean(checkLoginBean) >0;
	}
}
