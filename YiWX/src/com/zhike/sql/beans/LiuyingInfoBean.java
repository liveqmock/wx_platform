package com.zhike.sql.beans;

public class LiuyingInfoBean {

	public long id;//主键
	public long service_id;//app_id

	
	public String name;
	public String head_img;
	public String liuyan;
	public String liuying;
	public String createtime;
	public String updatetime;
	
	
	public int from;
	public int count;
	
	
	public int getFrom() {
		return from;
	}
	public void setFrom(int from) {
		this.from = from;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getService_id() {
		return service_id;
	}
	public void setService_id(long serviceId) {
		service_id = serviceId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHead_img() {
		return head_img;
	}
	public void setHead_img(String headImg) {
		head_img = headImg;
	}
	public String getLiuyan() {
		return liuyan;
	}
	public void setLiuyan(String liuyan) {
		this.liuyan = liuyan;
	}
	public String getLiuying() {
		return liuying;
	}
	public void setLiuying(String liuying) {
		this.liuying = liuying;
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
