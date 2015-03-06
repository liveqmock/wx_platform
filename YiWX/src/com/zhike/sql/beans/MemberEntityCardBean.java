package com.zhike.sql.beans;

public class MemberEntityCardBean {

	public long id;//主键
	public long service_id;//活动，会员卡ID	
	public long  memberInfo_id;//会员卡
	public String card_id;//卡号
	public String card_password;//密码
	public String card_sex;//男女
	public String card_name;//姓名
	public String card_birthday;//生日
	public String card_tel;//电话号码
	public String card_remark;//备注
	public String card_yue;//余额
	public String card_jifen;//积分
	public int card_used;//是否使用  1使用 0未使用
	
	public int type;//类型 1 新增 2修改 3删除
	
	public int from;
	public int count;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCard_id() {
		return card_id;
	}
	public void setCard_id(String cardId) {
		card_id = cardId;
	}
	public String getCard_password() {
		return card_password;
	}
	public void setCard_password(String cardPassword) {
		card_password = cardPassword;
	}
	public String getCard_sex() {
		return card_sex;
	}
	public void setCard_sex(String cardSex) {
		card_sex = cardSex;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String cardName) {
		card_name = cardName;
	}
	public String getCard_birthday() {
		return card_birthday;
	}
	public void setCard_birthday(String cardBirthday) {
		card_birthday = cardBirthday;
	}
	public String getCard_tel() {
		return card_tel;
	}
	public void setCard_tel(String cardTel) {
		card_tel = cardTel;
	}
	public String getCard_remark() {
		return card_remark;
	}
	public void setCard_remark(String cardRemark) {
		card_remark = cardRemark;
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
	public long getService_id() {
		return service_id;
	}
	public void setService_id(long serviceId) {
		service_id = serviceId;
	}

	public String getCard_yue() {
		return card_yue;
	}
	public void setCard_yue(String cardYue) {
		card_yue = cardYue;
	}
	public String getCard_jifen() {
		return card_jifen;
	}
	public void setCard_jifen(String cardJifen) {
		card_jifen = cardJifen;
	}
	public int getCard_used() {
		return card_used;
	}
	public void setCard_used(int cardUsed) {
		card_used = cardUsed;
	}
	public long getMemberInfo_id() {
		return memberInfo_id;
	}
	public void setMemberInfo_id(long memberInfoId) {
		memberInfo_id = memberInfoId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
}
