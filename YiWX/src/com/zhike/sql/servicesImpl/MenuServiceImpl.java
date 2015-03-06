package com.zhike.sql.servicesImpl;

import com.zhike.sql.beans.MenuBean;
import com.zhike.sql.dao.MenuDAO;
import com.zhike.sql.services.MenuService;

public class MenuServiceImpl implements MenuService {

	public MenuDAO getMenuDAO() {
		return menuDAO;
	}

	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	public MenuDAO menuDAO;

	public MenuBean selectMenuByAppId(MenuBean menuBean) {
		return menuDAO.selectMenuByAppId(menuBean);
	}

	public boolean updateMenuByAppId(MenuBean menuBean) {
		menuDAO.deleteMenuBYAppId(menuBean);
		return menuDAO.addNewMenuByAppId(menuBean) > 0;
	}


}
