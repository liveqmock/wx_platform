package com.zhike.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.ActionLinkBean;
import com.zhike.sql.beans.ActionLinkTypes;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.services.ActionLinkService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class LinkAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int ERROR = -1;
	public static final int WX_GW = 0;
	public static final int WX_LY = 1;
	public static final int WX_HY = 2;
	public static final int WX_QJ = 3;
	public static final int WX_XC = 4;
	public static final int WX_YY = 5;
	public static final int WX_ZP = 6;
	public static final int WX_GK = 7;
	public static final int WX_DY = 8;
	
	private static final String NOTFOUND = "";
	
	private static List<ActionLinkTypes> linkTypes = new ArrayList<ActionLinkTypes>();

	private static Map<Integer, ActionLinkTypes> actions = new HashMap<Integer, ActionLinkTypes>();
	static {
		linkTypes.add(new ActionLinkTypes(0,"微官网",0));
		linkTypes.add(new ActionLinkTypes(1,"微留言",0));
		linkTypes.add(new ActionLinkTypes(2,"微会员",1));
		linkTypes.add(new ActionLinkTypes(3,"微全景",1));
		linkTypes.add(new ActionLinkTypes(4,"微相册",1));
		linkTypes.add(new ActionLinkTypes(5,"微预约",1));
		linkTypes.add(new ActionLinkTypes(6,"大转盘",1));
		linkTypes.add(new ActionLinkTypes(7,"刮刮卡",1));
		linkTypes.add(new ActionLinkTypes(8,"微调研",1));
		linkTypes.add(new ActionLinkTypes(9,"留影墙",1));
		
		for(ActionLinkTypes types : linkTypes){
			actions.put(types.key, types);
		}
	}
	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	public static String getReflectName(int requireDiv){
		String result = null;
		switch (requireDiv) {
		case 0:
			result = "微官网";
			break;
		case 1:
			result = "微留言";
			break;
		case 2:
			result = "微会员";
			break;
		case 3:
			result = "微全景";
			break;
		case 4:
			result = "微相册";
			break;
		case 5:
			result = "微预约";
			break;
		case 6:
			result = "大转盘";
			break;
		case 7:
			result = "刮刮卡";
			break;
		case 8:
			result = "微调研";
			break;
		case 9:
			result = "打卡";
			break;
		case 10:
			result = "留影墙";
			break;
		}
		return result;
	}
	
	public static String getReflectDIV(int requireDiv){
		String result = null;
		switch (requireDiv) {
		case 0:
			result = "div_gw";
			break;
		case 1:
			result = "div_ly";
			break;
		case 2:
			result = "div_hy";
			break;
		case 3:
			result = "div_qj";
			break;
		case 4:
			result = "div_xc";
			break;
		case 5:
			result = "div_yy";
			break;
		case 6:
			result = "div_zp";
			break;
		case 7:
			result = "div_gk";
			break;
		case 8:
			result = "div_dy";
			break;
		case 9:
			result = "div_dk";
			break;
		case 10:
			result = "div_lyq";
			break;
		}
		return result;
	}
	
	
	public String linkActionEvents() throws Exception{
		actionLinkFactory();
		//组装事件
		return SUCCESS;
	}
	
	public static void actionLinkFactory(){
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		ActionLinkService actionLinkService = (ActionLinkService) ApplicationContextFactory.getBean(Constat.ACTIONLINKSERVICE);
		ActionLinkBean bean = new ActionLinkBean();
		bean.setAppid(appId);
		bean.setUid(String.valueOf(checkLoginBean.getId()));
		List<ActionLinkBean> actionLinkBeans = actionLinkService.selectActionLinkByUIDAndAppId(bean);

		Map<Integer,List<ActionLinkBean>> albResults = new HashMap<Integer,List<ActionLinkBean>>(); 

		for(ActionLinkBean alkBean : actionLinkBeans){
			List<ActionLinkBean> list = null;
			if(albResults.containsKey(alkBean.getType())){
				list = albResults.get(alkBean.getType());
			}
			else{
				list = new ArrayList<ActionLinkBean>();
				albResults.put(alkBean.getType(),list);
			}
			list.add(alkBean);
		}
		
		RequestScopeFactory.RequestScope().setAttribute("L_ACTIONS", albResults);
	}
}