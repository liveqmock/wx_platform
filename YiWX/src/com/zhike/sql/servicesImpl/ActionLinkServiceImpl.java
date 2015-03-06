package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.ActionLinkBean;
import com.zhike.sql.dao.ActionLinkDAO;
import com.zhike.sql.services.ActionLinkService;

public class ActionLinkServiceImpl implements ActionLinkService{

	public ActionLinkDAO getActionLinkDAO() {
		return actionLinkDAO;
	}

	public void setActionLinkDAO(ActionLinkDAO actionLinkDAO) {
		this.actionLinkDAO = actionLinkDAO;
	}

	public ActionLinkDAO actionLinkDAO ;
	
	//增加或者更新
	public long addNewActionLink(ActionLinkBean actionLinkBean){
		if(actionLinkDAO.addNewActionLink(actionLinkBean) > 0 ){
			return Long.parseLong(actionLinkBean.getId());
		}
		else{
			return -1;
		}
	}
	
	//删除
	public boolean deleteActionLink(ActionLinkBean actionLinkBean){
		return actionLinkDAO.deleteActionLink(actionLinkBean) > 0;
	}
	
	public long updateNewActionLink(ActionLinkBean actionLinkBean){
		//先移除
		deleteActionLink(actionLinkBean);
		//增加
		return addNewActionLink(actionLinkBean);
	}
	
	public ActionLinkBean selectActionLinkByAppIdAndKeyword(ActionLinkBean bean){
		return actionLinkDAO.selectActionLinkByAppIdAndKeyword(bean);
	}

	public List<ActionLinkBean> selectActionLinkByUIDAndAppId(ActionLinkBean bean) {
		return actionLinkDAO.selectActionLinkByUIDAndAppId(bean);
	}
}
