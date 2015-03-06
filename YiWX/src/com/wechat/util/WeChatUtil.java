package com.wechat.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

import com.wechat.model.AccessToken;
import com.wechat.model.DataValue;
import com.wechat.model.Template;
import com.wechat.model.WxConfig;
import com.zhike.actions.RedirectAction;
import com.zhike.utils.MyX509TrustManager;
import com.zhike.utils.WeixinUtil;



/**
 * 公众平台通用接口工具类
 * 
 * @author lhc
 * @date 2015-01-08
 */
public class WeChatUtil {
	private static Logger log = LoggerFactory.getLogger(WeChatUtil.class);
	
	public static String weChatAccessToken = null;
	public static String weChatJsapi_ticket = null;
	public static long token_expires_time = 0;
	public static long ticket_expires_time = 0;
	
	public static String nonceStr = "vxinfeng";
	
	
	public static String appid=RedirectAction.APPID;
	public static String appsecret=RedirectAction.APPSECRET;
	

	/**
	 * 发起https请求并获取结果
	 * 
	 * @param requestUrl 请求地址
	 * @param requestMethod 请求方式（GET、POST）
	 * @param outputStr 提交的数据
	 * @return JSONObject(通过JSONObject.get(key)的方式获取json对象的属性值)
	 */
	

	
	/**
	 * 获取access_token
	 */
		
