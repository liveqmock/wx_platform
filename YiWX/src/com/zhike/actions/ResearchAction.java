
package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.beans.PhotobasicBean;
import com.zhike.sql.beans.ResearchBean;
import com.zhike.sql.beans.ResearchbasicBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.MessageService;
import com.zhike.sql.services.ResearchService;
import com.zhike.utils.AnythingToActionLink;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;
import com.zhike.viewmodels.APPKeyViewModel;
import com.zhike.viewmodels.MessageViewModel;
import com.zhike.viewmodels.MessagebasicViewModel;
import com.zhike.viewmodels.ResearchQuestionViewModel;
import com.zhike.viewmodels.ResearchViewModel;
import com.zhike.viewmodels.ResearchbasicViewModel;

public class ResearchAction extends ActionSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public PageBean pageBean;

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;
	
	private ResearchViewModel researchViewModel;
	
	private ResearchbasicViewModel researchbasicViewModel;
	
	private ResearchQuestionViewModel researchquiestionViewModel;

	public ResearchViewModel getResearchViewModel() {
		return researchViewModel;
	}

	public void setResearchViewModel(ResearchViewModel researchViewModel) {
		this.researchViewModel = researchViewModel;
	}

	public String selectAllResearch() throws Exception {
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
//		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		//add 0312
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		String openid = RequestScopeFactory.RequestScope().getParameter("openid");//手机用户ID 预留
		//end 0312
		ResearchBean researchBean = new ResearchBean();
//		messageBean.setAppid(appId);
		researchBean.setServiceid(serviceid);
//		if(messageViewModel == null) {
//			messageBean.setSender("");
//			messageBean.setText("");
//		} else {
//			messageBean.setSender(messageViewModel.getSender());
//			messageBean.setText(messageViewModel.getText());
//		}
		List<ResearchBean> researchBeans = researchService.selectAllResearch(researchBean);
		RequestScopeFactory.RequestScope().setAttribute("researchBeans", researchBean);
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		
//		if(messageViewModel == null) {
//			return SUCCESS;
//		} else {
//			String result = null;
//			result = new String("");
//			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
//			
//			return "seach";
//		}
		
		return SUCCESS;
	}
	
	public String addNewResearch() throws Exception {
		String result = null;
		
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		if(researchViewModel == null) {
			result = new String("{status:'fail',content:'添加失败'}");
		} else if(researchViewModel.getTitle()==null || researchViewModel.getTitle().equals("")){
			result = new String("{status:'fail',content:'题目名称不能为空'}");
		} else if(researchViewModel.getAnswer_a()==null || researchViewModel.getAnswer_a().equals("")){
			result = new String("{status:'fail',content:'选项A不能为空'}");
		} else if(researchViewModel.getAnswer_b()==null || researchViewModel.getAnswer_b().equals("")){
			result = new String("{status:'fail',content:'选项B不能为空'}");
		} else {
			String basicid = RequestScopeFactory.RequestScope().getParameter("basicid");
			RequestScopeFactory.RequestScope().setAttribute("basicid", basicid);
			researchViewModel.setBasicid(basicid);
			String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
			
			researchViewModel.setAppid(appId);
			researchViewModel.setServiceid(basicid);
			
			boolean b = researchService.addNewResearch(researchViewModel);
			
			if(b) {
				
				//result = new String("{status:'success',content:'showResearch.action?serviceid="+researchViewModel.getServiceid()+"&openid=yes'}");
				result = new String("{status:'success',content:'research!answerlist.action?basicid="+basicid+"'}");
			} else {
				result = new String("{status:'fail',content:'留言失败'}");
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String updateResearch() throws Exception {
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String basicid = RequestScopeFactory.RequestScope().getParameter("basicid");
		if(researchViewModel == null) {
			result = new String("{status:'fail',content:'回复失败'}");
		} else if(researchViewModel.getTitle()==null || researchViewModel.getTitle().equals("")){
			result = new String("{status:'fail',content:'题目名称不能为空'}");
		} else if(researchViewModel.getAnswer_a()==null || researchViewModel.getAnswer_a().equals("")){
			result = new String("{status:'fail',content:'选项A不能为空'}");
		} else if(researchViewModel.getAnswer_b()==null || researchViewModel.getAnswer_b().equals("")){
			result = new String("{status:'fail',content:'选项B不能为空'}");
		} else {
			boolean b = researchService.updateResearch(researchViewModel);
			if(b) {
				result = new String("{status:'success',content:'research!answerlist.action?basicid="+basicid+"'}");
				//result = new String("{status:'success',content:'showAllResearch!cogInfo.action'}");
			} else {
				result = new String("{status:'fail',content:'修改失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String deleteResearch() throws Exception {
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		String basicid = RequestScopeFactory.RequestScope().getParameter("basicid");
		ResearchBean researchBean = new ResearchBean();
		researchBean.setId(id);
		boolean b = researchService.delOneResearch(researchBean);
		if(b) {
			result = new String("{status:'success',content:'research!answerlist.action?basicid="+basicid+"'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String cogInfo(){
		//String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		//RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		String bid = RequestScopeFactory.RequestScope().getParameter("basicid");
		RequestScopeFactory.RequestScope().setAttribute("basicid", bid);
		
		return "cog";
	}
	
	//查总数
	public String requeryCogPage() {
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		researchViewModel.setAppid(appId);
		int totalRecord = researchService.selectCountInfosByPage(researchViewModel);
//		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
//		//page.currentPage 从前台传回
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
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		researchViewModel.setAppid(appId);
		researchViewModel.setCount(pageBean.getPageSize());
		researchViewModel.setFrom(pageBean.getFrom());
		List<ResearchBean> researchBeans = researchService.selectResearchAll(researchViewModel);

		RequestScopeFactory.RequestScope().setAttribute("researchBeanList", researchBeans);
		return "cogResult";
	}
	
	
	public String addNewResearchbasic() throws Exception {
		
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
	
		if(researchbasicViewModel == null) {
			
			result = new String("{status:'fail',content:'添加调研失败'}");
		}  else {
			long startTime =TimestampToDate.getTimestamp(researchbasicViewModel.getBegintime());
			long endTime =TimestampToDate.getTimestamp(researchbasicViewModel.getEndtime());
			
			if(startTime>=endTime){
				result="活动结束时间不能早于开始时间";
			}else if(endTime-startTime>91*24*60*60){
				result="活动持续时间最多三个月";
			}else if(researchbasicViewModel.getTitle().length()==0||researchbasicViewModel.getTitle().length()>50){
				result="调研名称不得为空或者大于50字";
			}else if(researchbasicViewModel.getKeywords().length()==0||researchbasicViewModel.getKeywords().length()>50){
				result="关键字不得为空或者大于50字";
			}
			else{
				
					String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
					researchbasicViewModel.setAppid(appId);
					researchbasicViewModel.setUid(String.valueOf(checkLoginBean.getId()));
					
					//转型
					ResearchbasicBean researchbasicBean = new ResearchbasicBean();
					researchbasicBean.setAppid(appId);
					researchbasicBean.setUid(String.valueOf(checkLoginBean.getId()));
					researchbasicBean.setTitle(researchbasicViewModel.getTitle());
					researchbasicBean.setKeywords(researchbasicViewModel.getKeywords());
					researchbasicBean.setImg(researchbasicViewModel.getImg());
					researchbasicBean.setDescs(researchbasicViewModel.getDescs());
					researchbasicBean.setEnddescs(researchbasicViewModel.getEnddescs());
					researchbasicBean.setBegintime(researchbasicViewModel.getBegintime());
					researchbasicBean.setEndtime(researchbasicViewModel.getEndtime());
					researchbasicBean.setStatus(researchbasicViewModel.getStatus());
					researchbasicBean.setActtime(researchbasicViewModel.getActtime());
					
					boolean b = researchService.addNewResearchbasic(researchbasicBean);
					
					if(b) {
						ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(researchbasicBean));
						result = new String("{status:'success',content:'researchbasic!list.action'}");
					} else {
						result = new String("{status:'fail',content:'添加调研失败'}");
					}
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String updateResearchbasic() throws Exception {
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		if(researchbasicViewModel == null) {
			result = new String("{status:'fail',content:'修改调研失败'}");
		} else {
			//转型
			ResearchbasicBean researchbasicBean = new ResearchbasicBean();
			researchbasicBean.setTitle(researchbasicViewModel.getTitle());
			researchbasicBean.setKeywords(researchbasicViewModel.getKeywords());
			researchbasicBean.setImg(researchbasicViewModel.getImg());
			researchbasicBean.setDescs(researchbasicViewModel.getDescs());
			researchbasicBean.setEnddescs(researchbasicViewModel.getEnddescs());
			researchbasicBean.setId(researchbasicViewModel.getId());
			boolean b = researchService.updateResearchbasic(researchbasicViewModel);
			if(b) {
				ActionLinkManager.updateNewActionLink(AnythingToActionLink.getActionLink(researchbasicBean));
				result = new String("{status:'success',content:'researchbasic!list.action'}");
				
			} else {
				result = new String("{status:'fail',content:'修改调研失败'}");
			}
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String delOneResearchbasic() throws Exception {
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		ResearchbasicBean researchbasicBean = new ResearchbasicBean();
		researchbasicBean.setId(id);
		boolean b = researchService.delOneResearchbasic(researchbasicBean);
		if(b) {
			ActionLinkManager.deleteActionLink(AnythingToActionLink.getActionLink(researchbasicBean));
			result = new String("{status:'success',content:'researchbasic!list.action'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public String delOneResearchbasicinfo() throws Exception {
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		ResearchbasicBean researchbasicBean = new ResearchbasicBean();
		researchbasicBean.setId(id);
		boolean b = researchService.delOneResearchbasicinfo(researchbasicBean);
		if(b) {
			result = new String("{status:'success',content:'researchbasic!list.action'}");
		} else {
			result = new String("{status:'fail',content:'删除失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	
	//查总数
	public String requerymbasicCogPage() {
		MessageService messageService = (MessageService) ApplicationContextFactory.getBean(Constat.MESSAGESERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		MessagebasicBean messagebasicBean = new MessagebasicBean();
		messagebasicBean.setAppid(appId);
		int totalRecord = messageService.selectCountmbasicInfosByPage(messagebasicBean);
//		//设置当前页setCurrentPage,数据总数totalRecord(可选：设置 每页数据条数pageSize)
//		//page.currentPage 从前台传回
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
	public String requerymbasicCogResult(){
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		researchbasicViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		researchbasicViewModel.setAppid(appId);
		researchbasicViewModel.setCount(pageBean.getPageSize());
		researchbasicViewModel.setFrom(pageBean.getFrom());
		List<ResearchbasicBean> researchbasicBeans = researchService.selectAllResearchbasic(researchbasicViewModel);

		RequestScopeFactory.RequestScope().setAttribute("researchbasicBeans", researchbasicBeans);
		return "cogmbasicResult";
	}
	
	public String list(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		//2获取活动ID
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		ResearchbasicViewModel rbViewModel = new ResearchbasicViewModel();
		rbViewModel.setUid(String.valueOf(checkLoginBean.getId()));
		rbViewModel.setAppid(appId); 
		List<ResearchbasicBean> researchbasicBeans = researchService.selectAllResearchbasic(rbViewModel);

		RequestScopeFactory.RequestScope().setAttribute("researchbasicBeans", researchbasicBeans);
		
		return "list";
	}
	public String answerlist(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		//2获取活动ID
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		ResearchViewModel rbViewModel = new ResearchViewModel();
		String bid = RequestScopeFactory.RequestScope().getParameter("basicid");
		
		RequestScopeFactory.RequestScope().setAttribute("basicid", bid);
		
		rbViewModel.setAppid(appId); 
		rbViewModel.setBasicid(bid);
		List<ResearchBean> researchBeans = researchService.selectResearchAll(rbViewModel);
		ResearchBean researchBean=new ResearchBean();
		
		RequestScopeFactory.RequestScope().setAttribute("researchBeans", researchBeans);
		
		return "answerlist";
	}
	
	public String edit() throws Exception {
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		
		ResearchbasicBean mbasic = new ResearchbasicBean();
		mbasic.setId(id);
		mbasic.setAppid(appId);
		mbasic.setUid(String.valueOf(checkLoginBean.getId()));
		ResearchbasicBean researchbasicBean = researchService.getResearchbasicBean(mbasic);
		
		if(researchbasicBean != null){

			RequestScopeFactory.RequestScope().setAttribute("researchbasicBean", researchbasicBean);
			return "edit";
		}else{
			return "add";
		}
	}
	
	public String editq() throws Exception {
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		String basicid = RequestScopeFactory.RequestScope().getParameter("basicid");
		RequestScopeFactory.RequestScope().setAttribute("basicid", basicid);
		
		ResearchBean mbasic = new ResearchBean();
		mbasic.setId(id);
		mbasic.setAppid(appId);
		mbasic.setBasicid(basicid);
		//mbasic.setUid(String.valueOf(checkLoginBean.getId()));
		ResearchBean researchBean = researchService.getResearchBean(mbasic);
		
		if(researchBean != null){
			
			RequestScopeFactory.RequestScope().setAttribute("researchBean", researchBean);
			return "editq";
		}else{
			
			return "addq";
		}
		
	}
	
	public String stopOneResearchbasic() throws Exception {
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		String id = RequestScopeFactory.RequestScope().getParameter("id");
		ResearchbasicBean researchbasicBean = new ResearchbasicBean();
		researchbasicBean.setId(id);
		boolean b = researchService.stopOneResearchbasic(researchbasicBean);
		if(b) {
			result = new String("{status:'success',content:'researchbasic!list.action'}");
		} else {
			result = new String("{status:'fail',content:'操作失败'}");
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	public String add() throws Exception {
		return "add";
	}

	public String addq() throws Exception {
		String basicid = RequestScopeFactory.RequestScope().getParameter("basicid");
		RequestScopeFactory.RequestScope().setAttribute("basicid", basicid);
		return "addq";
	}
	
	public ResearchbasicViewModel getResearchbasicViewModel() {
		return researchbasicViewModel;
	}

	public void setResearchbasicViewModel(ResearchbasicViewModel researchbasicViewModel) {
		this.researchbasicViewModel = researchbasicViewModel;
	}
	
	public String resultlist(){
		//校验一下操作的SERVICE是否属于SESSION中保存的APP_ID
		//1获取当前用户
		
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		if(checkLoginBean==null){
			return "logOut";
		}
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		ResearchBean researchBean = new ResearchBean();
		ResearchBean researchBeanrenshu = new ResearchBean();
		
//		messageBean.setAppid(appId);
		String bid = RequestScopeFactory.RequestScope().getParameter("basicid");
		researchBean.setBasicid(bid);
		researchBeanrenshu.setBasicid(bid);
		researchBeanrenshu=researchService.selectrs(researchBeanrenshu);
		String renshu=researchBeanrenshu.getRs();
		RequestScopeFactory.RequestScope().setAttribute("renshu", renshu);
		
		List<ResearchBean> researchBeans = researchService.selectAllResearch(researchBean);
		for(int i=0;i<researchBeans.size();i++){
			
			if(!"".equals(researchBeans.get(i).getAnswer_a().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_a(researchBean);
				if(researchBean==null){
					break;
				}
				researchBeans.get(i).setAallchoosed(researchBean.getAallchoosed());
				researchBeans.get(i).setAchoosed(researchBean.getAchoosed());
				researchBeans.get(i).setAper(researchBean.getAper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_b().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_b(researchBean);
				researchBeans.get(i).setBallchoosed(researchBean.getBallchoosed());
				researchBeans.get(i).setBchoosed(researchBean.getBchoosed());
				researchBeans.get(i).setBper(researchBean.getBper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_c().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_c(researchBean);
				researchBeans.get(i).setCallchoosed(researchBean.getCallchoosed());
				researchBeans.get(i).setCchoosed(researchBean.getCchoosed());
				researchBeans.get(i).setCper(researchBean.getCper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_d().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_d(researchBean);
				researchBeans.get(i).setDallchoosed(researchBean.getDallchoosed());
				researchBeans.get(i).setDchoosed(researchBean.getDchoosed());
				researchBeans.get(i).setDper(researchBean.getDper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_e().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_e(researchBean);
				researchBeans.get(i).setEallchoosed(researchBean.getEallchoosed());
				researchBeans.get(i).setEchoosed(researchBean.getEchoosed());
				researchBeans.get(i).setEper(researchBean.getEper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_f().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_f(researchBean);
				researchBeans.get(i).setFallchoosed(researchBean.getFallchoosed());
				researchBeans.get(i).setFchoosed(researchBean.getFchoosed());
				researchBeans.get(i).setFper(researchBean.getFper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_g().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_g(researchBean);
				researchBeans.get(i).setGallchoosed(researchBean.getGallchoosed());
				researchBeans.get(i).setGchoosed(researchBean.getGchoosed());
				researchBeans.get(i).setGper(researchBean.getGper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_h().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_h(researchBean);
				researchBeans.get(i).setHallchoosed(researchBean.getHallchoosed());
				researchBeans.get(i).setHchoosed(researchBean.getHchoosed());
				researchBeans.get(i).setHper(researchBean.getHper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_i().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_i(researchBean);
				researchBeans.get(i).setIallchoosed(researchBean.getIallchoosed());
				researchBeans.get(i).setIchoosed(researchBean.getIchoosed());
				researchBeans.get(i).setIper(researchBean.getIper());				
			}
			if(!"".equals(researchBeans.get(i).getAnswer_j().toString())){
				researchBean.setAnswerid(researchBeans.get(i).getId().toString());
				researchBean=researchService.selectesearchresult_j(researchBean);
				researchBeans.get(i).setJallchoosed(researchBean.getJallchoosed());
				researchBeans.get(i).setJchoosed(researchBean.getJchoosed());
				researchBeans.get(i).setJper(researchBean.getJper());				
			}
			
		}

		RequestScopeFactory.RequestScope().setAttribute("researchBeans", researchBeans);
		
		return "resultlist";
	}
}
