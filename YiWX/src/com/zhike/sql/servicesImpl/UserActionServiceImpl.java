package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.finals.Constat;
import com.zhike.sql.beans.UserActionBean;
import com.zhike.sql.dao.UserActionDAO;
import com.zhike.sql.services.UserActionService;
import com.zhike.utils.ApplicationContextFactory;

public class UserActionServiceImpl implements UserActionService {

	public UserActionDAO getUserActionDAO() {
		return userActionDAO;
	}
	public void setUserActionDAO(UserActionDAO userActionDAO) {
		this.userActionDAO = userActionDAO;
	}
	public UserActionDAO userActionDAO ;
	
	public boolean LogUserAction(UserActionBean userActionBean){
		
		return userActionDAO.LogUserAction(userActionBean) > 0;
	}
	
	public static void AppendLogUserAction(UserActionBean userActionBean){
		UserActionService userActionService = ( UserActionService) ApplicationContextFactory.getBean(Constat.USERACTIONSERVICE);
		userActionService.LogUserAction(userActionBean);
	}
	public int selectCountInfosByPage(UserActionBean userActionBean) {
		return userActionDAO.selectCountInfosByPage(userActionBean);
	}
	public List<UserActionBean> selectInfosByPage(UserActionBean userActionBean) {
		return userActionDAO.selectInfosByPage(userActionBean);
	}
}