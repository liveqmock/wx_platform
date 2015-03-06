package com.zhike.sql.beans;

public class MemberInfoBean {

	public long id;//主键
	public long service_id;//活动，会员卡ID
	
	
	//微信信息START 
	public long openid;//微信 表wx_wxuser_only id
	//微信信息END
	
	
	public int yue;
	public int jifen;
	
	public int from;
	public int count;
	
	
	public String createtime;
	public String temp;
	public int card_binded;//是否绑定实体卡  1绑定 0未绑定
	public int info_perfect;//是否完善会员信息 1完善 0未完善
	
	public String card_id;//实体卡号
	public String card_name;//姓名
	public String card_sex;//性别 0,1,2  //1男 2女
	public String card_tel;
	public String card_birthday;
	public String card_remark;
	
	public WxUserBean wxUserBean;
	
	
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
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
	public long getService_id() {
		return service_id;
	}
	public void setService_id(long serviceId) {
		service_id = serviceId;
	}
	
	public long getOpenid() {
		return openid;
	}
	public void setOpenid(long openid) {
		this.openid = openid;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public int getYue() {
		return yue;
	}
	public void setYue(int yue) {
		this.yue = yue;
	}
	public int getJifen() {
		return jifen;
	}
	public void setJifen(int jifen) {
		this.jifen = jifen;
	}
	public WxUserBean getWxUserBean() {
		return wxUserBean;
	}
	public void setWxUserBean(WxUserBean wxUserBean) {
		this.wxUserBean = wxUserBean;
	}
	public int getCard_binded() {
		return card_binded;
	}
	public void setCard_binded(int cardBinded) {
		card_binded = cardBinded;
	}
	public String getCard_id() {
		return card_id;
	}
	public void setCard_id(String cardId) {
		card_id = cardId;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String cardName) {
		card_name = cardName;
	}
	public String getCard_sex() {
		return card_sex;
	}
	public void setCard_sex(String cardSex) {
		card_sex = cardSex;
	}
	public String getCard_tel() {
		return card_tel;
	}
	public void setCard_tel(String cardTel) {
		card_tel = cardTel;
	}
	public String getCard_birthday() {
		return card_birthday;
	}
	public void setCard_birthday(String cardBirthday) {
		card_birthday = cardBirthday;
	}
	public String getCard_remark() {
		return card_remark;
	}
	public void setCard_remark(String cardRemark) {
		card_remark = cardRemark;
	}
	public int getInfo_perfect() {
		return info_perfect;
	}
	public void setInfo_perfect(int infoPerfect) {
		info_perfect = infoPerfect;
	}
	

}
