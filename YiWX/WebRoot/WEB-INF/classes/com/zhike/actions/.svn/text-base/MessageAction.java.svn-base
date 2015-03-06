
package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.MessageService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.APPKeyViewModel;
import com.zhike.viewmodels.MessageViewModel;
import com.zhike.viewmodels.MessagebasicViewModel;

public class MessageAction extends ActionSupport {
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
	
	private MessageViewModel messageViewModel;
	
	private MessagebasicViewModel messagebasicViewModel;
	
	private MessageBean messageBean;
	
	private MessagebasicBean messagebasicBean;
	
	
	

	public MessagebasicBean getMessagebasicBean() {
		return messagebasicBean;
	}

	public void setMessagebasicBean(MessagebasicBean messagebasicBean) {
		this.messagebasicBean = messagebasicBean;
	}

	public MessageBean getMessageBean() {
		return messageBean;
	}

	public void setMessageBean(MessageBean messageBean) {
		this.messageBean = messageBean;
	}

	public MessageViewModel getMessageViewModel() {
		return messageViewModel;
	}

	public void setMessageViewModel(MessageViewModel messageViewModel) {
		this.messageViewModel = messageViewModel;
	}

	public String selectAllMessages() throws Exception {
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
//		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		//add 0312
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		String openid = RequestScopeFactory.RequestScope().getParameter("openid");//手机用户ID 预留
		//end 0312
		MessagebasicBean messagebasicBean = new MessagebasicBean();
		messagebasicBean.setId(serviceid);
		messagebasicBean = messageService.selectOneMessagebasic(messagebasicBean);
		if(messagebasicBean==null){
			return ERROR;
		}
		List<MessageBean> messageBeans = messageService.selectAllMessages(messagebasicBean);
		RequestScopeFactory.RequestScope().setAttribute("messagebasicBean", messagebasicBean);
		RequestScopeFactory.RequestScope().setAttribute("messageBeans", messageBeans);
		
		
		return SUCCESS;
	}
	
