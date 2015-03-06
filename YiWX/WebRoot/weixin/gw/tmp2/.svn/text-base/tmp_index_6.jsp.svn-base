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
<script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/swipeslide.js"></script>

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
<div class="page" style="padding-bottom:52px;">
	
	<div id="page">
	<style>
	#mainmenu .icon {
	 	-webkit-background-size:22px auto;
	    -o-background-size:22px auto;
	}
	#mainmenu{
		width: 300px;
		margin: 0 auto 5px;
		overflow: hidden;
	}
	#mainmenu .menu-wrap li{
		padding: 0;
		list-style: none;
		position: relative;
		float: left;
		background: rgba(0,0,0,0.5);
		width: 63px;
		height: 63px;
		-webkit-border-radius: 100%;
		border-radius: 100%;
		margin: 0px 6px 12px;
	}
	#mainmenu .menu-wrap li a{
		display: block;
		height: 100%;
	}
	#mainmenu .menu-wrap li .title{
		line-height: 25px;
		text-align: center;
		width: 56px;
		margin: 0 auto;
		color: #FFF;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		font-size: 0.8em;
		font-size: 12px;
	}
	#mainmenu .menu-wrap li .icon{
		width: 100%;
		height: 25px;
		display: block;
		margin: 8px auto 0px;
	}
	#mainmenu .menu-wrap ul{
		list-style: none;
		margin: 0px;
	}
	
	#mainmenu .menu-wrap ul{
		float: left;
	}
	.mainmenu-cont{
		position: absolute;
		left: 0px;
		background: rgba(255,255,255,0.5);
		width: 100%;
		bottom: 55px;
		padding-top: 8px;
	}
	
	.ui-swipeslide-bullets {
		text-align: center;
		margin: 0 auto;
		width: 100%;
		display: block;
	}
	.ui-swipeslide-bullets li {
		background: #000;
		float: left;
		text-indent: -1000px;
		width: 10px;
		height: 10px;
		border-radius: 10px;
		margin: 0 5px;
	}
	.ui-swipeslide-bullets li.active{
		background: #FFF;
	}
	</style>
	<div class="mainmenu-cont">
		<div id="mainmenu" class="fn-clear ui-swipeslide ui-swipeslide-horizontal">
			<div class="menu-wrap ui-swipeslide-reel" style="width: 600px; -webkit-transform: translate3d(0px, 0px, 0px); -webkit-transition: -webkit-transform 0.4s ease-out; ">
			
			
				<ul class="fn-clear ui-swipeslide-slide" style="width: 300px; ">
				<%
					List<ActionViewModel> mainActionEvents = websiteViewModel.getMains();
					if(mainActionEvents == null) mainActionEvents = new ArrayList<ActionViewModel>();
					for(ActionViewModel mainActionEvent : mainActionEvents){
				%>
					<li>
						<a href="<%=mainActionEvent.getLink() %>">
							<i class="icon <%=mainActionEvent.getIcon() %>"></i>
							<p class="title"><%=mainActionEvent.getTitle() %></p>
						</a>
					</li>
				<%} %>
				</ul>
				
			
			</div>
		<!--<ul class="ui-swipeslide-bullets" style="width: 40px; "><li data-index="0" class="active">1</li><li data-index="1" class="">2</li></ul>-->
		
		</div>
	</div>
	
	<script type="text/javascript">
	
	$(function(){
		 $('#mainmenu').swipeSlide({autoPlay:false,delay:0.4});
		 $(".ui-swipeslide-bullets").width($(".ui-swipeslide-bullets li").size()*50);
	});
	
	</script>
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