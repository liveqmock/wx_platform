package com.zhike.sql.beans;

import java.util.List;

public class LiuyingBean {

	public long id;//主键
	public long app_id;//app_id
	public String keywords;
	public String title;
	public String img;
	public String desc_service;//简介
	
	public String createtime;
	public String updatetime;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getApp_id() {
		return app_id;
	}
	public void setApp_id(long appId) {
		app_id = appId;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDesc_service() {
		return desc_service;
	}
	public void setDesc_service(String descService) {
		desc_service = descService;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}
	

	
	
	
	
	

}
