<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String openid=request.getAttribute("openid").toString();
String serviceid=request.getAttribute("serviceid").toString();
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
						感谢您参与此次调查，本调查目的在于了解产品对消费者购物选择的影响。<br />您对本问卷的所有回答都是以匿名形式进行并且答案得到严格保密，研究结果将是结论性质的报告，不会泄漏您的任何相关信息。<br />每位参与调研的朋友都将获得我们送出的尊贵礼品，同时你还将参加抽奖，有机会获得神秘大奖。
					</div>
					<div class="next-btn" onclick="window.location.href='researchperson!start.action?openid=<%=openid%>&serviceid=<%=serviceid%>'">马上开始</div>
					<!--  
					<span class="btn btn-warning btn-block" onclick="subContact()">马上开始</span>
					-->
				</div>
			</div>
		</div>
		






 	<p class="page-url">
		<a href="<%=path %>" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a>
	</p>




	</div>
	<script type="text/javascript">
	   function subContact(){
	   
		var params = $("form[id=researchperson]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'researchperson!startresearch.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				if(data='success'){
					alert('提交成功');
					location.reload();
					}
			}
		});	
   }
   </script>
</body>
</html>