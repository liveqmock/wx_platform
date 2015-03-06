package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionSupport;
import com.wechat.model.WxConfig;
import com.wechat.util.WeChat;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.LiuyingBean;
import com.zhike.sql.beans.LiuyingInfoBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.services.LiuyingService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class LiuyingWXAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public InputStream inputStream;
	
	public LiuyingBean liuyingBean;
	
	public LiuyingInfoBean liuyingInfoBean;
	
	public PageBean pageBean;
	
	
	
	
	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public LiuyingInfoBean getLiuyingInfoBean() {
		return liuyingInfoBean;
	}

	public void setLiuyingInfoBean(LiuyingInfoBean liuyingInfoBean) {
		this.liuyingInfoBean = liuyingInfoBean;
	}

	public InputStream getInputStream() {
		return inputStream;
	}
	
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	

	public LiuyingBean getLiuyingBean() {
		return liuyingBean;
	}

	public void setLiuyingBean(LiuyingBean liuyingBean) {
		this.liuyingBean = liuyingBean;
	}

	@Override
	public String execute() {
		String service_id = RequestScopeFactory.RequestScope().getParameter("serviceid");
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		LiuyingBean liuyingBean = new LiuyingBean();
		liuyingBean.setId(Long.parseLong(service_id) );
		liuyingBean = liuyingService.selectOneLiuyingById(liuyingBean);
	
		RequestScopeFactory.RequestScope().setAttribute("liuyingBean", liuyingBean);
		
		//获取网页路径
		HttpServletRequest httpRequest=(HttpServletRequest)RequestScopeFactory.RequestScope();  
		String url=httpRequest.getScheme()+"://"; 
		url+=httpRequest.getHeader("host"); 
		url+=httpRequest.getRequestURI(); 
		if(httpRequest.getQueryString()!=null) url+="?"+httpRequest.getQueryString(); 
		
		WeChat weChat = new WeChat();
		WxConfig wcConfig = weChat.getWxConfig(url.toString());
		RequestScopeFactory.RequestScope().setAttribute("wcConfig", wcConfig);
		
		return "liuying";
	}
	
	/**
	 * 查商品总数
	 * */	
	public String requeryPage() {
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		int totalRecord = liuyingService.selectCountLiuyingByPage(liuyingInfoBean);
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
	 * 查商品数据
	 * */
	public String requeryResult(){
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		liuyingInfoBean.setCount(pageBean.getPageSize());
		liuyingInfoBean.setFrom(pageBean.getFrom());
		List<LiuyingInfoBean> liuyingInfoBeanList = liuyingService.selectLiuyingByPage(liuyingInfoBean);
		
		RequestScopeFactory.RequestScope().setAttribute("liuyingInfoBeanList", liuyingInfoBeanList);
		return "liuying_result";
	}
	
	
	

	/**
	 * 增加	
	 */
	public String add() {
		String service_id = RequestScopeFactory.RequestScope().getParameter("serviceid");
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		LiuyingBean liuyingBean = new LiuyingBean();
		liuyingBean.setId(Long.parseLong(service_id) );
		liuyingBean = liuyingService.selectOneLiuyingById(liuyingBean);
		RequestScopeFactory.RequestScope().setAttribute("liuyingBean", liuyingBean);
		
		LiuyingInfoBean liuyingInfoBean = new LiuyingInfoBean();
		liuyingInfoBean.setService_id(Long.parseLong(service_id));
		RequestScopeFactory.RequestScope().setAttribute("liuyingInfoBean", liuyingInfoBean);
		
		
		
		//获取网页路径  FOR WX_JS_SDK CONFIG
		HttpServletRequest httpRequest=(HttpServletRequest)RequestScopeFactory.RequestScope();  
		String url=httpRequest.getScheme()+"://"; 
		url+=httpRequest.getHeader("host"); 
		url+=httpRequest.getRequestURI(); 
		if(httpRequest.getQueryString()!=null) url+="?"+httpRequest.getQueryString(); 
		
		WeChat weChat = new WeChat();
		WxConfig wcConfig = weChat.getWxConfig(url.toString());
		RequestScopeFactory.RequestScope().setAttribute("wcConfig", wcConfig);
		return "add";
	}
	
	/**
	 * 保存增加	
	 */
	
	public String addSave() {
		String result = null;
		String savePath = RequestScopeFactory.RequestScope().getRealPath("/")+"attached\\liuyanqiang\\"+liuyingInfoBean.getService_id()+"\\";
		String returnPath = RequestScopeFactory.RequestScope().getContextPath()+"\\attached\\liuyanqiang\\"+liuyingInfoBean.getService_id()+"\\";
		String media_id= liuyingInfoBean.getLiuying();	
		
		WeChat weChat = new WeChat();
		String url = weChat.downloadMedia(media_id,savePath,returnPath);
		if(url!=null){
			//留言留影
		
			liuyingInfoBean.setLiuying(url);
			//用户信息
			WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
			liuyingInfoBean.setName(checkWxSession.getNickname());
			liuyingInfoBean.setHead_img(checkWxSession.getHeadimgurl());
			//留言留影
			url = url.replaceAll("\\\\","/");
			liuyingInfoBean.setLiuying(url);
			
			LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
			liuyingService.insertOneLiuyingInfo(liuyingInfoBean);
			result = "success";
		}else{
			result ="上传图片失败";
		}
		
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}


}
