<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String serviceid=request.getAttribute("serviceid")==null?request.getParameter("serviceid").toString():request.getAttribute("serviceid").toString();
String userid=request.getAttribute("userid")==null?request.getParameter("userid").toString():request.getAttribute("userid").toString();

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
<script type="text/javascript" src="<%=path %>/weixin/diaoyan/js/zepto.min.js"></script>
<title>微调研</title>
</head>
<style>
.wrapper{
	text-align: center;
}
.bg-suggest{
	width: 270px;
	margin: 20px auto 0px;
}
.title{
	position: absolute;
	top: 30px;
	width: 220px;
	left : 50%;
	margin-left: -110px;
	font-size: 20px;
}
.thanks{
	position: absolute;
	top: 285px;
	font-size: 14px;
	right: 44px;
	color: #666666;
}
.desc-cont{
	position: absolute;
	top: 105px;
	width: 228px;
	left: 50%;
	margin-left: -112px;
	text-align: left;
}
.next-btn{
	color: #FFF;
	position: relative;
	width: 120px;
	display: block;
	margin: -70px auto 0px;
	padding: 8px 22px;
	font-size: 18px;
}
#suggest{
	width: 206px;
	height: 158px;
	border: 1px solid #c4c7cc;
	padding: 8px;
}
.page-url{
	margin-top: 30px;
}
</style>
<body>
	<div class="wrapper">
		<form id="diaoyan">
		<img class="bg" src="<%=path %>/weixin/diaoyan/pic/bg.jpg" />
		<img class="bg-suggest" src="<%=path %>/weixin/diaoyan/pic/suggest_bg.png" />
		<div class="title">有奖微调研</div>
		<div class="thanks">感谢您的参与！</div>
		<div class="desc-cont">
			<textarea id="suggest" name="researchquestionViewModel.answer_desc" rows="9" cols="25" placeholder="有什么建议留给我们？"></textarea>
		</div>
		<div class="next-btn finish">完 成</div>

	 	<p class="page-url">
			<a href="<%=path %>" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a>
		</p>
		</form>
	</div>
	<div id="loading" class="loading-mask">
		<img class="gimg" src="<%=path %>/weixin/diaoyan/pic/ajax-loader.gif">
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$(".finish").on("click",function(){
			var $btn = $(this);
			if($btn.hasClass("disabled")) return;
			if($("#suggest").val() == ''){
				$("#suggest").focus();
			} else{
				$btn.addClass("disabled");
				var params = $("form[id=diaoyan]").serialize();
				$.ajax({
					async : true,
					cache : false,
					type : 'POST',
					data : params,
					url : '<%=path%>/researchperson!adddescs.action?serviceid=<%=serviceid%>&userid=<%=userid%>', //请求的action路径
					error : function() {//请求失败处理函数);
						alert("访问服务器失败");
					},
					success : function(data) { //请求成功后处理函数
						dealLoginResult(data);
					}
				});
			}
		});
		$(document).on('ajaxBeforeSend', function(e, xhr, options){
			$("#loading").show();
		}).on("ajaxComplete ",function(e, xhr, options){
			//$("#loading").hide();
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
</script>
</html>