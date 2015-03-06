package com.zhike.actions;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TokenUtils;

public class DispatchAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static List<String> actions = new ArrayList<String>();

	private static final String CONSTAT_ACTIONS[] = {"gerenxinxi","guanli","chongzhi","add_app"};
	private void initActions() {
		if (actions == null) {
			actions = new ArrayList<String>();
		}
		
		for(String string : CONSTAT_ACTIONS){
			actions.add(string);
		}
	}

	@Override
	public String execute() throws Exception {
		initActions();
		String action = RequestScopeFactory.RequestScope().getParameter("action");
		if(actions.contains(action)){
			
			if(action.compareTo("add_app") == 0){
				String token = TokenUtils.createGuid();
				RequestScopeFactory.RequestScope().setAttribute("wx_base64", token);
				RequestScopeFactory.RequestScope().setAttribute("wx_token", Constat.TOKEN);
				RequestScopeFactory.RequestScope().setAttribute("wx_url", Constat.HOST+"api?t="+token);
			}
			return action;
		}
		else{
			return ERROR;
		}
	}
}
