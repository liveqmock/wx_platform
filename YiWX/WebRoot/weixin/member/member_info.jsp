<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.WxUserBean"%>
<%@page import="com.zhike.finals.Constat"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html >
	<head>
	<%
	MemberBean memberBean  = (MemberBean)request.getSession().getAttribute("memberBean");
	WxUserBean wxUserBean  = (WxUserBean)request.getSession().getAttribute(Constat.LOGIN_WXSESSION);
	%>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta name="format-detection" content="telephone=no">
		<title><%=memberBean.getCard_name() %></title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_dialog.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_webapp_new.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new_common.js"></script>
	</head>
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


</script>
<style>
.yue{
	background: url('<%=path%>/weixin/member/image/icon_balance.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.jifen{
	background: url('<%=path%>/weixin/member/image/icon_score.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.jifen{
	background: url('<%=path%>/weixin/member/image/icon_score.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.tongzhi{
	background: url('<%=path%>/weixin/member/image/icon_power2.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.dizhi{
	background: url('<%=path%>/weixin/member/image/address.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.hire-me{
	background: url('<%=path%>/weixin/member/image/hire-me.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.pen{
	background: url('<%=path%>/weixin/member/image/pen.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.home{
	background: url('<%=path%>/weixin/member/image/home.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.payment-card{
	background: url('<%=path%>/weixin/member/image/payment-card.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.bestseller{
	background: url('<%=path%>/weixin/member/image/bestseller.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.attibutes{
	background: url('<%=path%>/weixin/member/image/attibutes.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.ok{
	background-color: #1CC200;
	-webkit-border-radius: 20px;
	border-radius: 20px;
	color: #FFF;
	font-size: 12px;
	line-height: 12px;
	margin-right: 20px;
	padding: 4px 8px;
	position: inherit;
	text-shadow: 0 0 #FFFFFF;
	font-style: normal;
	float: right;
	}
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
.round_photo{
    width:110px;
    height:110px;
    border:4px solid #ddddde;
    -moz-border-radius: 59px;
    -webkit-border-radius: 59px;
    border-radius:59px;
    behavior:url(PIE.htc);
    top:50px;
    left:20px;
}
.frm_input{
border-radius: 4px;
font-family: inherit;
font-size: 100%;
background-color: #fff;
border: 1px solid #ccc;
padding: 4px 6px;
}
</style>	

	<body id="page_card" style="background: url('<%=path%>/weixin/member/image/bk_repeat1_1.jpg');">
		<div id="loading" style="top: 243px; display: none;">
			<div class="lbk"></div>
			<div class="lcont">
				<img src="<%=path%>/weixin/member/image/loading.gif" alt="loading...">
				正在加载...
			</div>
		</div>
		<div id="mappContainer">
			<div class="inner root" style="height: 100%;text-align: center;">
				<div>
				<img class="round_photo" src="<%=wxUserBean.getHeadimgurl() %>"/>
				<p style="margin: 15px;font-weight: bold;"><%=wxUserBean.getNickname() %></p>
				</div>
				<ul class="round" id="privates">
					<li class="round home">
						<article>
						<a class="oneline close balance"   >
							<p>
								<%=wxUserBean.getCountry() %> <%=wxUserBean.getProvince() %> <%=wxUserBean.getCity() %>
							</p> 
						</a>
						</article>							
						<div  style="display:none;" id="div_1">
							<ul>
								<li>
								</li>
							</ul>
						</div>
					</li>
					<li class="round attibutes" onclick="go_history()">
						<article>
						<a class="oneline close balance"   >
							<p>
								会员卡明细
							</p> 
						</a>
						</article>	
						<div  style="display:none;" id="div_1">
							<ul>
								<li>
								</li>
							</ul>
						</div>												
					</li>					
				</ul>
			</div>
			<div class="footer">
				<span class="back-top left"> 
				<a href="http://www.vxinfeng.com">本页面由微信封 vxinfeng.com支持</a>
				 </span>
			</div>			
		</div>
		<form id="member">
		</form>
	</body>
	<script type="text/javascript">
	
	function go_history(){
		window.location = "<%=path %>/memberwx!goHistory.action";
		}
	</script>
</html>