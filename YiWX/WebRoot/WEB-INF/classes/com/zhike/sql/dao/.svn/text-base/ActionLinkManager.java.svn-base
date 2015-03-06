package com.zhike.sql.dao;

import com.zhike.finals.Constat;
import com.zhike.sql.beans.ActionLinkBean;
import com.zhike.sql.services.ActionLinkService;
import com.zhike.utils.ApplicationContextFactory;

public class ActionLinkManager {

	
	//增加或者更新
	public static long addNewActionLink(ActionLinkBean actionLinkBean){
		ActionLinkService actionLinkService = (ActionLinkService) ApplicationContextFactory.getBean(Constat.ACTIONLINKSERVICE);
		return actionLinkService.addNewActionLink(actionLinkBean);
	}
	
	//删除
	public static boolean deleteActionLink(ActionLinkBean actionLinkBean){
		ActionLinkService actionLinkService = (ActionLinkService) ApplicationContextFactory.getBean(Constat.ACTIONLINKSERVICE);
		return actionLinkService.deleteActionLink(actionLinkBean);
	}
	
	public static long updateNewActionLink(ActionLinkBean actionLinkBean){
		ActionLinkService actionLinkService = (ActionLinkService) ApplicationContextFactory.getBean(Constat.ACTIONLINKSERVICE);
		return actionLinkService.updateNewActionLink(actionLinkBean);
	}
	
	public static ActionLinkBean selectActionLinkByAppIdAndKeyword(ActionLinkBean bean){
		ActionLinkService actionLinkService = (ActionLinkService) ApplicationContextFactory.getBean(Constat.ACTIONLINKSERVICE);
		return actionLinkService.selectActionLinkByAppIdAndKeyword(bean);
	}
}
