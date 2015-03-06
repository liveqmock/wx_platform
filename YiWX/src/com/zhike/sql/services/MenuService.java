package com.zhike.sql.services;

import com.zhike.sql.beans.MenuBean;

public interface MenuService {
	// 根据应用程序的id查询
	public MenuBean selectMenuByAppId(MenuBean menuBean);

	// 更新
	public boolean updateMenuByAppId(MenuBean menuBean);

}
