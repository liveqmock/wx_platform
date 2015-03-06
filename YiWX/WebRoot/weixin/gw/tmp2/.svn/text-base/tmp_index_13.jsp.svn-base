<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.viewmodels.WebsiteViewModel"%>
<%@page import="com.zhike.viewmodels.ImgViewModel"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.viewmodels.ActionViewModel"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	WebsiteViewModel websiteViewModel = (WebsiteViewModel) request
			.getAttribute(Constat.WEBSITES);
	if (websiteViewModel == null)
		websiteViewModel = new WebsiteViewModel();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/snower.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/common.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/reset.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/home-13.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/menu-3.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/site.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style_new.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/color3.css" media="all"/>
		
		<script type="text/javascript" src="<%=path%>/weixin/gw/js/maivl.js"></script>
		<script type="text/javascript" src="<%=path%>/js/swipe.js"></script>
		<script type="text/javascript" src="<%=path%>/weixin/gw/js/zepto.js"></script>
		
		<title>微信封-微信营销系统</title>
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
        <!-- Mobile Devices Support @end -->
        <link rel="shortcut icon" href="http://stc.weimob.com/img/favicon.ico" />
   
<!-- <link rel="stylesheet" href="http://wxj.weixinjia.net/css/mobile/common.css?v=20140319" /> -->

<script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/zepto.min.js?v=20140319"></script>

<style>
.bgcolor {
	background-color: rgb(255, 0, 255);
}

.fontcolor {
	color: rgb(255, 0, 255);
}
body {
	-webkit-text-size-adjust: none;
	-webkit-user-select: none;
	margin: 0;
	background: url(<%=websiteViewModel.getBgimg()%>);
	background-size: cover;
}
#mainmenu{
	background: none;
	border: none;
	margin: 10px 0px 0px 5px;
	box-shadow: none;
	border-radius: 0;
}
</style>
</head>
<body>
<header>
    <div class="snower">
	<script type="text/javascript">
	var urls = new Array();
	urls.push('<%=websiteViewModel.getBgani() %>');
	</script>
    <script type="text/javascript" src="<%=path%>/weixin/gw/js/snower.js"></script>
    </div>
</header>
<div id="page" style="padding-bottom:52px;">

	
	<style>
	#mainmenu{
		position: absolute;
		bottom: 55px;
		left: 50%;
		width: 300px;
		margin-left: -150px;
	}
	
	#mainmenu li{
		padding: 0;
		list-style: none;
		position: relative;
		float: left;
		background: rgba(255,255,255,0.3);
		width: 95.5px;
		height: 95.5px;
		margin-bottom: 7px;
	}
	#mainmenu li:nth-child(3n-1){
		margin-right: 6px;
		margin-left: 6px;
	}
	#mainmenu li a{
		display: block;
		width: 100%;
		height: 100%;
	}
	#mainmenu li .title{
		line-height: 25px;
		font-weight: 1em;
		text-align: center;
		width: 95%;
		margin: 3px auto 0px;
		color: #FFF;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		font-size: 12px;
	}
	#mainmenu li .icon{
		width: 100%;
		height: 50px;
		display: block;
		margin: 8px auto 0px;
	 	-webkit-background-size:28px auto;
	    -o-background-size:28px auto;
	}
	</style>
	<div id="mainmenu" class="fn-clear">
		<ul>
			<%
				List<ActionViewModel> mainActionEvents = websiteViewModel.getMains();
				if(mainActionEvents == null) mainActionEvents = new ArrayList<ActionViewModel>();
				for(ActionViewModel mainActionEvent : mainActionEvents){
			%>
			<li>
				<a href="<%=mainActionEvent.getLink() %>">
					<p class="title"><%=mainActionEvent.getTitle() %></p>
					<i class="icon <%=mainActionEvent.getIcon() %>"></i>
				</a>
			</li>
			<%} %>
		
		</ul>
	</div>




        
        
	
	<div id="footer" style="background: rgba(0,0,0,0.3);position: absolute;bottom: 0px;">Copyright © 2012 - 2013 微信封<br/><a href="http://wwww.vxinfeng.com" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a></div>
 
	<section>
		<div class="plug-div">
			<div id="plug-phone" class="plug-phone">
				<input type="checkbox" id="plug-btn" class="plug-menu" style="background-color:#B70000;">
					<%
						List<ActionViewModel> navActionEvents = websiteViewModel.getNavs();
						if(navActionEvents == null) navActionEvents = new ArrayList<ActionViewModel>();
					%>
					<%
						for(ActionViewModel navActionEvent : navActionEvents){
					%>
				<div style="background-color:#B70000; " class="">
					<a href="<%=navActionEvent.getLink() %>" class="<%=navActionEvent.getIcon() %> "></a>
				</div>
					<%
						}
					%>
			</div>
		</div>
	</section>
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

<script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/share.js"></script>
</div>
</body>
</html>