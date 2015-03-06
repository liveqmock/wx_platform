<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
<%@page import="com.zhike.sql.beans.GuaguakaInfoBean"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 

    <title>大转盘</title>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="<%=path%>/js/service/wScratchPad.js"></script>
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" type="text/css"></link>  
    <link rel="stylesheet" href="<%=path%>/css/service/fl.normal.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/service/skin.orange.css" type="text/css"></link></head>
    <link rel="Stylesheet" type="text/css" href="<%=path%>/service/guaguaka.css" />
	
	<style>
	.fontRed{color: red;}
	.black_wrap {
	position: fixed;
	right: 0;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border-top: 1px solid #848484;
	background: rgba(0, 0, 0, 0.5);
	text-align: center;
	}
	.black_wrap_img {
	position: fixed;
	right: 0;
	width: 50%;
	}
	
</style>
</head>
<body>
		<div class="main">
		<form id="info">
			<div class="content">
				<section class="turntable-lottery">
				<div style="height: 20px;">
				</div>
					<div class="cover" style="height: 320px;">
						<div id="outer-cont">
							<div id="outer">
								<img id="back_img" src="<%=path%>/img/service/dazhuanpan_pan5.png" />
							</div>
						</div>
						<div id="inner-cont">
							<div id="inner">
								<img
									src="<%=path%>/img/service/dazhuanpan_zhizhen.png" id="lotteryBtn"/>
							</div>
						</div>
					</div>
					<div class="content">
						<div class="title">
							其他说明：
						</div>
						<p class="desc">
							请点击右上角查看公众号,从公众号触发活动
						</p>
					</div>
				<div style="height: 20px;">
				</div>

				</section>
			</div>
			</form>
			<footer class="footer">
			<section class="f-content center">
			<span class="back-top left"> <a
				href="http://www.vxinfeng.com">本页面由微信封 vxinfeng.com支持</a> </span>
			<span class="back-top right"> <a class="ml10 fl_report"
				data-url="http://fl.act.qq.com/report/report/reason">举报</a> </span>
			</section>
			</footer>
		</div>	
	<div class="black_wrap"><img class="black_wrap_img" src="<%=path%>/img/service/share.png"></img></div>
</body>
</html>