	// 获取access_token的接口地址（GET） 限200（次/天）
	public final static String access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";

	
	public static String getWeChatAccessToken() {
		String accessToken = null;
		if(weChatAccessToken==null||weChatAccessToken.equals("")){
			//第一次 调用 获取 token
			weChatAccessToken = getAccessToken(appid,appsecret);
		}else{
			//判断是否过期
			long now_time = System.currentTimeMillis()/1000+60;
			if(now_time>=token_expires_time){
				//过期 需要或重新获取
				weChatAccessToken = getAccessToken(appid,appsecret);
			}
		}
		accessToken = weChatAccessToken;
		return accessToken;
	}
	
	
	/**
	 * 获取access_token
	 * 
	 * @param appid 凭证
	 * @param appsecret 密钥
	 * @return
	 */
	public static String getAccessToken(String appid, String appsecret) {
		AccessToken accessToken = null;
		String requestUrl = access_token_url.replace("APPID", appid).replace("APPSECRET", appsecret);
		JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl, "GET", null);
		// 如果请求成功
		if (null != jsonObject) {
			accessToken = new AccessToken();
			try {
				accessToken.setToken(jsonObject.getString("access_token"));
				accessToken.setExpiresIn(jsonObject.getInt("expires_in"));
				token_expires_time = System.currentTimeMillis()/1000+jsonObject.getInt("expires_in");
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return accessToken.getToken();
	}
	
	/**
	 * 发送模板消息
	 * 
	 *
	 * @return
	 */
	
	
	public static  String postTemplate(Template template){
		String templateJson = returnTemplateJson(template);
		String accessToken=  getWeChatAccessToken();
		String result = null;
		JSONObject rst = WeixinUtil.httpRequest(
				"https://api.weixin.qq.com/cgi-bin/message/template/send?access_token="
						+ accessToken, "POST", templateJson);
		if(rst.has("errcode")){
			int error_code = -1 ;
			try {
				error_code = rst.getInt("errcode");
			} catch (JSONException e) {
				e.printStackTrace();
			}
			if(error_code == 0){
				result = new String("{status:'ok',text:'模板发送成功.'}");
			}
			else{
				result = new String("{status:'ok',text:'"+WXErrorCodes.get(error_code)+"'}");
			}
		}
		return result ;
	}
	


	public static String returnTemplateJson(Template template){
		
		JSONObject jsTemp1 = new JSONObject();
		JSONObject jsTemp2 = new JSONObject();
		Set set = template.getData().entrySet();
		for(Iterator iter = set.iterator();iter.hasNext();){
		     Map.Entry entry = (Map.Entry)iter.next();
		     String key = (String) entry.getKey();
		     DataValue value = (DataValue) entry.getValue();
		     JSONObject jsTemp3 = new JSONObject();
		     try {
				jsTemp3.put("value", value.getValue());
				jsTemp3.put("color", value.getColor());
			     jsTemp2.put(key, jsTemp3);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		     
		}
		
		try {
			jsTemp1.put("touser", template.getTouser());
			jsTemp1.put("template_id", template.getTemplate_id());
			jsTemp1.put("url", template.getUrl());
			jsTemp1.put("topcolor", template.getTopcolor());
			jsTemp1.put("data", jsTemp2);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


		
//		System.out.println(jsTemp1.toString());
		return jsTemp1.toString();
		
	}

	//获取jsapi_ticket
	public static String getWeChatJsapi_ticket() {
		String accessToken=  getWeChatAccessToken();
		String jsapi_ticket = null;
		if(weChatJsapi_ticket==null||weChatJsapi_ticket.equals("")){
			//第一次 调用 获取 token
			weChatJsapi_ticket = getJsapi_ticket(accessToken);
		}else{
			//判断是否过期
			long now_time = System.currentTimeMillis()/1000+60;
			if(now_time>=ticket_expires_time){
				//过期 需要或重新获取
				weChatJsapi_ticket = getJsapi_ticket(accessToken);
			}
		}
		jsapi_ticket = weChatJsapi_ticket;
		return jsapi_ticket;
		
		

	}

	/**
	 * 获取ticket
	 * 
	 * @param appid 凭证
	 * @param appsecret 密钥
	 * @return
	 */
	public static String getJsapi_ticket(String  accessToken) {
		String ticket = null;
		String requestUrl = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+ accessToken +"&type=jsapi";
		JSONObject jsonObject = WeixinUtil.httpRequest(requestUrl, "GET", null);
		//{"ticket":"sM4AOVdWfPE4DxkXGEs8VNWI7iHdvzGZVKh6GTJn2VyIwHbCUJm6FTQZIGyZHoRGkHZf_pjeDhArnt8-Fn-xHA","expires_in":7200,"errmsg":"ok","errcode":0}
		if (null != jsonObject) {
			try {
				ticket = jsonObject.getString("ticket");
				ticket_expires_time = System.currentTimeMillis()/1000+jsonObject.getInt("expires_in");
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	
		return ticket;
		
	
	}
	/**
	 * 获取WxConfig
	 * 
	 * @param url 访问页面网址
	 * @return
	 */

	public static WxConfig getWxConfig(String url) {
		String jsapi_ticket = getWeChatJsapi_ticket();

		long timestamp = System.currentTimeMillis()/1000;
		
			
		String[] ArrTmp = { "jsapi_ticket="+jsapi_ticket, "noncestr="+nonceStr, "timestamp="+String.valueOf(timestamp),"url="+url };
		Arrays.sort(ArrTmp);
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < ArrTmp.length; i++) {
			if(i!=(ArrTmp.length-1)){
				sb.append(ArrTmp[i]+"&");
			}else{
				sb.append(ArrTmp[i]);
			}
		}
		
		String signature = Encrypt(sb.toString());
		WxConfig wxConfig = new WxConfig();
		wxConfig.setAppId(appid);
		wxConfig.setTimestamp(String.valueOf(timestamp));
		wxConfig.setNonceStr(nonceStr);
		wxConfig.setSignature(signature);
		return wxConfig;
	}
	
	/**
	 * sha 加密
	 */
	
	public static String Encrypt(String str) {
		MessageDigest md = null;
		String strDes = null;

		byte[] bt = str.getBytes();
		try {
			md = MessageDigest.getInstance("SHA-1");
			md.update(bt);
			strDes = bytes2Hex(md.digest()); // to HexString
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
		return strDes;
	}
	
	public static String bytes2Hex(byte[] bts) {
		String des = "";
		String tmp = null;
		for (int i = 0; i < bts.length; i++) {
			tmp = (Integer.toHexString(bts[i] & 0xFF));
			if (tmp.length() == 1) {
				des += "0";
			}
			des += tmp;
		}
		return des;
	}

	//下载多媒体文件
	public static String downloadMedia(String mediaId,String savePath,String returnPath) {
		String accessToken = getWeChatAccessToken();
		//校验文件夹是否存在,不存在则创建
		checkExist(savePath);
		String returnUrl = downloadMedia(accessToken,mediaId,savePath,returnPath);
		return returnUrl;
	}
	
	/*
	   * 获取媒体文件
	   * @param accessToken 接口访问凭证
	   * @param media_id 媒体文件id
	   * @param savePath 文件在服务器上的存储路径
	   * */
	  public static String downloadMedia(String accessToken, String mediaId, String savePath,String returnPath) {
	    String filePath = null;
	    
	    // 拼接请求地址
	    String requestUrl = "http://file.api.weixin.qq.com/cgi-bin/media/get?access_token=ACCESS_TOKEN&media_id=MEDIA_ID";
	    requestUrl = requestUrl.replace("ACCESS_TOKEN", accessToken).replace("MEDIA_ID", mediaId);
	
	    try {
	      URL url = new URL(requestUrl);
	      HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	      conn.setDoInput(true);
	      conn.setRequestMethod("GET");

	      if (!savePath.endsWith("\\")) {
	        savePath += "\\";
	      }
	      // 根据内容类型获取扩展名
	      String fileExt = getFileEndWitsh(conn.getHeaderField("Content-Type"));
	      // 将mediaId作为文件名
	      if(!fileExt.equals("error")){
	    	  filePath = savePath + mediaId + fileExt;
	    	  
	    	  BufferedInputStream bis = new BufferedInputStream(conn.getInputStream());
		      FileOutputStream fos = new FileOutputStream(new File(filePath));
		      byte[] buf = new byte[8096];
		      int size = 0;
		      while ((size = bis.read(buf)) != -1)
		        fos.write(buf, 0, size);
		      fos.close();
		      bis.close();
		      filePath = returnPath +  mediaId + fileExt;
	      }else{
	    	  filePath = null;
	      }
	     

	      conn.disconnect();
	      //String info = String.format("下载媒体文件成功，filePath=" + filePath);
	      //System.out.println(info);
	     
	      
	    } catch (Exception e) {
	      filePath = null;
		//String error = String.format("下载媒体文件失败：%s", e);
	    //  System.out.println(error);
	    }
	    
	    
	    return filePath;
	
	  }
	  
	  public static String getFileEndWitsh(String end){
		  if(end.equals("image/jpeg")){
			  return ".jpg";
		  }else{
			  return "error";
		  }
	  }
	  
	  
	  //判断文件夹是否存在不存在则创建
	  public static void checkExist(String filepath){
		  try {
			  File file=new File(filepath);
		      if (file.exists()) {//判断文件目录的存在
		         // System.out.println("文件夹存在！");
		       
		      }else {
		         // System.out.println("文件夹不存在！");
		          //File file2=new File(file.getParent()); 父元素节点
		          File file2=new File(filepath);
		          file2.mkdirs();
		         // System.out.println("创建文件夹成功！");
		      }
		} catch (Exception e) {
			// TODO: handle exception
		}
	    
	   }

}