	public String addNewMessage() throws Exception {
		String result = null;
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		if(messageViewModel == null) {
			result = new String("{status:'fail',content:'留言失败'}");
		} else if("".equals(messageViewModel.getSender())) {
			result = new String("{status:'fail',content:'请填写姓名'}");
		} else if("".equals(messageViewModel.getText())) {
			result = new String("{status:'fail',content:'留言内容不能为空'}");
		} else {

			MessageBean messageBean = new MessageBean();
			messageBean.setServiceid(Long.parseLong(messagebasicBean.getId()));
			messageBean.setSender(messageViewModel.getSender());
			messageBean.setTel(messageViewModel.getTel());
			messageBean.setText(messageViewModel.getText());
			
			boolean b = messageService.addNewMessage(messageBean);
			if(b) {
				result = new String("{status:'success',content:'showMessages.action?serviceid="+messagebasicBean.getId()+"&openid=yes'}");
			} else {
				result = new String("{status:'fail',content:'留言失败'}");
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String updateMessage() throws Exception {
		String result = null;
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		if(messageViewModel == null) {
			result = new String("{status:'fail',content:'回复失败'}");
		} else if("".equals(messageViewModel.getReply())) {
			result = new String("{status:'fail',content:'回复内容不能为空'}");
		} else {
			boolean b = messageService.updateMessage(messageViewModel);
			if(b) {
				result = new String("{status:'success',content:'showAllMessages!cogInfo.action'}");
			} else {
				result = new String("{status:'fail',content:'留言失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String deleteMessage() throws Exception {
		String result = null;
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		boolean b = messageService.delOneMessage(messageViewModel);
		if(b) {
			result = new String("{status:'success',content:'showAllMessages!cogInfo.action'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String cogInfo(){
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		
		return "cog";
	}
	
	//查总数
	public String requeryCogPage() {
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		
		
		int totalRecord = messageService.selectCountInfosByPage(messageBean);
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
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		messageBean.setCount(pageBean.getPageSize());
		messageBean.setFrom(pageBean.getFrom());
		List<MessageBean> messageBeans = messageService.selectMessagesAll(messageBean);

		RequestScopeFactory.RequestScope().setAttribute("messageBeanList", messageBeans);
		return "cogResult";
	}
	
	
	public String addNewMessagebasic() throws Exception {
		String result = null;
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(messagebasicViewModel == null) {
			result = new String("{status:'fail',content:'添加留言板失败'}");
		}  else {
			String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			
			// TODO Auto-generated method stub
			MessagebasicBean messagebasicBean = new MessagebasicBean();
			messagebasicBean.setAppid(appId);
			messagebasicBean.setUid(String.valueOf(checkLoginBean.getId()));
			messagebasicBean.setTitle(messagebasicViewModel.getTitle());
			messagebasicBean.setKeywords(messagebasicViewModel.getKeywords());
			messagebasicBean.setDescs(messagebasicViewModel.getDescs());
			messagebasicBean.setImg(messagebasicViewModel.getImg());
			
			boolean b = messageService.addNewMessagebasic(messagebasicBean);
			if(b) {
				//更新中间表
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(messagebasicBean));				
				result = new String("{status:'success',content:'messagebasic!list.action'}");
			} else {
				result = new String("{status:'fail',content:'添加留言板失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String updateMessagebasic() throws Exception {
		String result = null;
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		if(messagebasicViewModel == null) {
			result = new String("{status:'fail',content:'修改留言板失败'}");
		} else {
			MessagebasicBean messagebasicBean = new MessagebasicBean();
			messagebasicBean.setTitle(messagebasicViewModel.getTitle());
			messagebasicBean.setKeywords(messagebasicViewModel.getKeywords());
			messagebasicBean.setDescs(messagebasicViewModel.getDescs());
			messagebasicBean.setImg(messagebasicViewModel.getImg());
			messagebasicBean.setId(messagebasicViewModel.getId());			
			boolean b = messageService.updateMessagebasic(messagebasicBean);
			if(b) {
				//更新中间表
				
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(messagebasicBean));
				
				result = new String("{status:'success',content:'messagebasic!list.action'}");
			} else {
				result = new String("{status:'fail',content:'修改留言板失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String delOneMessagebasic() throws Exception {
		String result = null;
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		MessagebasicBean messagebasicBean = new MessagebasicBean();
		messagebasicBean.setId(id);
		boolean b = messageService.delOneMessagebasic(messagebasicBean);
		if(b) {
			messageService.delMessageByServiceid(messagebasicBean);
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(messagebasicBean));
			result = new String("{status:'success',content:'messagebasic!list.action'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	//查总数
	public String requerymbasicCogPage() {
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		MessagebasicBean messagebasicBean = new MessagebasicBean();
		messagebasicBean.setAppid(appId);
		int totalRecord = messageService.selectCountmbasicInfosByPage(messagebasicBean);
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
	public String requerymbasicCogResult(){
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		messagebasicViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		messagebasicViewModel.setAppid(appId);
		messagebasicViewModel.setCount(pageBean.getPageSize());
		messagebasicViewModel.setFrom(pageBean.getFrom());
		List<MessagebasicBean> messagebasicBeans = messageService.selectAllMessagebasic(messagebasicViewModel);

		RequestScopeFactory.RequestScope().setAttribute("messagebasicBeans", messagebasicBeans);
		return "cogmbasicResult";
	}
	
	public String list(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		//2获取活动ID
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		MessagebasicViewModel mbViewModel = new MessagebasicViewModel();
		mbViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		mbViewModel.setAppid(appId);
		List<MessagebasicBean> messagebasicBeans = messageService.selectAllMessagebasic(mbViewModel);

		RequestScopeFactory.RequestScope().setAttribute("messagebasicBeans", messagebasicBeans);
		
		return "list";
	}
	
	public String edit() throws Exception {
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		MessagebasicBean mbasic = new MessagebasicBean();
		mbasic.setId(id);
		mbasic.setAppid(appId);
		mbasic.setUid(String.valueOf(checkLoginBean.getId()));
		MessagebasicBean messagebasicBean = messageService.getMessagebasicBean(mbasic);
		
		if(messagebasicBean != null){
			RequestScopeFactory.RequestScope().setAttribute("messagebasicBean", messagebasicBean);
			return "edit";
		}else{
			return "add";
		}
	}
	
	public String add() throws Exception {
		return "add";
	}

	public MessagebasicViewModel getMessagebasicViewModel() {
		return messagebasicViewModel;
	}

	public void setMessagebasicViewModel(MessagebasicViewModel messagebasicViewModel) {
		this.messagebasicViewModel = messagebasicViewModel;
	}
}
