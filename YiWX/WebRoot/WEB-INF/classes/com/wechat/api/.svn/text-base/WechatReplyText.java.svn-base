package com.wechat.api;


public class WechatReplyText implements WechatReply {

	public String doReplay(TextBean textBean) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<xml><ToUserName><![CDATA["+textBean.getFromUserName()+"]]></ToUserName>");
		buffer.append("<FromUserName><![CDATA["+textBean.getToUserName()+"]]></FromUserName>");
		buffer.append("<CreateTime>"+textBean.getCreateTime()+"</CreateTime>");
		buffer.append("<MsgType><![CDATA[text]]></MsgType>");
		buffer.append("<Content><![CDATA["+textBean.getContent()+"]]></Content></xml>");
		return buffer.toString();
	}

}
