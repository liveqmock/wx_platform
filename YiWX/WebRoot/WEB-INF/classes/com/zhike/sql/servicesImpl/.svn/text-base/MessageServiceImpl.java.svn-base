package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.dao.MessageDAO;
import com.zhike.sql.services.MessageService;
import com.zhike.viewmodels.MessageViewModel;
import com.zhike.viewmodels.MessagebasicViewModel;

public class MessageServiceImpl implements MessageService {

	private MessageDAO messageDAO;
	
	public MessageDAO getMessageDAO() {
		return messageDAO;
	}

	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

	public boolean addNewMessage(MessageBean messageBean) {
		return messageDAO.addNewMessage(messageBean) > 0;
	}

	public List<MessageBean> selectAllMessages(MessagebasicBean messagebasicBean) {
		return messageDAO.selectAllMessages(messagebasicBean);
	}
	
	public List<MessageBean> selectMessagesAll(MessageBean messageBean) {
		return messageDAO.selectMessagesAll(messageBean);
	}

	public boolean delOneMessage(MessageViewModel messageViewModel) {
		MessageBean messageBean = new MessageBean();
		messageBean.setId(messageViewModel.getId());
		
		return messageDAO.delOneMessage(messageBean) > 0;
	}

	public boolean updateMessage(MessageViewModel messageViewModel) {
		MessageBean messageBean = new MessageBean();
		messageBean.setId(messageViewModel.getId());
		messageBean.setReply(messageViewModel.getReply());
		
		return messageDAO.updateMessage(messageBean) > 0;
	}

	public int selectCountInfosByPage(MessageBean messageBean) {
		return messageDAO.selectCountInfosByPage(messageBean);
	}

	public boolean addNewMessagebasic(MessagebasicBean messagebasicBean) {
		return messageDAO.addNewMessagebasic(messagebasicBean) > 0;
	}

	public boolean delOneMessagebasic(
			MessagebasicBean messagebasicBean) {
		// TODO Auto-generated method stub
		
		return messageDAO.delOneMessagebasic(messagebasicBean) > 0;
	}

	public MessagebasicBean getMessagebasicBean(
			MessagebasicBean messagebasicBean) {
		// TODO Auto-generated method stub
		return messageDAO.getMessagebasicBean(messagebasicBean);
	}

	public List<MessagebasicBean> selectAllMessagebasic(
			MessagebasicViewModel messagebasicViewModel) {
		// TODO Auto-generated method stub
		MessagebasicBean messagebasicBean = new MessagebasicBean();
		messagebasicBean.setAppid(messagebasicViewModel.getAppid());
		messagebasicBean.setUid(messagebasicViewModel.getUid());
//		messagebasicBean.setFrom(messagebasicViewModel.getFrom());
//		messagebasicBean.setCount(messagebasicViewModel.getCount());
		
		return messageDAO.selectAllMessagebasic(messagebasicBean);
	}

	public boolean updateMessagebasic(
			MessagebasicBean messagebasicBean) {
		
		return messageDAO.updateMessagebasic(messagebasicBean) > 0;
	}

	public int selectCountmbasicInfosByPage(MessagebasicBean messagebasicBean) {
		return messageDAO.selectCountmbasicInfosByPage(messagebasicBean);
	}


	public MessagebasicBean selectOneMessagebasic(MessagebasicBean messagebasicBean) {
		return messageDAO.selectOneMessagebasic(messagebasicBean);
	}

	public int delMessageByServiceid(MessagebasicBean messagebasicBean) {
		return messageDAO.delMessageByServiceid(messagebasicBean);
	}


}
