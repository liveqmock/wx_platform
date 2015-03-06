package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.ActionLinkBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.WebsiteBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.WebSiteService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.ActionViewModel;
import com.zhike.viewmodels.ImgViewModel;
import com.zhike.viewmodels.WebsiteViewModel;

public class EditWebsiteAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String getWebSites() {
		return webSites;
	} 

	public void setWebSites(String webSites) {
		this.webSites = webSites;
	}

	private String webSites ;
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
	
	/**
	 * 创建一个website的网站
	 * @throws UnsupportedEncodingException 
	 */
	public String editWebsite() throws Exception{
		WebSiteService webSiteService = (WebSiteService) ApplicationContextFactory.getBean(Constat.WEBSITESERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");

		WebsiteBean websiteBean = new WebsiteBean();
		websiteBean.setUserId(checkLoginBean.getId());
		websiteBean.setAppId(appId);
		websiteBean.setDatas(webSites);
		String result = null;
		
		long refKid = - 1;
		String tempnum = null;
		ActionLinkBean actionLinkBean = new ActionLinkBean();
		{
			//ActionLinkBean actionLinkBean = new ActionLinkBean();
		
			JSONObject rootObject = new JSONObject(webSites);
			
			if(rootObject.has("keyword")){
				actionLinkBean.setKeyword(rootObject.getString("keyword"));
			}
			
			if(rootObject.has("title")){
				actionLinkBean.setTitle(rootObject.getString("title"));
			}
			
			if(rootObject.has("img")){
				actionLinkBean.setImg(rootObject.getString("img"));
			}
			
			if(rootObject.has("descs")){
				actionLinkBean.setDescs(rootObject.getString("descs"));
			}
			
			if(rootObject.has("refkid")){
				actionLinkBean.setId(rootObject.getString("refkid"));
			}
			
			if(rootObject.has("tempnum")){
				tempnum = rootObject.getString("tempnum");
			}
			
			actionLinkBean.setAppid(appId);
			actionLinkBean.setServiceid(Long.parseLong(appId));
			actionLinkBean.setUid(String.valueOf(checkLoginBean.getId()));
			actionLinkBean.setUrl(Constat.HOST + "previewWebSite.action?appid="+appId);
			//actionLinkBean.setUrl(Constat.HOST + "previewWebSite.action?appid="+appId);
			//refKid = ActionLinkManager.updateNewActionLink(actionLinkBean);
		}
		//websiteBean.setRefkid(String.valueOf(refKid));
		
		websiteBean.setTempnum(tempnum);
		if (webSiteService.updateWebsiteByAppId(websiteBean)) {
			ActionLinkManager.updateNewActionLink(actionLinkBean);
			result = new String("{status:'ok',text:'配置微官网成功！'}");
		} else {
			result = new String("{status:'error',text:'配置微官网失败！'}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	
	public String selectWebsite() throws Exception{
		WebSiteService webSiteService = (WebSiteService) ApplicationContextFactory.getBean(Constat.WEBSITESERVICE);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		WebsiteBean websiteBean = new WebsiteBean();
		websiteBean.setUserId(checkLoginBean.getId());
		websiteBean.setAppId(appId);
		WebsiteBean bean = webSiteService.selectWebsiteByAppId(websiteBean);
		if(bean != null){
			WebsiteViewModel websiteViewModel = websiteFactory(bean.getDatas());
			//websiteViewModel.setRefkid(bean.getRefkid());
			RequestScopeFactory.RequestScope().setAttribute(Constat.WEBSITES, websiteViewModel);
		}
		LinkAction.actionLinkFactory();
		return SUCCESS;
	}
	
	
	private WebsiteViewModel websiteFactory(String datas) throws Exception{
		WebsiteViewModel websiteViewModel = null;
		try {
			JSONObject rootObject = new JSONObject(datas);
			websiteViewModel = new WebsiteViewModel();
			
			if(rootObject.has("keyword")){
				websiteViewModel.setKeyword(rootObject.getString("keyword"));
			}
			
			if(rootObject.has("title")){
				websiteViewModel.setTitle(rootObject.getString("title"));
			}
			
			if(rootObject.has("img")){
				websiteViewModel.setImg(rootObject.getString("img"));
			}
			
			if(rootObject.has("descs")){
				websiteViewModel.setDescs(rootObject.getString("descs"));
			}
			
			if(rootObject.has("bgimg")){
				websiteViewModel.setBgimg(rootObject.getString("bgimg"));
			}
			
			if(rootObject.has("bgani")){
				websiteViewModel.setBgani(rootObject.getString("bgani"));
			}
			if(rootObject.has("tempnum")){
				websiteViewModel.setTempnum(Integer.parseInt(rootObject.getString("tempnum").trim()));
			}
//			if(rootObject.has("refkid")){
//				websiteViewModel.setRefkid(rootObject.getString("refkid"));
//			}
			
			if(rootObject.has("phoneNumber")){
				websiteViewModel.setPhoneNumber(rootObject.getString("phoneNumber"));
			}
			
			if(rootObject.has("phoneVisiable")){
				websiteViewModel.setPhoneVisiable("是".compareTo(rootObject.getString("phoneVisiable")) == 0 ? true : false);
			}
			
			if(rootObject.has("navVisiable")){
				websiteViewModel.setNavVisiable("是".compareTo(rootObject.getString("navVisiable")) == 0 ? true : false);
			}
			
			if(rootObject.has("thumbVisiable")){
				websiteViewModel.setThumbVisiable("是".compareTo(rootObject.getString("thumbVisiable")) == 0 ? true : false);
			}
			
			/*轮播图 */
			if(rootObject.has("thumbs")){
				JSONArray thumbsArray = rootObject.getJSONArray("thumbs");
				websiteViewModel.thumbs = new ArrayList<ImgViewModel>();
				for(int i = 0 ; i < thumbsArray.length() ; i++){
					JSONObject thumbObject = thumbsArray.getJSONObject(i);
					ImgViewModel imgViewModel = new ImgViewModel();
					if(thumbObject.has("img")){
						imgViewModel.setImg(thumbObject.getString("img"));
					}
					
					if(thumbObject.has("event")){
						imgViewModel.setEvent(thumbObject.getString("event"));
					}
					
					if(thumbObject.has("show")){
						imgViewModel.setShow("是".compareTo(thumbObject.getString("show")) == 0 ? true : false);
					}
					
					if(thumbObject.has("link")){
						imgViewModel.setLink(thumbObject.getString("link"));
					}
					
					websiteViewModel.getThumbs().add(imgViewModel);
				}
			}
			
			/*主页面*/
			if(rootObject.has("mains")){
				JSONArray mainsArray = rootObject.getJSONArray("mains");
				websiteViewModel.mains = new ArrayList<ActionViewModel>();
				for(int i = 0 ; i < mainsArray.length() ; i++){
					JSONObject mainObject = mainsArray.getJSONObject(i);
					ActionViewModel actionViewModel = new ActionViewModel();
					if(mainObject.has("icon")){
						actionViewModel.setIcon(mainObject.getString("icon"));
					}
					if(mainObject.has("title")){
						actionViewModel.setTitle(mainObject.getString("title"));
					}
					
					if(mainObject.has("event")){
						actionViewModel.setEvent(mainObject.getString("event"));
					}
					
					if(mainObject.has("show")){
						actionViewModel.setShow("是".compareTo(mainObject.getString("show")) == 0 ? true : false);
					}
					
					if(mainObject.has("link")){
						actionViewModel.setLink(mainObject.getString("link"));
					}
					
					if(mainObject.has("img")){
						actionViewModel.setImg(mainObject.getString("img"));
					}
					
					websiteViewModel.getMains().add(actionViewModel);
				}
			}
			
			/**
			 * 导航
			 */
			if(rootObject.has("navs")){
				JSONArray navsArray = rootObject.getJSONArray("navs");
				websiteViewModel.navs = new ArrayList<ActionViewModel>();
				for(int i = 0 ; i < navsArray.length() ; i++){
					JSONObject navObject = navsArray.getJSONObject(i);
					ActionViewModel actionViewModel = new ActionViewModel();
					
					if(navObject.has("icon")){
						actionViewModel.setIcon(navObject.getString("icon"));
					}
					
					if(navObject.has("title")){
						actionViewModel.setTitle(navObject.getString("title"));
					}
					
					if(navObject.has("event")){
						actionViewModel.setEvent(navObject.getString("event"));
					}
					
					if(navObject.has("show")){
						actionViewModel.setShow("是".compareTo(navObject.getString("show")) == 0 ? true : false);
					}
					
					if(navObject.has("link")){
						actionViewModel.setLink(navObject.getString("link"));
					}
					
					websiteViewModel.getNavs().add(actionViewModel);
				}
			}
			RequestScopeFactory.RequestScope().setAttribute(Constat.WEBSITES,websiteViewModel);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return websiteViewModel;
	}

	
	/**
	 * 模板预览
	 * @return
	 * @throws Exception
	 */
	public String preview_NewWebSite() throws Exception{
		String tmpflag = RequestScopeFactory.RequestScope().getParameter("tmpflag");
		String bg = RequestScopeFactory.RequestScope().getParameter("bg");
		String bgAni = RequestScopeFactory.RequestScope().getParameter("bgani");
		WebSiteService webSiteService = (WebSiteService) ApplicationContextFactory.getBean(Constat.WEBSITESERVICE);
		String appId = (String) RequestScopeFactory.RequestScope().getParameter("appid");
		if(appId == null){
			appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		}
		WebsiteBean websiteBean = new WebsiteBean();
		websiteBean.setAppId(appId);
		WebsiteBean bean = webSiteService.selectPreviewWebsiteByAppId(websiteBean);
		if(bean != null){
			//tmpflag = bean.getTempnum();
			WebsiteViewModel websiteViewModel = websiteFactory(bean.getDatas());
			if(bg != null){
				websiteViewModel.setBgimg(bg);
			}
			if(bgAni != null){
				websiteViewModel.setBgani(bgAni);
			}
			RequestScopeFactory.SessionScope().put(Constat.WEBSITES, websiteViewModel);
		}
		return SUCCESS + (tmpflag == null ? "":tmpflag);
	}
	
	
	public String previewWebSite() throws Exception{
		String tmpflag = null;
		WebSiteService webSiteService = (WebSiteService) ApplicationContextFactory.getBean(Constat.WEBSITESERVICE);
		String appId = (String) RequestScopeFactory.RequestScope().getParameter("appid");
		if(appId == null){
			appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		}
		WebsiteBean websiteBean = new WebsiteBean();
		websiteBean.setAppId(appId);
		WebsiteBean bean = webSiteService.selectPreviewWebsiteByAppId(websiteBean);
		if(bean != null){
			tmpflag = bean.getTempnum();
			WebsiteViewModel websiteViewModel = websiteFactory(bean.getDatas());
			RequestScopeFactory.SessionScope().put(Constat.WEBSITES, websiteViewModel);
		}
		return SUCCESS + (tmpflag == null ? "":tmpflag);
	}
	
	/**
	 * 模板编辑
	 * @return
	 * @throws Exception
	 */
	public String template_WebSite() throws Exception{
		String tmpflag = RequestScopeFactory.RequestScope().getParameter("tmpflag");
		WebSiteService webSiteService = (WebSiteService) ApplicationContextFactory.getBean(Constat.WEBSITESERVICE);
//		用户微网id
		String appId = (String) RequestScopeFactory.RequestScope().getParameter("appid");
		if(appId == null){
			appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		}
		WebsiteBean websiteBean = new WebsiteBean();
		websiteBean.setAppId(appId);
		WebsiteBean bean = webSiteService.selectPreviewWebsiteByAppId(websiteBean);
		if(bean != null){
			WebsiteViewModel websiteViewModel = websiteFactory(bean.getDatas());
			RequestScopeFactory.SessionScope().put(Constat.WEBSITES, websiteViewModel);
			RequestScopeFactory.SessionScope().put(Constat.WEBSITESTEMP , webSiteService.selWebsiteTempList());
		}
		return SUCCESS;
	}
}
