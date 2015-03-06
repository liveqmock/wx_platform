package com.zhike.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.utils.RequestScopeFactory;

public class APPAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	public String manageApp() throws Exception {
		String appId = (String) RequestScopeFactory.RequestScope().getParameter("appid");
		RequestScopeFactory.SessionScope().put("APPID", appId);
		String app_wx_name = new String(RequestScopeFactory.RequestScope().getParameter("app_wx_name").getBytes("ISO-8859-1"),"UTF-8");
			
		RequestScopeFactory.SessionScope().put("app_wx_name", app_wx_name);
		return SUCCESS;
	}
}
