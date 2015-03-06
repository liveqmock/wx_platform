package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.LiuyingBean;
import com.zhike.sql.beans.LiuyingInfoBean;
import com.zhike.sql.beans.MemberEntityCardBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.PhotoBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.ClockService;
import com.zhike.sql.services.LiuyingService;
import com.zhike.sql.services.PhotoService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class LiuyingAction extends ActionSupport{
	
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
		MemberEntityCardBean entityCard = new MemberEntityCardBean();
		
	
		String result = null;
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			//e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String list() {
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		LiuyingBean liuyingBean = new LiuyingBean();
		liuyingBean.setApp_id(Long.parseLong(appId));
		
		List<LiuyingBean> liuyingBeanList = liuyingService.selectAllByAppID(liuyingBean);
		RequestScopeFactory.RequestScope().setAttribute("liuyingBeanList", liuyingBeanList);
		return "list";
	}

	/**
	 * 增加	
	 */
	public String add() {
		return "add";
	}
	
	/**
	 * 保存增加	
	 */
	public String addSave() {
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		
		if(appId!=null){
			String result = null;
			liuyingBean.setApp_id(Long.parseLong(appId));
			//基本设置
			if(liuyingBean.getKeywords().length()==0||liuyingBean.getKeywords().length()>30){
				result="关键词不能为空且长度不能超过30字";
			}else if(liuyingBean.getTitle().length()==0||liuyingBean.getTitle().length()>64){
				result="标题不能为空且长度不能超过64字";
			}else if(liuyingBean.getImg().length()==0){
				result="必须插入一张封面图片";
			}else if(liuyingBean.getDesc_service().length()>120){
				result="摘要若不为空则长度不能超过120字";
			}
			else{
				//校验成功,录入数据库
				LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
				
				if(liuyingService.insertOneLiuying(liuyingBean)>0){
					//更新中间表
					ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(liuyingBean));
					result="success";
				}
				
				
			}
			
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				//e.printStackTrace();
			}
			return SUCCESS;
			
			
		}else{
			return "logOut";
		}
	}
	
	/**
	 * 修改	
	 */
	public String edit() {
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		LiuyingBean liuyingBean   = new LiuyingBean();
		liuyingBean.setId(Long.parseLong(id));
		liuyingBean = liuyingService.selectOneLiuyingById(liuyingBean);
		
		RequestScopeFactory.RequestScope().setAttribute("liuyingBean", liuyingBean);
		return "edit";
	}
	/**
	 * 保存修改	
	 */
	public String editSave() {
		//获取APPID
			String result = null;
			//基本设置
			if(liuyingBean.getKeywords().length()==0||liuyingBean.getKeywords().length()>30){
				result="关键词不能为空且长度不能超过30字";
			}else if(liuyingBean.getTitle().length()==0||liuyingBean.getTitle().length()>64){
				result="标题不能为空且长度不能超过64字";
			}else if(liuyingBean.getImg().length()==0){
				result="必须插入一张封面图片";
			}else if(liuyingBean.getDesc_service().length()>120){
				result="摘要若不为空则长度不能超过120字";
			}
			else{
				//校验成功,录入数据库
				LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
				
				if(liuyingService.updateOneLiuyingById(liuyingBean)>0){
					//更新中间表
					ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(liuyingBean));
					result="success";
				}
				
				
			}
			
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				//e.printStackTrace();
			}
			return SUCCESS;
			
	}
	
	//删除一条留影墙
	public String deleteOneLiuying() {
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		String result = null;
		if(liuyingService.delOneLiuyingById(liuyingBean)>0){
			delOneImg(0,liuyingBean.getId());
			
			
			//删除中间关联表 ACIONLINK
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(liuyingBean));
			result = "success";
		}
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
		
	}
	
	
	
	//管理留影
	public String cogInfo(){
		String service_id = RequestScopeFactory.RequestScope().getParameter("service_id");
		
		RequestScopeFactory.RequestScope().setAttribute("service_id", service_id);
		return "cog";
	}
	
	
	//查总数
	public String requeryCogPage() {
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		

		
		int totalRecord = liuyingService.selectCountInfosByPage(liuyingInfoBean);
//		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
//		//page.currentPage 从前台传回
		pageBean.setTotalRecord(totalRecord);
		
		String result = new String("{currentPage_paginator:'"+pageBean.getCurrentPage()+"',totalPages_paginator:'"+pageBean.getTotalPageNum()+"',numberOfPages_paginator:'"+pageBean.getNumberOfPages()+"',totalRecord:'"+totalRecord+"'}");
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	//查数据
	public String requeryCogResult(){
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		
		liuyingInfoBean.setCount(pageBean.getPageSize());
		liuyingInfoBean.setFrom(pageBean.getFrom());
		List<LiuyingInfoBean> liuyingInfoBeanList = liuyingService.selectInfosByPage(liuyingInfoBean);

		RequestScopeFactory.RequestScope().setAttribute("liuyingInfoBeanList", liuyingInfoBeanList);
		return "cogResult";
	}
	
	//删除一条留言
	public String deleteOneInfo() {
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		String result = null;
		if(delOneImg(liuyingInfoBean.getId(),0)){
			result = "success";
		}
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
		
	}
	
	//删除一个或者一组图片
	public boolean delOneImg(long id,long service_id){
		boolean returnResult = false;
		
		if(id != 0){
			LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
			LiuyingInfoBean liuyingInfoBean = new LiuyingInfoBean();
			liuyingInfoBean.setId(id);
			liuyingInfoBean = liuyingService.selectOneLiuyingInfoById(liuyingInfoBean);
			String url = RequestScopeFactory.RequestScope().getSession().getServletContext().getRealPath("")+liuyingInfoBean.getLiuying();
			//删除一张图片
			 File f = new File(url);
			 boolean result = f.delete();
			 if(result){
				 if(liuyingService.delOneInfoById(liuyingInfoBean)>0){
					 returnResult = true;
				 }
			 }
		}else if(service_id != 0){
			//删除一组图片
			LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
			LiuyingInfoBean liuyingInfoBean = new LiuyingInfoBean();
			liuyingInfoBean.setService_id(service_id);
			List<LiuyingInfoBean> liuyingInfoBeanList = liuyingService.selectLiuyingInfoByServiceId(liuyingInfoBean);
			for(int i=0;i<liuyingInfoBeanList.size();i++){
				LiuyingInfoBean tempBean = liuyingInfoBeanList.get(i);
				String url = RequestScopeFactory.RequestScope().getSession().getServletContext().getRealPath("")+tempBean.getLiuying();
				//删除一张图片
				 File f = new File(url);
				 boolean result = f.delete();
			}
			 if(liuyingService.delInfosByServiceId(liuyingInfoBean)>0){
				 returnResult = true;
			 }
		}
		
		
		
		return returnResult;
	}
	
	
	public String previewLiuying() {
		String service_id = RequestScopeFactory.RequestScope().getParameter("service_id");
		LiuyingService liuyingService  = (LiuyingService) ApplicationContextFactory.getBean(Constat.LIUYINGSERVICE);
		LiuyingBean liuyingBean = new LiuyingBean();
		liuyingBean.setId(Long.parseLong(service_id) );
		liuyingBean = liuyingService.selectOneLiuyingById(liuyingBean);
	
		RequestScopeFactory.RequestScope().setAttribute("liuyingBean", liuyingBean);
		return "liuying";
	}
	
	
}
