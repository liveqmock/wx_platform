package com.zhike.viewmodels;

public class UploadMaterialViewModel {
	public String getWx_title() {
		return wx_title;
	}

	public void setWx_title(String wxTitle) {
		wx_title = wxTitle;
	}

	public String getWx_author() {
		return wx_author;
	}

	public void setWx_author(String wxAuthor) {
		wx_author = wxAuthor;
	}

	public String getWx_img() {
		return wx_img;
	}

	public void setWx_img(String wxImg) {
		wx_img = wxImg;
	}

	public String getWx_content() {
		return wx_content;
	}

	public void setWx_content(String wxContent) {
		wx_content = wxContent;
	}

	public String getWx_link() {
		return wx_link;
	}

	public void setWx_link(String wxLink) {
		wx_link = wxLink;
	}

	public String getWx_desc() {
		return wx_desc;
	}

	public void setWx_desc(String wxDesc) {
		wx_desc = wxDesc;
	}
	
	public String getWx_template_type() {
		return wx_template_type;
	}

	public void setWx_template_type(String wxTemplateType) {
		wx_template_type = wxTemplateType;
	}

	private String wx_title;
	private String wx_author;
	private String wx_img;
	private String wx_content;
	private String wx_link;
	private String wx_desc;
	private String wx_template_type;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private int id;
	
	public String getLinkkey() {
		return linkkey;
	}

	public void setLinkkey(String linkkey) {
		this.linkkey = linkkey;
	}

	public String getLinkvalue() {
		return linkvalue;
	}

	public void setLinkvalue(String linkvalue) {
		this.linkvalue = linkvalue;
	}

	public String linkkey;//链接事件的值和value
	public String linkvalue;
}
