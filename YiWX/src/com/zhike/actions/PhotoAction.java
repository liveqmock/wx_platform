
package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.PhotoBean;
import com.zhike.sql.beans.PhotobasicBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.MessageService;
import com.zhike.sql.services.PhotoService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.MessagebasicViewModel;
import com.zhike.viewmodels.PhotoViewModel;
import com.zhike.viewmodels.PhotobasicViewModel;

public class PhotoAction extends ActionSupport {
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
	
	private PhotoViewModel photoViewModel;
	
	private PhotobasicViewModel photobasicViewModel;
	
	public PhotobasicViewModel getPhotobasicViewModel() {
		return photobasicViewModel;
	}

	public void setPhotobasicViewModel(PhotobasicViewModel photobasicViewModel) {
		this.photobasicViewModel = photobasicViewModel;
	}

	public PhotoViewModel getPhotoViewModel() {
		return photoViewModel;
	}

	public void setPhotoViewModel(PhotoViewModel photoViewModel) {
		this.photoViewModel = photoViewModel;
	}

	public String addNewPhoto() throws Exception {
		String result = null;
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(photoViewModel == null) {
			result = new String("{status:'fail',content:'添加相册失败'}");
		} else if("".equals(photoViewModel.getTitle())) {
			result = new String("{status:'fail',content:'请填写标题'}");
		} else {
			String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			photoViewModel.setAppid(appId);
			photoViewModel.setUid(String.valueOf(checkLoginBean.getId()));
			boolean b = photoService.addNewPhoto(photoViewModel);
			if(b) {
				result = new String("{status:'success',content:'photo!cogInfo.action?serviceid="+photoViewModel.getId()+"'}");
			} else {
				result = new String("{status:'fail',content:'留言失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String updatePhoto() throws Exception {
		String result = null;
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(photoViewModel == null) {
			result = new String("{status:'fail',content:'编辑失败'}");
		} else if("".equals(photoViewModel.getTitle())) {
			result = new String("{status:'fail',content:'请填写标题'}");
		} else {
			String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			photoViewModel.setAppid(appId);
			photoViewModel.setUid(String.valueOf(checkLoginBean.getId()));
			boolean b = photoService.updatePhoto(photoViewModel);
			if(b) {
				result = new String("{status:'success',content:'photo!cogInfo.action?serviceid="+photoViewModel.getServiceid()+"'}");
			} else {
				result = new String("{status:'fail',content:'编辑失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String deletePhoto() throws Exception {
		String result = null;
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		photoViewModel.setAppid(appId);
		photoViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		boolean b = photoService.delOnePhoto(photoViewModel);
		if(b) {
			result = new String("{status:'success',content:'photo!cogInfo.action?serviceid="+photoViewModel.getId()+"'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
//	public String cogInfo(){
//		return "cog";
//	}
	
	public String cogInfo(){
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		
		
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		return "cog";
	}
	
	//查总数
	public String requeryCogPage() {
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		PhotoBean photoBean = new PhotoBean();
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		photoBean.setAppid(appId);
		photoBean.setUid(String.valueOf(checkLoginBean.getId()));
		photoBean.setId( photoViewModel.getId());
//		photoViewModel.setAppid(appId);
		int totalRecord = photoService.selectCountInfosByPage(photoBean);
//		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
//		//page.currentPage 从前台传回
		pageBean.setTotalRecord(totalRecord);
		
		String result = new String("{currentPage_paginator:'"+pageBean.getCurrentPage()+"',totalPages_paginator:'"+pageBean.getTotalPageNum()+"',numberOfPages_paginator:'"+pageBean.getNumberOfPages()+"'}");
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	//查数据
	public String requeryCogResult(){
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		photoViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		photoViewModel.setAppid(appId);
		photoViewModel.setCount(pageBean.getPageSize());
		photoViewModel.setFrom(pageBean.getFrom());
		List<PhotoBean> photoBeans = photoService.selectAllPhoto(photoViewModel);

		RequestScopeFactory.RequestScope().setAttribute("photoBeanList", photoBeans);
		return "cogResult";
	}
	
//	public String add() throws Exception {
//		return "add";
//	}
	
	public String add() throws Exception {
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		return "add";
	}
	
	public String edit() throws Exception {
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		
		PhotoBean photoBean = new PhotoBean();
		photoBean.setId(id);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		photoBean.setUid(String.valueOf(checkLoginBean.getId()));
		PhotoBean photo = photoService.getPhotoBean(photoBean);
		
		if(photo != null){
			RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
			RequestScopeFactory.RequestScope().setAttribute("photoBean", photo);
			return "edit";
		}else{
			return "add";
		}
	}
	
	public String yulan() throws Exception {
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		PhotoBean photoBean = new PhotoBean();
		photoBean.setId(id);
		PhotoBean photo = photoService.getPhotoBean(photoBean);
		RequestScopeFactory.RequestScope().setAttribute("photoBean", photo);
		
		return "yulan";
	}
	
	//相册列表
	public String list() throws Exception {
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
//		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		PhotoBean photoBean = new PhotoBean();
		photoBean.setId(serviceid);
		PhotobasicBean photobasicBean = new PhotobasicBean();
		photobasicBean.setId(serviceid);
		photobasicBean = photoService.selectOnePhotobasic(photobasicBean);
		List<PhotoBean> photoBeans = photoService.selectListPhoto(photoBean);
		RequestScopeFactory.RequestScope().setAttribute("photoBeans", photoBeans);
		RequestScopeFactory.RequestScope().setAttribute("photobasicBean", photobasicBean);
		return "list";
	}
	
	public String basiclist(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		//2获取活动ID
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		PhotobasicViewModel pbViewModel = new PhotobasicViewModel();
		pbViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		pbViewModel.setAppid(appId);
		List<PhotobasicBean> photobasicBeans = photoService.selectAllPhotobasic(pbViewModel);

		RequestScopeFactory.RequestScope().setAttribute("photobasicBeans", photobasicBeans);
		
		return "basiclist";
	}

	public String basicadd() throws Exception {
		return "basicadd";
	}
	
	public String addNewPhotobasic() throws Exception {
		String result = null;
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(photobasicViewModel == null) {
			result = new String("{status:'fail',content:'添加相册失败'}");
		}  else {
			String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			photobasicViewModel.setAppid(appId);
			photobasicViewModel.setUid(String.valueOf(checkLoginBean.getId()));
			//转型
			PhotobasicBean photobasicBean = new PhotobasicBean();
			photobasicBean.setAppid(photobasicViewModel.getAppid());
			photobasicBean.setUid(photobasicViewModel.getUid());
			photobasicBean.setTitle(photobasicViewModel.getTitle());
			photobasicBean.setKeywords(photobasicViewModel.getKeywords());
			photobasicBean.setImg(photobasicViewModel.getImg());
			photobasicBean.setDescs(photobasicViewModel.getDescs());
			boolean b = photoService.addNewPhotobasic(photobasicBean);
			if(b) {
				//更新中间表
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(photobasicBean));				
				result = new String("{status:'success',content:'photobasic!basiclist.action'}");
			} else {
				result = new String("{status:'fail',content:'添加相册失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String basicedit() throws Exception {
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		PhotobasicBean pbasic = new PhotobasicBean();
		pbasic.setId(id);
		pbasic.setAppid(appId);
		pbasic.setUid(String.valueOf(checkLoginBean.getId()));
		PhotobasicBean photobasicBean = photoService.getPhotobasicBean(pbasic);
		
		if(photobasicBean != null){
			RequestScopeFactory.RequestScope().setAttribute("photobasicBean", photobasicBean);
			return "basicedit";
		}else{
			return "basicadd";
		}
	}
	
	public String updatePhotobasic() throws Exception {
		String result = null;
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		if(photobasicViewModel == null) {
			result = new String("{status:'fail',content:'修改相册信息失败'}");
		} else {
			PhotobasicBean photobasicBean = new PhotobasicBean();
			photobasicBean.setTitle(photobasicViewModel.getTitle());
			photobasicBean.setKeywords(photobasicViewModel.getKeywords());
			photobasicBean.setImg(photobasicViewModel.getImg());
			photobasicBean.setDescs(photobasicViewModel.getDescs());
			photobasicBean.setId(photobasicViewModel.getId());
			
			boolean b = photoService.updatePhotobasic(photobasicBean);
			if(b) {
				//更新中间表
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(photobasicBean));	
				result = new String("{status:'success',content:'photobasic!basiclist.action'}");
			} else {
				result = new String("{status:'fail',content:'修改相册信息失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String delOnePhotobasic() throws Exception {
		String result = null;
		PhotoService photoService = (PhotoService) ApplicationContextFactory.getBean(Constat.PHOTOSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		PhotobasicBean photobasicBean = new PhotobasicBean();
		photobasicBean.setId(id);
		boolean b = photoService.delOnePhotobasic(photobasicBean);
		if(b) {
			photoService.delPhotoByServiceid(photobasicBean);
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(photobasicBean));
			result = new String("{status:'success',content:'photobasic!basiclist.action'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
}
