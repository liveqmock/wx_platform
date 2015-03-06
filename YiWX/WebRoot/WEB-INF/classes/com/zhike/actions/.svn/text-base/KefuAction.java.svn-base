package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.UserActionBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.services.MemberService;
import com.zhike.sql.services.UserActionService;
import com.zhike.sql.services.WxUserService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class KefuAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private InputStream inputStream;
	public PageBean pageBean;
	public UserActionBean userActionBean;
	
	public InputStream getInputStream() {
		return inputStream;
	}


	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}


	public PageBean getPageBean() {
		return pageBean;
	}


	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}


	public UserActionBean getUserActionBean() {
		return userActionBean;
	}


	public void setUserActionBean(UserActionBean userActionBean) {
		this.userActionBean = userActionBean;
	}


	@Override
	public String execute() throws Exception {
		System.out.println("kefu");
		return "list";
	}
	
	/**
	 * 查总数
	 * */	
	public String requeryPage() {
		UserActionService userActionService = (UserActionService) ApplicationContextFactory.getBean(Constat.USERACTIONSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		userActionBean.setAppid(appId);
		int totalRecord = userActionService.selectCountInfosByPage(userActionBean);
		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
		//page.currentPage 从前台传回
		pageBean.setTotalRecord(totalRecord);
		
		String result = new String("{currentPage_paginator:'"+pageBean.getCurrentPage()+"',totalPages_paginator:'"+pageBean.getTotalPageNum()+"',numberOfPages_paginator:'"+pageBean.getNumberOfPages()+"',totalRecord:'"+totalRecord+"'}");
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/**
	 * 查数据
	 * */
	public String requeryResult(){
		UserActionService userActionService = (UserActionService) ApplicationContextFactory.getBean(Constat.USERACTIONSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		userActionBean.setAppid(appId);
		userActionBean.setCount(pageBean.getPageSize());
		userActionBean.setFrom(pageBean.getFrom());
		List<UserActionBean> userActionBeanList = userActionService.selectInfosByPage(userActionBean);
//		for(int i=0;i<memberInfoBeanList.size();i++){
//			WxUserBean wxUserBean = new WxUserBean();
//			wxUserBean.setId(memberInfoBeanList.get(i).getOpenid());
//			memberInfoBeanList.get(i).wxUserBean =  wxUserService.selectOneWxUserById(wxUserBean);
//			
//		}
		
		RequestScopeFactory.RequestScope().setAttribute("userActionBeanList", userActionBeanList);
		return "result";
	}
	
}
