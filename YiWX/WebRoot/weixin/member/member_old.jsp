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
<html >
	<head>
	<%
	MemberBean memberBean  = (MemberBean)request.getSession().getAttribute("memberBean");
	MemberInfoBean memberInfoBean  = (MemberInfoBean)request.getSession().getAttribute("memberInfoBean");
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

.credit-card{
	background: url('<%=path%>/weixin/member/image/credit-card.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}


.pen{
	background: url('<%=path%>/weixin/member/image/pen.png') no-repeat 9px 14px; 
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
		.card_logo{
			max-height: 70px;
			margin: 8px 0 0 8px;
		}	
</style>	

	<body id="page_card" >
		<div id="loading" style="top: 243px; display: none;">
			<div class="lbk"></div>
			<div class="lcont">
				<img src="<%=path%>/weixin/member/image/loading.gif" alt="loading...">
				正在加载...
			</div>
		</div>
		<div id="mappContainer">
			<div class="inner root" style="height: 100%;">
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
				
				<ul class="round" id="privates">
					<li class="power payment-card" onclick="openMore('5');">
						<article>
						<a class="oneline close balance" href="javascript:void(0)" id="a_5">
							<p>
								预存余额:<%=memberInfoBean.getYue()%>元
							</p> </a>
						</article>							
						<div  style="display:none;" id="div_5">
							<b>预存规则</b>
							<ul>
								<li>
									<%=memberBean.getCard_yue() %>
								</li>
							</ul>
						</div>
					</li>
					<li class="power bestseller" onclick="openMore('6');">
						<article>
						<a class="oneline close score" href="javascript:void(0)" id="a_6">
							<p>
								积分:<%=memberInfoBean.getJifen()%>分
							</p> </a>
						</article>					
						<div  style="display:none;" id="div_6">
							<b>积分规则</b>
							<ul>
								<li>
									<%=memberBean.getCard_jifen() %>
								</li>
							</ul>
						</div>												
					</li>
				</ul>
				
				<ul class="round " id="privates">
				<%
				if(memberBean.getCard_integral()!=0){
					%>
					<li class="round pen" >
						<article>
						<a  onclick="goCheck()" >
							<p>
								签到赚积分
								<em class="ok">今日还未签到</em><!-- 成功签到 积分+5 今日已经签到 -->
							</p> </a>
						</article>
						<div  style="display:none;" >
							<ul>
								<li>
								</li>
							</ul>
						</div>
					</li>					
					<%
				}
				%>
	
					<li class="round hire-me" >
						<article>
						<%
						if(memberBean.getCard_perfect_info()>0&&memberInfoBean.getInfo_perfect()!=1){
							%>
								<a  onclick="perfect_info()" >
									<p>
										完善个人资料赠送积分
									</p> 
								</a>	
							<%
						}else{
							%>
								<a  onclick="member_info()" >
									<p>
										个人资料
									</p> 
								</a>							
							<%
						}
						%>

							
						</article>
						<div  style="display:none;" >
							<ul>
								<li>
								</li>
							</ul>
						</div>
					</li>					
				</ul>	
				<%
				if((memberBean.getCard_issupport()!=null&&memberBean.getCard_issupport().equals("1"))&&(memberInfoBean.getCard_binded()!=1)){
					%>
				<ul class="round " id="privates">
					<li class="round credit-card" >
						<article>
						<a  onclick="check_entityCard()" >
							<p>
								绑定实体会员卡
							</p> </a>
						</article>
						<div  style="display:none;" >
							<ul>
								<li>
								</li>
							</ul>
						</div>
					</li>					
				</ul>				
					
					<%
				}
				%>
		
				
											
				<%
				if((memberBean.getCard_notice1()!=null&&memberBean.getCard_notice1().length()>0)||(memberBean.getCard_notice2()!=null&&memberBean.getCard_notice2().length()>0)||(memberBean.getCard_notice3()!=null&&memberBean.getCard_notice3().length()>0)){
				 %>
				<ul class="round" id="publics">
					<%
					if(memberBean.getCard_notice1()!=null&&memberBean.getCard_notice1().length()>0){
						%>
					<li class="power attibutes" onclick="openMore('1');">
						<article>
						<a class="oneline close" href="javascript:void(0)" id="a_1">
							<p>
								<%=memberBean.getCard_notice1() %>
							</p> </a>
						</article>
						<div  style="display:none;" id="div_1">
							<b>详情说明</b>
							<ul>
								<li>
									<%=memberBean.getCard_notice1_content() %>
								</li>
							</ul>
						</div>
					</li>						
						<%
					}
					%>
					<%
					if(memberBean.getCard_notice2()!=null&&memberBean.getCard_notice2().length()>0){
						%>
					<li class="power open attibutes" onclick="openMore('2');">
						<article>
						<a class="oneline close" href="javascript:void(0)" id="a_2">
							<p>
								<%=memberBean.getCard_notice2() %>
							</p> </a>
						</article>
						<div  style="display:none;" id="div_2">
							<b>详情说明</b>
							<ul>
								<li>
									<%=memberBean.getCard_notice2_content() %>
								</li>
							</ul>
						</div>
					</li>						
						<%
					}
					%>	
					<%
					if(memberBean.getCard_notice3()!=null&&memberBean.getCard_notice3().length()>0){
						%>
					<li class="power open attibutes" onclick="openMore('3');">
						<article>
						<a class="oneline close" href="javascript:void(0)" id="a_3">
							<p>
								<%=memberBean.getCard_notice3() %>
							</p> </a>
						</article>
						<div  style="display:none;" id="div_3">
							<b>详情说明</b>
							<ul>
								<li>
									<%=memberBean.getCard_notice3_content() %>
								</li>
							</ul>
						</div>
					</li>						
						<%
					}
					%>						
				</ul>
				<%
				}
				%>
				
				<ul class="round" id="publics">
					<%
					if(memberBean.getCard_explain()!=null&&memberBean.getCard_explain().length()>0){
						%>
					<li class="power attibutes" onclick="openMore('4');">
						<article>
						<a class="oneline close" href="javascript:void(0)" id="a_4">
							<p>
								会员卡说明
							</p> </a>
						</article>
						<div  style="display:none;" id="div_4">
							<b>详情说明</b>
							<ul>
								<li>
									<%=memberBean.getCard_explain() %>
								</li>
							</ul>
						</div>
					</li>	
					<%
					}
					%>	
					<li class="round dizhi" >
						<article>
						<a  onclick="goAddress()" >
							<p>
								通用门店电话及地址
							</p> </a>
						</article>
						<div  style="display:none;" >
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
		<input type="hidden" name="memberInfoBean.id" value="<%=memberInfoBean.getId()%>"/>
		</form>
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
	function member_info(){
		window.location = "<%=path %>/memberwx!member_info.action";
		}
	function perfect_info(){
		window.location = "<%=path %>/memberwx!perfect_info.action";
		}
	
	function check_entityCard(){
		window.location = "<%=path %>/memberwx!check_entityCard.action";
		}
	
	function goAddress(){
		_showLoading();
		window.location = "<%=path %>/memberwx!address.action";
		}
	var tempCheck = false;
	//是否签到
	function isCheck(){
		_showLoading();
		var params = $("form[id=member]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'memberwx!isCheck.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				_hideLoading();
				if(data=="success"){
					//可以签到
					tempCheck = true;
				}else{
					$('.ok').html('今日已经签到');	
				}
			}
		});			
		}

	function goCheck(){
		if(tempCheck){
			_showLoading();
			var params = $("form[id=member]").serialize();
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'memberwx!goCheck.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert('查询失败');
				},
				success : function(data) { //请求成功后处理函数
					_hideLoading();
					if(data=="success"){
						location.reload();	
						tempCheck = false;
					}else{
						alert(data);
					}
				}
			});		
			
			}
		}
	$(document).ready(function(){
		//初始化
		isCheck();

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