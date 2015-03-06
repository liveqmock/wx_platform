package com.zhike.sql.beans;

public class TextBean {
	/*
	 * 开发者微信号
	 */
	private String ToUserName;
	/*
	 * 发送方(用户)帐号
	 */
	private String FromUserName;
	/*
	 * 消息创建时间
	 */
	private String CreateTime;
	/*
	 * 消息类型
	 * text,image,location,link,event(事件：subscribe订阅,unsubscribe取消订阅，CLICK菜单点击)
	 * || voice(未发布)
	 */
	private String MsgType;
	/*
	 * 内容
	 */
	private String Content;
	/*
	 * 图片链接
	 */
	private String PicUrl;
	/*
	 * 消息id，64位整型
	 */
	private String MsgId;
	/*
	 * 地理位置纬度
	 */
	private String lat;
	private String Location_X;
	/*
	 * 地理位置经度
	 */
	private String lng;
	private String Location_Y;
	/*
	 * 地图缩放大小
	 */
	private String Scale;
	/*
	 * 地理位置信息
	 */
	private String Label;
	/*
	 * 消息标题
	 */
	private String Title;
	/*
	 * 消息描述
	 */
	private String Description;
	/*
	 * 消息链接
	 */
	private String Url;

	private String Event;
	private String EventKey;

	public String getToUserName() {
		return ToUserName;
	}

	public void setToUserName(String toUserName) {
		ToUserName = toUserName;
	}

	public String getFromUserName() {
		return FromUserName;
	}

	public void setFromUserName(String fromUserName) {
		FromUserName = fromUserName;
	}

	public String getCreateTime() {
		return CreateTime;
	}

	public void setCreateTime(String createTime) {
		CreateTime = createTime;
	}

	public String getMsgType() {
		return MsgType;
	}

	public void setMsgType(String msgType) {
		MsgType = msgType;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public String getMsgId() {
		return MsgId;
	}

	public void setMsgId(String msgId) {
		MsgId = msgId;
	}

	public String getPicUrl() {
		return PicUrl;
	}

	public void setPicUrl(String picUrl) {
		PicUrl = picUrl;
	}

	public String getLocation_X() {
		return Location_X;
	}

	public void setLocation_X(String locationX) {
		Location_X = locationX;
	}

	public String getLocation_Y() {
		return Location_Y;
	}

	public void setLocation_Y(String locationY) {
		Location_Y = locationY;
	}

	public String getScale() {
		return Scale;
	}

	public void setScale(String scale) {
		Scale = scale;
	}

	public String getLabel() {
		return Label;
	}

	public void setLabel(String label) {
		Label = label;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getUrl() {
		return Url;
	}

	public void setUrl(String url) {
		Url = url;
	}

	public String getEvent() {
		return Event;
	}

	public void setEvent(String event) {
		Event = event;
	}

	public String getEventKey() {
		return EventKey;
	}

	public void setEventKey(String eventKey) {
		EventKey = eventKey;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

}
