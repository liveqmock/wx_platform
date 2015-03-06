
package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.MessageService;
import com.zhike.sql.services.QuanJingService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.MessageViewModel;
import com.zhike.utils.ReadFile;

public class FileAction extends ActionSupport {
/**
	 * 
	 */
	
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;
	
	public String show() throws Exception {
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String dir = RequestScopeFactory.RequestScope().getContextPath() + "/attached/image/" + appId + "/";
		String realDir = this.getClass().getClassLoader().getResource("/").getPath()+"../../attached/image/" + appId + "/";
		ReadFile readFile = new ReadFile();
		if(readFile.readfile(realDir))
		{
			RequestScopeFactory.RequestScope().setAttribute("status", "0");
			RequestScopeFactory.RequestScope().setAttribute("fileList", readFile.getFileName());
			RequestScopeFactory.RequestScope().setAttribute("dir", dir);
		}
		else 
		{
			RequestScopeFactory.RequestScope().setAttribute("status", "1");
		}
		return "show";
	}
	
	public String delete() throws Exception {
		String result = null;
		boolean b = false;
//		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String uid = String.valueOf(checkLoginBean.getId());
		String name  = RequestScopeFactory.RequestScope().getParameter("name");
		String realDir = this.getClass().getClassLoader().getResource("/").getPath()+"../../attached/image/" + uid + "/"+name;
		ReadFile readFile = new ReadFile();
		if(readFile.deletefile(realDir))
		{
			result = new String("{status:'success'}");
		}
		else
			result = new String("{status:'fail',content:'删除失败'}");
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
}
