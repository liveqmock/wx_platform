package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.ClockDepartmentBean;
import com.zhike.sql.beans.ClockInfoBean;
import com.zhike.sql.beans.ClockUserBean;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.beans.MemberBean;
import com.zhike.sql.beans.MemberEntityCardBean;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.beans.MemberInfoCogBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.services.ClockService;
import com.zhike.sql.services.LBSService;
import com.zhike.sql.services.MemberService;
import com.zhike.sql.services.WxUserService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;

public class ClockWXAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public ClockBean clockBean;
	public ClockUserBean clockUserBean;
	public ClockInfoBean clockInfoBean;
	public PageBean pageBean;
	
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

	public ClockBean getClockBean() {
		return clockBean;
	}

	public void setClockBean(ClockBean clockBean) {
		this.clockBean = clockBean;
	}
	
	public ClockInfoBean getClockInfoBean() {
		return clockInfoBean;
	}

	public void setClockInfoBean(ClockInfoBean clockInfoBean) {
		this.clockInfoBean = clockInfoBean;
	}
	

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public String execute() {
		try{
		//考勤ID
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		//当前微信用户
		WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
		
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		ClockBean clockBean= new ClockBean();
		clockBean.setId(Long.parseLong(serviceid));
		clockBean = clockService.selectOneClockByID(clockBean);
		
		if(clockBean!=null){
			List<ClockDepartmentBean> clockDeBeanList = clockService.selectClockDepartmentByServiceId(clockBean);
			clockBean.setListClockDe(clockDeBeanList);
			
			ClockUserBean clockUserBean= new ClockUserBean();
			clockUserBean.setService_id(Long.parseLong(serviceid));
			clockUserBean.setOpenid(checkWxSession.getId());
			
			ClockUserBean clockUserBeanForSelect = clockService.selectOneClockUser(clockUserBean);
			RequestScopeFactory.SessionScope().put("clockBean", clockBean);
			if(clockUserBeanForSelect==null){
				RequestScopeFactory.RequestScope().setAttribute("clockUserBean", clockUserBean);
				return "new";
			}else{
				ClockInfoBean clockInfoBean = new ClockInfoBean();
				clockInfoBean.setUser_id(clockUserBeanForSelect.getId());
				clockInfoBean = clockService.selectClockInfoByUserIdForToday(clockInfoBean); 		
				RequestScopeFactory.RequestScope().setAttribute("clockInfoBean", clockInfoBean);
				RequestScopeFactory.SessionScope().put("clockUserBean", clockUserBeanForSelect);
				return "old";
			}
			
		}else{
			//活动不存在RETURN 
			return "error";
		}
	}catch (Exception e) {
		return "error";
	}
	}
	
	/**
	 * 完善个人资料提交
	 */	
	public String submit_perfect(){
		String result = null;
		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
		//1 判断数据库里是否有
		if(clockService.selectOneClockUser(clockUserBean)==null){
			if(clockService.insertOneClockUser(clockUserBean)>0){
				result="success";
			}else{
				result="提交失败!";
			}
		}else{
			result="success";
		}
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}			
		return SUCCESS;
	}
	/**
	 * 获取当前系统时间
	 */	
	public String getTime(){
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("HHmmss");//可以方便地修改日期格
		String result = dateFormat.format( now );
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}	
		return SUCCESS;
	}
	/**
	 * 打卡
	 */
	public String clock(){
		WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
		WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
		String result = null;
		WxUserBean tempSelet = wxUserService.selectOneWxUserByOpenId(checkWxSession);
		if(tempSelet.getLng()==null||tempSelet.getLat()==null||tempSelet.getLbstime()==null||tempSelet.getLng().equals("")||tempSelet.getLat().equals("")||tempSelet.getLbstime().equals("")){
			//无位置消息
			result = "nolbs";
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			return SUCCESS;

		}else{
			//计算时间
			long now = new Date().getTime()/1000;
			long temp = TimestampToDate.getTimestamp(tempSelet.getLbstime());
			//超时 10分钟之前的地点记录
			if(now-temp>10*60){
				
				result = "outtime";
				try {
					inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				return SUCCESS;
			}
			//计算范围
			
			//判断是否在范围内
			ClockBean clockBean = (ClockBean) RequestScopeFactory.SessionScope().get("clockBean");
			LBSService lBSService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
			LBSBean lbsBean = new LBSBean();
			lbsBean.setId(clockBean.getLbs_id());
			lbsBean = lBSService.selectOneLBSByID(lbsBean);
			if(lbsBean==null){
				//没有找到门店信息
				result = "error";
				try {
					inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				return SUCCESS;
			}
			double distance = getDistance(Double.parseDouble(lbsBean.getLat()),Double.parseDouble(lbsBean.getLng()),Double.parseDouble(tempSelet.getLat()),Double.parseDouble(tempSelet.getLng()));
			if(distance>clockBean.getClock_range()){
				//超过范围
				result = ""+distance;
				try {
					inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				return SUCCESS;
			}else{
				//可以打卡
				ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
				if(clockInfoBean.getId()!=0){
					clockService.updateOneClockInfoForOffWork(clockInfoBean);
					result = "打卡成功";
				}else{
					
					ClockInfoBean clockInfoBeanTemp = clockService.selectClockInfoByUserIdForToday(clockInfoBean); 
					if(clockInfoBeanTemp==null){
						//上班打卡
						clockService.insertOneClockInfoForOnWork(clockInfoBean);
					}
					result = "打卡成功";
				}
				
			}
			
		}
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
    private static double EARTH_RADIUS = 6378.137; 

    

    private static double rad(double d) { 

        return d * Math.PI / 180.0; 

    } 

 

    public static double getDistance(double lat1, double lng1, double lat2, 

            double lng2) { 

        double radLat1 = rad(lat1); 

        double radLat2 = rad(lat2); 

        double a = radLat1 - radLat2; 

        double b = rad(lng1) - rad(lng2); 

        double s = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a / 2), 2) 

                + Math.cos(radLat1) * Math.cos(radLat2) 

                * Math.pow(Math.sin(b / 2), 2))); 

        s = s * EARTH_RADIUS; 

        s = Math.round(s * 1000) ; 

        return s; 

    } 
    
    /**
     * 查看考勤记录
     * */
    	public String for_info(){
    		String id = RequestScopeFactory.RequestScope().getParameter("id");
    		ClockUserBean clockUserBean = new ClockUserBean();
    		clockUserBean.setId(Long.parseLong(id));
    		ClockService clockService  = (ClockService) ApplicationContextFactory.getBean(Constat.CLOCKSERVICE);
    		clockUserBean = clockService.selectOneClockUserById(clockUserBean);
    		RequestScopeFactory.RequestScope().setAttribute("clockUserBean", clockUserBean);
    		return "info";
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
    		return "infoResult";
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
    	
        /**
         * 查看公司位置记录
         * */
        	public String for_lbs(){
        		String id = RequestScopeFactory.RequestScope().getParameter("id");
        		LBSBean lbsBean = new LBSBean();
        		lbsBean.setId(Long.parseLong(id));
        		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
        		lbsBean = lbsService.selectOneLBSByID(lbsBean);
        		RequestScopeFactory.RequestScope().setAttribute("lbsBean", lbsBean);
        		return "lbs";
        	}
}
