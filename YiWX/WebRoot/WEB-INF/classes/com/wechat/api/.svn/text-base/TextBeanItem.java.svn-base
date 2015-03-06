package com.wechat.api;

import com.zhike.finals.Constat;

public class TextBeanItem {
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPicUrl() {
		if(picUrl != null && picUrl.startsWith("http://")){
			return picUrl;
		}
		else{
			return Constat.HOST + picUrl;
		}
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String title;
	public String description;
	public String picUrl;
	public String url;
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String createTime;
}
