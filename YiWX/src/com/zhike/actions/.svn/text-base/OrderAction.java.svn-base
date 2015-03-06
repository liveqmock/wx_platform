package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.beans.OrderBean;
import com.zhike.sql.beans.OrderDetailBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.MemberService;
import com.zhike.sql.services.OrderService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class OrderAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public OrderBean orderBean;

	private InputStream inputStream;
	public PageBean pageBean;
	public OrderDetailBean orderDetailBean;
	
	
	
	public OrderDetailBean getOrderDetailBean() {
		return orderDetailBean;
	}

	public void setOrderDetailBean(OrderDetailBean orderDetailBean) {
		this.orderDetailBean = orderDetailBean;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public OrderBean getOrderBean() {
		return orderBean;
	}

	public void setOrderBean(OrderBean orderBean) {
		this.orderBean = orderBean;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	@Override
	public String execute() {
		return SUCCESS;
	}
	
	/**
	 * 查询预约列表
	 */
	public String list(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		//2获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		OrderBean orderBean = new OrderBean();
		orderBean.setApp_id(appId);
		orderBean.setUid(checkLoginBean.getId());
		List<OrderBean> orderBeanList = orderService.selectAllByAppID(orderBean);
		
		RequestScopeFactory.RequestScope().setAttribute("orderBeanList", orderBeanList);
		return "list";
		
	}
	
	/**
	 * 增加	
	 */
	public String add() throws Exception {
		return "add";
	}
	
	public String edit() throws Exception{
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String id = (String) RequestScopeFactory.RequestScope().getParameter("id");
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		OrderBean orderBean = new OrderBean();
		orderBean.setUid(checkLoginBean.getId());
		orderBean.setApp_id(appId);
		orderBean.setId(id);
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		OrderBean bean = orderService.selectOrderByUserIdAndAPPId(orderBean);
		if(bean != null){
			RequestScopeFactory.RequestScope().setAttribute("L_ORDERBEAN_EDIT", bean);
			return "edit";
		}else{
			return "add";
		}
	}
	
	public String delete() throws Exception{
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String id = (String) RequestScopeFactory.RequestScope().getParameter("id");
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		OrderBean orderBean = new OrderBean();
		orderBean.setUid(checkLoginBean.getId());
		orderBean.setApp_id(appId);
		orderBean.setId(id);
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		if(orderService.deleteOrderByUserIdAndAPPId(orderBean)){
			int a = orderService.deleteOrderDetailByServiceId(orderBean);
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(orderBean));
		}
		
		
		List<OrderBean> orderBeanList = orderService.selectAllByAppID(orderBean);
		
		RequestScopeFactory.RequestScope().setAttribute("orderBeanList", orderBeanList);
		
		return "list";
	}
	
	public String save() throws Exception {
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String result = null;
		if(orderBean == null){
			result = "{error_code:-1,error_text:'提交的订单为空。'}";
		}
		else{
			orderBean.setUid(checkLoginBean.getId());
			orderBean.setApp_id(appId);
			OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
			if(orderService.addNewOrder(orderBean)){
				result = "{error_code:0,error_text:'增加订单成功。'}";
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(orderBean));
			}
			else{
				result = "{error_code:-1,error_text:'增加订单失败。'}";
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return "stream";
	}
	
	public String update() throws Exception {
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String result = null;
		if(orderBean == null){
			result = "{error_code:-1,error_text:'提交的订单为空。'}";
		}
		else{
			orderBean.setUid(checkLoginBean.getId());
			orderBean.setApp_id(appId);
			OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
			if(orderService.updateOrderByUserIdAndAPPId(orderBean)){
				result = "{error_code:0,error_text:'更新订单成功。'}";
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(orderBean));
			}
			else{
				result = "{error_code:-1,error_text:'更新订单失败。'}";
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return "stream";
	}
	
	
	public String preorder()throws Exception {
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		OrderBean orderBean = new OrderBean();
		//当前微信用户
		WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);		
		String serviceid = (String) RequestScopeFactory.RequestScope().getParameter("serviceid");
		
		orderBean.setId(serviceid);
		OrderBean bean = orderService.selectOrderPrewById(orderBean);
		if(bean == null) bean = new OrderBean();
		
		OrderDetailBean detailBean = new OrderDetailBean();
		detailBean.setOid(bean.getId());
		//detailBean.setWid("11234");
		detailBean.setWid(String.valueOf(checkWxSession.getId()));
		int orderNumber = orderService.selectWXOrderNumber(detailBean);
		bean.setOrderCount(orderNumber);
		bean.setWid(String.valueOf(checkWxSession.getId()));
		RequestScopeFactory.RequestScope().setAttribute("order_mobile_prew", bean);
		return SUCCESS;
	}
	
	

	public String getOrderInformation() {
		return orderInformation;
	}

	public void setOrderInformation(String orderInformation) {
		this.orderInformation = orderInformation;
	}



	public String orderInformation;
	
	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}



	public String oid;
	 
	public String addNewWXOrder() throws Exception{
		String appid = RequestScopeFactory.RequestScope().getParameter("appid");
		String openid = RequestScopeFactory.RequestScope().getParameter("openid");
		
		OrderDetailBean detailBean = new OrderDetailBean();
		detailBean.setAppid(appid);
		detailBean.setWid(openid);
		detailBean.setOrderdetail(orderInformation);
		detailBean.setOid(oid);
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		String result = null;
		if(orderService.addNewWXOrder(detailBean)){
			result = "ok";
		}
		else{
			result = "error";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String selectAllWxOrderByAppIdAndWID() throws Exception{
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		OrderDetailBean detailBean = new OrderDetailBean();
		WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);	
		detailBean.setOid(serviceid);
		detailBean.setWid(String.valueOf(checkWxSession.getId()) );
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		
		List<OrderDetailBean> orderDetailBean = orderService.selectAllWxOrderByAppIdAndWID(detailBean);
		
		RequestScopeFactory.RequestScope().setAttribute("L_ORDERDETAILBEANS", orderDetailBean);
		
		
		
		
		return SUCCESS;
	}
	
	public String manager() throws Exception{
		String id = (String) RequestScopeFactory.RequestScope().getParameter("id");
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		OrderBean orderBean = new OrderBean();
		orderBean.setId(id);
		orderBean.setApp_id(appId);
//		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
//		List<OrderDetailBean> beans = orderService.selectAllWXOrderDetailsByAppIdAndOrderId(orderDetailBean);
		RequestScopeFactory.RequestScope().setAttribute("orderBean", orderBean);
		return "manager";
	}
	
	/**
	 * 查总数
	 * */	
	public String requeryCogPage() {
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		int totalRecord = orderService.selectCountInfosByPage(orderDetailBean);
		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
		//page.currentPage 从前台传回
		pageBean.setTotalRecord(totalRecord);
		
		String result = new String("{currentPage_paginator:'"+pageBean.getCurrentPage()+"',totalPages_paginator:'"+pageBean.getTotalPageNum()+"',numberOfPages_paginator:'"+pageBean.getNumberOfPages()+"',totalRecord:'"+totalRecord+"'}");
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "stream";
	}
	/**
	 * 查数据
	 * */
	public String requeryCogResult(){
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		orderDetailBean.setCount(pageBean.getPageSize());
		orderDetailBean.setFrom(pageBean.getFrom());
		List<OrderDetailBean> orderDetailBeanList = orderService.selectInfosByPage(orderDetailBean);
		OrderBean orderBean = new OrderBean();
		orderBean.setId(orderDetailBean.getOid());
		orderBean = orderService.selectOrderPrewById(orderBean);
		RequestScopeFactory.RequestScope().setAttribute("orderBean", orderBean);
		RequestScopeFactory.RequestScope().setAttribute("orderDetailBeanList", orderDetailBeanList);
		return "cogResult";
	}

	/**
	 * 确认预约
	 * @throws Exception 
	 * */
	public String forOk() throws Exception{
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		orderDetailBean.setOrderstatus(1);
		String result = null;
		if(orderService.updateOrderDetailForUse(orderDetailBean)>0){
			result = "success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return "stream";
	}
	/**
	 * 取消预约
	 * */
	public String forRemove()throws Exception{
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		orderDetailBean.setOrderstatus(2);
		String result = null;
		if(orderService.updateOrderDetailForUse(orderDetailBean)>0){
			result = "success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return "stream";
	}
	/**
	 * 删除预约
	 * */
	public String forDel()throws Exception{
		OrderService orderService  = (OrderService) ApplicationContextFactory.getBean(Constat.ORDERSERVICE);
		String result = null;
		if(orderService.deleteOneOrderDetail(orderDetailBean)>0){
			result = "success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return "stream";
	}	
	

}