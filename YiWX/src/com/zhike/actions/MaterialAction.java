package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.dispatcher.SessionMap;

import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.MaterialBean;
import com.zhike.sql.services.MaterialService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;
import com.zhike.viewmodels.UploadMaterialViewModel;

public class MaterialAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	public List<String> getWx_title() {
		return wx_title;
	}

	public void setWx_title(List<String> wxTitle) {
		wx_title = wxTitle;
	}

	public List<String> getWx_author() {
		return wx_author;
	}

	public void setWx_author(List<String> wxAuthor) {
		wx_author = wxAuthor;
	}

	public List<String> getWx_img() {
		return wx_img;
	}

	public void setWx_img(List<String> wxImg) {
		wx_img = wxImg;
	}

	public List<String> getWx_content() {
		return wx_content;
	}

	public void setWx_content(List<String> wxContent) {
		wx_content = wxContent;
	}

	public List<String> getWx_link() {
		return wx_link;
	}

	public void setWx_link(List<String> wxLink) {
		wx_link = wxLink;
	}

	private List<String> wx_title;// title
	private List<String> wx_author;// 作者
	private List<String> wx_img;// 上传的图片
	private List<String> wx_content;// 上传的内容
	private List<String> wx_link;// 上传的链接
	public List<String> getWx_template_type() {
		return wx_template_type;
	}

	public void setWx_template_type(List<String> wxTemplateType) {
		wx_template_type = wxTemplateType;
	}

	private List<String> wx_template_type;
	
	public List<String> getWx_linkkey() {
		return wx_linkkey;
	}

	public void setWx_linkkey(List<String> wxLinkkey) {
		wx_linkkey = wxLinkkey;
	}

	public List<String> getWx_linkvalue() {
		return wx_linkvalue;
	}

	public void setWx_linkvalue(List<String> wxLinkvalue) {
		wx_linkvalue = wxLinkvalue;
	}

	private List<String> wx_linkkey;
	private List<String> wx_linkvalue;

	public UploadMaterialViewModel getUploadMaterialViewModel() {
		return uploadMaterialViewModel;
	}

	public void setUploadMaterialViewModel(
			UploadMaterialViewModel uploadMaterialViewModel) {
		this.uploadMaterialViewModel = uploadMaterialViewModel;
	}

	private UploadMaterialViewModel uploadMaterialViewModel;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	private InputStream inputStream;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int id;
	
	public String getAcType() {
		return acType;
	}

	public void setAcType(String acType) {
		this.acType = acType;
	}

	public String acType;
	
	private final String SINGLE = "single";
	private final String MULITE = "mulite";
	
	@Override
	public String execute() throws Exception {
		return super.execute();
	}

	public String uploadMaterialSingle() throws Exception {
		MaterialBean materialBean = new MaterialBean();
		materialBean.setId(uploadMaterialViewModel.getId());
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		materialBean.setWx_appkey_id(appId);
		materialBean.setWx_author(uploadMaterialViewModel.getWx_author());
		materialBean.setWx_content(uploadMaterialViewModel.getWx_content());
		materialBean.setWx_desc(uploadMaterialViewModel.getWx_desc());
		materialBean.setWx_img(uploadMaterialViewModel.getWx_img());
		materialBean.setWx_link(uploadMaterialViewModel.getWx_link());
		materialBean.setWx_title(uploadMaterialViewModel.getWx_title());
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		materialBean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		materialBean.setWx_type(0);
		//JSONObject object = new JSONObject();
		//object.accumulate("linkkey", uploadMaterialViewModel.getLinkkey());
		//object.accumulate("linkvalue", uploadMaterialViewModel.getLinkvalue());
		materialBean.setWx_template_type(uploadMaterialViewModel.getWx_template_type());
		///String acType = (String) RequestScopeFactory.RequestScope().getAttribute("acType");
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		if(acType == null || "edit".compareTo(acType) == 0){
			materialService.updateMaterialByIdAndUserId(materialBean);
		}
		else{
			materialService.addNewMaterial(materialBean);
		}
		
		return SUCCESS;
	}

	public String uploadMaterialMulite() throws Exception {
		// 标题
		JSONArray titleArray = new JSONArray();
		for (String title : wx_title) {
			JSONObject object = new JSONObject();
			object.put("title", title);
			titleArray.put(object);
		}
		System.out.println(titleArray.toString());
		// /作者
		JSONArray authorArray = new JSONArray();
		for (String author : wx_author) {
			JSONObject object = new JSONObject();
			object.put("author", author);
			authorArray.put(object);
		}
		System.out.println(authorArray.toString());
		// /图片
		JSONArray imgArray = new JSONArray();
		for (String img : wx_img) {
			JSONObject object = new JSONObject();
			object.put("img", img);
			imgArray.put(object);
		}
		System.out.println(imgArray.toString());
		// /内容
		JSONArray contentArray = new JSONArray();
		for (String content : wx_content) {
			JSONObject object = new JSONObject();
			object.put("content", content);
			contentArray.put(object);
		}
		System.out.println(contentArray.toString());
		// /链接
		JSONArray linkArray = new JSONArray();
		for (String link : wx_link) {
			JSONObject object = new JSONObject();
			object.put("link", link);
			linkArray.put(object);
		}
		
		JSONArray templateArray = new JSONArray();
		for (String template_type : wx_template_type) {
			JSONObject object = new JSONObject();
			object.put("template_type", template_type);
			templateArray.put(object);
		}
		
		System.out.println(linkArray.toString());
		// /
		MaterialBean materialBean = new MaterialBean();
		materialBean.setId(id);
		String appId = (String) RequestScopeFactory.SessionScope().get("APPID");
		materialBean.setWx_appkey_id(appId);
		materialBean.setWx_author(authorArray.toString());
		materialBean.setWx_content(contentArray.toString());
		materialBean.setWx_img(imgArray.toString());
		materialBean.setWx_link(linkArray.toString());
		materialBean.setWx_title(titleArray.toString());
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		materialBean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		materialBean.setWx_type(1);
		materialBean.setWx_template_type(templateArray.toString());
		
		//String acType = (String) RequestScopeFactory.RequestScope().getAttribute("acType");
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		if(acType == null || "edit".compareTo(acType) == 0){
			materialService.updateMaterialByIdAndUserId(materialBean);
		}
		else{
			materialService.addNewMaterial(materialBean);
		}
		return SUCCESS;
	}
	
	public String selectAllNewMaterialByUserId() throws Exception {
		MaterialService materialService = (MaterialService) ApplicationContextFactory
		.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		materialBean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		List<MaterialBean> materialBeans = materialService.selectAllNewMaterialByUserId(materialBean);
		
		RequestScopeFactory.RequestScope().setAttribute(Constat.MATERIALS, materialBeans);
		
		return SUCCESS;
	}
	
	
	/**
	 * 
	 * @return 编辑素材页面的内容
	 * @throws Exception
	 */
	public String selectAllNewMaterialByUserIdForKeyword() throws Exception {
		MaterialService materialService = (MaterialService) ApplicationContextFactory
		.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		materialBean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		List<MaterialBean> materialBeans = materialService.selectAllNewMaterialByUserId(materialBean);
		
		RequestScopeFactory.RequestScope().setAttribute(Constat.MATERIALS, materialBeans);
		
		return SUCCESS;
	}
	
	public String selectAllNewMaterialByUserIdForKeywordForEdit() throws Exception {
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		materialBean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		List<MaterialBean> materialBeans = materialService.selectAllNewMaterialByUserId(materialBean);
		
		RequestScopeFactory.RequestScope().setAttribute(Constat.MATERIALS, materialBeans);
		
		return SUCCESS;
	}
	
	public String deleteMaterial() throws Exception {
		String result = null;
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		materialBean.setId(id);
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		materialBean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		if(materialService.deleteMaterialByIdAndUserId(materialBean)){
			result = new String("{status:'ok'}");
		}
		else{
			result = new String("{status:fail}");
		}
		inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		return SUCCESS;
	}

	public String editMaterial() throws Exception {
		String materialId = RequestScopeFactory.RequestScope().getParameter("materialId");
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		MaterialBean bean = new MaterialBean();
		bean.setId(Integer.parseInt(materialId));
		CheckLoginBean checkLoginBean = (CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION);
		bean.setWx_uid(String.valueOf(checkLoginBean.getId()));
		MaterialBean materialBean = materialService.selectMaterialByIdAndUserId(bean);
		LinkAction.actionLinkFactory();
		if(materialBean.getWx_type() == 1){
			if(materialBean != null){
				List<MaterialBean> beans = new ArrayList<MaterialBean>();
				String titles = materialBean.getWx_title();
				String authors = materialBean.getWx_author();
				String imgs = materialBean.getWx_img();
				String contents = materialBean.getWx_content();
				String links = materialBean.getWx_link();
				String templates = materialBean.getWx_template_type();
				
				JSONArray titleArray = new JSONArray(titles);
				JSONArray authorArray = new JSONArray(authors);
				JSONArray imgArray = new JSONArray(imgs);
				JSONArray contentArray = new JSONArray(contents);
				JSONArray linkArray = new JSONArray(links);
				JSONArray templateArray = new JSONArray(templates);
				for(int i = 0 ; i< titleArray.length();i++){
					
					String title = titleArray.getJSONObject(i).getString("title");
					String author = authorArray.getJSONObject(i).getString("author");
					String img = imgArray.getJSONObject(i).getString("img");
					String content = contentArray.getJSONObject(i).getString("content");
					String link = linkArray.getJSONObject(i).getString("link");
					String template = templateArray.getJSONObject(i).getString("template_type");
					
					MaterialBean subBean = new MaterialBean();
					subBean.setId(materialBean.getId());
					subBean.setWx_title(title);
					subBean.setWx_author(author);
					subBean.setWx_img(img);
					subBean.setWx_content(content);
					subBean.setWx_link(link);
					subBean.setWx_template_type(template);
					beans.add(subBean);
				}
				RequestScopeFactory.RequestScope().setAttribute("L_MATERIAL_BEAN", beans);
			}
			
			return MULITE;
		}else{
			RequestScopeFactory.RequestScope().setAttribute("L_MATERIAL_BEAN", materialBean);
			return SINGLE;
		}
	}
	
	public String sucai_mulite() throws Exception {
		LinkAction.actionLinkFactory();
		return "sucai_mulite";
	}

	public String sucai_single() throws Exception {
		LinkAction.actionLinkFactory();
		return "sucai_single";
	}
}
