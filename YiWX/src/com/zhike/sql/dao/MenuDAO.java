package com.zhike.sql.dao;

import com.zhike.sql.beans.MenuBean;

public interface MenuDAO {
	public MenuBean selectMenuByAppId(MenuBean menuBean);

	public int addNewMenuByAppId(MenuBean menuBean);

	public int deleteMenuBYAppId(MenuBean menuBean);

	public int updateMenuByForAppkeyAndAppsecret(MenuBean menuBean);
}
