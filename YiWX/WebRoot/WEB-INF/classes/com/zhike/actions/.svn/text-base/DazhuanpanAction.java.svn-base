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
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;
import com.zhike.viewmodels.APPKeyViewModel;

public class DazhuanpanAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public GuaguakaBean guaguakaBean;
	public GuaguakaInfoBean guaguakaInfoBean;
	private InputStream inputStream;
	public PageBean pageBean;
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	
	public GuaguakaBean getGuaguakaBean() {
		return guaguakaBean;
	}
	public void setGuaguakaBean(GuaguakaBean guaguakaBean) {
		this.guaguakaBean = guaguakaBean;
	}
	
	
	public GuaguakaInfoBean getGuaguakaInfoBean() {
		return guaguakaInfoBean;
	}
	public void setGuaguakaInfoBean(GuaguakaInfoBean guaguakaInfoBean) {
		this.guaguakaInfoBean = guaguakaInfoBean;
	}
	
	
	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	
	/**@param serviceid活动ID, openid微信用户ID,code(升级用微信返回)
	 * 	bathUrl = http://127.0.0.1/YiWX/guaguaka.action?serviceid=XXX&openid=XXXX
	 * 
	 * */
	@Override
	public String execute() {
		try {
			
			//大转盘活动ID
			String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
			//当前微信用户
			WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
			GuaguakaBean guaguakaBean = new GuaguakaBean();
			//抽奖业务流程
			if(serviceid!=null){
				//1查询活动信息
				GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
				guaguakaBean.setId(Long.parseLong(serviceid));
 				guaguakaBean = guaguakaService.selectServiceByIDForDazhuanpan(guaguakaBean);
 				if(guaguakaBean!=null){
 	 				//2判断当前用户是否已中奖
 					guaguakaBean.setOpenid(checkWxSession.getId());
 	 				if(verifyWin(guaguakaBean)){
 	 					RequestScopeFactory.SessionScope().put("guaguakaBean", guaguakaBean);
 	 					return "win";
 	 				}
 	 				//是否中奖，跳转中奖页面
 					//3判断时间有效性
 					if(!verifyExpire(guaguakaBean)){
 						RequestScopeFactory.SessionScope().put("guaguakaBean", guaguakaBean);
 						return "expire";
 					}
 	 				RequestScopeFactory.SessionScope().put("guaguakaBean", guaguakaBean);
 	 				return "dazhuanpan";
 				}else{
 					return "share";
 				}
			}else{
				return "share";
			}
		}catch (Exception e) {
			return "share";
		}

	}
	//验证是否中奖
	private boolean verifyWin(GuaguakaBean guaguakaBean) {
		boolean temp=false;
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		GuaguakaInfoBean guaguakaInfoBean = guaguakaService.selectIsWinForDazhuanpan(guaguakaBean);
		if(guaguakaInfoBean!=null){
			RequestScopeFactory.SessionScope().put("guaguakaInfoBean", guaguakaInfoBean);
			temp = true;
		}
		return temp;
	}
	//验证活动有效性
	private boolean verifyExpire(GuaguakaBean guaguakaBean) {
		boolean temp=true;
		long now = System.currentTimeMillis()/1000;
		if(now<Long.parseLong(guaguakaBean.getStarttime())){
			//0正常 1未开始 2已过期
			guaguakaBean.setState(1);
			temp = false;
		}else if(now>Long.parseLong(guaguakaBean.getEndtime())){
			guaguakaBean.setState(2);
			temp = false;
		}
		guaguakaBean.setStarttime(TimestampToDate.getDate(guaguakaBean.getStarttime()));
		guaguakaBean.setEndtime(TimestampToDate.getDate(guaguakaBean.getEndtime()));
		return temp;
	}

	//查询用户是否具满足抽奖次数权限
	public String requeryInfo() throws Exception {
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		GuaguakaInfoBean guaguakaInfoBean = guaguakaService.selectOneInfoForDazhuanpan(guaguakaBean);
		String result = null;
		if(guaguakaInfoBean==null){
			guaguakaService.insertOneInfoForDazhuanpan(guaguakaBean);
		}else{
			guaguakaBean = guaguakaService.selectServiceByIDForDazhuanpan(guaguakaBean);
			//1判断总数
			if(guaguakaInfoBean.getTotaltime()>=guaguakaBean.getTotaltime()){
				result = "该活动总计可以抽奖"+guaguakaBean.getTotaltime()+"次。当前用户已经没有抽奖机会。";
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
				return SUCCESS;
			}			
			//2判断最后刮奖日期是否是今天
			if(TimestampToDate.getTimestamp(guaguakaInfoBean.getCreatetime())>getTimesmorning()){
				//是今天 判断今天抽奖次数
				if(guaguakaInfoBean.getTodaytime()>=guaguakaBean.getEverydaytime()){
					result = "该活动每天可以抽奖"+guaguakaBean.getEverydaytime()+"次。当前用户今天已经没有抽奖机会。";
					inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
					return SUCCESS;
				}
			}
		}
		result = "success";
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	//查询中奖信息 并发奖
	public String requeryWinInfo() throws Exception {
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		GuaguakaInfoBean guaguakaInfoBean = guaguakaService.selectOneInfoForDazhuanpan(guaguakaBean);
		guaguakaBean = guaguakaService.selectServiceByIDForDazhuanpan(guaguakaBean);
		
 		int temp = new Random().nextInt(100);
 		String result=null;
		//计算中奖率
 		//1是否中奖 没中奖增加抽奖次数
 		//2中奖是否有奖品 没奖品增加抽奖次数
 		//3发放奖品更改信息
 		if(temp<guaguakaBean.getProbability()){
 			//2是否还有奖品
 			List<GuaguakaInfoBean> guaguakaInfoBeanList = guaguakaService.selectAllOfWinForDazhuanpan(guaguakaBean);
 			int total = guaguakaBean.getOne_number()+guaguakaBean.getTwo_number()+guaguakaBean.getThree_number()+guaguakaBean.getFour_number()+guaguakaBean.getFive_number();
 			int prize_surplus = total-guaguakaInfoBeanList.size();
 			if(prize_surplus>0){
 				//有奖品
 				//1计算剩余奖品
 				int one_surplus = guaguakaBean.getOne_number();
 				int two_surplus = guaguakaBean.getTwo_number();
 				int three_surplus = guaguakaBean.getThree_number();
 				int four_surplus = guaguakaBean.getFour_number();
 				int five_surplus = guaguakaBean.getFive_number();
 				
 				
 				for(int i=0;i<guaguakaInfoBeanList.size();i++){
 					switch(guaguakaInfoBeanList.get(i).getPrizetype()){
 					case 1: 
 						one_surplus--;
 						break;
 					case 2: 
 						two_surplus--;
 						break;
 					case 3: 
 						three_surplus--;
 						break;
 					case 4: 
 						four_surplus--;
 						break;
 					case 5: 
 						five_surplus--;
 						break;
 					}
 				}
 				//2发奖
 				int prize_temp = new Random().nextInt(prize_surplus);
 				if(prize_temp<one_surplus){
 					//一等奖
 					guaguakaInfoBean.setPrizetype(1);
 				}else if(prize_temp<one_surplus+two_surplus){
 					//二等奖
 					guaguakaInfoBean.setPrizetype(2);
 				}else if(prize_temp<one_surplus+two_surplus+three_surplus){
 					//三等奖
 					guaguakaInfoBean.setPrizetype(3);
 				}else if(prize_temp<one_surplus+two_surplus+three_surplus+four_surplus){
 					//四等奖
 					guaguakaInfoBean.setPrizetype(4);
 				}else if(prize_temp<one_surplus+two_surplus+three_surplus+four_surplus+five_surplus){
 					//五等奖
 					guaguakaInfoBean.setPrizetype(5);
 				}
 				guaguakaInfoBean.setType(-1);
 				
 				String sn = "SN"+System.currentTimeMillis()/1000+guaguakaInfoBean.getId();
 				guaguakaInfoBean.setSn(sn);
 				guaguakaService.updateInfoForWinForDazhuanpan(guaguakaInfoBean);
 				result = String.valueOf(guaguakaInfoBean.getPrizetype());
 			}else{
 				//中奖，但没奖品
 				guaguakaInfoBean.setType(0);
 				guaguakaInfoBean.setSn(null);
 				guaguakaInfoBean.setPrizetype(0);
 				guaguakaService.updateInfoForWinForDazhuanpan(guaguakaInfoBean);
 				result = "0";
 			}
 		}else{
 				//没中奖
				guaguakaInfoBean.setType(0);
				guaguakaInfoBean.setSn(null);
				guaguakaInfoBean.setPrizetype(0);
 				guaguakaService.updateInfoForWinForDazhuanpan(guaguakaInfoBean);
 				result = "0";
 		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	//修改刮奖次数
	public String updateInfo() throws Exception{
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);	
		GuaguakaInfoBean guaguakaInfoBean = guaguakaService.selectOneInfoForDazhuanpan(guaguakaBean);
		String result="";
		if(guaguakaInfoBean.getType()==-1){
			//如果中奖则设置为1
			guaguakaInfoBean.setType(1);
			result="success";
		}
		//判断最后刮奖日期是否是今天,重置当天抽奖次数
		if(TimestampToDate.getTimestamp(guaguakaInfoBean.getCreatetime())>getTimesmorning()){
			guaguakaInfoBean.setTodaytime(guaguakaInfoBean.getTodaytime()+1);
		}else{
			guaguakaInfoBean.setTodaytime(1);
		}
		//总次数+1
		guaguakaInfoBean.setTotaltime(guaguakaInfoBean.getTotaltime()+1);
		guaguakaService.updateInfoForTimeForDazhuanpan(guaguakaInfoBean);
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	/**
	 * 查询活动列表
	 */
	public String list() throws Exception {
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		//2获取活动ID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		APPKeyViewModel appKeyViewModel = new APPKeyViewModel();
		appKeyViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		appKeyViewModel.setId(appId);
		//
		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		APPBean appBean = appService.selectAppByUserIdAndAppId(appKeyViewModel);
		
		
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		GuaguakaBean guaguakaBean = new GuaguakaBean();
		guaguakaBean.setApp_id(Long.parseLong(appBean.getId()));
		List<GuaguakaBean> guaguakaBeanList = guaguakaService.selectAllByAppIDForDazhuanpan(guaguakaBean);
		
		for(int i=0;i<guaguakaBeanList.size();i++){
			verifyExpire(guaguakaBeanList.get(i));
			}
		RequestScopeFactory.RequestScope().setAttribute("guaguakaBeanList", guaguakaBeanList);
		RequestScopeFactory.SessionScope().put(Constat.APPBEAN, appBean);
		return "list";
	}
	


	public String add() throws Exception {
	
		return "add";
	}
	
	public String addSave() throws Exception{

		APPBean appBean = (APPBean) RequestScopeFactory.SessionScope().get(Constat.APPBEAN);
		String result = null;
		long startTime =TimestampToDate.getTimestamp(guaguakaBean.getStarttime());
		long endTime =TimestampToDate.getTimestamp(guaguakaBean.getEndtime());
		guaguakaBean.setApp_id(Long.parseLong(appBean.getId()));
		guaguakaBean.setStarttime(String.valueOf(startTime));
		guaguakaBean.setEndtime(String.valueOf(endTime));
		guaguakaBean.setIsdisplay(guaguakaBean.getIsdisplay()==null?"0":"1");
		
		if(guaguakaBean.getKeywords().length()==0||guaguakaBean.getKeywords().length()>30){
			result="关键词不能为空且长度不能超过30字";
		}else if(guaguakaBean.getTitle().length()==0||guaguakaBean.getTitle().length()>64){
			result="标题不能为空且长度不能超过64字";
		}else if(guaguakaBean.getImg().length()==0){
			result="必须插入一张图片";
		}else if(guaguakaBean.getDesc_service().length()>120){
			result="摘要若不为空则长度不能超过120字";
		}else if(startTime>=endTime){
			result="活动结束时间不能早于开始时间";
		}else if(endTime-startTime>30*24*60*60){
			result="活动持续时间最多一个月";
		}else if(guaguakaBean.getOne_number()+guaguakaBean.getTwo_number()+guaguakaBean.getThree_number()+guaguakaBean.getFour_number()+guaguakaBean.getFive_number()==0){
			result="至少要有一种奖品";
		}else if(guaguakaBean.getOne_number()>1000){
			result="一等奖奖品数量最大为1000";
		}else if(guaguakaBean.getOne_number()>0&&(guaguakaBean.getOne_prize().length()==0||guaguakaBean.getOne_prize().length()>20)){
			result="一等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getTwo_number()>1000){
			result="二等奖奖品数量最大为1000";
		}else if(guaguakaBean.getTwo_number()>0&&(guaguakaBean.getTwo_prize().length()==0||guaguakaBean.getTwo_prize().length()>20)){
			result="二等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getThree_number()>1000){
			result="三等奖奖品数量最大为1000";
		}else if(guaguakaBean.getThree_number()>0&&(guaguakaBean.getThree_prize().length()==0||guaguakaBean.getThree_prize().length()>20)){
			result="三等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getFour_number()>1000){
			result="四等奖奖品数量最大为1000";
		}else if(guaguakaBean.getFour_number()>0&&(guaguakaBean.getFour_prize().length()==0||guaguakaBean.getFour_prize().length()>20)){
			result="四等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getFive_number()>1000){
			result="五等奖奖品数量最大为1000";
		}else if(guaguakaBean.getFive_number()>0&&(guaguakaBean.getFive_prize().length()==0||guaguakaBean.getFive_prize().length()>20)){
			result="五等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getProbability()>100){
			result="中奖概率为0-100以内正整数";
		}else if(guaguakaBean.getTotaltime()==0||guaguakaBean.getTotaltime()>100){
			result="每人可参与的总次数在0-100之间,推荐只可参与1次!";
		}else if(guaguakaBean.getEverydaytime()==0||guaguakaBean.getEverydaytime()>guaguakaBean.getTotaltime()){
			result="每天可参与次数小于等于总参与次数,推荐只可参与1次!";
		}else if(guaguakaBean.getPassword().length()==0||guaguakaBean.getPassword().length()>16){
			result="兑奖密码长度在1-16位以内!";
		}else if(guaguakaBean.getContacttype().length()==0||guaguakaBean.getContacttype().length()>10){
			result="中奖者联系方式长度在1-10位以内!";
		}else if(guaguakaBean.getExplain_service().length()==0||guaguakaBean.getExplain_service().length()>200){
			result="活动说明长度在1-200位以内!";
		}else{
			//校验成功,录入数据库
			GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
			if(guaguakaService.insertOneServiceForDazhuanpan(guaguakaBean)>0){
				// 插入活动成功后，是否插入 素材库或者关键字中，如果不的话，查询关键字表的时候如何查询 刘虹辰TODO
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLinkByDazhuanpan(guaguakaBean));
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
	}

	public String edit() throws Exception {
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		GuaguakaBean guaguakaBean = new GuaguakaBean();		
		if(id!=null){
			guaguakaBean.setId(Long.parseLong(id));
			GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		    guaguakaBean = guaguakaService.selectServiceByIDForDazhuanpan(guaguakaBean);
		    verifyExpire(guaguakaBean);
		}
	    RequestScopeFactory.RequestScope().setAttribute("guaguakaBean", guaguakaBean);
		return "edit";
	}
	
	public String editSave() throws Exception{

		APPBean appBean = (APPBean) RequestScopeFactory.SessionScope().get(Constat.APPBEAN);
		String result = null;
		long startTime =TimestampToDate.getTimestamp(guaguakaBean.getStarttime());
		long endTime =TimestampToDate.getTimestamp(guaguakaBean.getEndtime());
		guaguakaBean.setApp_id(Long.parseLong(appBean.getId()));
		guaguakaBean.setStarttime(String.valueOf(startTime));
		guaguakaBean.setEndtime(String.valueOf(endTime));
		guaguakaBean.setIsdisplay(guaguakaBean.getIsdisplay()==null?"0":"1");
		
		if(guaguakaBean.getKeywords().length()==0||guaguakaBean.getKeywords().length()>30){
			result="关键词不能为空且长度不能超过30字";
		}else if(guaguakaBean.getTitle().length()==0||guaguakaBean.getTitle().length()>64){
			result="标题不能为空且长度不能超过64字";
		}else if(guaguakaBean.getImg().length()==0){
			result="必须插入一张图片";
		}else if(guaguakaBean.getDesc_service().length()>120){
			result="摘要若不为空则长度不能超过120字";
		}else if(startTime>=endTime){
			result="活动结束时间不能早于开始时间";
		}else if(endTime-startTime>30*24*60*60){
			result="活动持续时间最多一个月";
		}else if(guaguakaBean.getOne_number()+guaguakaBean.getTwo_number()+guaguakaBean.getThree_number()+guaguakaBean.getFour_number()+guaguakaBean.getFive_number()==0){
			result="至少要有一种奖品";
		}else if(guaguakaBean.getOne_number()>1000){
			result="一等奖奖品数量最大为1000";
		}else if(guaguakaBean.getOne_number()>0&&(guaguakaBean.getOne_prize().length()==0||guaguakaBean.getOne_prize().length()>20)){
			result="一等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getTwo_number()>1000){
			result="二等奖奖品数量最大为1000";
		}else if(guaguakaBean.getTwo_number()>0&&(guaguakaBean.getTwo_prize().length()==0||guaguakaBean.getTwo_prize().length()>20)){
			result="二等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getThree_number()>1000){
			result="三等奖奖品数量最大为1000";
		}else if(guaguakaBean.getThree_number()>0&&(guaguakaBean.getThree_prize().length()==0||guaguakaBean.getThree_prize().length()>20)){
			result="三等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getFour_number()>1000){
			result="四等奖奖品数量最大为1000";
		}else if(guaguakaBean.getFour_number()>0&&(guaguakaBean.getFour_prize().length()==0||guaguakaBean.getFour_prize().length()>20)){
			result="四等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getFive_number()>1000){
			result="五等奖奖品数量最大为1000";
		}else if(guaguakaBean.getFive_number()>0&&(guaguakaBean.getFive_prize().length()==0||guaguakaBean.getFive_prize().length()>20)){
			result="五等奖奖品名称不能为空且不超过20字";
		}else if(guaguakaBean.getProbability()>100){
			result="中奖概率为0-100以内正整数";
		}else if(guaguakaBean.getTotaltime()==0||guaguakaBean.getTotaltime()>100){
			result="每人可参与的总次数在0-100之间,推荐只可参与1次!";
		}else if(guaguakaBean.getEverydaytime()==0||guaguakaBean.getEverydaytime()>guaguakaBean.getTotaltime()){
			result="每天可参与次数小于等于总参与次数,推荐只可参与1次!";
		}else if(guaguakaBean.getPassword().length()==0||guaguakaBean.getPassword().length()>16){
			result="兑奖密码长度在1-16位以内!";
		}else if(guaguakaBean.getContacttype().length()==0||guaguakaBean.getContacttype().length()>10){
			result="中奖者联系方式长度在1-10位以内!";
		}else if(guaguakaBean.getExplain_service().length()==0||guaguakaBean.getExplain_service().length()>200){
			result="活动说明长度在1-200位以内!";
		}else{
			//校验成功,修改数据
			GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
			if(guaguakaService.updateOneServiceForDazhuanpan(guaguakaBean)>0){
				// 插入活动成功后，是否插入 素材库或者关键字中，如果不的话，查询关键字表的时候如何查询 刘虹辰TODO
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLinkByDazhuanpan(guaguakaBean));
				result="success";
			}
		}
			
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String del() throws Exception {
		APPBean appBean = (APPBean) RequestScopeFactory.SessionScope().get(Constat.APPBEAN);
		guaguakaBean.setApp_id(Long.parseLong(appBean.getId()));		
		String result = null;
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		if(guaguakaService.delOneServiceForDazhuanpan(guaguakaBean)>0){
			guaguakaService.delInfosByServiceIdForDazhuanpan(guaguakaBean);
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLinkByDazhuanpan(guaguakaBean));
			result="success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}	
	
	public String cogInfo(){
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		GuaguakaBean guaguakaBean = new GuaguakaBean();
		List<GuaguakaInfoBean> guaguakaInfoBeanListTemp = new ArrayList();
		if(id!=null){
			guaguakaBean.setId(Long.parseLong(id));
			GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
			List<GuaguakaInfoBean> guaguakaInfoBeanList = guaguakaService.selectAllInfosByServiceIdForDazhuanpan(guaguakaBean);
			int all_count_time = 0;//参与总次数
			for(int i =0;i<guaguakaInfoBeanList.size();i++){
				all_count_time = all_count_time+guaguakaInfoBeanList.get(i).getTotaltime();
				if(guaguakaInfoBeanList.get(i).getType()>0){
					guaguakaInfoBeanListTemp.add(guaguakaInfoBeanList.get(i));
				}
			}
			guaguakaBean.setPrize_count(guaguakaInfoBeanListTemp.size());
			guaguakaBean.setAll_count(guaguakaInfoBeanList.size());
			guaguakaBean.setAll_count_time(all_count_time);
		}


		RequestScopeFactory.RequestScope().setAttribute("guaguakaBean", guaguakaBean);
		return "cog";
	}
	
	//查总数
	public String requeryCogPage() {
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		int totalRecord = guaguakaService.selectCountInfosByPageForDazhuanpan(guaguakaInfoBean);
		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
		//page.currentPage 从前台传回
		pageBean.setTotalRecord(totalRecord);
		
		String result = new String("{currentPage_paginator:'"+pageBean.getCurrentPage()+"',totalPages_paginator:'"+pageBean.getTotalPageNum()+"',numberOfPages_paginator:'"+pageBean.getNumberOfPages()+"'}");
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//查数据
	public String requeryCogResult(){
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		guaguakaInfoBean.setCount(pageBean.getPageSize());
		guaguakaInfoBean.setFrom(pageBean.getFrom());
		List<GuaguakaInfoBean> guaguakaInfoBeanList = guaguakaService.selectInfosByPageForDazhuanpan(guaguakaInfoBean);

		RequestScopeFactory.RequestScope().setAttribute("guaguakaInfoBeanList", guaguakaInfoBeanList);
		return "cogResult";
	}

	
	//微信兑奖
	public String subPassword() throws Exception{
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		String result = "";
		guaguakaInfoBean = guaguakaService.selectOneInfoByIdForDazhuanpan(guaguakaInfoBean);
		if(guaguakaInfoBean.getType()==2){
			result = "error";
		}else{
			if(guaguakaService.updateInfoForUsedForDazhuanpan(guaguakaInfoBean)){
				result="success";
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
		
	}
	//网站兑奖
	public String forUsed() throws Exception{
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		String result = "";
		if(guaguakaService.updateInfoForUsedForDazhuanpan(guaguakaInfoBean)){
			result="success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
		
	}
	
	public String subContact() throws Exception{
		GuaguakaService guaguakaService = (GuaguakaService) ApplicationContextFactory.getBean(Constat.GUAGUAKASERVICE);
		String result = null;
		if(guaguakaService.updateInfoForContactForDazhuanpan(guaguakaInfoBean)){
			result="success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
		
	}
	
	public static int getTimesmorning(){ 
		Calendar cal = Calendar.getInstance(); 
		cal.set(Calendar.HOUR_OF_DAY, 0); 
		cal.set(Calendar.SECOND, 0); 
		cal.set(Calendar.MINUTE, 0); 
		cal.set(Calendar.MILLISECOND, 0); 
		return (int) (cal.getTimeInMillis()/1000); 
		} 
}
