package com.zhike.utils;

import com.zhike.finals.Constat;
import com.zhike.sql.beans.ActionLinkBean;
import com.zhike.sql.beans.CheckLoginBean;
import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.LiuyingBean;
import com.zhike.sql.beans.MemberBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.OrderBean;
import com.zhike.sql.beans.PhotobasicBean;
import com.zhike.sql.beans.QuanJingBean;
import com.zhike.sql.beans.ResearchbasicBean;
import com.zhike.viewmodels.QuanJingViewModel;


public class AnythingToActionLink {

//	linkTypes.add(new ActionLinkTypes(0,"微官网",0));
//	linkTypes.add(new ActionLinkTypes(1,"微留言",0));
//	linkTypes.add(new ActionLinkTypes(2,"微会员",1));
//	linkTypes.add(new ActionLinkTypes(3,"微全景",1));
//	linkTypes.add(new ActionLinkTypes(4,"微相册",1));
//	linkTypes.add(new ActionLinkTypes(5,"微预约",1));
//	linkTypes.add(new ActionLinkTypes(6,"大转盘",1));
//	linkTypes.add(new ActionLinkTypes(7,"刮刮卡",1));
//	linkTypes.add(new ActionLinkTypes(8,"微调研",1));
//	linkTypes.add(new ActionLinkTypes(9,"打卡",1));
//	linkTypes.add(new ActionLinkTypes(10,"留影墙",1));
	
	public ActionLinkBean  getActionLink() {
		ActionLinkBean ak = new ActionLinkBean();
//		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
//		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
//		ak.setKeyword(keyword);
//		ak.setTitle(title);
//		ak.setDescs(descs);
//		ak.setImg(img);
//		ak.setUrl(url);
//		ak.setServiceid(memberBean.getId());
//		ak.setType(type);
		return ak;
	}

	public static ActionLinkBean getActionLink(MessagebasicBean messagebasicBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(messagebasicBean.getKeywords());
		ak.setTitle(messagebasicBean.getTitle());
		ak.setDescs(messagebasicBean.getDescs());
		ak.setImg(messagebasicBean.getImg());
		ak.setUrl(Constat.HOST + "showMessages.action?serviceid="+messagebasicBean.getId());
		ak.setServiceid(Long.parseLong(messagebasicBean.getId()));
		ak.setType(1);
		return ak;
	}
	
	public static ActionLinkBean getActionLink(MemberBean memberBean) {
		
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(memberBean.getKeywords());
		ak.setTitle(memberBean.getTitle());
		ak.setDescs(memberBean.getDesc_service());
		ak.setImg(memberBean.getImg());
		ak.setUrl(Constat.HOST + "memberwx.action?serviceid="+memberBean.getId());
		ak.setServiceid(memberBean.getId());
		ak.setType(2);
		return ak;
	}
	
	public static ActionLinkBean getActionLink(QuanJingBean quanjingBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(quanjingBean.getKeywords());
		ak.setTitle(quanjingBean.getTitle());
		ak.setDescs(quanjingBean.getText());
		ak.setImg(quanjingBean.getImg());
		ak.setUrl(Constat.HOST + "prequanjing.action?serviceid="+quanjingBean.getId());
		ak.setServiceid(Long.parseLong(quanjingBean.getId()));
		ak.setType(3);
		return ak;
	}
	
	public static ActionLinkBean getActionLink(QuanJingViewModel quanjingViewModel) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(quanjingViewModel.getKeywords());
		ak.setTitle(quanjingViewModel.getTitle());
		ak.setDescs(quanjingViewModel.getText());
		ak.setImg(quanjingViewModel.getImg());
		ak.setUrl(Constat.HOST + "prequanjing.action?serviceid="+quanjingViewModel.getId());
		ak.setServiceid(Long.parseLong(quanjingViewModel.getId()));
		ak.setType(3);
		return ak;
	}
	
	public static ActionLinkBean getActionLink(PhotobasicBean photobasicBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(photobasicBean.getKeywords());
		ak.setTitle(photobasicBean.getTitle());
		ak.setDescs(photobasicBean.getDescs());
		ak.setImg(photobasicBean.getImg());
		ak.setUrl(Constat.HOST + "photolist.action?serviceid="+photobasicBean.getId());
		ak.setServiceid(Long.parseLong(photobasicBean.getId()) );
		ak.setType(4);
		return ak;
	}

	public static ActionLinkBean getActionLink(OrderBean orderBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(orderBean.getKeywords());
		ak.setTitle(orderBean.getTitle());
		ak.setDescs(orderBean.getDescs());
		ak.setImg(orderBean.getImg());
		ak.setUrl(Constat.HOST + "orderprew.action?serviceid="+orderBean.getId());
		ak.setServiceid(Long.parseLong(orderBean.getId()));
		ak.setType(5);
		return ak;
	}
	
	public static ActionLinkBean getActionLinkByDazhuanpan(GuaguakaBean guaguakaBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(guaguakaBean.getKeywords());
		ak.setTitle(guaguakaBean.getTitle());
		ak.setDescs(guaguakaBean.getDesc_service());
		ak.setImg(guaguakaBean.getImg());
		ak.setUrl(Constat.HOST + "dazhuanpanwx.action?serviceid="+guaguakaBean.getId());
		ak.setServiceid(guaguakaBean.getId());
		ak.setType(6);
		return ak;
	}
	
	public static ActionLinkBean getActionLinkByGuaguaka(GuaguakaBean guaguakaBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(guaguakaBean.getKeywords());
		ak.setTitle(guaguakaBean.getTitle());
		ak.setDescs(guaguakaBean.getDesc_service());
		ak.setImg(guaguakaBean.getImg());
		ak.setUrl(Constat.HOST + "guaguakawx.action?serviceid="+guaguakaBean.getId());
		ak.setServiceid(guaguakaBean.getId());
		ak.setType(7);
		return ak;
	}
	
	public static ActionLinkBean getActionLink(ResearchbasicBean researchbasicBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(researchbasicBean.getKeywords());
		ak.setTitle(researchbasicBean.getTitle());
		ak.setDescs(researchbasicBean.getDescs());
		ak.setImg(researchbasicBean.getImg());
		ak.setUrl(Constat.HOST + "researchperson.action?serviceid="+researchbasicBean.getId());
		ak.setServiceid(Long.parseLong(researchbasicBean.getId()));
		ak.setType(8);
		return ak;
	}

	public static ActionLinkBean getActionLink(ClockBean clockBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(clockBean.getKeywords());
		ak.setTitle(clockBean.getTitle());
		ak.setDescs(clockBean.getDesc_service());
		ak.setImg(clockBean.getImg());
		ak.setUrl(Constat.HOST + "clockwx.action?serviceid="+clockBean.getId());
		ak.setServiceid(clockBean.getId());
		ak.setType(9);
		return ak;
	}

	public static ActionLinkBean getActionLink(LiuyingBean liuyingBean) {
		ActionLinkBean ak = new ActionLinkBean();
		ak.setUid(String.valueOf(((CheckLoginBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_SESSION)).getId()));
		ak.setAppid((String) RequestScopeFactory.SessionScope().get("APPID"));
		ak.setKeyword(liuyingBean.getKeywords());
		ak.setTitle(liuyingBean.getTitle());
		ak.setDescs(liuyingBean.getDesc_service());
		ak.setImg(liuyingBean.getImg());
		ak.setUrl(Constat.HOST + "liuyingwx.action?serviceid="+liuyingBean.getId());
		ak.setServiceid(liuyingBean.getId());
		ak.setType(10);
		return ak;
	}
	




}
