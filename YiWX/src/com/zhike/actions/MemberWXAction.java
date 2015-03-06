package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.beans.MemberBean;
import com.zhike.sql.beans.MemberEntityCardBean;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.beans.MemberInfoCogBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.services.LBSService;
import com.zhike.sql.services.MemberService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class MemberWXAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	public MemberBean memberBean;
	public MemberInfoBean memberInfoBean;
	public MemberInfoCogBean memberInfoCogBean;
	public MemberEntityCardBean memberEntityCardBean;
	
	private InputStream inputStream;
	public PageBean pageBean;
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public MemberBean getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(MemberBean memberBean) {
		this.memberBean = memberBean;
	}

	public MemberInfoBean getMemberInfoBean() {
		return memberInfoBean;
	}

	public void setMemberInfoBean(MemberInfoBean memberInfoBean) {
		this.memberInfoBean = memberInfoBean;
	}

	public MemberInfoCogBean getMemberInfoCogBean() {
		return memberInfoCogBean;
	}

	public void setMemberInfoCogBean(MemberInfoCogBean memberInfoCogBean) {
		this.memberInfoCogBean = memberInfoCogBean;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	
	public MemberEntityCardBean getMemberEntityCardBean() {
		return memberEntityCardBean;
	}

	public void setMemberEntityCardBean(MemberEntityCardBean memberEntityCardBean) {
		this.memberEntityCardBean = memberEntityCardBean;
	}

	public String execute() {
		try{
		//会员卡ID
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		//当前微信用户
		WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
		
		MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		MemberBean memberBean= new MemberBean();
		memberBean.setId(Long.parseLong(serviceid));
		memberBean = memberService.selectOneMember(memberBean);
		//活动不存在RETURN share
		if(memberBean!=null){
			MemberInfoBean memberInfoBean= new MemberInfoBean();
			memberInfoBean.setService_id(Long.parseLong(serviceid));
			memberInfoBean.setOpenid(checkWxSession.getId());
			
			MemberInfoBean memberInfoBeanForSelect = memberService.selectOneMemberInfo(memberInfoBean);
			RequestScopeFactory.SessionScope().put("memberBean", memberBean);
			if(memberInfoBeanForSelect==null){
				RequestScopeFactory.RequestScope().setAttribute("memberInfoBean", memberInfoBean);
				return "new";
			}else{
				RequestScopeFactory.SessionScope().put("memberInfoBean", memberInfoBeanForSelect);
				return "old";
			}
			
		}else{
			return "error";
		}
	}catch (Exception e) {
		return "error";
	}
	}
	
	/**
	 * 领取新会员卡
	 */
	public String getNewCard(){
		//当前微信用户
		String result = null;
		MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		MemberBean memberBean = (MemberBean) RequestScopeFactory.SessionScope().get("memberBean");
	
		
		memberInfoBean.setYue(memberBean.getCard_new_yue());
		memberInfoBean.setJifen(memberBean.getCard_new_jifen());
		if(memberService.insertOneMemberInfo(memberInfoBean)>0){
			if(memberBean.getCard_new_yue()!=0){
				//插入记录
				MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
				memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
				memberInfoCogBean.setMember_number(memberBean.getCard_new_yue());
				memberInfoCogBean.setMember_type(6);
				memberInfoCogBean.setMember_explan("开卡赠送余额");
				memberInfoCogBean.setService_id(memberInfoBean.getService_id());
				memberService.insertOneMemberInfoCog(memberInfoCogBean);
			}
			if(memberBean.getCard_new_jifen()!=0){
				//插入记录
				MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
				memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
				memberInfoCogBean.setMember_number(memberBean.getCard_new_jifen());
				memberInfoCogBean.setMember_type(6);
				memberInfoCogBean.setMember_explan("开卡赠送积分");
				memberInfoCogBean.setService_id(memberInfoBean.getService_id());
				memberService.insertOneMemberInfoCog(memberInfoCogBean);
			}			

			
			result = "success";
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
/**
 * 门店地址
 * */
	public String address(){
		MemberBean memberBean = (MemberBean) RequestScopeFactory.SessionScope().get("memberBean");
		LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(memberBean.getApp_id());
		lbsBean.setIsVip("1");
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppIDByIsVip(lbsBean);
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);
		return "address";
	}
	/**
	 * 是否签到
	 * */
		public String isCheck(){
			Calendar cal = Calendar.getInstance(); 
			cal.set(Calendar.HOUR_OF_DAY, 0); 
			cal.set(Calendar.SECOND, 0); 
			cal.set(Calendar.MINUTE, 0); 
			cal.set(Calendar.MILLISECOND, 0); 
			long time = cal.getTimeInMillis()/1000; 			
			MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
			memberInfoBean.setCreatetime(String.valueOf(time));
			String result = null;
			if(memberService.selectForIsCheck(memberInfoBean)==0){
				//未签到
				result = "success";
			}else{
				//已签到
				result = "error";
			}
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}			
			return SUCCESS;
		}
		/**
		 * 签到
		 * */
			public String goCheck(){
				//再次校验
				Calendar cal = Calendar.getInstance(); 
				cal.set(Calendar.HOUR_OF_DAY, 0); 
				cal.set(Calendar.SECOND, 0); 
				cal.set(Calendar.MINUTE, 0); 
				cal.set(Calendar.MILLISECOND, 0); 
				long time = cal.getTimeInMillis()/1000; 			
				MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
				memberInfoBean.setCreatetime(String.valueOf(time));
				String result = null;
				if(memberService.selectForIsCheck(memberInfoBean)==0){
					result = "success";
					//查询签到积分
					memberInfoBean = memberService.selectOneMemberInfoById(memberInfoBean);
					MemberBean memberBean = new MemberBean();
					memberBean.setId(memberInfoBean.getService_id());
					memberBean = memberService.selectOneMember(memberBean);
					
					//判断是否连续签到
					memberInfoBean.setCreatetime(String.valueOf(time-6*24*60*60));
					if(memberService.selectForIsCheck(memberInfoBean)>=6){
						//插入记录
						MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
						memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
						memberInfoCogBean.setMember_number(memberBean.getCard_contuine_integral());
						memberInfoCogBean.setMember_type(5);
						memberInfoCogBean.setMember_explan("连续签到赠积分");
						memberInfoCogBean.setService_id(memberInfoBean.getService_id());
						//修改会员积分
						if(memberService.insertOneMemberInfoCog(memberInfoCogBean)>0){
							MemberInfoBean mibTemp = new MemberInfoBean();
							mibTemp.setId(memberInfoBean.getId());
							mibTemp.setService_id(memberInfoBean.getService_id());
							mibTemp.setJifen(memberBean.getCard_contuine_integral());
							
							memberService.updateOneMemberInfoForYueAndJifen(mibTemp);
						}
					}else{
						//插入记录
						MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
						memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
						memberInfoCogBean.setMember_number(memberBean.getCard_integral());
						memberInfoCogBean.setMember_type(5);
						memberInfoCogBean.setMember_explan("每日签到赠积分");
						memberInfoCogBean.setService_id(memberInfoBean.getService_id());
						//修改会员积分
						if(memberService.insertOneMemberInfoCog(memberInfoCogBean)>0){
							MemberInfoBean mibTemp = new MemberInfoBean();
							mibTemp.setId(memberInfoBean.getId());
							mibTemp.setService_id(memberInfoBean.getService_id());
							mibTemp.setJifen(memberBean.getCard_integral());
							
							memberService.updateOneMemberInfoForYueAndJifen(mibTemp);
						}
					}
				}else{
					//已签到
					result = "今天已经签到过了";
				}
				try {
					inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
				} catch (UnsupportedEncodingException e) {
					
					e.printStackTrace();
				}			
				return SUCCESS;
			}	
		public String member_info(){
			
			return "member_info";
		}
		
		public String perfect_info(){
			
			return "perfect_info";
		}
		//完善个人资料提交
		public String submit_perfect_entity(){
			String result = null;
			MemberInfoBean memberInfoBeanSession = (MemberInfoBean) RequestScopeFactory.SessionScope().get("memberInfoBean");
			//有两个值前台没有。从SESSION里取
			
			if(memberInfoBean.getCard_tel().length()<=14&&memberInfoBean.getCard_name().length()<=10){
				memberInfoBeanSession.setCard_name(memberInfoBean.getCard_name());
				memberInfoBeanSession.setCard_sex(memberInfoBean.getCard_sex());
				memberInfoBeanSession.setCard_birthday(memberInfoBean.getCard_birthday());
				memberInfoBeanSession.setCard_tel(memberInfoBean.getCard_tel());
				memberInfoBeanSession.setInfo_perfect(1);
				MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
				if(memberService.perfectOneMemberInfo(memberInfoBeanSession)>0){
					//查询完善资料积分
					MemberBean memberBean = new MemberBean();
					memberBean.setId(memberInfoBeanSession.getService_id());
					memberBean = memberService.selectOneMember(memberBean);
					//插入记录
					MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
					memberInfoCogBean.setMemberInfo_id(memberInfoBeanSession.getId());
					memberInfoCogBean.setMember_number(memberBean.getCard_perfect_info());
					memberInfoCogBean.setMember_type(6);
					memberInfoCogBean.setMember_explan("完善资料赠送");
					memberInfoCogBean.setService_id(memberInfoBeanSession.getService_id());	
					//修改会员积分
					if(memberService.insertOneMemberInfoCog(memberInfoCogBean)>0){
						MemberInfoBean mibTemp = new MemberInfoBean();
						mibTemp.setId(memberInfoBeanSession.getId());
						mibTemp.setService_id(memberInfoBeanSession.getService_id());
						mibTemp.setJifen(memberBean.getCard_perfect_info());
						memberService.updateOneMemberInfoForYueAndJifen(mibTemp);	
					}
					
					
					result="success";
				}else{
					result="提交失败!";
				}
			}else{
				result="姓名或电话号码长度不正确!";
			}


			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}			
			return SUCCESS;
		}
		
		public String check_entityCard(){
			
			return "check_entityCard";
		}
		
		//绑定实体卡提交
		public String checkEntity(){
			String result = null;
			MemberInfoBean memberInfoBean = (MemberInfoBean) RequestScopeFactory.SessionScope().get("memberInfoBean");
			if(memberInfoBean==null){
				result = "网页已过期,请重新进入。"; 
			}else{
				MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
				
				String card_issupport_check = memberBean.getCard_issupport_check();
				String[] check_result = card_issupport_check.split("");
				if(check_result.length==5){
					if(check_result[2].equals("0")){
						memberEntityCardBean.setCard_password(null);
					}
					if(check_result[3].equals("0")){
						memberEntityCardBean.setCard_name(null);
					}
					if(check_result[4].equals("0")){
						memberEntityCardBean.setCard_tel(null);
					}
					
				}
				List<MemberEntityCardBean> memberEntityCardBeanList= memberService.selectEntityCardByCheck(memberEntityCardBean);
				if(memberEntityCardBeanList!=null&&memberEntityCardBeanList.size()==1){
					result = "success";
					//获取最新会员数据,重新查询
					memberInfoBean = memberService.selectOneMemberInfo(memberInfoBean);//会员原始数据
					MemberEntityCardBean memberEntityCardBean = memberEntityCardBeanList.get(0);//实体卡数据
					//分2次录入信息
					if(memberInfoBean.getCard_binded()!=1){
						
						//插入记录 余额增加记录
						if(Integer.parseInt(memberEntityCardBean.getCard_yue())>0){
							MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
							memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
							memberInfoCogBean.setMember_number(Integer.parseInt(memberEntityCardBean.getCard_yue()));
							memberInfoCogBean.setMember_type(6);
							memberInfoCogBean.setMember_explan("绑定实体卡增加余额");
							memberInfoCogBean.setService_id(memberInfoBean.getService_id());
							memberService.insertOneMemberInfoCog(memberInfoCogBean);
						}
						//插入记录 积分增加记录
						if(Integer.parseInt(memberEntityCardBean.getCard_jifen())>0){
							MemberInfoCogBean memberInfoCogBean = new MemberInfoCogBean();
							memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
							memberInfoCogBean.setMember_number(Integer.parseInt(memberEntityCardBean.getCard_jifen()));
							memberInfoCogBean.setMember_type(6);
							memberInfoCogBean.setMember_explan("绑定实体卡增加积分");
							memberInfoCogBean.setService_id(memberInfoBean.getService_id());
							memberService.insertOneMemberInfoCog(memberInfoCogBean);
						}
						//1 修改会员积分
						if(Integer.parseInt(memberEntityCardBean.getCard_yue())>0||Integer.parseInt(memberEntityCardBean.getCard_jifen())>0){
							//1计算余额
							memberInfoBean.setYue(Integer.parseInt(memberEntityCardBean.getCard_yue()));
							//2 计算积分
							memberInfoBean.setJifen(Integer.parseInt(memberEntityCardBean.getCard_jifen()));	
							//录入数据库
							memberService.updateOneMemberInfoForYueAndJifen(memberInfoBean);
						}
					
					
					//2 从实体卡替换资料到微信卡
						memberInfoBean.setCard_id(memberEntityCardBean.getCard_id());
						if(memberInfoBean.getCard_name()==null||memberInfoBean.getCard_name().equals("")){
							memberInfoBean.setCard_name(memberEntityCardBean.getCard_name());
						}
						if(memberInfoBean.getCard_sex()==null||memberInfoBean.getCard_sex().equals("")){
							memberInfoBean.setCard_sex(memberEntityCardBean.getCard_sex());
						}
						if(memberInfoBean.getCard_tel()==null||memberInfoBean.getCard_tel().equals("")){
							memberInfoBean.setCard_tel(memberEntityCardBean.getCard_tel());
						}
						if(memberInfoBean.getCard_birthday()==null||memberInfoBean.getCard_birthday().equals("")){
							memberInfoBean.setCard_birthday(memberEntityCardBean.getCard_birthday());
						}
						if(memberInfoBean.getCard_remark()==null||memberInfoBean.getCard_remark().equals("")){
							memberInfoBean.setCard_remark(memberEntityCardBean.getCard_remark());
						}
						
						memberService.perfectOneMemberInfo(memberInfoBean);
					
						//3 修改实体卡已使用
						memberEntityCardBean.setMemberInfo_id(memberInfoBean.getId());
						memberService.useOneEntityCard(memberEntityCardBean);
						//4 修改用户信息为已绑定卡
						memberService.bindOneMemberInfo(memberInfoBean);
					}

				}else if(memberEntityCardBeanList!=null&&memberEntityCardBeanList.size()==0){
					result = "没有匹配到相应的实体卡,请重新输入,或和商家联系。";
				}else if(memberEntityCardBeanList!=null&&memberEntityCardBeanList.size()>1){
					result = "匹配到了多个实体卡,请和商家联系。";
				}
			}

			
			try {
				inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}			
			return SUCCESS;
		}
		
		//会员卡操作明细
		public String goHistory(){
			//当前微信用户
			WxUserBean checkWxSession = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);
			MemberBean memberBean = (MemberBean) RequestScopeFactory.SessionScope().get("memberBean");
			MemberInfoBean memberInfoBean = new MemberInfoBean();
			memberInfoBean.setOpenid(checkWxSession.getId());
			memberInfoBean.setService_id(memberBean.getId());
			MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
			memberInfoBean = memberService.selectOneMemberInfo(memberInfoBean);
			RequestScopeFactory.RequestScope().setAttribute("memberInfoBean",memberInfoBean);
			return "history";
		}
		
		
		

		/**
		 * 查总数 会员操作记录
		 * */	
		public String requeryHistoryPage() {
			MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
			int totalRecord = memberService.selectCountInfoListByPage(memberInfoCogBean);
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
		 * 查数据 会员操作记录明细
		 * */
		public String requeryHistoryResult(){
			MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
			
			memberInfoCogBean.setCount(pageBean.getPageSize());
			memberInfoCogBean.setFrom(pageBean.getFrom());
			List<MemberInfoCogBean> memberInfoCogBeanList = memberService.selectInfoListByPage(memberInfoCogBean);
			
			RequestScopeFactory.RequestScope().setAttribute("memberInfoCogBeanList", memberInfoCogBeanList);
			return "historyResult";
		}
}
