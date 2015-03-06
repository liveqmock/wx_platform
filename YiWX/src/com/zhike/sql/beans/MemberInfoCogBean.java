package com.zhike.sql.beans;

public class MemberInfoCogBean {

	public long id;//主键
	public long memberInfo_id;//会员ID
	
	public int member_type;
	public int member_number;
	public int member_lbs;
	public String member_explan;
	public long service_id;
	public int from;
	public int count;
	
	
	public String createtime;
	

	public long getService_id() {
		return service_id;
	}
	public void setService_id(long serviceId) {
		service_id = serviceId;
	}
	public long getMemberInfo_id() {
		return memberInfo_id;
	}
	public void setMemberInfo_id(long memberInfoId) {
		memberInfo_id = memberInfoId;
	}
	public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int memberNumber) {
		member_number = memberNumber;
	}
	public String getMember_explan() {
		return member_explan;
	}
	public void setMember_explan(String memberExplan) {
		member_explan = memberExplan;
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
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public int getMember_type() {
		return member_type;
	}
	public void setMember_type(int memberType) {
		member_type = memberType;
	}
	public int getMember_lbs() {
		return member_lbs;
	}
	public void setMember_lbs(int memberLbs) {
		member_lbs = memberLbs;
	}
	

}
