package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.LBSService;
import com.zhike.sql.services.OrderService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;
import com.zhike.viewmodels.APPKeyViewModel;

public class LBSAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public LBSBean lbsBean;
	
	private InputStream inputStream;
	public PageBean pageBean;
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	
	

	public LBSBean getLbsBean() {
		return lbsBean;
	}

	public void setLbsBean(LBSBean lbsBean) {
		this.lbsBean = lbsBean;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	
	/**
	 * 查询预约列表
	 */
	public String list(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		//2获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		//
		
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppID(lbsBean);
		
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);
		return "list";
		
	}
	
	/**
	 * 增加	
	 */
	public String add() throws Exception {
	
		return "add";
	}
	/**
	 * 保存增加	
	 */
	public String addSave() throws Exception{
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){
			String result = null;
			lbsBean.setApp_id(Long.parseLong(appId));
			lbsBean.setIsVip(lbsBean.getIsVip()==null?"0":"1");
			
			if(lbsBean.getTitle().length()==0||lbsBean.getTitle().length()>30){
				result="商家名称不能为空且长度不能超过30字";
			}else if(lbsBean.getTel().length()==0||lbsBean.getTel().length()>30){
				result="电话不能为空且长度不能超过30字";
			}else if(lbsBean.getAddress().length()==0||lbsBean.getTel().length()>100){
				result="地址不能为空且长度不能超过100字";
			}else if(lbsBean.getLng().equals("")||lbsBean.getLat().equals("")){
				result="经纬度不能为空,请点击地图确认商铺位置。";
			}else if(lbsBean.getAddress().length()==0||lbsBean.getTel().length()>100){
				result="地址不能为空且长度不能超过100字";
			}else if(lbsBean.getDesc_service().length()>200){
				result="商家简介长度不能超过100字";
			}else if(lbsBean.getImg().length()==0){
				result="必须插入一张图片";
			}else{
				//校验成功,录入数据库
				LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
				if(lbsService.insertOneLBS(lbsBean)>0){
					// 插入活动成功后，是否插入 素材库或者关键字中，如果不的话，查询关键字表的时候如何查询 刘虹辰TODO
					result="success";
				}
			}
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return SUCCESS;
		}else{
			return "logOut";
		}

		
	}
	/**
	 * 修改	
	 */	
	public String edit(){
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){		
			LBSBean lbsBean = new LBSBean();		
			if(id!=null){
				lbsBean.setId(Long.parseLong(id));
				lbsBean.setApp_id(Long.parseLong(appId));
				LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
				lbsBean = lbsService.selectOneLBSByID(lbsBean);
			}
		    RequestScopeFactory.RequestScope().setAttribute("lbsBean", lbsBean);
			return "edit";
		}else{
			return "logOut";
		}
	}
	/**
	 * 保存修改	
	 */
	public String editSave() {
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){
			String result = null;
			lbsBean.setApp_id(Long.parseLong(appId));
			lbsBean.setIsVip(lbsBean.getIsVip()==null?"0":"1");
			
			if(lbsBean.getTitle().length()==0||lbsBean.getTitle().length()>30){
				result="商家名称不能为空且长度不能超过30字";
			}else if(lbsBean.getTel().length()==0||lbsBean.getTel().length()>30){
				result="电话不能为空且长度不能超过30字";
			}else if(lbsBean.getAddress().length()==0||lbsBean.getTel().length()>100){
				result="地址不能为空且长度不能超过100字";
			}else if(lbsBean.getLng().equals("")||lbsBean.getLat().equals("")){
				result="经纬度不能为空,请点击地图确认商铺位置。";
			}else if(lbsBean.getAddress().length()==0||lbsBean.getTel().length()>100){
				result="地址不能为空且长度不能超过100字";
			}else if(lbsBean.getDesc_service().length()>200){
				result="商家简介长度不能超过100字";
			}else if(lbsBean.getImg().length()==0){
				result="必须插入一张图片";
			}else{
				//校验成功,录入数据库
				LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
				if(lbsService.updateOneLBS(lbsBean)>0){
					// 插入活动成功后，是否插入 素材库或者关键字中，如果不的话，查询关键字表的时候如何查询 刘虹辰TODO
					result="success";
				}
			}
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return SUCCESS;
		}else{
			return "logOut";
		}
	}
	
	
	public String del() throws Exception {
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){
			String result = null;
			lbsBean.setApp_id(Long.parseLong(appId));
			LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
			if(lbsService.delOneLBS(lbsBean)>0){
				result="success";
			}
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			return SUCCESS;
		}else{
			return "logOut";
		}
		

	}	
	/**
	 * @url http://127.0.0.1/YiWX/lbsshowmap.action
	 * @param  serviceid
	 * */
	public String lbsShowMap() throws Exception{
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
			LBSBean lbsBean = new LBSBean();		
				lbsBean.setId(Long.parseLong(serviceid));
				LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
				lbsBean = lbsService.selectOneLBSByID(lbsBean);
		    RequestScopeFactory.RequestScope().setAttribute("lbsBean", lbsBean);
		return "map";
	}

	
	
}
