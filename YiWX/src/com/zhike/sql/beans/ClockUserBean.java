package com.zhike.sql.beans;

public class ClockUserBean {

	public long id;//主键
	public long service_id;//app_id
	public long openid;
	
	public String name;
	public String sex;
	public String birthday;
	public String tel;
	public String email;
	
	public int clockde_id;//部门ID
	public String[] clickde;//部门ID 數組

	public String query_year;
	public String query_month;
	
	public String createtime;
	public String updatetime;
	
	public int from;
	public int count;
	
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
	public long getOpenid() {
		return openid;
	}
	public void setOpenid(long openid) {
		this.openid = openid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getClockde_id() {
		return clockde_id;
	}
	public void setClockde_id(int clockdeId) {
		clockde_id = clockdeId;
	}
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
	public String[] getClickde() {
		return clickde;
	}
	public void setClickde(String[] clickde) {
		this.clickde = clickde;
	}
	public String getQuery_year() {
		return query_year;
	}
	public void setQuery_year(String queryYear) {
		query_year = queryYear;
	}
	public String getQuery_month() {
		return query_month;
	}
	public void setQuery_month(String queryMonth) {
		query_month = queryMonth;
	}
	
	

}
