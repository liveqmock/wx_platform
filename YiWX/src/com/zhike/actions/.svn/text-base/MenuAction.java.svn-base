package com.zhike.actions;


import java.io.ByteArrayInputStream;
import java.io.InputStream;

import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.MenuBean;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.MenuService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.HttpRequest;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.utils.WXErrorCodes;
import com.zhike.utils.WeixinUtil;
import com.zhike.viewmodels.APPKeyViewModel;

public class MenuAction extends ActionSupport {
	public String getMenus() {
		return menus;
	}

	public void setMenus(String menus) {
		this.menus = menus;
	}

	public String menus;
	/**
	 * 
	 */
	public String kaifazhe_appid;
	public String kaifazhe_appsecret;
	
	

	public String getKaifazhe_appid() {
		return kaifazhe_appid;
	}

	public void setKaifazhe_appid(String kaifazheAppid) {
		kaifazhe_appid = kaifazheAppid;
	}

	public String getKaifazhe_appsecret() {
		return kaifazhe_appsecret;
	}

	public void setKaifazhe_appsecret(String kaifazheAppsecret) {
		kaifazhe_appsecret = kaifazheAppsecret;
	}

	private static final long serialVersionUID = 1L;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream ;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String updateMenuAndPushlishByAppKey() throws Exception {
		MenuService menuService = (MenuService) ApplicationContextFactory.getBean(Constat.MENUSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		MenuBean menuBean = new MenuBean();
		menuBean.setUserId(checkLoginBean.getId());
		menuBean.setAppId(appId);
		menuBean.setMenus(menus);
		String result = null;

		if (menuService.updateMenuByAppId(menuBean)) {
			APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
			
			APPBean appBean = new APPBean();
			appBean.setUid(String.valueOf(checkLoginBean.getId()));
			appBean.setId(appId);
			APPBean retAppBean = appService.selectAppKeyAndSecretByAPPID(appBean);
			if(retAppBean != null){
			JSONObject accessTokenResult = WeixinUtil.httpRequest(
							"https://api.weixin.qq.com/cgi-bin/token",
							"GET",
							"grant_type=client_credential&appid="+retAppBean.getWx_appkey()+"&secret="+retAppBean.getWx_appsecret());
			try {
				if (accessTokenResult.has("access_token")) {
					String requestToken = accessTokenResult.getString("access_token");

					JSONArray menuArray = new JSONArray(menus);
					JSONObject requestObject = new JSONObject();
					JSONArray buttonsArray = new JSONArray();

					for (int i = 0; i < menuArray.length(); i++) {
						JSONObject jsonObject = menuArray.getJSONObject(i);
						JSONArray subObject = null;
						JSONObject newMenuObject = new JSONObject();
						if(jsonObject.has("sub_menu")){
							subObject = new JSONArray(jsonObject.getString("sub_menu"));
						}
						
						if(subObject != null && subObject.length() >=1){
							newMenuObject.put("name", jsonObject.getString("name"));
							JSONArray subMenuObjects = new JSONArray();
							for(int j = 0 ;j < subObject.length() ; j++){
								JSONObject subMenuObject = subObject.getJSONObject(j);
								JSONObject newSubMenuObject = new JSONObject();
								
								newSubMenuObject.put("name", subMenuObject.getString("name"));
								if("text".compareTo(subMenuObject.getString("data_type")) == 0 ){
									newSubMenuObject.put("type", "click");
									newSubMenuObject.put("key", subMenuObject.getString("data_value"));
								}else{
									newSubMenuObject.put("type", "view");
									newSubMenuObject.put("url", subMenuObject.getString("data_value"));
								}
								
								subMenuObjects.put(newSubMenuObject);
							}
							
							newMenuObject.put("sub_button", subMenuObjects);
						}
						else{
							newMenuObject.put("name", jsonObject.getString("name"));
							if("text".compareTo(jsonObject.getString("data_type")) == 0 ){
								newMenuObject.put("type", "click");
								newMenuObject.put("key", jsonObject.getString("data_value"));
							}else{
								newMenuObject.put("type", "view");
								newMenuObject.put("url", jsonObject.getString("data_value"));
							}
						}
						buttonsArray.put(newMenuObject);
					}

					requestObject.put("button", buttonsArray);

					JSONObject rst = WeixinUtil.httpRequest(
							"https://api.weixin.qq.com/cgi-bin/menu/create?access_token="
									+ requestToken, "POST", requestObject
									.toString());
					if(rst.has("errcode")){
						int error_code = rst.getInt("errcode");
						if(error_code == 0){
							result = new String("{status:'ok',text:'菜单发布成功.'}");
						}
						else{
							result = new String("{status:'ok',text:'"+WXErrorCodes.get(error_code)+"'}");
						}
					}
				}
				else{
					if(accessTokenResult.has("errcode")){
						int error_code = accessTokenResult.getInt("errcode");
						result = new String("{status:'ok',text:'"+WXErrorCodes.get(error_code)+"'}");
					}
				}
			} catch (JSONException e) {
				result = new String("{status:'ok',text:'菜单发布失败.'}");
			}
			}else{
				if(retAppBean == null){
					result = new String("{status:'fail',text:'当前应用的APPKEY和APPSECRET不存在.'}");
				}
			}
		} else {
			result = new String("{status:'fail',text:'菜单保存失败.'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public String updateMenuByAppKey() throws Exception {
		MenuService appService = (MenuService) ApplicationContextFactory.getBean(Constat.MENUSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		MenuBean menuBean = new MenuBean();
		menuBean.setUserId(checkLoginBean.getId());
		menuBean.setAppId(appId);
		menuBean.setMenus(menus);
		String result = null;
		if (appService.updateMenuByAppId(menuBean)) {
			result = new String("{status:'ok',text:'菜单更新成功.'}");
		} else {
			result = new String("{status:'fail',text:'菜单更新失败.'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		
		return SUCCESS;
	}
//http请求方式: GET
//	https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET
	//{"access_token":"ACCESS_TOKEN","expires_in":7200}
	/**
	 * 接口调用请求说明

http请求方式：POST（请使用https协议） https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN

请求示例

 {
     "button":[
     {	
          "type":"click",
          "name":"今日歌曲",
          "key":"V1001_TODAY_MUSIC"
      },
      {
           "type":"click",
           "name":"歌手简介",
           "key":"V1001_TODAY_SINGER"
      },
      {
           "name":"菜单",
           "sub_button":[
           {	
               "type":"view",
               "name":"搜索",
               "url":"http://www.soso.com/"
            },
            {
               "type":"view",
               "name":"视频",
               "url":"http://v.qq.com/"
            },
            {
               "type":"click",
               "name":"赞一下我们",
               "key":"V1001_GOOD"
            }]
       }]
 }
	 */
	public String selectAllMenusByAppKey() throws Exception {
		MenuService menuService = (MenuService) ApplicationContextFactory.getBean(Constat.MENUSERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appid = (String) RequestScopeFactory.SessionScope().get("APPID");
		MenuBean menuBean = new MenuBean();
		menuBean.setUserId(checkLoginBean.getId());
		menuBean.setAppId(appid);
		MenuBean bean = menuService.selectMenuByAppId(menuBean);
		RequestScopeFactory.RequestScope().setAttribute(Constat.MENUS, bean);
		

		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		APPBean appBean = new APPBean();
		appBean.setUid(String.valueOf(checkLoginBean.getId()));
		appBean.setId(appid);
		APPBean retAppBean = appService.selectAppKeyAndSecretByAPPID(appBean);
		RequestScopeFactory.RequestScope().setAttribute(Constat.APPBEAN, retAppBean);
		
		LinkAction.actionLinkFactory();
		return SUCCESS;
	}

	public String saveAppidAndSecret() throws Exception {
		String appid = (String) RequestScopeFactory.SessionScope().get("APPID");
		APPBean appBean = new APPBean();
		appBean.setId(appid);
		appBean.setWx_appkey(kaifazhe_appid);
		appBean.setWx_appsecret(kaifazhe_appsecret);
		APPService appService = (APPService) ApplicationContextFactory.getBean(Constat.APPSERVICE);
		String result = null;
		if(appService.updateAppForAppkeyAndAppsecret(appBean)>0){
			result = "success";
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}	
	
}
