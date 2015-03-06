package com.wechat.api;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONException;

import com.zhike.finals.Constat;
import com.zhike.sql.beans.ActionLinkBean;
import com.zhike.sql.beans.KeywordsBean;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.beans.MaterialBean;
import com.zhike.sql.beans.UserActionBean;
import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.dao.ActionLinkManager;
import com.zhike.sql.services.KeywordsService;
import com.zhike.sql.services.LBSService;
import com.zhike.sql.services.UserActionService;
import com.zhike.sql.services.WxUserService;
import com.zhike.sql.servicesImpl.UserActionServiceImpl;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.ZuoBiaoZhuanHuan;

public class DoWechatReply {

	public void doReply(HttpServletResponse resp, TextBean textBean)
			throws ServletException, IOException {
		UserActionBean userActionBean = new UserActionBean();
		userActionBean.setAppid(textBean.getAppid());
		userActionBean.setWid(textBean.getFromUserName());
		KeywordsService keywordsService = (KeywordsService) ApplicationContextFactory
				.getBean(Constat.KEYWORDSSERVICE);
		KeywordsBean keywordsBean = new KeywordsBean();
		keywordsBean.setWx_app_keyid(textBean.getAppid());
		KeywordsBean replyBean = null;

		ActionLinkBean actionLinkBean = new ActionLinkBean();
		actionLinkBean.setAppid(textBean.getAppid());

		ActionLinkBean linkBean = null;
		List<LBSBean> lbsBeanList = null;
		//事件推送 再根据 Event来判断各种事件  subscribe(关注,SCAN扫描带参数二维码事件) unsubscribe 取消订阅 LOCATION 上报地理位置 CLICK 菜单点击
		if ("event".compareTo(textBean.getMsgType()) == 0) {
			if ("subscribe".compareTo(textBean.getEvent()) == 0) {
				replyBean = keywordsService.selectKeywordForFocus(keywordsBean);
				userActionBean.setEvent("subscribe");
				//
			} else if ("unsubscribe".compareTo(textBean.getEvent()) == 0) {
				//
				userActionBean.setEvent("unsubscribe");
			} else if ("CLICK".compareTo(textBean.getEvent()) == 0) {
				userActionBean.setEvent("CLICK");
				userActionBean.setAction(textBean.getEventKey());

				// 设置事件表的关键词
				actionLinkBean.setKeyword(textBean.getEventKey());
				linkBean = ActionLinkManager
						.selectActionLinkByAppIdAndKeyword(actionLinkBean);
				if (linkBean == null) {
					// 设置关键字的关键词
					keywordsBean.setWx_keyword_content(textBean.getEventKey());
					List<KeywordsBean> replyBeans = keywordsService
							.selectKeywordForKeywordReply(keywordsBean);
					if (replyBeans != null) {

						if (replyBeans.size() == 1) {
							replyBean = replyBeans.get(0);
						} else {
							for (KeywordsBean bean : replyBeans) {
								if (bean.getWx_msg_type() != 1) {
									replyBean = bean;
									break;
								}
							}
						}
					}
				}
			}else if("LOCATION".compareTo(textBean.getEvent()) == 0){
				//上报地理位置
				//得到的是GPS坐标
				LBSBean lbsBean = new LBSBean();
				//1设置LBS属性
				lbsBean.setApp_id(Long.parseLong(textBean.getAppid()));
				lbsBean.setLat(textBean.getLocation_X());//纬度
				lbsBean.setLng(textBean.getLocation_Y());//经度
				//1GPS 转换百度
				lbsBean = ZuoBiaoZhuanHuan.gps_2_google(lbsBean);	
				//2高德坐标 转换 百度坐标
				lbsBean = ZuoBiaoZhuanHuan.google_2_bd(lbsBean);	

//				System.out.println("经纬度："+lbsBean.getLng()+","+lbsBean.getLat());
				WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
				WxUserBean wxUserBean = new WxUserBean();
				wxUserBean.setOpenid(textBean.getFromUserName());
				wxUserBean.setLat(lbsBean.getLat());
				wxUserBean.setLng(lbsBean.getLng());
				wxUserService.updateOneWxUserForLBS(wxUserBean);
				//如果没有用到上报地理位置功能。则什么都不返回
				replyBean = new KeywordsBean();
				replyBean.setWx_msg_reply_text("");
				
				
			}
		} else if("text".compareTo(textBean.getMsgType()) == 0){
			// 关键字
			userActionBean.setEvent("KEYWORD");
			userActionBean.setAction(textBean.getContent());
			// 应用优先
			actionLinkBean.setKeyword(textBean.getContent());
			linkBean = ActionLinkManager
					.selectActionLinkByAppIdAndKeyword(actionLinkBean);
			if (linkBean == null) {
				// 关键词查询
				keywordsBean.setWx_keyword_content(textBean.getContent());

				List<KeywordsBean> replyBeans = keywordsService
						.selectKeywordForKeywordReply(keywordsBean);
				if (replyBeans != null) {

					if (replyBeans.size() == 1) {
						replyBean = replyBeans.get(0);
					} else {
						for (KeywordsBean bean : replyBeans) {
							if (bean.getWx_msg_type() != 1) {
								replyBean = bean;
								break;
							}
						}
					}
				}
			}
		}else if("location".compareTo(textBean.getMsgType()) == 0){
			//接送普通消息
			//得到的是谷歌坐标
			//地理位置消息
			userActionBean.setEvent("LOCATION");
			userActionBean.setAction(textBean.getLabel());			
			//地理位置
			LBSService lbsService = (LBSService) ApplicationContextFactory.getBean(Constat.LBSSERVICE);
			LBSBean lbsBean = new LBSBean();
			//1设置LBS属性
			lbsBean.setApp_id(Long.parseLong(textBean.getAppid()));
			lbsBean.setLat(textBean.getLocation_X());//纬度
			lbsBean.setLng(textBean.getLocation_Y());//经度
	
			
			//设置10公里范围内
			lbsBean.setDistance("10");
			//要多少条最多10条
			lbsBean.setCount(5);
			//2高德坐标 转换 百度坐标
			lbsBean = ZuoBiaoZhuanHuan.google_2_bd(lbsBean);			
			lbsBeanList = lbsService.selectLBSByForDistance(lbsBean);
		

			
		}else if("image".compareTo(textBean.getMsgType()) == 0){
			//图片
			
		}else if("voice".compareTo(textBean.getMsgType()) == 0){
			//声音
			
		}else if("video".compareTo(textBean.getMsgType()) == 0){
			//视频
			
		}else if("link".compareTo(textBean.getMsgType()) == 0){
			//链接
			
		}
		/**
		// 都没有找到
		if (linkBean == null && replyBean == null && lbsBeanList == null) {
			WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
			WxUserBean wxUserBean = new WxUserBean();
			wxUserBean.setAppid(Long.parseLong(textBean.getAppid()));
			wxUserBean.setFromUserName(textBean.getFromUserName());
			wxUserBean.setToUserName(textBean.getToUserName());
			//取消关注 设置isunsubscribe=1。再次关注不用管。直接修改为0
			if(userActionBean.getEvent().equals("unsubscribe")){
				wxUserBean.setIsunsubscribe(1);
			}
			if(wxUserService.updateUnionOneWxUserForUpdatetime(wxUserBean)==0){
				wxUserService.insertUnionOneWxUser(wxUserBean);
			}			
			UserActionServiceImpl.AppendLogUserAction(userActionBean);
			return;
		}
		*/
		WechatReply wechatReply = null;  
		if (linkBean != null) {
			//应用回复
			TextBeanItem textBeanItem = new TextBeanItem();
			textBeanItem.setCreateTime(linkBean.getCreatetime());
			textBeanItem.setTitle(linkBean.getTitle());
			textBeanItem.setDescription(linkBean.getDescs());
			textBeanItem.setPicUrl(linkBean.getImg());
			textBeanItem.setUrl(linkBean.getUrl());
			textBean.getTextBeanItems().add(textBeanItem); 
			wechatReply = new WechatReplyMedia();
		}else if(lbsBeanList!=null){
			//LBS回复
			if(lbsBeanList.size()==1){
				//返回一条图文
				LBSBean lbsBean = lbsBeanList.get(0);
				float distanceTemp = Float.parseFloat(lbsBean.getDistance()) ;
				String distanceResult =null;
				if(distanceTemp<1){
					DecimalFormat df = new DecimalFormat("#");
					distanceResult = df.format(distanceTemp*1000)+"m 【"+lbsBean.getTitle()+"】";

				}else{
					DecimalFormat df = new DecimalFormat("#.00");
					distanceResult = df.format(distanceTemp)+"km 【"+lbsBean.getTitle()+"】";
				}
				TextBeanItem textBeanItem = new TextBeanItem();
				textBeanItem.setCreateTime(String.valueOf(System.currentTimeMillis()/1000));
				textBeanItem.setTitle(distanceResult);
				textBeanItem.setDescription(lbsBean.getDesc_service());
				textBeanItem.setPicUrl(lbsBean.getImg());
				textBeanItem.setUrl(Constat.HOST+"lbsshowmap.action?serviceid="+lbsBean.getId());
				textBean.getTextBeanItems().add(textBeanItem);						
			}else{
				//返回多条图文
					for(int i = 0 ;i<lbsBeanList.size();i++){
						LBSBean lbsBean = lbsBeanList.get(i);
						float distanceTemp = Float.parseFloat(lbsBean.getDistance()) ;
						String distanceResult =null;
						if(distanceTemp<1){
							DecimalFormat df = new DecimalFormat("#");
							distanceResult = df.format(distanceTemp*1000)+"m 【"+lbsBean.getTitle()+"】";

						}else{
							DecimalFormat df = new DecimalFormat("#.00");
							distanceResult = df.format(distanceTemp)+"km 【"+lbsBean.getTitle()+"】";
						}						
						TextBeanItem textBeanItem = new TextBeanItem();
						textBeanItem.setTitle(distanceResult);
						textBeanItem.setPicUrl(lbsBean.getImg());
						textBeanItem.setUrl(Constat.HOST+"lbsshowmap.action?serviceid="+lbsBean.getId());
						textBean.getTextBeanItems().add(textBeanItem);			

					}
					textBean.setCreateTime(String.valueOf(System.currentTimeMillis()/1000));			
			}	
			wechatReply = new WechatReplyMedia();
			//返回距离  XX 米 X.XX千米  getDistance 返回为千米
			//textBean里LABEL中有当前用户的位置说明
		} else {

			// 关键词回复
			if (replyBean.getWx_msg_reply_type() == 0) {
				textBean.setContent(replyBean.getWx_msg_reply_text().replace("&nbsp", " ").replace("<br>", "\n").replace("</div>", "").replace("<div>", "\n"));
				wechatReply = new WechatReplyText();
			}
			// 素材回复{
			else {
				MaterialBean materialBean = null;
				if (replyBean.getMaterialBean() != null) {
					materialBean = replyBean.getMaterialBean();
				}
				wechatReply = new WechatReplyMedia();
				if (materialBean.getWx_type() == 0) {
					TextBeanItem textBeanItem = new TextBeanItem();
					textBeanItem.setCreateTime(materialBean.getWx_createtime());
					textBeanItem.setTitle(materialBean.getWx_title());
					textBeanItem.setDescription(materialBean.getWx_desc());
					textBeanItem.setPicUrl(materialBean.getWx_img());
					if("文章".compareTo(materialBean.getWx_link()) == 0){
						textBeanItem.setUrl(Constat.HOST+"prewArticleInfo.action?maid="+materialBean.getId());
					}
					else{
						textBeanItem.setUrl(materialBean.getWx_template_type());
					}
					textBean.getTextBeanItems().add(textBeanItem);
				} else {

					String titles = materialBean.getWx_title();
					// String descriptions = materialBean.getWx_content();
					String imgs = materialBean.getWx_img();
					String links = materialBean.getWx_link();
					String temps = materialBean.getWx_template_type();
					// String urls = materialBean.getWx_link();
					JSONArray titleArray;
					try {
						titleArray = new JSONArray(titles);
						JSONArray imgArray = new JSONArray(imgs);
						JSONArray urlArray = new JSONArray(links);
						JSONArray tempArray = new JSONArray(temps);
						for (int i = 0; i < titleArray.length(); i++) {
							String title = titleArray.getJSONObject(i).getString("title");
							String img = imgArray.getJSONObject(i).getString("img");
							String url = urlArray.getJSONObject(i).getString("link");
							String temp = tempArray.getJSONObject(i).getString("template_type");
							TextBeanItem textBeanItem = new TextBeanItem();
							textBeanItem.setTitle(title);
							textBeanItem.setPicUrl(img);
							if("文章".compareTo(temp) == 0){
								textBeanItem.setUrl(Constat.HOST+"prewArticleInfo.action?maid="+materialBean.getId()+"&order="+i);
							}
							else{
								textBeanItem.setUrl(url);
							}
							textBean.getTextBeanItems().add(textBeanItem);
						}
						textBean.setCreateTime(materialBean.getWx_createtime());
					} catch (JSONException e) {
						wechatReply = null;
					}
				}
			}
		}
		if (wechatReply != null) {
			resp.setCharacterEncoding("UTF-8");
			resp.getWriter().print(wechatReply.doReplay(textBean));
		}
		/**
		//计算每一个账号下的粉丝  本来要做客服系统的 现在接口给出客服功能了 所以暂时无用
		WxUserService wxUserService  = (WxUserService) ApplicationContextFactory.getBean(Constat.WXUSERSERVICE);
		WxUserBean wxUserBean = new WxUserBean();
		wxUserBean.setAppid(Long.parseLong(textBean.getAppid()));
		wxUserBean.setFromUserName(textBean.getFromUserName());
		wxUserBean.setToUserName(textBean.getToUserName());

		if(wxUserService.updateUnionOneWxUserForUpdatetime(wxUserBean)==0){
			wxUserService.insertUnionOneWxUser(wxUserBean);
		}
		//表示已经回复
		userActionBean.setIsreply(1);
		UserActionServiceImpl.AppendLogUserAction(userActionBean);
		*/
	}


}
