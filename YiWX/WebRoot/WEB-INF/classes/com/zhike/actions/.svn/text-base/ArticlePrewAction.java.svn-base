package com.zhike.actions;

import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONException;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.MaterialBean;
import com.zhike.sql.services.MaterialService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class ArticlePrewAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String prewArticleById() {
		int maid = Integer.parseInt(RequestScopeFactory.RequestScope().getParameter("maid"));
		// 素材顺序
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		materialBean.setId(maid);
		MaterialBean bean = materialService.selectMaterialById(materialBean);
		RequestScopeFactory.RequestScope().setAttribute(Constat.ARTICLE,bean);
		if (bean.getWx_type() == 0) {
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	/**素材列表页面
	 * @param maid
	 * @url  http://127.0.0.1/YiWX/prewArticle.action?maid=XXX
	 * 
	 */
	public String prewArticle(){
		//素材ID
		int maid = Integer.parseInt(RequestScopeFactory.RequestScope().getParameter("maid"));
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		materialBean.setId(maid);
		MaterialBean bean = materialService.selectMaterialById(materialBean);
		RequestScopeFactory.RequestScope().setAttribute(Constat.ARTICLE, bean);
		return SUCCESS;
	}
	/**素材详细页面
	 * @param maid
	 * @url 1  多图文访问URL http://127.0.0.1/YiWX/prewArticleInfo?maid=XXXX&order=XXX
	 * @url 2  单图文访问URL http://127.0.0.1/YiWX/prewArticleInfo?maid=XXXX
	 * order从0开始。（多图文的第一个素材为0 。单图文就是不需要order）
	 * 
	 */	
	public String prewArticleInfo(){
		//素材ID
		int maid = Integer.parseInt(RequestScopeFactory.RequestScope().getParameter("maid"));
		//素材顺序
		String order = RequestScopeFactory.RequestScope().getParameter("order");
		
		
		MaterialService materialService = (MaterialService) ApplicationContextFactory.getBean(Constat.MATERIALSERVICE);
		MaterialBean materialBean = new MaterialBean();
		materialBean.setId(maid);
		MaterialBean bean = materialService.selectMaterialById(materialBean);
		
			if(bean.getWx_type()==1){
				try {
				String titles = bean.getWx_title();
				JSONArray titleArray = new JSONArray(titles);
				String imgs = bean.getWx_img();
				JSONArray imgsArray = new JSONArray(imgs);
				String contents = bean.getWx_content();
				JSONArray contentsArray = new JSONArray(contents);	
				bean.setWx_title(titleArray.getJSONObject(Integer.parseInt(order)).getString("title"));
				bean.setWx_img(imgsArray.getJSONObject(Integer.parseInt(order)).getString("img"));
				bean.setWx_content(contentsArray.getJSONObject(Integer.parseInt(order)).getString("content"));
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}

		
		RequestScopeFactory.RequestScope().setAttribute(Constat.ARTICLE, bean);
		return SUCCESS;
	}
	
	
}
