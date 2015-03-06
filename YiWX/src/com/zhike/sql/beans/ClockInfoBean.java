package com.zhike.sql.beans;

public class ClockInfoBean {

	public long id;//主键
	public long service_id;//app_id
	public long user_id;
	
	public String onwork_time;//上班时间
	public int onwork_ontime;//上班是否准时 1 0
	public String onwork_remark;//上班备注
	public String offwork_time;//下班时间
	public int offwork_ontime;//下班是否准时 1 0
	public String offwork_remark;//下班备注
	public double worktime;//工作时长
	
	public String weeks;//打卡当天的日子星期几
	public int current_day;//打卡当天的日子是30天的多少号
	
	public String isflextime;//是否弹性工作制
	public String isfull;//是否满足弹性时间
	public String createtime;
	public String updatetime;
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
	
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long userId) {
		user_id = userId;
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
	public String getOnwork_time() {
		return onwork_time;
	}
	public void setOnwork_time(String onworkTime) {
		onwork_time = onworkTime;
	}
	public String getOnwork_remark() {
		return onwork_remark;
	}
	public void setOnwork_remark(String onworkRemark) {
		onwork_remark = onworkRemark;
	}
	public String getOffwork_time() {
		return offwork_time;
	}
	public void setOffwork_time(String offworkTime) {
		offwork_time = offworkTime;
	}
	public String getOffwork_remark() {
		return offwork_remark;
	}
	public void setOffwork_remark(String offworkRemark) {
		offwork_remark = offworkRemark;
	}
	
	public double getWorktime() {
		return worktime;
	}
	public void setWorktime(double worktime) {
		this.worktime = worktime;
	}
	public String getIsflextime() {
		return isflextime;
	}
	public void setIsflextime(String isflextime) {
		this.isflextime = isflextime;
	}
	public String getIsfull() {
		return isfull;
	}
	public void setIsfull(String isfull) {
		this.isfull = isfull;
	}
	public int getOnwork_ontime() {
		return onwork_ontime;
	}
	public void setOnwork_ontime(int onworkOntime) {
		onwork_ontime = onworkOntime;
	}
	public int getOffwork_ontime() {
		return offwork_ontime;
	}
	public void setOffwork_ontime(int offworkOntime) {
		offwork_ontime = offworkOntime;
	}
	public int getCurrent_day() {
		return current_day;
	}
	public void setCurrent_day(int currentDay) {
		current_day = currentDay;
	}
	public String getWeeks() {
		return weeks;
	}
	public void setWeeks(String weeks) {
		this.weeks = weeks;
	}
	
}
