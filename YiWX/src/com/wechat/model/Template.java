package com.wechat.model;

import java.util.HashMap;


public class Template {
	public String touser;
	public String template_id;
	public String url;
	public String topcolor;
	public HashMap<String,DataValue> data;
	
	public String getTouser() {
		return touser;
	}
	public void setTouser(String touser) {
		this.touser = touser;
	}
	public String getTemplate_id() {
		return template_id;
	}
	public void setTemplate_id(String templateId) {
		template_id = templateId;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getTopcolor() {
		return topcolor;
	}
	public void setTopcolor(String topcolor) {
		this.topcolor = topcolor;
	}
	public HashMap getData() {
		return data;
	}
	public void setData(HashMap data) {
		this.data = data;
	}
	
	
	
	
}