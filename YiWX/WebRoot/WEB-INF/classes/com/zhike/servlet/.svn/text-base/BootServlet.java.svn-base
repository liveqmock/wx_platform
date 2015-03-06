package com.zhike.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import com.zhike.finals.Constat;
import com.zhike.sql.services.APPManagerService;
import com.zhike.utils.ApplicationContextFactory;

public class BootServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		super.init();
		APPManagerService appManagerService = (APPManagerService) ApplicationContextFactory.getBean(Constat.APPMANAGERSERVICE);
		appManagerService.initAPPKeys();
	}
}
