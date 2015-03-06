package com.zhike.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.NoSuchAlgorithmException;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

import com.zhike.sql.beans.WxUserBean;


import weibo4j.org.json.JSONObject;


public class GetUrl {

	
	
	/**
	 * 获得ACCESS_TOKEN
	* @Title: getAccess_token
	* @Description: 获得ACCESS_TOKEN
	* @param @return    设定文件
	* @return String    返回类型
	* @throws
	 */
	public static WxUserBean getAccess_token(String url){  
		 
		WxUserBean wxUserBean = new WxUserBean();
	     try {
	    	 
				// 创建SSLContext对象，并使用我们指定的信任管理器初始化
				TrustManager[] tm = { new MyX509TrustManager() };
				SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
				sslContext.init(null, tm, new java.security.SecureRandom());
				// 从上述SSLContext对象中得到SSLSocketFactory对象
				SSLSocketFactory ssf = sslContext.getSocketFactory();
				
				URL urlGet = new URL(url);
	            HttpsURLConnection http =   (HttpsURLConnection) urlGet.openConnection();    
			    http.setSSLSocketFactory(ssf);
			   
	           
	             
	            http.setRequestMethod("GET");      //必须是get方式请求    
	            http.setRequestProperty("Content-Type","application/x-www-form-urlencoded");    
	            http.setDoOutput(true);        
	            http.setDoInput(true);
	            System.setProperty("sun.net.client.defaultConnectTimeout", "30000");//连接超时30秒
	            System.setProperty("sun.net.client.defaultReadTimeout", "30000"); //读取超时30秒

	            http.connect();
	         
	            InputStream is =http.getInputStream();
	            int size =is.available();
	            byte[] jsonBytes =new byte[size];
	            is.read(jsonBytes);
	            String message=new String(jsonBytes,"UTF-8");
	             
	            JSONObject demoJson = new JSONObject(message);
	         
	            wxUserBean.setOpenid(demoJson.getString("openid"));
	            wxUserBean.setAccess_token(demoJson.getString("access_token"));
	            wxUserBean.setRefresh_token(demoJson.getString("refresh_token"));
	            wxUserBean.setScope(demoJson.getString("scope"));

	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	       return wxUserBean;
	    }

	
	public static WxUserBean getUserInfo(WxUserBean wxUserBean){  
		 
		String url = "https://api.weixin.qq.com/sns/userinfo?access_token="+wxUserBean.getAccess_token()+"&openid="+wxUserBean.getOpenid()+"&lang=zh_CN";
		
	     try {
	    	 
				// 创建SSLContext对象，并使用我们指定的信任管理器初始化
				TrustManager[] tm = { new MyX509TrustManager() };
				SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
				sslContext.init(null, tm, new java.security.SecureRandom());
				// 从上述SSLContext对象中得到SSLSocketFactory对象
				SSLSocketFactory ssf = sslContext.getSocketFactory();
				
				URL urlGet = new URL(url);
	            HttpsURLConnection http =   (HttpsURLConnection) urlGet.openConnection();    
			    http.setSSLSocketFactory(ssf);
			   
	           
	             
	            http.setRequestMethod("GET");      //必须是get方式请求    
	            http.setRequestProperty("Content-Type","application/x-www-form-urlencoded");    
	            http.setDoOutput(true);        
	            http.setDoInput(true);
	            System.setProperty("sun.net.client.defaultConnectTimeout", "30000");//连接超时30秒
	            System.setProperty("sun.net.client.defaultReadTimeout", "30000"); //读取超时30秒

	            http.connect();
	         
	            InputStream is =http.getInputStream();
	            int size =is.available();
	            byte[] jsonBytes =new byte[size];
	            is.read(jsonBytes);
	            String message=new String(jsonBytes,"UTF-8");
	             
	            JSONObject demoJson = new JSONObject(message);
	            wxUserBean.setNickname(demoJson.getString("nickname")); 
	            wxUserBean.setSex(demoJson.getString("sex")) ; 
	            wxUserBean.setHeadimgurl(demoJson.getString("headimgurl"));
	            wxUserBean.setLanguage(demoJson.getString("language"));
	            
	            wxUserBean.setCountry(demoJson.getString("country"));
	            wxUserBean.setProvince(demoJson.getString("province"));
	            wxUserBean.setCity(demoJson.getString("city"));
	           
	            

	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	       return wxUserBean;
	    }
	
	/**
	 * @throws Exception 
	 * 创建Menu
	* @Title: createMenu
	* @Description: 创建Menu
	* @param @return
	* @param @throws IOException    设定文件
	* @return int    返回类型
	* @throws
	 */
    public static String createMenu() throws Exception {
    	 //String menu = "{\"button\":[{\"name\":\"已上线功能\",\"sub_button\":[{\"type\":\"view\",\"name\":\"看福利\",\"url\":\"http://115313938qq.vicp.cc/weiXin/\"},{\"type\":\"click\",\"name\":\"送话费\",\"key\":\"huodong\"},{\"type\":\"click\",\"name\":\"我要投稿\",\"key\":\"tougao\"}]},{\"name\":\"玩命开发中\",\"sub_button\":[{\"type\":\"view\",\"name\":\"第一个获奖的人\",\"url\":\"http://www.baidu.com\"},{\"type\":\"click\",\"name\":\"附近的人\",\"key\":\"fujinderen\"},{\"type\":\"click\",\"name\":\"邮件订阅\",\"key\":\"dingyue\"}]}]}";
    	//String menu = "{\"button\":[{\"type\":\"view\",\"name\":\"商城测试\",\"url\":\"http://shop5.4gmy.com/mobile/\"},{\"name\":\"已上线功能\",\"sub_button\":[{\"type\":\"view\",\"name\":\"看福利\",\"url\":\"http://115313938qq.vicp.cc/weiXin/\"},{\"type\":\"click\",\"name\":\"送话费\",\"key\":\"huodong\"},{\"type\":\"click\",\"name\":\"我要投稿\",\"key\":\"tougao\"}]},{\"name\":\"玩命开发中\",\"sub_button\":[{\"type\":\"view\",\"name\":\"第一个获奖的人\",\"url\":\"http://www.baidu.com\"},{\"type\":\"click\",\"name\":\"附近的人\",\"key\":\"fujinderen\"},{\"type\":\"click\",\"name\":\"邮件订阅\",\"key\":\"dingyue\"}]}]}";
    	 String menu = "{\"button\":[{\"type\":\"view\",\"name\":\"交电费\",\"url\":\"http://shop5.4gmy.com/mobile/\"}," +
    	 		"{\"name\":\"自助服务\",\"sub_button\":[{\"type\":\"click\",\"name\":\"短信电量提醒\",\"key\":\"dingyue\"},{\"type\":\"click\",\"name\":\"故障申报\",\"key\":\"wangqi\"},{\"type\":\"click\",\"name\":\"余额查询\",\"key\":\"huodong\"},{\"type\":\"click\",\"name\":\"缴费记录\",\"key\":\"tougao\"},{\"type\":\"click\",\"name\":\"用电记录\",\"key\":\"tougao\"}]}," +
    	 		"{\"name\":\"业务资讯\",\"sub_button\":[{\"type\":\"click\",\"name\":\"停电通知\",\"key\":\"fujinderen\"},{\"type\":\"click\",\"name\":\"用电知识\",\"key\":\"weiyoutougao\"},{\"type\":\"click\",\"name\":\"我的用电排名\",\"key\":\"weiyoutougao\"}]}]}";
    	
    	
//    	String menu = "{\"button\":[{\"type\":\"view\",\"name\":\"看福利\",\"url\":\"http://www.jinwanergansha.com/weiXin/beautyRank.action\"},{\"name\":\"已上线功能\",\"sub_button\":[{\"type\":\"click\",\"name\":\"获得订阅福利资格\",\"key\":\"dingyue\"},{\"type\":\"click\",\"name\":\"分享送话费\",\"key\":\"huodong\"},{\"type\":\"click\",\"name\":\"我要投稿\",\"key\":\"tougao\"}]}," +
//    			"{\"name\":\"套图节选\",\"sub_button\":[" +
//    			"{\"type\":\"click\",\"name\":\"查看无删节版套图\",\"key\":\"taotu\"}," +
//    			"{\"type\":\"view\",\"name\":\"@模特潘娇娇\",\"url\":\"http://e.weibo.com/mediaprofile/article/detail?uid=2493641741&aid=9776489\"}," +
//    			"{\"type\":\"view\",\"name\":\"@模特童吻熙\",\"url\":\"http://e.weibo.com/mediaprofile/article/detail?uid=2493641741&aid=9777482\"}," +
//    			"{\"type\":\"view\",\"name\":\"@苏可可\",\"url\":\"http://e.weibo.com/mediaprofile/article/detail?uid=2493641741&aid=9777506\"}," +
//    			"{\"type\":\"view\",\"name\":\"@赵惟依\",\"url\":\"http://e.weibo.com/mediaprofile/article/detail?uid=2493641741&aid=9777612\"}," +
//    			"]}]}";
       
    	
    	//此处改为自己想要的结构体，替换即可
        String access_token= "";
        	//"YKd-L3Brl9dI1aemx5FXwwtZZPauY0G4WD12qF3TG_HcLDMWFibrtMa7EV3TcJ12MMtEBmvjUv7AjvGJ1P5D96n_UpJSMXUwxw2lctVKOI3iGUutPAsv3m3Ttp5thyGvngJtxcrQA2iTzt7QJVpoxg";//getAccess_token();

        String action = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token="+access_token;
        try {
			// 创建SSLContext对象，并使用我们指定的信任管理器初始化
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
			sslContext.init(null, tm, new java.security.SecureRandom());
			// 从上述SSLContext对象中得到SSLSocketFactory对象
			SSLSocketFactory ssf = sslContext.getSocketFactory();
			
           URL url = new URL(action);
           HttpsURLConnection http =   (HttpsURLConnection) url.openConnection();    
		   http.setSSLSocketFactory(ssf);
			
           http.setRequestMethod("POST");        
           http.setRequestProperty("Content-Type","application/x-www-form-urlencoded");    
           http.setDoOutput(true);        
           http.setDoInput(true);
           System.setProperty("sun.net.client.defaultConnectTimeout", "30000");//连接超时30秒
           System.setProperty("sun.net.client.defaultReadTimeout", "30000"); //读取超时30秒

           http.connect();
           OutputStream os= http.getOutputStream();    
           os.write(menu.getBytes("UTF-8"));//传入参数    
           os.flush();
           os.close();
        
           InputStream is =http.getInputStream();
           int size =is.available();
           byte[] jsonBytes =new byte[size];
           is.read(jsonBytes);
           String message=new String(jsonBytes,"UTF-8");
           return "返回信息"+message;
           } catch (MalformedURLException e) {
               e.printStackTrace();
           } catch (IOException e) {
               e.printStackTrace();
           }    
        return "createMenu 失败";
   }
    
    /**
     * @throws Exception 
     * @throws NoSuchAlgorithmException 
     * 删除当前Menu
    * @Title: deleteMenu
    * @Description: 删除当前Menu
    * @param @return    设定文件
    * @return String    返回类型
    * @throws
     */
   public static String deleteMenu() throws NoSuchAlgorithmException, Exception
   {
       String access_token= "ETEpDLIkw-R12USD_JLm6E9KirAsnT1Y9bwsWz4lK0Yt5koN9001zPRhyZs95lW60hBkeLWBUDBTA2dzF4NB8uFBIjILSnMeWGAP5RJeXwaddVyKmbEq7gop0K9C7DNGfHtGcuUKIx7JkzP0DJQgaw";
       String action = "https://api.weixin.qq.com/cgi-bin/menu/delete? access_token="+access_token;
       try {
			// 创建SSLContext对象，并使用我们指定的信任管理器初始化
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
			sslContext.init(null, tm, new java.security.SecureRandom());
			// 从上述SSLContext对象中得到SSLSocketFactory对象
			SSLSocketFactory ssf = sslContext.getSocketFactory();
			
          URL url = new URL(action);
          HttpsURLConnection http =   (HttpsURLConnection) url.openConnection();    
		   http.setSSLSocketFactory(ssf);
           
          http.setRequestMethod("GET");        
          http.setRequestProperty("Content-Type","application/x-www-form-urlencoded");    
          http.setDoOutput(true);        
          http.setDoInput(true);
          System.setProperty("sun.net.client.defaultConnectTimeout", "30000");//连接超时30秒
          System.setProperty("sun.net.client.defaultReadTimeout", "30000"); //读取超时30秒

          http.connect();
          OutputStream os= http.getOutputStream();    
          os.flush();
          os.close();
       
          InputStream is =http.getInputStream();
          int size =is.available();
          byte[] jsonBytes =new byte[size];
          is.read(jsonBytes);
          String message=new String(jsonBytes,"UTF-8");
          return "deleteMenu返回信息:"+message;
          } catch (MalformedURLException e) {
              e.printStackTrace();
          } catch (IOException e) {
              e.printStackTrace();
          }
       return "deleteMenu 失败";   
   }
   
	public static void main(String[] args) throws Exception {
		
	}

		
}