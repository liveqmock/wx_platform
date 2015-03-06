<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,minimum-scale=1,user-scalable=no,maximum-scale=1,initial-scale=1"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<meta name="format-detection" content="telephone=no"/>
<meta name="description" content="微俱聚 微信营销"/>
<link rel="stylesheet" href="<%=path %>/weixin/diaoyan/css/common.css" />
<link rel="stylesheet" href="<%=path %>/weixin/diaoyan/css/survey.css" />
<title>微调研</title>
</head>
<style>
.wrapper{
	text-align: center;
}
.content-w1{
	border: 1px solid #939393;
}
.content-w1,.content-w2,.content{
	background-color: #e4e4e4;
	border-bottom: 1px solid #939393;
}
.content-w1,.content-w2{
	display: inline-block;
	padding: 0px 0px 3px;
}
.content{
	width: 266px;
	margin: 0px auto;
	padding: 0px 0px 10px;
}
.title{
	font-size: 20px;
	padding: 10px 18px 0px;
}
.connect{
	width: 100%;
	display: block;
	margin: 10px 0px;
}
.desc-cont{
	text-align: left;
	padding: 0 18px;
}
.next-btn{
	color: #FFF;
	width: 120px;
	display: block;
	padding: 8px 22px;
	font-size: 16px;
	margin: 20px auto 0px;
}
.page-url{
	margin-top: 30px;
}
</style>
<body>
	<div class="wrapper">
		<img class="bg" src="<%=path %>/weixin/diaoyan/pic/bg.jpg" />
		<div style="height: 25px;"></div>
		<div class="content-w1">
			<div class="content-w2">
				<div class="content">
					<div class="title">微调研</div>
					<img class="connect" src="<%=path %>/weixin/diaoyan/pic/connect.png" />
					<div class="desc-cont">
						尊敬的用户：<br />感谢您的耐心参与，您的选择，将对我们起到重要的指导作用，我们在此向您表示诚挚的谢意。<br /><br />祝您生活愉快。
					</div>
				</div>
			</div>
		</div>

 	<p class="page-url">
		<a href="<%=path %>" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a>
	</p>




	</div>
</body>
</html>