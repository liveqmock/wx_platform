package com.wechat.api;

import java.util.ArrayList;
import java.util.List;

import com.zhike.finals.Constat;

public class TextBean {
	
	public TextBean(){
		textBeanItems = new ArrayList<TextBeanItem>();
	}
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
	 * 消息类型 text,image,location,link,event(事件：subscribe订阅,unsubscribe取消订阅，CLICK菜单点击) || voice(未发布)
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
	private String Location_X ;
	/*
	 * 地理位置经度 
	 */
	private String lng;
	private String Location_Y ;
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
	
	/*
	 * 媒体文件id 
	 */	
	private String MediaId;
	/*
	 * 语音识别结果，UTF8编码
	 */	
	private String Recognition;
	/*
	 * 语音格式：amr
	 */	
	private String Format;
	
	
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
		if(PicUrl != null && PicUrl.startsWith("http://")){
			return PicUrl;
		}
		else{
			return Constat.HOST + PicUrl;
		}
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
		if(Url != null && Url.startsWith("http://")){
			return Url;
		}
		else{
			return Constat.HOST + Url;
		}
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
	public String getMediaId() {
		return MediaId;
	}
	public void setMediaId(String mediaId) {
		MediaId = mediaId;
	}
	public String getRecognition() {
		return Recognition;
	}
	public void setRecognition(String recognition) {
		Recognition = recognition;
	}
	public String getFormat() {
		return Format;
	}
	public void setFormat(String format) {
		Format = format;
	}
	
	public List<TextBeanItem> getTextBeanItems() {
		return textBeanItems;
	}
	public void setTextBeanItems(List<TextBeanItem> textBeanItems) {
		this.textBeanItems = textBeanItems;
	}

	public List<TextBeanItem> textBeanItems;
	
	public String getAppid() {
		return appid;
	}
	public void setAppid(String appid) {
		this.appid = appid;
	}
	public String appid;

}
