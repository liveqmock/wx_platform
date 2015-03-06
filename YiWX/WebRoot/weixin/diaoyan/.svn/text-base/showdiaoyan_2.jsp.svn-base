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
<meta name="viewport"
	content="width=device-width,minimum-scale=1,user-scalable=no,maximum-scale=1,initial-scale=1" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" href="<%=path %>/weixin/diaoyan/css/common.css" />
<link rel="stylesheet" href="<%=path %>/weixin/diaoyan/css/survey.css" />
<script type="text/javascript" src="<%=path %>/weixin/diaoyan/js/zepto.min.js"></script>
<title>微调研</title>
</head>
<style>
body{
	background-color: #ffb100;
}
.inner-cont{
	width: 280px;
	margin: 0 auto;
	padding-top: 20px;
}
.qtitle{
	line-height: 30px;
	font-size: 26px;
	font-weight: bold;
}
.field-contain{
	margin-top: 20px;
}
.input-label{
	font-size: 18px;
	line-height: 32px;
}
.input-text {
	display: block;
	width: 236px;
	height: 32px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	padding: 2px 5px;
	background: -moz-linear-gradient(top, #d2cfd2 0, #ffffff 50%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #d2cfd2), color-stop(50%, #ffffff));
	background: -webkit-linear-gradient(top, #d2cfd2 0, #ffffff 50%);
	background: -o-linear-gradient(top, #d2cfd2 0, #ffffff 50%);
	background: -ms-linear-gradient(top, #d2cfd2 0, #ffffff 50%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d2cfd2', endColorstr='#ffffff', GradientType=0 );
	background: linear-gradient(top, #d2cfd2 0, #ffffff 50%);
	border: 1px solid #c6c3c6;
	border-top-width: 2px;
}
.loading-mask{
	background: rgba(0,0,0,0);
}
.tip{
	color: #FFF;
	font-size: 12px;
}
.next-btn{
	border: 0px;
	margin: 0;
	box-shadow: #666 1px 1px 2px;
	-webkit-box-shadow: #666 1px 1px 2px;
	-moz-box-shadow: #666 1px 1px 2px;
}
.btn-wrapper{
	background: rgba(121,121,121,0.1);
	padding: 5px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	display: inline-block;
	margin-top: 20px;
}
</style>
<body>
	<div class="wrapper">
		<img class="bg" src="<%=path %>/weixin/diaoyan/pic/bg.jpg" />
		<div class="inner-cont">
		<form id="diaoyan">
			<div class="qtitle">请先填写您的资料：</div>
			
			<div class="field-contain">
				<label for="username" class="input-label">请输入您的名称:</label>
				<input type="text" name="researchpersonViewModel.username" id="username" class="input-text" value="">
			</div>
			<div class="field-contain">
				<label for="phone" class="input-label">请输入您的手机号码:</label>
				<input type="text" name="researchpersonViewModel.tel" id="phone" class="input-text" value="">
				<span class="tip">*请务必填写正确，此手机号将作为您以后领奖的依据</span>
			</div>
			<div class="btn-wrapper">
			<!--  	<button id="save-btn" class="next-btn">开始答题</button> 
				<button id="save-btn"  class="btn btn-primary" onclick="addSave();return false;">开始答题</button>
				 -->
				<div id="save-btn" class="next-btn">马上开始</div>
			</div>
		</form>
		</div>

	 	<p class="page-url">
			<a href="<%=path %>" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a>
		</p>

	</div>
	<div id="loading" class="loading-mask">
		<img class="gimg" src="<%=path %>/weixin/diaoyan/pic/ajax-loader.gif">
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$("#save-btn").on("click",function(){
			var $btn = $(this);
			if($btn.hasClass("disabled")) return;
			var $username = $("#username");
			var username = $username.val();
			var $phone = $("#phone");
			var phone = $phone.val();
			if(username == ""){
				alert("请输入用户名!");
				$username.focus();
				return false;
			}
			if(username.length > 20){
				alert("用户名长度不能超过20个字符!");
				$username.focus();
				return false;
			}
			if(phone == ""){
				alert("请输入手机号码!");
				$phone.focus();
				return false;
			}
			var regu =/^[0-9]{8,20}$/;
			var re = new RegExp(regu); 
			if(!re.test(phone)){
				alert("请输入正确的手机号码!");
				$phone.focus();
				return false;
			}
			$btn.addClass("disabled");
			var params = $("form[id=diaoyan]").serialize();
			
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'researchperson!startResearch.action?openid=<%=openid%>&serviceid=<%=serviceid%>', //请求的action路径
				error : function() {//请求失败处理函数);
					alert("访问服务器失败");
				},
				success : function(data) { //请求成功后处理函数
					dealLoginResult(data);
				}
			});
		});
		$(document).on('ajaxBeforeSend', function(e, xhr, options){
			$("#loading").show();
		}).on("ajaxComplete ",function(e, xhr, options){
			$("#loading").hide();
		});
	});

    function dealLoginResult(data){
		var josnStr = eval('(' + data + ')');
		var status = josnStr["status"];
		var content = josnStr["content"];
		if(status=='success'){

			window.location="<%=path%>/"+content+"";
		}else{
			$("#errorMsg").html(content);
		}
	}
	//打开警告 
	function openAlert(data){
		$('#warning-alert').html(data);
		$('#warning-alert').show();
		var t= setTimeout("closeAlert()",2000);
	}
	//关闭警告 
	function closeAlert(){
		$('#warning-alert').hide();
	}
</script>
</html>