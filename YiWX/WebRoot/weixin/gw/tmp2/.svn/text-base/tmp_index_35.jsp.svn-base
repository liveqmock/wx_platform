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
<div id="page" style="padding-bottom:2px;">

	
	
<style>
#mainmenu .icon {
 	-webkit-background-size:25px auto;
    -o-background-size:25px auto;
}
#mainmenu{
	background: none;
	border: none;
}
#mainmenu ul{
	height: 265px;
	margin-top: 5px;
	position: relative;
	list-style: none;
}
#mainmenu li{
	position: absolute;
}
#mainmenu li a{
	display: block;
	color: #FFF;
	height: 100%;
}
#mainmenu .menu-cont-1{
	position: relative;
}
#mainmenu .menu-cont-1 .menu-1,
#mainmenu .menu-cont-2 .menu-5{
	width: 49.5%;
	height: 130px;
	background-color: #d87570;
	top: 0;
	left: 0;
}
#mainmenu .menu-cont-2 .menu-5{
	background-color: #fa9158;
	left: 50.5%;
}
#mainmenu .menu-cont-1 .menu-1 .img,
#mainmenu .menu-cont-2 .menu-5 .img{
	display: none;
}
#mainmenu .menu-2,
#mainmenu .menu-3,
#mainmenu .menu-4,
#mainmenu .menu-cont-1 .menu-5,
#mainmenu .menu-cont-2 .menu-1{
	width: 24.25%;
	height: 62.5px;
}
#mainmenu .menu-cont-1 .menu-2{
	left: 50.5%;
	top: 0;
}
#mainmenu .menu-cont-1 .menu-3{
	left: 75.75%;
	top: 0;
}
#mainmenu .menu-cont-1 .menu-4{
	left: 50.5%;
	top: 67.5px;
}
#mainmenu .menu-cont-1 .menu-5{
	left: 75.75%;
	top: 67.5px;
}
#mainmenu .menu-cont-2 .menu-1{
	left: 0;
	top: 0;
}
#mainmenu .menu-cont-2 .menu-2{
	left: 25.25%;
	top: 0;
}
#mainmenu .menu-cont-2 .menu-3{
	left: 0;
	top: 67.5px;
}
#mainmenu .menu-cont-2 .menu-4{
	left: 25.25%;
	top: 67.5px;
}
#mainmenu .menu-2 .title,
#mainmenu .menu-3 .title,
#mainmenu .menu-4 .title,
#mainmenu .menu-cont-1 .menu-5 .title,
#mainmenu .menu-cont-2 .menu-1 .title{
	text-align: center;
	font-size: 0.8em;
	margin: 0 auto;
}
#mainmenu .menu-2 .icon,
#mainmenu .menu-3 .icon,
#mainmenu .menu-4 .icon,
#mainmenu .menu-cont-1 .menu-5 .icon,
#mainmenu .menu-cont-2 .menu-1 .icon{
	width: 100%;
	height: 35px;
	display: block;
	margin: 3px auto 3px;
	-webkit-background-size: 18px auto;
	-o-background-size: 18px auto;
}

#mainmenu .menu-2 .summary,#mainmenu .menu-2 .img,
#mainmenu .menu-3 .summary,#mainmenu .menu-3 .img,
#mainmenu .menu-4 .summary,#mainmenu .menu-4 .img,
#mainmenu .menu-cont-1 .menu-5 .summary,#mainmenu .menu-cont-1 .menu-5 .img,
#mainmenu .menu-cont-2 .menu-1 .summary,#mainmenu .menu-cont-2 .menu-1 .img{
	display: none;
}
#mainmenu .menu-cont-1 .menu-2,
#mainmenu .menu-cont-1 .menu-5,
#mainmenu .menu-cont-2 .menu-2,
#mainmenu .menu-cont-2 .menu-3{
	background-color: #b3cfc0;
}
#mainmenu .menu-cont-1 .menu-3,
#mainmenu .menu-cont-1 .menu-4,
#mainmenu .menu-cont-2 .menu-1,
#mainmenu .menu-cont-2 .menu-4{
	background-color: #6f9e98;
}
#mainmenu .menu-6,#mainmenu .menu-7{
	width: 49.5%;
	height: 130px;
	top: 135px;
}
#mainmenu .menu-6 .icon,
#mainmenu .menu-6 .summary,
#mainmenu .menu-7 .icon,
#mainmenu .menu-7 .summary{
	display: none;
}

#mainmenu .menu-6 .img,
#mainmenu .menu-7 .img{
	display: block;
	width: 100%;
	height: 100%;
}
#mainmenu .menu-6 .title,
#mainmenu .menu-7 .title{
	position: absolute;
	width: 100%;
	height: 25px;
	background: rgba(0,0,0,0.6);
	color: white;
	bottom: 0;
	line-height: 25px;
	text-align: center;
}
#mainmenu .menu-7{
	left: 50.5%;
}
#mainmenu .menu-cont-1 .menu-1 .title,
#mainmenu .menu-cont-2 .menu-5 .title{
	line-height: 30px;
	font-size: 1em;
	width: 95%;
	position: absolute;
	left: 5px;
	top: 3px;
}
#mainmenu .menu-cont-1 .menu-1 .summary,
#mainmenu .menu-cont-2 .menu-5 .summary{
	line-height: 16px;
	font-size: 0.7em;
	width: 95%;
	height: 32px;
	overflow: hidden;
	position: absolute;
	left: 5px;
	top: 33px;
}
#mainmenu .menu-cont-1 .menu-1 .icon,
#mainmenu .menu-cont-2 .menu-5 .icon{
	position: absolute;
	right: 3px;
	bottom: 3px;
 	-webkit-background-size:38px auto;
    -o-background-size:38px auto;
    width: 40px;
    height: 55px;
}
#mainmenu .main_icon{
	
}
</style>
<div id="mainmenu" class="fn-clear">
	
	
	<ul class="menu-cont-1">
	<%
		List<ActionViewModel> mainActionEvents = websiteViewModel.getMains();
		if(mainActionEvents == null) mainActionEvents = new ArrayList<ActionViewModel>();
	%>
	<%
		int i = 1;
		for(ActionViewModel mainActionEvent : mainActionEvents){
	%>
		<li class="menu-<%=i %>">
			<a href="<%=mainActionEvent.getLink() %>">
				<i class="icon <%=mainActionEvent.getIcon() %>"></i>
				<img class="img" src="http://wxj.weixinjia.net/image/mobile/wsite/style-21/cover1.jpg">
				<p class="title"><%=mainActionEvent.getTitle() %></p>
			</a>
		</li>
	<%
		i++;}
	%>
	
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