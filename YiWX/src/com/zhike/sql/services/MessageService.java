package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.viewmodels.MessageViewModel;
import com.zhike.viewmodels.MessagebasicViewModel;

public interface MessageService {

	public boolean addNewMessage(MessageBean messageBean);
	
	public List<MessageBean> selectAllMessages(MessagebasicBean messagebasicBean);
	
	public boolean updateMessage(MessageViewModel messageViewModel);
	
	public boolean delOneMessage(MessageViewModel messageViewModel);
	
	public int selectCountInfosByPage(MessageBean messageBean);
	
	public List<MessageBean> selectMessagesAll(MessageBean messageBean);
	
	
	public boolean addNewMessagebasic(MessagebasicBean messagebasicBean);
	
	public boolean updateMessagebasic(MessagebasicBean messagebasicBean);
	
	public boolean delOneMessagebasic(MessagebasicBean messagebasicBean);
	
	public MessagebasicBean getMessagebasicBean(MessagebasicBean messagebasicBean);
	
	public List<MessagebasicBean> selectAllMessagebasic(MessagebasicViewModel messagebasicViewModel);
	
	public int selectCountmbasicInfosByPage(MessagebasicBean messagebasicBean);

	public MessagebasicBean selectOneMessagebasic(
			MessagebasicBean messagebasicBean);

	public int delMessageByServiceid(MessagebasicBean messagebasicBean);
	
}
