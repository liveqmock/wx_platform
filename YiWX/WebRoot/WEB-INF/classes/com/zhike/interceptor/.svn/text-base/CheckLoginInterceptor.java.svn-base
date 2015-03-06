package com.zhike.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.utils.RequestScopeFactory;

public class CheckLoginInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation actionInvocation) throws Exception {
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory
				.SessionScope().get(Constat.LOGIN_SESSION);
		
//		String str = TokenUtils.createGuid();
//		System.out.println(str);
//		
//		
//		System.out.println(TokenUtils.ToGuid(str));
		return checkLoginBean != null ? actionInvocation.invoke() : Constat.LOGIN_PAGE;
	}

	public void destroy() {

	}

	public void init() {

	}

}
