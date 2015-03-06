<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>
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
	MemberInfoBean memberInfoBean  = (MemberInfoBean)request.getSession().getAttribute("memberInfoBean");;
	List<LBSBean> lbsBeanList  = (List<LBSBean>)request.getAttribute("lbsBeanList");
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

$(document).ready(function(){
	//	_showLoading();
});

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
.tel{
	background: url('<%=path%>/weixin/member/image/tel2.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
	.addressTitle{
		color: #373B3E;
		font-size: 14px;
		line-height: 32px;
		padding-left: 10px;
		padding-top: 5px;
		text-align: left;
		font-weight: normal;
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
		.card_logo{
			max-height: 70px;
			margin: 8px 0 0 8px;
		}	
</style>	

	<body id="page_card" class="">
		<div id="loading" style="top: 243px; display: none;">
			<div class="lbk"></div>
			<div class="lcont">
				<img src="<%=path%>/weixin/member/image/loading.gif" alt="loading...">
				正在加载...
			</div>
		</div>
		<div id="mappContainer">
			<div class="inner root" style="height:100%;">
				<div id="mskcard" class="card" style="position: relative;background: url('<%=path%>/weixin/member/image/card_bk_<%=memberBean.getCard_template()%>.png') no-repeat 0 0; -webkit-background-size: 267px 159px; background-size: 267px 159px;" >
					<img class="card_logo sel_type" src="<%=memberBean.getCard_logo()%>">
					<h1 class="sel_type" style="color:<%=memberBean.getCard_color_name()%>; text-shadow: 0 1px #e2ded2;">
						<%=memberBean.getCard_name()%>
					</h1>
					<strong class="pdo verify">
					<span style="color:<%=memberBean.getCard_color_number()%>; text-shadow: 0 1px #ebe9e0;">
					<em >会员卡号</em><%=memberInfoBean.getId()%></span> </strong>
				</div>
				<p>
					<span>使用时向服务员出示此卡</span>
				</p>
				<%
				if(lbsBeanList!=null){
					for(int i=0;i<lbsBeanList.size();i++){
						%>
					<h2 class="addressTitle" ><%=lbsBeanList.get(i).getTitle()%></h2>
					<ul class="round" id="publics">	
						<li class="round dizhi" >
							<article>
							<a class="oneline close" href="<%=path%>/lbsshowmap.action?serviceid=<%=lbsBeanList.get(i).getId()%>&appid=<%=lbsBeanList.get(i).getApp_id()%>" >
								<p>
									<%=lbsBeanList.get(i).getAddress() %>
								</p> </a>
							</article>
							<div  style="display:none;">
								<b></b>
								<ul>
									<li>
									</li>
								</ul>
							</div>
						</li>	
						<li class="round tel" >
							<article>
							<a  href="tel:<%=lbsBeanList.get(i).getTel()%>" >
								<p>
									<%=lbsBeanList.get(i).getTel()%>
								</p> </a>
							</article>
							<div  style="display:none;">
								<b></b>
								<ul>
									<li>
									</li>
								</ul>
							</div>
						</li>		
					</ul>					
						<%
					}
				}
				%>
			</div>
			<div class="footer">
				<span class="back-top left"> 
				<a href="http://www.vxinfeng.com">本页面由微信封 vxinfeng.com支持</a>
				 </span>
			</div>			
		</div>
	</body>
	<script type="text/javascript">
	function openMore(id){
		var divName = '#div_'+id;
		var aName = '#a_'+id;
		if($(divName).css('display')=='none'){
			$(divName).attr('style','display:block');
			$(aName).attr('class','oneline');
		}else{
			$(divName).attr('style','display:none');
			$(aName).attr('class','oneline close');
			}

		}

	$(document).ready(function(){
		//初始化

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
</html>