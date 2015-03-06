
package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.QuanJingBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.MessageService;
import com.zhike.sql.services.QuanJingService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.QuanJingViewModel;

public class QuanJingAction extends ActionSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public PageBean pageBean;

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;
	
	private QuanJingViewModel quanjingViewModel;
	
	public QuanJingViewModel getQuanjingViewModel() {
		return quanjingViewModel;
	}

	public void setQuanjingViewModel(QuanJingViewModel quanjingViewModel) {
		this.quanjingViewModel = quanjingViewModel;
	}

	public String addNewQuanJing() throws Exception {
		String result = null;
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(quanjingViewModel == null) {
			result = new String("{status:'fail',content:'添加全景失败'}");
		} else if("".equals(quanjingViewModel.getTitle())) {
			result = new String("{status:'fail',content:'请填写标题'}");
		} else {
			String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			quanjingViewModel.setAppid(appId);
			quanjingViewModel.setUid(String.valueOf(checkLoginBean.getId()));
	
			QuanJingBean quanjingBean = new QuanJingBean();
			quanjingBean.setAppid(quanjingViewModel.getAppid());
			quanjingBean.setTitle(quanjingViewModel.getTitle());
			quanjingBean.setUrl1(quanjingViewModel.getUrl1());
			quanjingBean.setUrl2(quanjingViewModel.getUrl2());
			quanjingBean.setUrl3(quanjingViewModel.getUrl3());
			quanjingBean.setUrl4(quanjingViewModel.getUrl4());
			quanjingBean.setUrl5(quanjingViewModel.getUrl5());
			quanjingBean.setUrl6(quanjingViewModel.getUrl6());
			quanjingBean.setText(quanjingViewModel.getText());
			quanjingBean.setKeywords(quanjingViewModel.getKeywords());
			quanjingBean.setUid(quanjingViewModel.getUid());
			quanjingBean.setImg(quanjingViewModel.getImg());
			
			boolean b = quanjingService.addNewQuanJing(quanjingBean);
			if(b) {
				result = new String("{status:'success',content:'quanjing!cogInfo.action'}");
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(quanjingBean));
			} else {
				result = new String("{status:'fail',content:'添加失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String updateQuanJing() throws Exception {
		String result = null;
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		if(quanjingViewModel == null) {
			result = new String("{status:'fail',content:'编辑失败'}");
		} else if("".equals(quanjingViewModel.getTitle())) {
			result = new String("{status:'fail',content:'请填写标题'}");
		} else {
			boolean b = quanjingService.updateQuanJing(quanjingViewModel);
			if(b) {
				result = new String("{status:'success',content:'quanjing!cogInfo.action'}");
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(quanjingViewModel));
			} else {
				result = new String("{status:'fail',content:'编辑失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String deleteQuanJing() throws Exception {
		String result = null;
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		boolean b = quanjingService.delOneQuanJing(quanjingViewModel);
		if(b) {
			result = new String("{status:'success',content:'showAllQuanJing!cogInfo.action'}");
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(quanjingViewModel));
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String cogInfo(){
		return "cog";
	}
	
	//查总数
	public String requeryCogPage() {
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		quanjingViewModel.setAppid(appId);
		int totalRecord = quanjingService.selectCountInfosByPage(quanjingViewModel);
//		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
//		//page.currentPage 从前台传回
		pageBean.setTotalRecord(totalRecord);
		
		String result = new String("{currentPage_paginator:'"+pageBean.getCurrentPage()+"',totalPages_paginator:'"+pageBean.getTotalPageNum()+"',numberOfPages_paginator:'"+pageBean.getNumberOfPages()+"'}");
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//查数据
	public String requeryCogResult(){
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		quanjingViewModel.setAppid(appId);
		quanjingViewModel.setCount(pageBean.getPageSize());
		quanjingViewModel.setFrom(pageBean.getFrom());
		List<QuanJingBean> quanjingBeans = quanjingService.selectAllQuanJing(quanjingViewModel);

		RequestScopeFactory.RequestScope().setAttribute("quanjingBeanList", quanjingBeans);
		return "cogResult";
	}
	
	public String list() {
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		quanjingViewModel.setAppid(appId);
		quanjingViewModel.setCount(pageBean.getPageSize());
		quanjingViewModel.setFrom(pageBean.getFrom());
		List<QuanJingBean> quanjingBeans = quanjingService.selectAllQuanJing(quanjingViewModel);

		RequestScopeFactory.RequestScope().setAttribute("quanjingBeanList", quanjingBeans);
		
		return "list";
	}
	
	public String add() throws Exception {
		return "add";
	}
	
	public String edit() throws Exception {
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		QuanJingBean quanjingBean = new QuanJingBean();
		quanjingBean.setId(id);
		
		QuanJingBean quanjing = quanjingService.getQuanJing(quanjingBean);
		RequestScopeFactory.RequestScope().setAttribute("quanjingBean", quanjing);
		
		return "edit";
	}
	
	public String yulan() throws Exception {
		QuanJingService quanjingService = (QuanJingService) ApplicationContextFactory.getBean(Constat.QUANJINGSERVICE);
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		QuanJingBean quanjingBean = new QuanJingBean();
		quanjingBean.setId(serviceid);
		
		QuanJingBean quanjing = quanjingService.getQuanJing(quanjingBean);
		RequestScopeFactory.RequestScope().setAttribute("quanjingBean", quanjing);
		
		return "yulan";
	}
	
}
