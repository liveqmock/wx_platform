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
        <link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/snower.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/common.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/reset.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/home-13.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/menu-3.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/site.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style.css" media="all"/>
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
        <link rel="shortcut icon" href="<%=path %>/img/logo_icon.png" />
<style type="text/css">
body {
	-webkit-text-size-adjust: none;
	-webkit-user-select: none;
	margin: 0;
	background: url(<%=websiteViewModel.getBgimg()%>);
	background-size: cover;
}
</style>
    </head>
    <body onselectstart="return true;" ondragstart="return false;">
        
	
<div class="body" style="padding-bottom:52px;">
	<!--
	幻灯片管理
	-->
	<div style="-webkit-transform:translate3d(0,0,0);">
		<div id="banner_box" class="box_swipe">
			<ul>
				<%
					List<ImgViewModel> imgViewModels = websiteViewModel.getThumbs();
					if (imgViewModels == null)
						imgViewModels = new ArrayList<ImgViewModel>();
				%>
				<%
					for (ImgViewModel imgViewModel : imgViewModels) {
				%>
				<li>
					<a href="<%=imgViewModel.getLink() %>"><img src="<%=imgViewModel.getImg()%>" alt="<%=imgViewModel.getTitle()%>" style="width: 100%;" /></a>
				</li>
				<%
					}
				%>
			</ul>
			<ol>
				<%
					for(int i = 0 ; i < imgViewModels.size() ; i++){
				%>
					<li class="<%=(i == 0 ? "on" : "") %>">i</li>
				<%
					}
				%>
			</ol>
		</div>
	</div>
		<script>
		$(function(){
			new Swipe(document.getElementById('banner_box'), {
				speed:500,
				auto:2000,
				callback: function(){
					var lis = $(this.element).next("ol").children();
					lis.removeClass("on").eq(this.index).addClass("on");
				}
			});
		});
	</script>
<br/>
<%
	if(websiteViewModel.isPhoneVisiable()){
%>
<div class="box-btn bgcolor">
	<a href="tel:<%=websiteViewModel.getPhoneNumber() %>"><i class="icon icon-phone"></i><%=websiteViewModel.getPhoneNumber() %></a>
 </div>
<%
	}
%>


        
<header>
    <div class="snower">
	<script type="text/javascript">
	var urls = new Array();
	urls.push('<%=websiteViewModel.getBgani() %>');
	</script>
    <script type="text/javascript" src="<%=path%>/weixin/gw/js/snower.js"></script>
    </div>
</header>
    <!--
		用户分类管理
	-->
<section>
								<ul class="list_font">
									<%
										List<ActionViewModel> mainActionEvents = websiteViewModel.getMains();
										if(mainActionEvents == null) mainActionEvents = new ArrayList<ActionViewModel>();
									%>
									
									<%
										for(ActionViewModel mainActionEvent : mainActionEvents){
									%>
										<li style="background-color:#ff936d;">
										<a href="<%=mainActionEvent.getLink() %>">
											<div><span class="<%=mainActionEvent.getIcon() %>"></span></div>
							                <div><p><%=mainActionEvent.getTitle() %></p></div>
						                </a>
						            </li>
									<%
										}
									%>
						        </ul>
						    </section>
<div id="footer">Copyright © 2012 - 2013 微信封<br/><a href="http://www.vxinfeng.com" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a></div>
		
<!--
导航菜单后台设置的快捷菜单
-->

<!--
分享前控制
-->
	<script>
		document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
			window.shareData = {
				"imgUrl": "http://img.weimob.com/static/c5/fb/23/image/20131021/20131021175004_50789.png",
				"timeLineLink": "http://www.weimob.com/weisite/home?pid=49119&bid=30675&wechatid=fromUsername&wxref=mp.weixin.qq.com",
				"sendFriendLink": "http://www.weimob.com/weisite/home?pid=49119&bid=30675&wechatid=fromUsername&wxref=mp.weixin.qq.com",
				"weiboLink": "http://www.weimob.com/weisite/home?pid=49119&bid=30675&wechatid=fromUsername&wxref=mp.weixin.qq.com",
				"tTitle": "eqwe11111111",
				"tContent": "12333311111111111111111111111111111111111111111111",
				"fTitle": "eqwe11111111",
				"fContent": "12333311111111111111111111111111111111111111111111",
				"wContent": "12333311111111111111111111111111111111111111111111"
			};

			// 发送给好友
			WeixinJSBridge.on('menu:share:appmessage', function (argv) {
				WeixinJSBridge.invoke('sendAppMessage', {
					"img_url": window.shareData.imgUrl,
					"img_width": "640",
					"img_height": "640",
					"link": window.shareData.sendFriendLink,
					"desc": window.shareData.fContent,
					"title": window.shareData.fTitle
				}, function (res) {
					_report('send_msg', res.err_msg);
				})
			});

			// 分享到朋友圈
			WeixinJSBridge.on('menu:share:timeline', function (argv) {
				WeixinJSBridge.invoke('shareTimeline', {
					"img_url": window.shareData.imgUrl,
					"img_width": "640",
					"img_height": "640",
					"link": window.shareData.timeLineLink,
					"desc": window.shareData.tContent,
					"title": window.shareData.tTitle
				}, function (res) {
					_report('timeline', res.err_msg);
				});
			});

			// 分享到微博
			WeixinJSBridge.on('menu:share:weibo', function (argv) {
				WeixinJSBridge.invoke('shareWeibo', {
					"content": window.shareData.wContent,
					"url": window.shareData.weiboLink
				}, function (res) {
					_report('weibo', res.err_msg);
				});
			});
		}, false)
	</script>
	
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
</div>
	</body>
</html>