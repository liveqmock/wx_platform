package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.beans.MemberBean;
import com.zhike.sql.beans.MemberEntityCardBean;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.beans.MemberInfoCogBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.LBSService;
import com.zhike.sql.services.MemberService;
import com.zhike.sql.services.WxUserService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class MemberAction extends ActionSupport {

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

	

	public MemberInfoBean getMemberInfoBean() {
		return memberInfoBean;
	}

	public void setMemberInfoBean(MemberInfoBean memberInfoBean) {
		this.memberInfoBean = memberInfoBean;
	}

	public MemberBean getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(MemberBean memberBean) {
		this.memberBean = memberBean;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	

	public MemberInfoCogBean getMemberInfoCogBean() {
		return memberInfoCogBean;
	}

	public void setMemberInfoCogBean(MemberInfoCogBean memberInfoCogBean) {
		this.memberInfoCogBean = memberInfoCogBean;
	}

	
	public MemberEntityCardBean getMemberEntityCardBean() {
		return memberEntityCardBean;
	}

	public void setMemberEntityCardBean(MemberEntityCardBean memberEntityCardBean) {
		this.memberEntityCardBean = memberEntityCardBean;
	}

	/**
	 * 查询会员卡列表
	 */
	public String list(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//2获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		
		
		MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		MemberBean memberBean = new MemberBean();
		memberBean.setApp_id(Long.parseLong(appId));
		
		List<MemberBean> memberBeanList = memberService.selectAllByAppID(memberBean);
		
		RequestScopeFactory.RequestScope().setAttribute("memberBeanList", memberBeanList);
		return "list";
		
	}
	
	/**
	 * 增加	
	 */
	public String add() {
		//2获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		//获取开启会员卡的LBS信息
		lbsBean.setIsVip("1");
		
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppIDByIsVip(lbsBean);
		
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);
		
		return "add";
	}
	/**
	 * 保存增加	
	 */
	public String addSave() throws Exception{
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			String result = null;
			memberBean.setApp_id(Long.parseLong(appId));
			
			if(memberBean.getKeywords().length()==0||memberBean.getKeywords().length()>30){
				result="关键词不能为空且长度不能超过30字";
			}else if(memberBean.getTitle().length()==0||memberBean.getTitle().length()>64){
				result="标题不能为空且长度不能超过64字";
			}else if(memberBean.getImg().length()==0){
				result="必须插入一张封面图片";
			}else if(memberBean.getDesc_service().length()>120){
				result="摘要若不为空则长度不能超过120字";
			}else if(memberBean.getCard_name().length()==0||memberBean.getCard_name().length()>30){
				result="会员卡名称不能为空且长度不能超过30字";
			}
			else if(memberBean.getCard_type().equals("1")&&memberBean.getCard_type_img().length()==0){
				result="必须上传一个自定义模板";
			}
			else if(memberBean.getCard_logo().length()==0){
				result="必须插入一张LOGO图片";
			}else if(memberBean.getCard_template().length()==0){
				result="必须选择一张会员卡模板";
			}else if(memberBean.getCard_welcome().length()>50){
				result="会员卡说明长度不能超过50字";
			}else if(memberBean.getCard_explain().length()>200){
				result="会员卡说明长度不能超过200字";
			}else if(memberBean.getCard_yue().length()>200){
				result="预存规则说明长度不能超过200字";
			}else if(memberBean.getCard_jifen().length()>200){
				result="积分规则长度不能超过200字";
			}else if(memberBean.getCard_integral()>100){
				result="每日签到赠送积分为0-100以内的正整数。";
			}else if((memberBean.getCard_contuine_integral()!=0&&memberBean.getCard_contuine_integral()<=memberBean.getCard_integral())||memberBean.getCard_contuine_integral()>100){
				result="连续签到赠送积分为0，或者为大于每日签到积分，范围为0-100以内的正整数";
			}
			else if((memberBean.getCard_rule_xiaofei()==0&&memberBean.getCard_rule_zengsong()!=0)||(memberBean.getCard_rule_xiaofei()!=0&&memberBean.getCard_rule_zengsong()==0)){
				result="余额消费/现金消费 赠送积分 不能有只有一项为0。";
			}
			else if(memberBean.getCard_notice1().length()>30){
				result="通知1的标题长度不能超过30字。";
			}else if(memberBean.getCard_notice1_content().length()>500){
				result="通知1的内容长度不能超过500字。";
			}else if((memberBean.getCard_notice1().length()>0&&memberBean.getCard_notice1_content().length()==0)||(memberBean.getCard_notice1().length()==0&&memberBean.getCard_notice1_content().length()>0)){
				result="通知1非必填,但标题和内容不能只填一项。";
			}
			else if(memberBean.getCard_notice2().length()>30){
				result="通知2的标题长度不能超过30字。";
			}else if(memberBean.getCard_notice2_content().length()>500){
				result="通知2的内容长度不能超过500字。";
			}else if((memberBean.getCard_notice2().length()>0&&memberBean.getCard_notice2_content().length()==0)||(memberBean.getCard_notice2().length()==0&&memberBean.getCard_notice2_content().length()>0)){
				result="通知2非必填,但标题和内容不能只填一项。";
			}
			else if(memberBean.getCard_notice3().length()>30){
				result="通知3的标题长度不能超过30字。";
			}else if(memberBean.getCard_notice3_content().length()>500){
				result="通知3的内容长度不能超过500字。";
			}else if((memberBean.getCard_notice3().length()>0&&memberBean.getCard_notice3_content().length()==0)||(memberBean.getCard_notice3().length()==0&&memberBean.getCard_notice3_content().length()>0)){
				result="通知3非必填,但标题和内容不能只填一项。";
			}
			else{
				//校验成功,录入数据库
				MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
				if(memberService.insertOneMember(memberBean)>0){
					// 插入活动成功后，是否插入 素材库或者关键字中，如果不的话，查询关键字表的时候如何查询 刘虹辰TODO
					//更新中间表
					ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(memberBean));
					
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
	/**
	 * 编辑
	 * */	
	public String edit() {
		//APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		//会员卡ID
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		MemberBean memberBean = new MemberBean();	
		memberBean.setId(Long.parseLong(id));
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		memberBean = memberService.selectOneMember(memberBean);
		RequestScopeFactory.RequestScope().setAttribute("memberBean", memberBean);
		
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		//获取开启会员卡的LBS信息
		lbsBean.setIsVip("1");
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppIDByIsVip(lbsBean);
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);
		
	    
		return "edit";
	}	
	/**
	 * 保存编辑	
	 */
	public String editSave() throws Exception{
		//获取APPID
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			String result = null;
			memberBean.setApp_id(Long.parseLong(appId));
			
			if(memberBean.getKeywords().length()==0||memberBean.getKeywords().length()>30){
				result="关键词不能为空且长度不能超过30字";
			}else if(memberBean.getTitle().length()==0||memberBean.getTitle().length()>64){
				result="标题不能为空且长度不能超过64字";
			}else if(memberBean.getImg().length()==0){
				result="必须插入一张封面图片";
			}else if(memberBean.getDesc_service().length()>120){
				result="摘要若不为空则长度不能超过120字";
			}else if(memberBean.getCard_name().length()==0||memberBean.getCard_name().length()>30){
				result="会员卡名称不能为空且长度不能超过30字";
			}
			else if(memberBean.getCard_type().equals("1")&&memberBean.getCard_type_img().length()==0){
				result="必须上传一个自定义模板";
			}
			else if(memberBean.getCard_logo().length()==0){
				result="必须插入一张LOGO图片";
			}else if(memberBean.getCard_template().length()==0){
				result="必须选择一张会员卡模板";
			}else if(memberBean.getCard_welcome().length()>50){
				result="会员卡说明长度不能超过50字";
			}else if(memberBean.getCard_explain().length()>200){
				result="会员卡说明长度不能超过200字";
			}else if(memberBean.getCard_yue().length()>200){
				result="预存规则说明长度不能超过200字";
			}else if(memberBean.getCard_jifen().length()>200){
				result="积分规则长度不能超过200字";
			}else if(memberBean.getCard_integral()>100){
				result="每日签到赠送积分为0-100以内的正整数。";
			}else if((memberBean.getCard_contuine_integral()!=0&&memberBean.getCard_contuine_integral()<=memberBean.getCard_integral())||memberBean.getCard_contuine_integral()>100){
				result="连续签到赠送积分为0，或者为大于每日签到积分，范围为0-100以内的正整数";
			}
			else if((memberBean.getCard_rule_xiaofei()==0&&memberBean.getCard_rule_zengsong()!=0)||(memberBean.getCard_rule_xiaofei()!=0&&memberBean.getCard_rule_zengsong()==0)){
				result="余额消费/现金消费 赠送积分 不能有只有一项为0。";
			}
			else if(memberBean.getCard_notice1().length()>30){
				result="通知1的标题长度不能超过30字。";
			}else if(memberBean.getCard_notice1_content().length()>500){
				result="通知1的内容长度不能超过500字。";
			}else if((memberBean.getCard_notice1().length()>0&&memberBean.getCard_notice1_content().length()==0)||(memberBean.getCard_notice1().length()==0&&memberBean.getCard_notice1_content().length()>0)){
				result="通知1非必填,但标题和内容不能只填一项。";
			}
			else if(memberBean.getCard_notice2().length()>30){
				result="通知2的标题长度不能超过30字。";
			}else if(memberBean.getCard_notice2_content().length()>500){
				result="通知2的内容长度不能超过500字。";
			}else if((memberBean.getCard_notice2().length()>0&&memberBean.getCard_notice2_content().length()==0)||(memberBean.getCard_notice2().length()==0&&memberBean.getCard_notice2_content().length()>0)){
				result="通知2非必填,但标题和内容不能只填一项。";
			}
			else if(memberBean.getCard_notice3().length()>30){
				result="通知3的标题长度不能超过30字。";
			}else if(memberBean.getCard_notice3_content().length()>500){
				result="通知3的内容长度不能超过500字。";
			}else if((memberBean.getCard_notice3().length()>0&&memberBean.getCard_notice3_content().length()==0)||(memberBean.getCard_notice3().length()==0&&memberBean.getCard_notice3_content().length()>0)){
				result="通知3非必填,但标题和内容不能只填一项。";
			}
			else{
				//校验成功,录入数据库
				MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
				if(memberService.updateOneMember(memberBean)>0){
					// 插入活动成功后，是否插入 素材库或者关键字中，如果不的话，查询关键字表的时候如何查询 刘虹辰TODO
					//更新中间表
					ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(memberBean));
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
	
	/**
	 * 删除会员卡
	 * */
	public String del() throws Exception {
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		memberBean.setApp_id(Long.parseLong(appId));
		String result = null;
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		if(memberService.delOneMember(memberBean)>0){
			//删除实体卡
			memberService.delEntityCardByServiceId(memberBean);
			//删除会员信息
			memberService.delInfosByServiceId(memberBean);
			//删除会员操作记录
			memberService.delInfoCogsByServiceId(memberBean);
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(memberBean));
			result="success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}	
	/**
	 * 管理会员
	 * */
	public String cogInfo(){
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		MemberBean memberBean = new MemberBean();
		memberBean.setId(Long.parseLong(id));
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		memberBean = memberService.selectOneMember(memberBean);
		RequestScopeFactory.RequestScope().setAttribute("memberBean", memberBean);
		//获取APPID 用来获取门店信息
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		//获取开启会员卡的LBS信息
		lbsBean.setIsVip("1");
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppIDByIsVip(lbsBean);
		RequestScopeFactory.RequestScope().setAttribute("lbsBeanList", lbsBeanList);
		return "cog";
	}
	/**
	 * 查总数
	 * */	
	public String requeryCogPage() {
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		int totalRecord = memberService.selectCountInfosByPage(memberInfoBean);
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
	 * 查数据
	 * */
	public String requeryCogResult(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		WxUserService wxUserService = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
		memberInfoBean.setCount(pageBean.getPageSize());
		memberInfoBean.setFrom(pageBean.getFrom());
		List<MemberInfoBean> memberInfoBeanList = memberService.selectInfosByPage(memberInfoBean);
		for(int i=0;i<memberInfoBeanList.size();i++){
			WxUserBean wxUserBean = new WxUserBean();
			wxUserBean.setId(memberInfoBeanList.get(i).getOpenid());
			memberInfoBeanList.get(i).wxUserBean =  wxUserService.selectOneWxUserById(wxUserBean);
			
		}
		
		
		RequestScopeFactory.RequestScope().setAttribute("memberInfoBeanList", memberInfoBeanList);
		return "cogResult";
	}
	/**
	 * 保存操作会员信息
	 * */
	public String saveMemberInfoCog(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		String result = null;
		memberInfoCogBean.setService_id(memberInfoBean.getService_id());
		memberInfoCogBean.setMemberInfo_id(memberInfoBean.getId());
		//判断是否是现金收款
		if(memberInfoCogBean.getMember_type()!=5){
			// 插入记录信息 
			if(memberService.insertOneMemberInfoCog(memberInfoCogBean)>0){
				switch (memberInfoCogBean.getMember_type()) {
				case 1:
					memberInfoBean.setYue(memberInfoCogBean.getMember_number());
					break;
				case 2:
					memberInfoBean.setYue(-memberInfoCogBean.getMember_number());
					break;
				case 3:
					memberInfoBean.setJifen(memberInfoCogBean.getMember_number());
					break;
				case 4:
					memberInfoBean.setJifen(-memberInfoCogBean.getMember_number());
					break;
				default:
					break;
				}
		}
			//修改积分信息
			memberService.updateOneMemberInfoForYueAndJifen(memberInfoBean);

		}
		result = "success";
		
		//是否赠送积分
		if((memberBean.getCard_rule_xiaofei()!=0&&memberBean.getCard_rule_zengsong()!=0)&&(memberInfoCogBean.getMember_type()==2||memberInfoCogBean.getMember_type()==5)){
			rule_zengsong(memberBean,memberInfoCogBean);
		}
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
		}
		return SUCCESS;
	}	

	
	/**
	 * 根据规则 赠送积分
	 * */
	public void rule_zengsong(MemberBean memberBean,MemberInfoCogBean memberInfoCogBean){
		//插入记录信息 
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		
		int jifen = (int)Math.floor(memberInfoCogBean.getMember_number()*memberBean.getCard_rule_zengsong()/memberBean.getCard_rule_xiaofei());
		if(jifen>0){
			if(memberInfoCogBean.getMember_type()==2){
				memberInfoCogBean.setMember_explan("余额消费"+memberInfoCogBean.getMember_number()+"元,赠送"+jifen+"积分");
			}else{
				memberInfoCogBean.setMember_explan("现金消费"+memberInfoCogBean.getMember_number()+"元,赠送"+jifen+"积分"+(memberInfoCogBean.getMember_explan().length()>0?",备注："+memberInfoCogBean.getMember_explan()+"":""));
			}
			memberInfoCogBean.setMember_number(jifen);
			memberInfoCogBean.setMember_type(6);
			

			//修改会员积分
			if(memberService.insertOneMemberInfoCog(memberInfoCogBean)>0){
				MemberInfoBean memberInfoBean = new MemberInfoBean();
				memberInfoBean.setId(memberInfoCogBean.getMemberInfo_id());
				memberInfoBean.setService_id(memberInfoCogBean.getService_id());
				memberInfoBean.setJifen(jifen);
				memberService.updateOneMemberInfoForYueAndJifen(memberInfoBean);
			}
			
		}
	}

	/**
	 * 对会员进行备注
	 * */
	public String saveMemberInfoCogForTag(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		String result = null;
		
		if(memberInfoBean.getCard_remark().length()<=20){
			//修改积分信息
			memberService.updateOneMemberInfoForRemark(memberInfoBean);

			result = "success";
		}else{
			result = "备注不能超过20字";
		}

		
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
		}
		return SUCCESS;
	}	

	
	/**
	 * 管理会员操作记录明细
	 * */
	public String cogInfoList(){
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		MemberInfoBean memberInfoBean = new MemberInfoBean();
		memberInfoBean.setId(Long.parseLong(id));
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		memberInfoBean = memberService.selectOneMemberInfoById(memberInfoBean);
		RequestScopeFactory.RequestScope().setAttribute("memberInfoBean", memberInfoBean);
		//获取APPID 用来获取门店信息
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		LBSService lbsService  = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
		LBSBean lbsBean = new LBSBean();
		lbsBean.setApp_id(Long.parseLong(appId));
		//获取开启会员卡的LBS信息
		lbsBean.setIsVip("1");
		List<LBSBean> lbsBeanList = lbsService.selectAllByAppIDByIsVip(lbsBean);
		RequestScopeFactory.SessionScope().put("lbsBeanList", lbsBeanList);
		//获取当前会员信息
		WxUserService wxUserService = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
		WxUserBean wxUserBean = new WxUserBean();
		wxUserBean.setId(memberInfoBean.getOpenid());
		memberInfoBean.wxUserBean = wxUserService.selectOneWxUserById(wxUserBean);
		return "cogInfoList";
		
	}

	/**
	 * 查总数 会员操作记录明细
	 * */	
	public String requeryCogPageForCogInfoList() {
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
	public String requeryCogResultForCogInfoList(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		
		memberInfoCogBean.setCount(pageBean.getPageSize());
		memberInfoCogBean.setFrom(pageBean.getFrom());
		List<MemberInfoCogBean> memberInfoCogBeanList = memberService.selectInfoListByPage(memberInfoCogBean);
		
		RequestScopeFactory.RequestScope().setAttribute("memberInfoCogBeanList", memberInfoCogBeanList);
		return "cogInfoListResult";
	}
	
	/**
	 * 管理实体会员卡
	 * */	
	public String entityCard(){
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		MemberBean memberBean = new MemberBean();
		memberBean.setId(Long.parseLong(id));
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		memberBean = memberService.selectOneMember(memberBean);
		RequestScopeFactory.RequestScope().setAttribute("memberBean", memberBean);		
		return "entityCard";
	}

	/**
	 * 查总数 实体会员卡
	 * @author by lhc
	 * */	
	public String requeryEntityCardPage() {
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		int totalRecord = memberService.selectCountEntityCardByPage(memberEntityCardBean);
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
	 * 查数据 实体会员卡
	 * @author by lhc
	 * */
	public String requeryEntityCardResult(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		memberEntityCardBean.setCount(pageBean.getPageSize());
		memberEntityCardBean.setFrom(pageBean.getFrom());
		List<MemberEntityCardBean> memberEntityCardBeanList = memberService.selectEntityCardByPage(memberEntityCardBean);
		
		
		RequestScopeFactory.RequestScope().setAttribute("memberEntityCardBeanList", memberEntityCardBeanList);
		return "entityCardResult";
	}
	
	/**
	 * 保存 实体会员卡
	 * @author by lhc
	 * */
	public String saveEntityCard(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		String result = null;
		
			if(memberEntityCardBean.getCard_yue().equals("")){
				memberEntityCardBean.setCard_yue("0");
			}
			if(memberEntityCardBean.getCard_jifen().equals("")){
				memberEntityCardBean.setCard_jifen("0");
			}		
			if(memberEntityCardBean.getId()==0){
				//新卡 新增
				if(memberService.selectEntityCardByCardId(memberEntityCardBean)==null){
					memberService.insertOneEntityCard(memberEntityCardBean);
					result = "success";
				}else{
					result = "实体卡号重复,保存失败!";
				}
			}else{
				//旧卡 修改
				memberService.updateOneEntityCard(memberEntityCardBean);
				result = "success";
			}
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
		}
		return SUCCESS;
	}
	
	/**
	 * 删除 实体会员卡
	 * @author by lhc
	 * */
	public String delEntityCard(){
		MemberService memberService = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
		String result = null;
		
		if(memberService.delOneEntityCard(memberEntityCardBean)>0){
			result = "success";
		}else{
			result = "删除失败";
		}
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
		}
		return SUCCESS;
	}
}
