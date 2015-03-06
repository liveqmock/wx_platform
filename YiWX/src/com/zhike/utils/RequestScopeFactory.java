package com.zhike.utils;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;

public class RequestScopeFactory {
	public static HttpServletRequest RequestScope() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) context
				.get(ServletActionContext.HTTP_REQUEST);
		return request;
	}

	public static Map<String, Object> SessionScope() {
		return ActionContext.getContext().getSession();
	}
}
