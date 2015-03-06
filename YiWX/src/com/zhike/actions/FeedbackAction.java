package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;

public class FeedbackAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String feedback;
	public String email;
	public String url;
	public String from;
	
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public InputStream inputStream = null;
	/**
	 * 
	 */
	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	public String feedback() throws Exception {
		String result = "{code':200,'error:'建议提交成功.'}";
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));

		return SUCCESS;
	}
}
