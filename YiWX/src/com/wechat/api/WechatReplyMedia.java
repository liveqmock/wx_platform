package com.wechat.api;

public class WechatReplyMedia implements WechatReply {

	public String doReplay(TextBean textBean) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<xml><ToUserName><![CDATA["+textBean.getFromUserName()+"]]></ToUserName>");
		buffer.append("<FromUserName><![CDATA["+textBean.getToUserName()+"]]></FromUserName>");
		buffer.append("<CreateTime>"+textBean.getCreateTime()+"</CreateTime>");
		buffer.append("<MsgType><![CDATA[news]]></MsgType>");
		buffer.append("<ArticleCount>"+textBean.getTextBeanItems().size()+"</ArticleCount>");
		buffer.append("<Articles>");

		for(TextBeanItem textBeanItem : textBean.getTextBeanItems()){
			buffer.append("<item>");
			buffer.append("<Title><![CDATA["+textBeanItem.getTitle()+"]]></Title>");
			buffer.append("<Description><![CDATA["+textBeanItem.getDescription()+"]]></Description>");
			buffer.append("<PicUrl><![CDATA["+textBeanItem.getPicUrl()+"]]></PicUrl>");
			buffer.append("<Url><![CDATA["+textBeanItem.getUrl()+"]]></Url>");//
			buffer.append("</item>");
		}
		buffer.append("</Articles></xml>");
		return buffer.toString();
	}

}
