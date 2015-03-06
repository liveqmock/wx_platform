package com.zhike.utils;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.wechat.api.TextBean;

public class WechatXMLParser {
	public TextBean textToXml(String str) {
		TextBean tb = new TextBean();
		try {
			Document dom = DocumentHelper.parseText(str);
			Element root = dom.getRootElement();
			tb.setToUserName(root.element("ToUserName").getText());// 开发者账号，可写死
			tb.setFromUserName(root.element("FromUserName").getText());// 发送者账号
			tb.setMsgType(root.element("MsgType").getText());// 消息类型
			// tb.setCreateTime(root.element("CreateTime").getText());// 创建时间
			// tb.setMsgId(root.element("MsgId").getText());//消息ID

			if (tb.getMsgType().equals("text")) {
				tb.setContent(root.element("Content").getText());// 内容
				return tb;
			} else if (tb.getMsgType().equals("image")) {
				tb.setPicUrl(root.element("PicUrl").getText());// 图片链接
				return tb;
			} else if (tb.getMsgType().equals("location")) {
				tb.setLocation_X(root.element("Location_X").getText());// 纬度
				tb.setLocation_Y(root.element("Location_Y").getText());// 经度
				tb.setScale(root.element("Scale").getText());// 地图缩放大小
				tb.setLabel(root.element("Label").getText());// 地理位置信息
				return tb;
			} else if (tb.getMsgType().equals("link")) {
				tb.setTitle(root.element("Title").getText());// 消息标题
				tb.setDescription(root.element("Description").getText());// 消息描述
				tb.setUrl(root.element("Url").getText());// 消息链接
				return tb;
			} else if (tb.getMsgType().equals("event")) {
				//点击事件
				String event = root.element("Event").getText();
				tb.setEvent(event);
				//1 订阅与取消订阅
				if(event.equals("subscribe")||event.equals("unsubscribe")){
					return tb;
				}
				//2 上报地理位置事件
				if(event.equals("LOCATION")){
					tb.setLocation_X(root.element("Latitude").getText());// 纬度
					tb.setLocation_Y(root.element("Longitude").getText());// 经度
					//Precision精度 这个参数不知道干嘛用。没加
					return tb;
				}
				
				//4 点击菜单拉取消息时的事件推送
				if(event.equals("CLICK")){
					tb.setEventKey(root.element("EventKey").getText());
					return tb;
				}
				
				//5点击菜单拉取消息时的事件推送
				if(event.equals("VIEW")){
					tb.setEventKey(root.element("EventKey").getText());
					return tb;
				}
				
			} else if (tb.getMsgType().equals("voice")) {
				// 语音
				tb.setMsgId(root.element("MsgId").getText());
				tb.setMediaId(root.element("MediaId").getText());
				tb.setFormat(root.element("Format").getText());
				tb.setRecognition(root.element("Recognition").getText());
				return tb;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return tb;
	}
}
/*
 * public static void main(String[] args) throws DocumentException { String fh =
 * ""; fh += "<xml>"; fh +=
 * "<ToUserName><![CDATA[oTTrWjn94mUhfo3w8MikcJg37XvM]]></ToUserName>"; fh +=
 * "<FromUserName><![CDATA[gh_375df64175b8]]></FromUserName>"; fh +=
 * "<CreateTime>1369923116</CreateTime>"; fh +=
 * "<MsgType><![CDATA[text]]></MsgType>"; fh +=
 * "<Content><![CDATA[开发者是笨蛋]]></Content>"; fh += "<FuncFlag>0</FuncFlag>"; fh
 * += "</xml>"; String xml =
 * "<?xml version= '1.0' encoding='gb2312'?><weighData><weighTime>2012-12-2 12:23:12</weighTime><cardNum>2</cardNum><cfid>123</cfid></weighData>"
 * ; Document dom = DocumentHelper.parseText(fh); Element root =
 * dom.getRootElement(); String weighTime = root.element("MsgType").getText();
 * String cardNum = root.element("Content").getText(); String cfid =
 * root.element("ToUserName").getText(); System.out.println(weighTime);
 * System.out.println(cardNum); System.out.println(cfid); }
 */