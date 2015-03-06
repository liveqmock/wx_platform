package com.zhike.sql.beans;

public class WebsiteBean {

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getAppKey() {
		return appKey;
	}

	public void setAppKey(String appKey) {
		this.appKey = appKey;
	}

	public String getAppSecret() {
		return appSecret;
	}

	public void setAppSecret(String appSecret) {
		this.appSecret = appSecret;
	}

	public String getDatas() {
		return datas;
	}

	public void setDatas(String datas) {
		this.datas = datas;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public int getIsopen() {
		return isopen;
	}

	public void setIsopen(int isopen) {
		this.isopen = isopen;
	}

	
	public String getTempnum() {
		return tempnum;
	}

	public void setTempnum(String tempnum) {
		this.tempnum = tempnum;
	}


	public int id;// 主键
	public long userId;// 用户的ID
	public String appId;// 基于系统的程序键
	public String appKey;// 应用程序的Menu KEY
	public String appSecret;// 应用程序的Menu SECRET
	public String datas;// 菜单内容
	public String updateTime;// 更新的时间
	public int isopen;// 是否开启
	
	public String getRefkid() {
		return refkid;
	}

	public void setRefkid(String refkid) {
		this.refkid = refkid;
	}
	public String refkid;//关联应用关键词表的id
	public String tempnum;//模板ID
}
