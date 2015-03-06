package com.zhike.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.services.WxUserService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.GetUrl;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.TimestampToDate;

public class RedirectAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

//	//今晚干啥
//	public static String APPID="wxe5752d82cf2cac3d";
//	public static String APPSECRET="0b870386aebec21aa615446ea7cf8ec5";
	
	//微信封公司的公众号 AppId&AppSecret
	public static String APPID = "wx1d8a4d104ec1c497";
	public static String APPSECRET = "64496a6a3ebe311a7c5558a2e80cc77f";
	/*
	//知客互动 公司的公众号 AppId&AppSecret
	private static String APPID = "wx76f1184cdc1d1f0f";
	private static String APPSECRET = "bb26596735660f626ce1d1ff4b247d2b";
	*/
	//AIG
//	private static String APPID = "wx5f13f93fa430b968";
//	private static String APPSECRET = "b6357caeb05c5f78fe8cd1ecf79d2631";
	
	String path = RequestScopeFactory.RequestScope().getContextPath();
	String basePath = RequestScopeFactory.RequestScope().getScheme() + "://"+ RequestScopeFactory.RequestScope().getServerName() +  path + "/";
	String redirect_uri = basePath +"redirect!callBack.action";
		   
	public String execute() throws Exception {
		
		//授权URL方式：直接跳转snsapi_base 出授权页面snsapi_userinfo
		String baseUrl= "https://open.weixin.qq.com/connect/oauth2/authorize" +
					"?appid="+APPID+"&redirect_uri="+redirect_uri+"&response_type=code" +
					"&scope=snsapi_userinfo&state=STATE#wechat_redirect";
		RequestScopeFactory.RequestScope().setAttribute("url",baseUrl);
		return "redirect";
	}
	/**
	 * 1第一次发送无头像要求。
	 * 2请求后。得到唯一ID。
	 * 3根据唯一ID查询数据库是否存在。
	 * 4若无则插入用户，并再次发送有头像请求。
	 * 5请求后得到唯一ID。
	 * 6并根据scope判断获取用户信息。还是继续。
	 * 
	 * */
	public String callBack() throws Exception {
		String code = RequestScopeFactory.RequestScope().getParameter("code");
		WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
		
		if(code!=null&&code.equals("authdeny")){
			//用户取消授权
			System.out.println("用户取消授权,无法识别");
			return ERROR;
		}else if(code!=null){
			//获得授权
			String getTokenUrl = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+APPID+"&secret="+APPSECRET+"&code="+code+"&grant_type=authorization_code";
			//返回 openid access_token scope
			WxUserBean wxUserBean = GetUrl.getAccess_token(getTokenUrl);

			WxUserBean tempSelet = wxUserService.selectOneWxUserByOpenId(wxUserBean);
			if(tempSelet==null&&wxUserBean!=null&&wxUserBean.getScope().equals("snsapi_userinfo")){
				//新用户  2
				wxUserBean = GetUrl.getUserInfo(wxUserBean);
				if(wxUserBean.getNickname().equals("")){
					return ERROR;
				}
				wxUserService.insertOneWxUser(wxUserBean);
				RequestScopeFactory.SessionScope().put(Constat.LOGIN_WXSESSION, wxUserService.selectOneWxUserByOpenId(wxUserBean));
			}else if(tempSelet!=null){
				wxUserBean = GetUrl.getUserInfo(wxUserBean);
				if(wxUserBean.getNickname().equals("")){
					return ERROR;
				}
				wxUserService.updateOneWxUserByOpenId(wxUserBean);
				//老用户 5
				RequestScopeFactory.SessionScope().put(Constat.LOGIN_WXSESSION, wxUserService.selectOneWxUserByOpenId(wxUserBean));
			}
		}
		String strBackUrl = (String) RequestScopeFactory.SessionScope().get(Constat.STRBACKURL);
		RequestScopeFactory.RequestScope().setAttribute("url",strBackUrl);
		return "redirect";
	}
	
	
	
//	public String execute() throws Exception {
//		
//		//授权URL方式：直接跳转snsapi_base 出授权页面snsapi_userinfo
//		String baseUrl= "https://open.weixin.qq.com/connect/oauth2/authorize" +
//					"?appid="+APPID+"&redirect_uri="+redirect_uri+"&response_type=code" +
//					"&scope=snsapi_base&state=STATE#wechat_redirect";
//		RequestScopeFactory.RequestScope().setAttribute("url",baseUrl);
//		return "redirect";
//	}
//	/**
//	 * 1第一次发送无头像要求。
//	 * 2请求后。得到唯一ID。
//	 * 3根据唯一ID查询数据库是否存在。
//	 * 4若无则插入用户，并再次发送有头像请求。
//	 * 5请求后得到唯一ID。
//	 * 6并根据scope判断获取用户信息。还是继续。
//	 * 
//	 * */
//	public String callBack() throws Exception {
//		String code = RequestScopeFactory.RequestScope().getParameter("code");
//		WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
//		
//		if(code!=null&&code.equals("authdeny")){
//			//用户取消授权
//			System.out.println("用户取消授权,无法识别");
//			return ERROR;
//		}else if(code!=null){
//			//获得授权
//			String getTokenUrl = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+APPID+"&secret="+APPSECRET+"&code="+code+"&grant_type=authorization_code";
//			//返回 openid access_token scope
//			WxUserBean wxUserBean = GetUrl.getAccess_token(getTokenUrl);
//
//			WxUserBean tempSelet = wxUserService.selectOneWxUserByOpenId(wxUserBean);
//			if(tempSelet==null&&wxUserBean!=null&&wxUserBean.getScope().equals("snsapi_base")){
//				//新用户,跳转获取头像 1
//				String userinfoUrl= "https://open.weixin.qq.com/connect/oauth2/authorize" +
//				"?appid="+APPID+"&redirect_uri="+redirect_uri+"&response_type=code" +
//				"&scope=snsapi_userinfo&state=STATE#wechat_redirect";	
//				RequestScopeFactory.RequestScope().setAttribute("url",userinfoUrl);
//				return "redirect";				
//			}else if(tempSelet==null&&wxUserBean!=null&&wxUserBean.getScope().equals("snsapi_userinfo")){
//				//新用户  2
//				wxUserBean = GetUrl.getUserInfo(wxUserBean);
//				if(wxUserBean.getNickname().equals("")){
//					return ERROR;
//				}
//				wxUserService.insertOneWxUser(wxUserBean);
//				RequestScopeFactory.SessionScope().put(Constat.LOGIN_WXSESSION, wxUserService.selectOneWxUserByOpenId(wxUserBean));
//			}
//	
//			else if(tempSelet!=null){
//				//老用户 5
//				RequestScopeFactory.SessionScope().put(Constat.LOGIN_WXSESSION, tempSelet);
//			}
//		}
//		String strBackUrl = (String) RequestScopeFactory.SessionScope().get(Constat.STRBACKURL);
//		RequestScopeFactory.RequestScope().setAttribute("url",strBackUrl);
//		return "redirect";
//	}
	

}
