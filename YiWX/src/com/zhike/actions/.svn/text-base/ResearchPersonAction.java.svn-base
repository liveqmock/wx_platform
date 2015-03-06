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
import com.zhike.sql.beans.ResearchAnswerBean;
import com.zhike.sql.beans.ResearchPersonBean;
import com.zhike.sql.beans.ResearchbasicBean;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.sql.services.ResearchService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;
import com.zhike.viewmodels.APPKeyViewModel;
import com.zhike.viewmodels.ResearchPersonViewModel;
import com.zhike.viewmodels.ResearchQuestionViewModel;
import com.zhike.viewmodels.ResearchViewModel;

public class ResearchPersonAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private ResearchPersonViewModel researchpersonViewModel;
	private ResearchQuestionViewModel researchquestionViewModel;
	//public ResearchPersonBean researchpersonBean;
	//public ResearchAnswerBean researchanswerBean;
	
	private InputStream inputStream;
	public PageBean pageBean;
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	/*
	public ResearchPersonBean getResearchPersonBean() {
		return researchpersonBean;
	}
	public void setResearchPersonBean(ResearchPersonBean researchpersonBean) {
		this.researchpersonBean = researchpersonBean;
	}
	
	*/
	
	

	public String execute() throws UnsupportedEncodingException {
		/**		
		AppId
		wx76f1184cdc1d1f0f
		AppSecret
		bb26596735660f626ce1d1ff4b247d2b
		https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx76f1184cdc1d1f0f&redirect_uri=http://115313938qq.vicp.cc/YiWX/guaguaka.action&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect
		https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx76f1184cdc1d1f0f&redirect_uri=http://115313938qq.vicp.cc/YiWX/guaguaka.action&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect
		String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx76f1184cdc1d1f0f&secret=bb26596735660f626ce1d1ff4b247d2b&code="+code+"&grant_type=authorization_code";
		WxUserBean wxUserBean = GetUrl.getAccess_token(url);
		System.out.println(wxUserBean.getOpenid());
		System.out.println(wxUserBean.getAccess_token());
		 */	
		//TODO 应判断来人是否是该账号的粉丝。若否跳转share
		String result = null;
		try {
			
			String questionid="0";
//			//微信返回code,用来换取openid和access_token
//			String code = RequestScopeFactory.RequestScope().getParameter("code");
			//刮刮卡活动ID
			String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
			//微信用户ID
			String openid = RequestScopeFactory.RequestScope().getParameter("openid")==null?"":RequestScopeFactory.RequestScope().getParameter("openid");
			
			//GuaguakaBean guaguakaBean = new GuaguakaBean();
			ResearchPersonBean researchpersonBean =new ResearchPersonBean();
			
			if(serviceid!=null&&openid!=null){
				//1查询活动信息
				ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
				researchpersonBean.setServiceid(serviceid);
				researchpersonBean.setOpenid(openid);
				researchpersonBean = researchService.selectServiceByID(researchpersonBean);
 				if(researchpersonBean!=null){//当前用户已参加调研
 	 			  String userid=researchpersonBean.getId();
 	 			  researchpersonBean.setUserid(researchpersonBean.getId());
 	 			  
 	 			  researchpersonBean = researchService.selectmaxqidByID(researchpersonBean);
 	 			  
 	 			  if(researchpersonBean==null){//登记但未参加过此调研
 	 				//RequestScopeFactory.RequestScope().setAttribute("questionid", questionid);
					RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
					RequestScopeFactory.RequestScope().setAttribute("userid", userid);
					
					ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
					researchanswerBean.setServiceid(serviceid);
					List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean);
					
					researchanswerBean=(ResearchAnswerBean)list.get(0);
					RequestScopeFactory.RequestScope().setAttribute("questionid", researchanswerBean.getId());
					RequestScopeFactory.RequestScope().setAttribute("researchanswerBean", researchanswerBean);
					
					
					return "diaoyan_3";
// 	 				result = new String("{status:'success',content:'researchperson!questionlist.action?questionid="+questionid+"&serviceid="+serviceid+"&userid="+userid+"'}"); 
 	 			  }else{//登记过已经开始调研
 	 				
 	 				researchpersonBean.setUserid(userid);
 	 				researchpersonBean.setServiceid(serviceid);	
 	 				researchpersonBean = researchService.selectmaxqidByID(researchpersonBean);
 	 				questionid=researchpersonBean.getMaxqid();
 	 				ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
 	 				researchanswerBean.setServiceid(serviceid);
 					researchanswerBean.setOpenid(openid);
 	 				List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean);
 	 				if(list.size()>0){
 	 					for(int i=0;i<list.size();i++){
 	 						if(questionid.equals(list.get(i).getId().toString())){
 	 							if(i==list.size()-1){//已经最后一道题了
 	 								researchpersonBean.setId(userid);
 	 								researchpersonBean.setUserid(userid);
 	 								researchpersonBean = researchService.selectdescByID(researchpersonBean);
 	 								if(researchpersonBean!=null){//已经填写补充说明
 	 									ResearchbasicBean mbasic = new ResearchbasicBean();
 	 				 					mbasic.setId(serviceid);
 	 				 					ResearchbasicBean researchbasicBean = researchService.getresearchbasicdesc(mbasic);//getresearchbasicdesc
 	 				 					String enddesc=researchbasicBean.getEnddescs();
 	 				 					
 	 				 					RequestScopeFactory.RequestScope().setAttribute("enddesc", enddesc);
// 	 									result = new String("{status:'success',content:'/weixin/diaoyan/showdiaoyan_5.jsp'}");
 	 									return "diaoyan_5";
 	 								}else{	 									
 	 									RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
 										RequestScopeFactory.RequestScope().setAttribute("userid", userid);
 										return "diaoyan_4";
// 										result = new String("{status:'success',content:'/weixin/diaoyan/showdiaoyan_4.jsp?serviceid="+serviceid+"&userid="+userid+"'}");
 	 								}
 	 							}else{//不是最后一道题
 	 								RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
 	 								RequestScopeFactory.RequestScope().setAttribute("userid", userid);
 	 								String newquestionid=list.get(i+1).getId().toString();
 	 								researchanswerBean=(ResearchAnswerBean)list.get(i+1);
 	 								RequestScopeFactory.RequestScope().setAttribute("questionid", newquestionid);
 	 								
 	 								RequestScopeFactory.RequestScope().setAttribute("researchanswerBean", researchanswerBean);
 	 								return "diaoyan_3";
 	 							}
 	 						}
 	 					}
 	 				}
 	 				
 	 			  }
 					
 				}else{
 					//开始调研
 					ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
 					researchanswerBean.setServiceid(serviceid);
					List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean);
					if(list.size()==0){
						return "diaoyan_6";
					}else{
	 					RequestScopeFactory.RequestScope().setAttribute("openid", openid);
	 					RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
	 					ResearchbasicBean mbasic = new ResearchbasicBean();
	 					mbasic.setId(serviceid);
	 					ResearchbasicBean researchbasicBean = researchService.getresearchbasicdesc(mbasic);//getresearchbasicdesc
	 					String startdesc=researchbasicBean.getDescs();
	 					RequestScopeFactory.RequestScope().setAttribute("startdesc", startdesc);
	 					return "start";
	 				}
 				}
			}else{
				result = new String("{status:'fail',content:'添加失败'}");
			}
		}catch (Exception e) {
			result = new String("{status:'fail',content:'添加失败'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
		//return null;
	}
	
	public String start() throws Exception{
		String openid = RequestScopeFactory.RequestScope().getParameter("openid");
		RequestScopeFactory.RequestScope().setAttribute("openid", openid);
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		return "getinfo";
		
	}
	/*
	public String startResearch() throws Exception{
		String openid = RequestScopeFactory.RequestScope().getParameter("openid");
		RequestScopeFactory.RequestScope().setAttribute("openid", openid);
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		if(researchpersonViewModel == null) {
			
			result = new String("{status:'fail',content:'添加失败'}");
			
		} else {		
			researchpersonViewModel.setOpenid(openid);
			researchpersonViewModel.setServiceid(serviceid);
			//researchpersonViewModel.setUsername(username);
			
			boolean b = researchService.addnewresearchperson(researchpersonViewModel);
			if(b) {
				ResearchAnswerBean researchanswerBean1=new ResearchAnswerBean();
				//ResearchService researchService1 = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
				researchanswerBean1.setServiceid(serviceid);
				researchanswerBean1.setOpenid(openid);
				//researchanswerBean = researchService.selectquesionbasic(researchanswerBean);
				List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean1);
				//List<ResearchAnswerBean > list= new ArrayList<ResearchAnswerBean >();
				if(list.size()==0){
					result = new String("{status:'fail',content:'调研失败'}");
				}else{
					//list=researchService.selectquesionbasic(researchanswerBean);
					ResearchPersonBean researchpersonBean=new ResearchPersonBean();
					String questionid=list.get(0).getId();
					researchpersonBean.setServiceid(serviceid);
					researchpersonBean.setOpenid(openid);
					researchpersonBean = researchService.selectServiceByID(researchpersonBean);
					String userid=researchpersonBean.getId();
					//questionlist( questionid, serviceid, userid);
					//result = new String("{status:'success',content:'researchperson!questionlist.action?'}");
					result = new String("{status:'success',content:'researchperson!questionlist.action?questionid="+questionid+"&serviceid="+serviceid+"&userid="+userid+"'}");
					}
				} else {
				result = new String("{status:'fail',content:'调研失败'}");
			}
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
		//return "startresearch";
		
	}
	*/
	public String questionlist() throws Exception{
		
		String result = null;
		String answers=null;
		ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
		String questionid = RequestScopeFactory.RequestScope().getAttribute("questionid")==null?RequestScopeFactory.RequestScope().getParameter("questionid"):RequestScopeFactory.RequestScope().getAttribute("questionid").toString();
		String serviceid = RequestScopeFactory.RequestScope().getAttribute("serviceid")==null?RequestScopeFactory.RequestScope().getParameter("serviceid"):RequestScopeFactory.RequestScope().getAttribute("serviceid").toString();
		String userid = RequestScopeFactory.RequestScope().getAttribute("userid")==null?RequestScopeFactory.RequestScope().getParameter("userid"):RequestScopeFactory.RequestScope().getAttribute("userid").toString();
//		String questionid = RequestScopeFactory.RequestScope().getParameter("questionid");
//		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
//		String userid = RequestScopeFactory.RequestScope().getParameter("userid");
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		RequestScopeFactory.RequestScope().setAttribute("questionid", questionid);
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		RequestScopeFactory.RequestScope().setAttribute("userid", userid);
		researchanswerBean.setServiceid(serviceid);
		

		List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean);

		if(list.size()>0){
			for(int i=0;i<list.size();i++){
				if(questionid.equals(list.get(i).getId().toString())){
					researchanswerBean=list.get(i);
					RequestScopeFactory.RequestScope().setAttribute("researchanswerBean", researchanswerBean);
				}
			}
		}
		return "questionlist";
		/*
		if(list.size()==0){
			result = new String("{status:'fail',content:'调研失败'}");
		}else{
			
			System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^");
			//list=researchService.selectquesionbasic(researchanswerBean);
			for(int i=0;i<list.size();i++){
				RequestScopeFactory.RequestScope().setAttribute("researchBeans", (ResearchAnswerBean)list.get(i));
				
				//researchquestionViewModel.setUserid(userid);//USERID写死
				//researchquestionViewModel.setAnswerid(list.get(i).getId());
				//boolean b = researchService.addquestion(researchquestionViewModel);
				
				if(questionid.equals(String.valueOf(list.get(i).toString()))){
					if(i==list.size()-1){
						//judge=0;
						return "descs";
						//result = new String("{status:'success',content:'researchperson!questionlist.action?questionid="+questionid+"&serviceid="+serviceid+"'}");
					}else{
						questionid=list.get(i+1).getId().toString();
						answers=list.get(i+1).getAnswers().toString();
						result = new String("{status:'success',content:'researchperson!questionlist.action?questionid="+questionid+"&serviceid="+serviceid+"&userid="+userid+"'}");
					}
				}
			}
		}  */
		//inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		//return SUCCESS;
	}
	
	public String addnewquestion() throws Exception {
		String questionid = RequestScopeFactory.RequestScope().getParameter("questionid");
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		String userid = RequestScopeFactory.RequestScope().getParameter("userid");
		ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		
		if(researchquestionViewModel == null) {
			result = new String("{status:'fail',content:'添加留言板失败'}");
		}  else {
			
			researchquestionViewModel.setUserid(userid);
			researchquestionViewModel.setAnswerid(questionid);
			boolean b = researchService.addquestion(researchquestionViewModel);

			if(b) {
				researchanswerBean.setServiceid(serviceid);
						List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean);
						for(int i=0;i<list.size();i++){
							if(questionid.equals(list.get(i).getId().toString())){
								if(i==list.size()-1){
									RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
									RequestScopeFactory.RequestScope().setAttribute("userid", userid);
								
									result = new String("{status:'success',content:'/weixin/diaoyan/showdiaoyan_4.jsp?serviceid="+serviceid+"&userid="+userid+"'}");
									
								}else{
									String newquestionid=list.get(i+1).getId().toString();
									result = new String("{status:'success',content:'researchperson!questionlist.action?questionid="+newquestionid+"&serviceid="+serviceid+"&userid="+userid+"'}");
									break;
								}
							}
						}
						//result = new String("{status:'success',content:'researchbasic!list.action'}");
					} else {
						result = new String("{status:'fail',content:'添加留言板失败'}");
					}
			
		}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	/*
	public String descs() throws Exception {
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		String userid = RequestScopeFactory.RequestScope().getParameter("userid");
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		RequestScopeFactory.RequestScope().setAttribute("userid", userid);
		//System.out.println("dasfdsfsdf++"+basicid);
		return "descs";
	}
*/
	public String adddescs() throws Exception {
		String result = null;
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		String userid = RequestScopeFactory.RequestScope().getParameter("userid");
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
		if(researchquestionViewModel == null) {
			result = new String("{status:'fail',content:'添加留言板失败'}");
		}else{
			researchquestionViewModel.setUserid(userid);
			researchquestionViewModel.setServiceid(serviceid);
			boolean b = researchService.addquestiondesc(researchquestionViewModel);
			ResearchbasicBean mbasic = new ResearchbasicBean();
				mbasic.setId(serviceid);
				ResearchbasicBean researchbasicBean = researchService.getresearchbasicdesc(mbasic);//getresearchbasicdesc
				String enddesc=researchbasicBean.getEnddescs();
				
//				RequestScopeFactory.RequestScope().setAttribute("enddesc", enddesc);
				//return "diaoyan_5";
			result = new String("{status:'success',content:'/weixin/diaoyan/showdiaoyan_5.jsp?enddesc="+enddesc+"'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}
	/*
	public ResearchPersonViewModel getResearchpersonViewModel() {
		return researchpersonViewModel;
	}

	public void setResearchpersonViewModel(
			ResearchPersonViewModel researchpersonViewModel) {
		this.researchpersonViewModel = researchpersonViewModel;
	}
*/
	public ResearchQuestionViewModel getResearchquestionViewModel() {
		return researchquestionViewModel;
	}

	public void setResearchquestionViewModel(
			ResearchQuestionViewModel researchquestionViewModel) {
		this.researchquestionViewModel = researchquestionViewModel;
	}
	
	public String startResearch() throws Exception{
		
//		ResearchPersonViewModel researchpersonViewModel =new ResearchPersonViewModel();
		String openid = RequestScopeFactory.RequestScope().getParameter("openid");
		RequestScopeFactory.RequestScope().setAttribute("openid", openid);
		String serviceid = RequestScopeFactory.RequestScope().getParameter("serviceid");
		RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
		String result = null;
		ResearchService researchService = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
				
			researchpersonViewModel.setOpenid(openid);
			researchpersonViewModel.setServiceid(serviceid);
			//researchpersonViewModel.setUsername(username);
			
			boolean b = researchService.addnewresearchperson(researchpersonViewModel);
			if(b) {
				ResearchAnswerBean researchanswerBean1=new ResearchAnswerBean();
				//ResearchService researchService1 = (ResearchService) ApplicationContextFactory.getBean(Constat.RESEARCHSERVICE);
				researchanswerBean1.setServiceid(serviceid);
				researchanswerBean1.setOpenid(openid);
				//researchanswerBean = researchService.selectquesionbasic(researchanswerBean);
				List<ResearchAnswerBean > list=researchService.selectquesionbasic(researchanswerBean1);
				//List<ResearchAnswerBean > list= new ArrayList<ResearchAnswerBean >();
				if(list.size()==0){
					
					result = new String("{status:'fail',content:'调研失败'}");
					
				}else{
					//list=researchService.selectquesionbasic(researchanswerBean);
					ResearchPersonBean researchpersonBean=new ResearchPersonBean();
					String questionid=list.get(0).getId();
					researchpersonBean.setServiceid(serviceid);
					researchpersonBean.setOpenid(openid);
					researchpersonBean = researchService.selectServiceByID(researchpersonBean);
					String userid=researchpersonBean.getId();
					RequestScopeFactory.RequestScope().setAttribute("questionid", questionid);
					RequestScopeFactory.RequestScope().setAttribute("serviceid", serviceid);
					RequestScopeFactory.RequestScope().setAttribute("userid", userid);
					//questionlist( questionid, serviceid, userid);
					//result = new String("{status:'success',content:'researchperson!questionlist.action?'}");
//					return "startresearch";
					result = new String("{status:'success',content:'researchperson!questionlist.action?questionid="+questionid+"&serviceid="+serviceid+"&userid="+userid+"'}");
					}
				} else {
				result = new String("{status:'fail',content:'调研失败'}");
			}
		
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
		//return "startresearch";
		
	}

	public ResearchPersonViewModel getResearchpersonViewModel() {
		return researchpersonViewModel;
	}

	public void setResearchpersonViewModel(
			ResearchPersonViewModel researchpersonViewModel) {
		this.researchpersonViewModel = researchpersonViewModel;
	}
}
