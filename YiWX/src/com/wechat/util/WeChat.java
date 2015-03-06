package com.wechat.util;

import com.wechat.model.Template;
import com.wechat.model.WxConfig;


/**
 * 公众平台通用接口
 * 
 * @author lhc
 * @date 2015-01-08
 */
public class WeChat {
	//获取token
	public  String getWeChatAccessToken(){
		return WeChatUtil.getWeChatAccessToken();
	}
	//获取jsapi_ticket
	public String getWeChatJsapi_ticket(){
		return WeChatUtil.getWeChatJsapi_ticket();
	}
	
	//发送模板消息
	public  String postTemplate(Template template){
		return WeChatUtil.postTemplate(template);
	}
	//获取 JS SDK CONFIG
	public WxConfig getWxConfig(String url) {
		return WeChatUtil.getWxConfig(url);
	}
	
	//下载多媒体文件
	public  String downloadMedia (String media_id, String savePath,String returnPath){
		return WeChatUtil.downloadMedia(media_id,savePath,returnPath);
	}

	
	
}