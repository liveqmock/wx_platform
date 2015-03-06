package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.ClockDepartmentBean;
import com.zhike.sql.beans.ClockInfoBean;
import com.zhike.sql.beans.ClockUserBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.ClockService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.LBSService;
import com.zhike.sql.services.MemberService;
import com.zhike.sql.services.OrderService;
import com.zhike.sql.services.WxUserService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;
import com.zhike.viewmodels.APPKeyViewModel;

public class ClockAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public ClockBean clockBean;
	public ClockUserBean clockUserBean;
	
	public ClockDepartmentBean clockDepartmentBean;
	
	public PageBean pageBean;
	
	public ClockBean getClockBean() {
		return clockBean;
	}

	public void setClockBean(ClockBean clockBean) {
		this.clockBean = clockBean;
	}


	public ClockDepartmentBean getClockDepartmentBean() {
		return clockDepartmentBean;
	}

	public void setClockDepartmentBean(ClockDepartmentBean clockDepartmentBean) {
		this.clockDepartmentBean = clockDepartmentBean;
	}


	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}


	private InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}


	
	public ClockUserBean getClockUserBean() {
		return clockUserBean;
	}

	public void setClockUserBean(ClockUserBean clockUserBean) {
		this.clockUserBean = clockUserBean;
	}

	/**
	 * 查询考勤管理列表
	 */
	public String list(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//2获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		//
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		ClockBean clockBean = new ClockBean();
		clockBean.setApp_id(Long.parseLong(appId));
		
		List<ClockBean> clockBeanList = clockService.selectAllByAppID(clockBean);
		RequestScopeFactory.RequestScope().setAttribute("clockBeanList", clockBeanList);
		
		
		
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		//获取所有门店信息
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppID(lbsBean);
		
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);		
		
		return "list";
		
	}
	
	/**
	 * 增加	
	 */
	public String add() throws Exception {
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		//获取所有门店信息
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppID(lbsBean);
		
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);	
		return "add";
	}
	/**
	 * 时间比较	
	 */	
	public ClockBean returnTime(ClockBean clockBean){
		DateFormat df = new SimpleDateFormat("HH:mm");
		DecimalFormat def = new DecimalFormat("#.00");
		double  result = 0;
		try
		{
		    Date d1 = df.parse(clockBean.getStarttime());
		    Date d2 = df.parse(clockBean.getEndtime());
		    double diff = d2.getTime() - d1.getTime();
		    result = diff/(1000*60*60);
		    String temp=def.format(result) ;
		    clockBean.setWorktime(Double.valueOf(temp));
		}
		catch (Exception e)
		{
		}
		return clockBean;
	}
	/**
	 * 保存增加	
	 */
	public String addSave() throws Exception{
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){
			String result = null;
			clockBean.setApp_id(Long.parseLong(appId));
			clockBean = returnTime(clockBean);
			//基本设置
			if(clockBean.getKeywords().length()==0||clockBean.getKeywords().length()>30){
				result="关键词不能为空且长度不能超过30字";
			}else if(clockBean.getTitle().length()==0||clockBean.getTitle().length()>64){
				result="标题不能为空且长度不能超过64字";
			}else if(clockBean.getImg().length()==0){
				result="必须插入一张封面图片";
			}else if(clockBean.getDesc_service().length()>120){
				result="摘要若不为空则长度不能超过120字";
			}
			//考勤设置
			else if(clockBean.getWorktime()==0){
				result="上班时间不能等于下班时间";
			}else if(clockBean.getWorktime()<0){
				result="上班时间不能大于下班时间";
			}else if(clockBean.getClock_range()>10000){
				result="打卡范围不能大于10000米";
			}else if(clockBean.getLbs_id()==0){
				result="必须选择一个适用门店";
			}
			else{
				//校验成功,录入数据库
				ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
				if(clockService.insertOneClock(clockBean)>0){
					//插入部门列表
					String[] temp = null ;
					if(clockBean.getNames_array()!=null&&clockBean.getNames_array().length==1){
						temp = clockBean.getNames_array()[0].split(",");
					}
					for(int i=0;i<temp.length;i++){
						ClockDepartmentBean cdBean = new ClockDepartmentBean();
						cdBean.setService_id(clockBean.getId());
						cdBean.setName(temp[i]);
						clockService.insertOneClockDepartment(cdBean);
					}
					
					
					
					//更新中间表
					ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(clockBean));
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
			
			LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
			LBSBean lbsBean = new LBSBean();
			lbsBean.setApp_id(Long.parseLong(appId));
			//获取所有门店信息
			List<LBSBean> lbsBeanList = lbsService.selectAllByAppID(lbsBean);
			RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);				
			
			ClockBean clockBean = new ClockBean();
			List<ClockDepartmentBean>  clockDepartmentBeanList = new ArrayList<ClockDepartmentBean>();
			if(id!=null){
				clockBean.setId(Long.parseLong(id));
				clockBean.setApp_id(Long.parseLong(appId));
				ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
				clockBean = clockService.selectOneClockByID(clockBean);
				clockDepartmentBeanList = clockService.selectClockDepartmentByServiceId(clockBean);
				clockBean.setListClockDe(clockDepartmentBeanList);
			}
		    RequestScopeFactory.RequestScope().setAttribute("clockBean", clockBean);
		    
			return "edit";
		}else{
			return "logOut";
		}
	}
	/**
	 * AJAX修改组织架构
	 */
	public String edit_clock_de(){
		String result = null;
		if(clockDepartmentBean!=null){
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			if(clockService.updateOneClockDepartmentById(clockDepartmentBean)>0){
				result = return_str(clockService.selectClockDepartmentByServiceId(clockBean));
			}else{
				result = "error";
			}
		}
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * AJAX增加组织架构
	 */
	public String add_clock_de(){
		String result = null;
		if(clockDepartmentBean!=null){
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			clockDepartmentBean.setService_id(clockBean.getId());
			if(clockService.insertOneClockDepartment(clockDepartmentBean)>0){
				result = return_str(clockService.selectClockDepartmentByServiceId(clockBean));
			}else{
				result = "error";
			}
		}
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/**
	 * AJAX删除组织架构
	 */
	public String del_clock_de(){
		String result = null;
		if(clockDepartmentBean!=null){
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			clockDepartmentBean.setService_id(clockBean.getId());
			if(clockService.selectClockDepartmentByServiceId(clockBean).size()>1){
				clockService.delOneClockDepartmentById(clockDepartmentBean);
				result = return_str(clockService.selectClockDepartmentByServiceId(clockBean));
			}else{
				result = "error";
			}
		}
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	public String return_str(List<ClockDepartmentBean> clockDeBeanList){
		String str = "";
		for(int i=0;i<clockDeBeanList.size();i++){
			ClockDepartmentBean cdTemp= clockDeBeanList.get(i);
			str+="<tr class='department_tr'  onmouseover='tr_onmouseover("+cdTemp.getId()+")' onmouseout='tr_onmouseout("+cdTemp.getId()+")' style='height: 42px;' >";
			str+="<td>"+(i+1)+"</td>";
			str+="<td id='name_"+cdTemp.getId()+"'>"+cdTemp.getName()+"</td>";
			str+="<td>";
			str+="<span id='icon_"+cdTemp.getId()+"' style='display:none;'>";
			str+="<a  onclick='_showMyModal("+cdTemp.getId()+")' href='javascript:;'  class='icon14_common edit_gray jsEditBt' title='编辑'>编辑</a>";
			str+="<a  onclick='del_department("+cdTemp.getId()+")' style='margin-left: 14px;' href='javascript:;' class='icon14_common del_gray jsDelBt'   title='删除'>删除</a>";
			str+="</span>";
			str+="<div style='min-width: 200px;height: 0px'>&nbsp;</div>";
			str+="</td>";
			str+="</tr>";			
		}
		return str;
	}
	
	/**
	 * 保存修改	
	 */
	public String editSave() {
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){
			String result = null;
			clockBean.setApp_id(Long.parseLong(appId));
			clockBean = returnTime(clockBean);
			//基本设置
			if(clockBean.getKeywords().length()==0||clockBean.getKeywords().length()>30){
				result="关键词不能为空且长度不能超过30字";
			}else if(clockBean.getTitle().length()==0||clockBean.getTitle().length()>64){
				result="标题不能为空且长度不能超过64字";
			}else if(clockBean.getImg().length()==0){
				result="必须插入一张封面图片";
			}else if(clockBean.getDesc_service().length()>120){
				result="摘要若不为空则长度不能超过120字";
			}
			//考勤设置
			else if(clockBean.getWorktime()==0){
				result="上班时间不能等于下班时间";
			}else if(clockBean.getWorktime()<0){
				result="上班时间不能大于下班时间";
			}else if(clockBean.getClock_range()>10000){
				result="打卡范围不能大于10000米";
			}else if(clockBean.getLbs_id()==0){
				result="必须选择一个适用门店";
			}else{
				//校验成功,录入数据库
				ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
				if(clockService.updataeOneClock(clockBean)>0){
					
					//更新中间表
					ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(clockBean));
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
	 * 删除打卡信息	
	 */	
	public String del() throws Exception {
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		if(appId!=null){
			String result = null;
			clockBean.setApp_id(Long.parseLong(appId));
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			if(clockService.delOneClock(clockBean)>0){
				//删除中间关联表 ACIONLINK
				ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(clockBean));
				//删除部门表
				clockService.delClockDepartmentByServiceId(clockBean);
				//删除人员表
				clockService.delClockUserByServiceId(clockBean);
				//删除打卡信息表
				clockService.delClockInfoByServiceId(clockBean);
				result="success";
			}
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			return SUCCESS;
		}else{
			return "logOut";
		}
	}	

	
	
	
	/**
	 * 管理人员信息	
	 */	
	public String cogUser() throws Exception {
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		if(id!=null){
			ClockBean clockBean = new ClockBean();
			clockBean.setId(Long.parseLong(id));
			//clockBean.setApp_id(Long.parseLong(appId));
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			clockBean = clockService.selectOneClockByID(clockBean);
			RequestScopeFactory.RequestScope().setAttribute("clockBean", clockBean);
			List<ClockDepartmentBean> clockDepartmentBeanList = clockService.selectClockDepartmentByServiceId(clockBean);
			RequestScopeFactory.RequestScope().setAttribute("clockDepartmentBeanList", clockDepartmentBeanList);
			return "cog_user";
		}else{
			return "logOut";
		}
	}

	/**
	 * 查用户总数
	 * */	
	public String requeryUserPage() {
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		int totalRecord = clockService.selectCountUserByPage(clockUserBean);
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
		return SUCCESS;
	}
	/**
	 * 查用户数据
	 * */
	public String requeryUserResult(){
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		clockUserBean.setCount(pageBean.getPageSize());
		clockUserBean.setFrom(pageBean.getFrom());
		List<ClockUserBean> clockUserBeanList = clockService.selectUserByPage(clockUserBean);
		
		List<ClockDepartmentBean> clockDepartmentBeanList = clockService.selectClockDepartmentByServiceId(clockBean);
//		for(int i=0;i<memberInfoBeanList.size();i++){
//			WxUserBean wxUserBean = new WxUserBean();
//			wxUserBean.setId(memberInfoBeanList.get(i).getOpenid());
//			memberInfoBeanList.get(i).wxUserBean =  wxUserService.selectOneWxUserById(wxUserBean);
//			
//		}
		RequestScopeFactory.RequestScope().setAttribute("clockDepartmentBeanList", clockDepartmentBeanList);
		RequestScopeFactory.RequestScope().setAttribute("clockUserBeanList", clockUserBeanList);
		return "cog_user_result";
	}

	/**
	 * 删除一个用户
	 * */
	public String delOneUser() throws Exception {
			String result = null;
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			if(clockService.delOneClockUserById(clockUserBean)>0){
				//删除打卡信息表
				clockService.delClockInfoByUserId(clockUserBean);
				result="success";
			}
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			return SUCCESS;
	}	
	
	/**
	 * 修改组织架构leader
	 * */
	public String saveClockUserDe() {
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
		String result =null;
		clockService.updateClockDepartmentByLeader(clockUserBean);
		if(clockUserBean.getClickde()!=null){
			String temp[] = clockUserBean.getClickde();
			for(int i=0;i<temp.length;i++){
				ClockDepartmentBean clockDepartmentBean = new ClockDepartmentBean();
				clockDepartmentBean.setId(Long.parseLong(temp[i]));
				clockDepartmentBean.setLeader(clockUserBean.getId());
				clockService.updateOneClockDepartmentByIdForLeader(clockDepartmentBean);
			}
			
		}
		result = "success";
			try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		return SUCCESS;
	}

	/**
	 * 查询考勤信息
	 * */
	public String forInfo(){
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		if(id!=null){
			ClockUserBean clockUserBean = new ClockUserBean();
			clockUserBean.setId(Integer.parseInt(id));
			ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
			clockUserBean = clockService.selectOneClockUserById(clockUserBean) ;
			RequestScopeFactory.RequestScope().setAttribute("clockUserBean", clockUserBean);
			
			clockUserBean = clockService.selectOneClockUserById(clockUserBean) ;
			ClockBean clockBean = new ClockBean();
			clockBean.setId(clockUserBean.getService_id());
			clockBean = clockService.selectOneClockByID(clockBean);
			RequestScopeFactory.RequestScope().setAttribute("clockBean", clockBean);
			
			
			
			
			return "for_info";
		}else{
			return "logOut";
		}
	}
	
	/**
	 * 查考勤信息总数
	 * */	
	public String requeryInfoPage() {
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		int totalRecord = clockService.selectCountInfoByPage(clockUserBean);
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
		return SUCCESS;
	}
	/**
	 * 查考勤信息数据
	 * @throws Exception 
	 * */
	public String requeryInfoResult() throws Exception{
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		clockUserBean.setCount(40);
		clockUserBean.setFrom(pageBean.getFrom());
		List<ClockInfoBean> clockInfoBeanList = clockService.selectInfoByPage(clockUserBean);
		clockBean = clockService.selectOneClockByID(clockBean);
		
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf1 = new SimpleDateFormat("MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
		SimpleDateFormat sdf3 = new SimpleDateFormat("dd");
		
		for(int i=0;i<clockInfoBeanList.size();i++){
			
			ClockInfoBean clockInfoBean = clockInfoBeanList.get(i);
			//格式化打卡日期
			Date temp = fmt.parse(clockInfoBean.getCreatetime());
			clockInfoBean.setCreatetime(sdf1.format(temp));
			clockInfoBean.setCurrent_day(Integer.parseInt(sdf3.format(temp)));
			//判断是否满足工作时间
			if(clockBean.getIsflextime()!=null&&clockBean.getIsflextime().equals("1")){
				//弹性工作制
				clockInfoBean.setIsflextime("1");
				
				if((clockInfoBean.getOnwork_time()!=null&&!clockInfoBean.getOnwork_time().equals(""))&&(clockInfoBean.getOffwork_time()!=null&&!clockInfoBean.getOffwork_time().equals(""))){
					clockInfoBean = returnTime(clockInfoBean);
					if(clockInfoBean.getWorktime()>clockBean.getWorktime()){
						//满足时长
						clockInfoBean.setIsfull("1");
					}else{
						//不满足时长
						clockInfoBean.setIsfull("2");
					}
				}else{
					//未打卡
					clockInfoBean.setIsfull("0");
				}
				
			}else{
				//非弹性工作制
				clockInfoBean.setIsflextime("0");
				//判断上班是否准时
				if(clockInfoBean.getOnwork_time()!=null&&!clockInfoBean.getOnwork_time().equals("")){
					if(checkTime(clockInfoBean.getOnwork_time(),clockBean.getStarttime())>=0){
						//准时
						clockInfoBean.setOnwork_ontime(1);
					}
				}
				//判断下班是否准时
				if(clockInfoBean.getOffwork_time()!=null&&!clockInfoBean.getOffwork_time().equals("")){
					if(checkTime(clockInfoBean.getOffwork_time(),clockBean.getEndtime())<=0){
						//正常
						clockInfoBean.setOffwork_ontime(1);
					}
				}
				 
			}			
			
			//格式化上下班时间
			if(clockInfoBean.getOnwork_time()!=null&&!clockInfoBean.getOnwork_time().equals("")){
				clockInfoBean.setOnwork_time(sdf2.format(fmt.parse(clockInfoBean.getOnwork_time()) ));
			}
			if(clockInfoBean.getOffwork_time()!=null&&!clockInfoBean.getOffwork_time().equals("")){
				clockInfoBean.setOffwork_time(sdf2.format(fmt.parse(clockInfoBean.getOffwork_time())));
			}
			

		}
		
		if(clockInfoBeanList.size()!=0){
			clockInfoBeanList = fullList(clockInfoBeanList);
			
		}
		
		RequestScopeFactory.RequestScope().setAttribute("clockBean", clockBean);
		RequestScopeFactory.RequestScope().setAttribute("clockInfoBeanList", clockInfoBeanList);
		return "for_info_result";
	}
	/**
	 * 填充记录	
	 * @throws Exception 
	 */	
	public List<ClockInfoBean> fullList(List<ClockInfoBean> clockInfoBeanList) throws Exception{
		List<ClockInfoBean> temp = new ArrayList();
		int year = Integer.parseInt(clockUserBean.getQuery_year());
		int month = Integer.parseInt(clockUserBean.getQuery_month());
		int days = 0;
		switch(month){
		case 1: 
		case 3: 
		case 5: 
		case 7: 
		case 8: 
		case 10: 
		case 12: 
			days = 31;
			break;
		case 2 : 
			if((year%4==0&&year%100!=0)||(year%400==0))
			{
				days = 29;
			}else{
				days = 28;
			}
			break;
		default : 
			days = 30;
			break;
		}
		//当前年月天
		Calendar   calendar   =   Calendar.getInstance();
		int currentYear = calendar.get(Calendar.YEAR);
		int currentMonth = calendar.get(Calendar.MONTH)+1;
		int currentDay = calendar.get(Calendar.DATE);
		if(year == currentYear && month == currentMonth){
			days = currentDay;
		}
		//每月有多少天
		 DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd");
		 SimpleDateFormat dateFm = new SimpleDateFormat("EEEE");
		 
		   
		for(int i=days;i>=1;i--){
			String tempDate = year +"-"+ month +"-"+ i;
			Date date = fmt.parse(tempDate);
			String tempWeeks = dateFm.format(date);
			boolean type = true;
			for(int j=0;j<clockInfoBeanList.size();j++){
				ClockInfoBean citemp = clockInfoBeanList.get(j);
				if(i==citemp.getCurrent_day()){
					citemp.setWeeks(tempWeeks);
					temp.add(citemp);
					type = false;
					break;
				}
			}
			
			String tempMonth;
			if(month<10){
				tempMonth = "0"+month;
			}else{
				tempMonth = ""+month;
			}
			if(type){
				String tempI;
				if(i<10){
					tempI = "0"+i;
				}else{
					tempI = ""+i;
				}
				
				ClockInfoBean clockInfoBean = new ClockInfoBean();
				clockInfoBean.setCreatetime(tempMonth+"-"+tempI);
				clockInfoBean.setWeeks(tempWeeks);
				temp.add(clockInfoBean);
			}
		}
		return temp;
	}
	/**
	 * 时间比较	
	 */	
	public ClockInfoBean returnTime(ClockInfoBean clockInfoBean){
		    
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		DecimalFormat def = new DecimalFormat("#.00");
		double  result = 0;
		try
		{
		    Date d1 = df.parse(clockInfoBean.getOnwork_time());
		    Date d2 = df.parse(clockInfoBean.getOffwork_time());
		    double diff = d2.getTime() - d1.getTime();
		    result = diff/(1000*60*60);
		    String temp=def.format(result) ;
		    clockInfoBean.setWorktime(Double.valueOf(temp));
		}
		catch (Exception e)
		{
		}
		return clockInfoBean;
	}
	
	public double checkTime(String time1,String time2){
		DateFormat df1 = new SimpleDateFormat("HH:mm");
		DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
		DecimalFormat def = new DecimalFormat("#.00");
		double result = 0;
		try
		{
		    Date d1 = df2.parse(time1);
		    String dateString = formatter.format(d1);
		    	 d1 = df1.parse(dateString);
		    Date d2 = df1.parse(time2);
		    double diff = d2.getTime() - d1.getTime();
		    result = diff/(1000*60*60);
		    String temp=def.format(result) ;
		    result = Double.valueOf(temp);
		}
		catch (Exception e)
		{
		}	
		return result;
	}
	
}
