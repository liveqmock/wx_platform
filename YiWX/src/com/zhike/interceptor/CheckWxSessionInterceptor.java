package com.zhike.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.services.WxUserService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class CheckWxSessionInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation actionInvocation) throws Exception {
		WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
		
		String strBackUrl = null ;
		if(checkWxSession==null){
			HttpServletRequest httpRequest=(HttpServletRequest)RequestScopeFactory.RequestScope();  
			strBackUrl = "http://" + httpRequest.getServerName() //服务器地址  
	        + ":"   
	        + httpRequest.getServerPort()           //端口号  
	        + httpRequest.getContextPath()      //项目名称  
	        + httpRequest.getServletPath()      //请求页面或其他地址  
	        + "?" + (httpRequest.getQueryString()); //参数  
			
			RequestScopeFactory.SessionScope().put("safetyUrl", strBackUrl);
		}else{
			strBackUrl = (String) RequestScopeFactory.SessionScope().get("safetyUrl");
			if(strBackUrl==null){
				return "wxuser_error";
			}
			
		}
		
		//网页测试用
		String testweb = RequestScopeFactory.RequestScope().getParameter("testweb");
		if(testweb!=null&&checkWxSession==null&&testweb.equals("yes")){
			WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
			checkWxSession = new WxUserBean(); 
			checkWxSession.setOpenid("test");
			checkWxSession = wxUserService.selectOneWxUserByOpenId(checkWxSession);
			RequestScopeFactory.SessionScope().put(Constat.LOGIN_WXSESSION, checkWxSession);
		}
		
		
		RequestScopeFactory.SessionScope().put(Constat.STRBACKURL,strBackUrl);
		return checkWxSession != null ? actionInvocation.invoke() : Constat.LOGIN_WXUSER_PAGE;
		
	}

	public void destroy() {

	}

	public void init() {

	}

}
