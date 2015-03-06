<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta name="Keywords" content="微信封、微信营销、微信代运营、微信定制开发、微信托管、微网站、微商城、微营销" />
<meta name="Description" content="微信封，国内最大的微信公众智能服务平台，微信封八大微体系：微菜单、微官网、微会员、微活动、微商城、微推送、微服务、微统计，企业微营销必备。" />
<!-- Mobile Devices Support @begin -->
<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta content="no-cache" http-equiv="pragma">
<meta content="0" http-equiv="expires">
<meta content="telephone=no, address=no" name="format-detection">
<meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/common.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/site.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/color3.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media.css" media="all">
<script type="text/javascript" src="<%=path%>/weixin/gw/js/zepto.js"></script>
<title>文章列表</title>
</head>
<body style="background: #f8f8f8;font-family: Microsoft YaHei,Helvitica,Verdana,Tohoma,Arial,san-serif;">
<div id="page">
	<div id="header" class="bgcolor">
		<a id="return" class="left" href="javascript:history.go(-1);"></a>
		<span class="title">我的微官网</span>
		<!-- <a id="menu" href="javascript:;" class="right"><img src="<%=path %>/image/mobile/wsite/list.png"></a>
		<ul id="menulist" class="dropdown-menu right-menu radius">
				
			<li>
				<a class="menu-item" title="" href="http://www.weijuju.com/mobile/wsite/example.html">
					<i class="icon icon-2"></i>产品
				</a>
			</li>
				
			<li>
				<a class="menu-item" title="" href="http://www.weijuju.com/mobile/wsite/example.html">
					<i class="icon icon-3"></i>服务
				</a>
			</li>
				
			<li>
				<a class="menu-item" title="" href="http://www.weijuju.com/mobile/wsite/example.html">
					<i class="icon icon-5"></i>联系我们
				</a>
			</li>
				
			<li>
				<a class="menu-item" title="" href="http://www.weijuju.com/mobile/wsite/example.html">
					<i class="icon icon-1"></i>新闻
				</a>
			</li>
				
			<li>
				<a class="menu-item" title="" href="list.jsp?sid=24897&amp;nid=sitetree_8&amp;talker=3edcvfr4#mp.weixin.qq.com">
					<i class="icon icon-4"></i>期刊
				</a>
			</li>
		</ul>-->
	</div>
	
	<div id="container" style="margin-top: 6px;">
		<%
			MaterialBean bean = (MaterialBean) request.getAttribute(Constat.ARTICLE);
		%>
		<div class="appmsg multi">
			<div class="appmsg_content">
		<%		String titles = bean.getWx_title();
				JSONArray titleArray = new JSONArray(titles);
				String imgs = bean.getWx_img();
				JSONArray imgsArray = new JSONArray(imgs);
				for(int j = 0 ; j< titleArray.length() ; j++){
					String title = titleArray.getJSONObject(j).getString("title");
					String img = imgsArray.getJSONObject(j).getString("img");
					if(title == null) continue;
		%>
			<div class="appmsg_item" onclick="redirectURL(<%=j%>)">
				<img src="<%=img %>" class="appmsg_thumb" style="max-width: 80px;max-height: 45px;height: auto;"><h4 class="appmsg_title" style="font-weight:bold"><%=title%></h4>
			</div>
		<%}
		%>
			</div>
		</div>
	</div>
	<article id="footer">
		<p class="page-url">
			<a href="http://www.vxinfeng.com" target="_blank" class="page-url-link">此功能由“微信封(vxinfeng)”平台提供</a>
		</p>
	</article>
</div>

	<!--<section>
		<div class="plug-div">
			<div id="plug-phone" class="plug-phone">
				<input type="checkbox" id="plug-btn" class="plug-menu" style="background-color:#B70000;">
					  %
						ListActionViewModel navActionEvents = websiteViewModel.getNavs();
						if(navActionEvents == null) navActionEvents = new ArrayList<ActionViewModel>();
					%>
					%
						for(ActionViewModel navActionEvent : navActionEvents){
					%>
				<div style="background-color:#B70000; " class="">
				</div>
					%
						}
					%>
			</div>
		</div>
	</section>-->
	<script>
		window.addEventListener("DOMContentLoaded", function(){
			btn = document.getElementById("plug-btn");
			btn.onclick = function(){
				var divs = document.getElementById("plug-phone").querySelectorAll("div");
				var className = this.checked?"on":"";
				for(i = 0;i<divs.length; i++){
					divs[i].className = className;
				}
				document.getElementById("plug-wrap").style.display = "on" == className? "block":"none";
			}
		}, false);
	</script>
</body>
<script type="text/javascript">
	$(function(){
		$("#menu").click(function(){
			var $menulist = $("#menulist");
			$menulist.toggleClass("show");
			if($("#container").height() < $menulist.height()){
				$("#container").height($menulist.height());	
			}
		});
	});

	function redirectURL(order){
		var url = "<%=path%>/prewArticleInfo.action?maid=<%=bean.getId()%>&order="+order;
		window.location.href = url;
		
		}
</script>
</html>