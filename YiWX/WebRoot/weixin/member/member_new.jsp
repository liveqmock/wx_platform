<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<%
MemberBean memberBean  = (MemberBean)request.getSession().getAttribute("memberBean");
MemberInfoBean memberInfoBean  = (MemberInfoBean)request.getAttribute("memberInfoBean");
%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta name="format-detection" content="telephone=no">
		<title><%=memberBean.getCard_name() %></title>
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/weixin/member/css/wei_dialog.css">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/weixin/member/css/wei_webapp_new.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new_common.js"></script>
	</head>
	<style>
		.card_logo{
			max-height: 70px;
			margin: 8px 0 0 8px;
		}	
		.card_h1{
			position: absolute;
			right: 10px;
			top: 7px;
			text-shadow: 0 1px rgba(255, 255, 255, .5);
			color: #926a44;
			font-size: 11px;
			line-height: 25px;
			text-align: right;
		}	
		.footer{
			width: 100%;
			bottom: 0;
			top: auto;
			background: 0;
			height: 30px;
			line-height: 30px;
			position: relative;
			top: 0;
			display: block;
			}
		.back-top{
			margin: 0;
			padding: 0;
			border: 0;
			outline: 0;
			font-size: 100%;
			font: inherit;
			vertical-align: baseline;
		}	
		.left{
			float: left;
		}
		.right{
			float: right;
		}
		.footer  .back-top a {
			text-decoration:none;
			padding: 5px 10px;
			font-size: 62.5%;
			color: #949494;
		}	
	</style>
	<script>
//loading效果定义
var loading_asset = '<%=path%>/weixin/member/image/loading.gif';
function _hideLoading(){
	window.setTimeout(function(){
		var div = document.getElementById('loading'); 
		if (div) div.style.display = 'none'; },250); }
function _showLoading(){ 
	var div = document.getElementById('loading');
	 if (!div){
		 div = document.createElement('div');
		  div.style.display = 'none'; 
		  div.id = 'loading';
		   div.innerHTML = '<div class="lbk"></div><div class="lcont"><img src="'+loading_asset+'" alt="loading..."/>正在加载...</div>'; 
		   document.querySelector('body').appendChild(div);
		    } ;
		    window.setTimeout(function(){
			    div.style.top = (_q('body').scrollTop+150)+'px'; div.style.display = ''; }, 150); 
		}

var temp = true;
function getNewCard(){
	_showLoading();
	if(temp){
		temp=false;
		var params = $("form[id=member]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : 'memberwx!getNewCard.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				_hideLoading();
				if(data=='success'){
					location.reload();
				}else{
					if(confirm("领取失败,是否重试?")){
						location.reload();
					}
	    		}
			}
		});	
		}
	}

$(document).ready(function(){
	//初始化
	var ImgURL;
	var type = <%=memberBean.getCard_type()%>;
	if(type!='null'&&type==1){
		ImgURL = '<%=memberBean.getCard_type_img()%>';
		$('.sel_type').css('display','none');
		}else{
		ImgURL = '<%=path%>/weixin/member/image/card_bk_<%=memberBean.getCard_template()%>.png';
	}
	
	$('#mskcard').css('background','url('+ImgURL+')');
	$('#mskcard').css('background-size','cover');
})

</script>

	<body id="page_card">
	<form id="member">
		<input type="hidden" name="memberInfoBean.service_id" value="<%=memberBean.getId()%>"/>
		<input type="hidden" name="memberInfoBean.openid" value="<%=memberInfoBean.getOpenid()%>"/>
	</form>
		<div id="loading" style="top: 150px; display: none;">
			<div class="lbk"></div>
			<div class="lcont">
				<img src="<%=path%>/weixin/member/image/loading.gif"
					alt="loading...">
				正在加载...
			</div>
		</div>
		<div id="mappContainer ">
			<div id="page_unopened">
			<div class="inner root" style="height: 373px;" >
				<div class="pdo bk" style="background: url('<%=path%>/weixin/member/image/spacer.gif') no-repeat 0 0; -webkit-background-size: 177px 247px; background-size: 177px 247px;"></div>
				<div class="center cardCtn">
					<div  class="pdo msk1" ></div>
					<div  id="mskcard" class="pdo card " style=" -webkit-background-size: 267px 159px; background-size: 267px 159px;">
						<div class="sel_type" style="height: 80px;"><img src="<%=memberBean.getCard_logo()%>" class="card_logo"></div>
						<div><h1 id="card_name_yulan" class="card_h1 sel_type" style="color: <%=memberBean.getCard_color_name() %>; text-shadow: 0 1px #e2ded2;"><%=memberBean.getCard_name() %></h1></div>
					</div>
				</div>
				<ul>
					<li >
						<%=memberBean.getCard_welcome() %>
					</li>
				</ul>
			</div>
			</div>
			
			<div class="footFix getcardBtn" id="footBtn">
				<a onclick="getNewCard()" >领取新会员卡</a>
			</div>
		</div>
	</body>
</html>
