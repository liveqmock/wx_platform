<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
<%@page import="com.zhike.sql.beans.GuaguakaInfoBean"%>
<%@page import="com.zhike.finals.Constat"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<%
	GuaguakaBean guaguakaBean = (GuaguakaBean)request.getSession().getAttribute("guaguakaBean");
	GuaguakaInfoBean guaguakaInfoBean = (GuaguakaInfoBean)request.getSession().getAttribute("guaguakaInfoBean");
	if(guaguakaBean!=null&&guaguakaInfoBean!=null){
		%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 

    <title><%=guaguakaBean.getTitle() %></title>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
     <script type="text/javascript" src="<%=path%>/js/service/wScratchPad.js"></script>
     <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" type="text/css"></link>  
    <link rel="stylesheet" href="<%=path%>/css/service/fl.normal.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/service/skin.orange.css" type="text/css"></link></head>
    <link rel="Stylesheet" type="text/css" href="<%=path%>/service/guaguaka.css" />
   <script type="text/javascript">
   function subPassword(){
	   if($('#verifyPassword').val()==<%=guaguakaBean.getPassword()%>){
			var params = $("form[id=info]").serialize();
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'dazhuanpanwx!subPassword.action', //请求的action路径
				error : function() {//请求失败处理函数);
				},
				success : function(data) { //请求成功后处理函数
					if(data=='success'){
						alert('校验成功,可以兑奖');
						$('#business').html('校验成功,可以兑奖。');
						}else if(data=='error'){
							alert('当前用户已经过兑换奖品');
							$('#business').html('当前用户已经兑换过奖品。');	
							}
				}
			});	
		   }else{
			alert('密码不正确');
			   }
   }
   function subContact(){
	   if($('#contact').val().length==0){
			alert('请输入联系方式');
			return;
		   }	   
	   if($('#contact').val().length>30){
			alert('联系方式太长了');
			return;
		   }
		var params = $("form[id=info]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'dazhuanpanwx!subContact.action', //请求的action路径
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
   function share(){
	$('.mask_div').css('display','block');
	   }
   function close_share(){
	   $('.mask_div').css('display','none');
	   }
   </script>
	<style>
		.fontRed{
			color: red;
		}
		.mask_div{
	display:none;
	position: fixed;
	width: 100%;
	height: 100%;
	top:0;
	left:0;
	background:#000;
	opacity: 0.8; 
	z-index:999;
}
	</style>
</head>
<body >
		<div class="main">
		<form id="info">
		<input type="hidden" name="guaguakaInfoBean.id" value="<%=guaguakaInfoBean.getId()%>"/>
			<div class="content">
				<section class="turntable-lottery">
						<div style="width:100%;margin:0 auto;text-align:center;position:relative;">
							<img src="<%=path %>/img/service/zhongjiang.jpg" style="width:100%;"/>
							<label onclick="share()" style="position: absolute;bottom: 0px;width: 100%;margin-bottom: 20px;color: white;font-size: 19PX;">
								立即分享
							</label>
						</div>
				
						<div class="content">
						
							<div class="title">
								恭喜您中奖了：
							</div>
							<p id="userInfo" class="desc">
								您中了：<span class="fontRed">
								<%switch(guaguakaInfoBean.getPrizetype()){
								case 1: %>
									一等奖  <%=guaguakaBean.getOne_prize() %>
									<%break;	
								case 2: %>
									二等奖  <%=guaguakaBean.getTwo_prize() %>
									<%break;								
								case 3: %>
									三等奖  <%=guaguakaBean.getThree_prize() %>
									<%break;
								case 4: %>
									四等奖  <%=guaguakaBean.getFour_prize() %>
									<%break;
								case 5: %>
									五等奖  <%=guaguakaBean.getFive_prize() %>
									<%break;								
								} %>
								</span><br>
								兑奖码：<span class="fontRed"><%=guaguakaInfoBean.getSn() %></span><br>
								中奖时间：<span class="fontRed"><%=guaguakaInfoBean.getCreatetime()%></span><br>
								
								<span>
								<%
								if(guaguakaBean.getIscontacttype()!=null&&guaguakaBean.getIscontacttype().equals("1")){
									if(guaguakaInfoBean.getContact()==null||guaguakaInfoBean.getContact().equals("")){
										%>
										<input id="contact" name="guaguakaInfoBean.contact" style="margin-top: 5px" type="text" class="input-block-level" placeholder="请输入您的<%=guaguakaBean.getContacttype()%>,以便兑奖"/>
										<span class="btn btn-warning btn-block" onclick="subContact()">用户提交</span>									
										<%
									}else{
										%>	
										<%=guaguakaBean.getContacttype()%>：<span class="fontRed"><%=guaguakaInfoBean.getContact()%>	</span>				
										<%
									}
									
								}
								%>
								</span>
							</p>
							<p class="desc widget-panel">
							</p>
						</div>
						<div class="content">
						<div class="title">
							其他说明：
						</div>
						<p class="desc">
							<%=guaguakaBean.getExplain_service() %>
						</p>
					</div>	
					<div class="content">
						<div class="title">
							奖项设置：
						</div>
						<%
						if(guaguakaBean.getOne_number()!=0){
							%>
							<p class="desc">
							一等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getOne_number() %>名）<%}%>：<%=guaguakaBean.getOne_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getTwo_number()!=0){
							%>
							<p class="desc">
							二等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getTwo_number() %>名）<%}%>：<%=guaguakaBean.getTwo_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getThree_number()!=0){
							%>
							<p class="desc">
							三等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getThree_number() %>名）<%}%>：<%=guaguakaBean.getThree_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getFour_number()!=0){
							%>
							<p class="desc">
							四等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getFour_number() %>名）<%}%>：<%=guaguakaBean.getFour_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getFive_number()!=0){
							%>
							<p class="desc">
							五等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getFive_number() %>名）<%}%>：<%=guaguakaBean.getFive_prize() %>
							</p>
							<%
						}
						%>																							
					</div>
					<div class="content">
							<div class="title">
								商家兑奖：
							</div>
							
							<p id="business" class="desc">
							<%
							if(guaguakaInfoBean.getType()!=2){
							%>
								<input id="verifyPassword" name="guaguakaBean.password" style="margin-top: 5px" type="password" class="input-block-level" placeholder="请输入兑奖密码" />
								<span class="btn btn-warning btn-block" onclick="subPassword()">商家提交</span>
							<%
							}else{
								%>
								当前用户已经兑换过奖品
								<%
							}
							%>
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
				href=http://www.vxinfeng.com">本页面由微信封 vxinfeng.com支持</a> </span>
			<span class="back-top right"> <a class="ml10 fl_report"
				data-url="http://fl.act.qq.com/report/report/reason">举报</a> </span>
			</section>
			</footer>
		</div>	
		<%
	}
	%>
	<div class="mask_div" onclick="close_share()"><img style="float: right;width: 200px;margin-right: 10px;" src="<%=path%>/img/service/share_tof.png"/></div>
<script>

        	<%
        	String strBackUrl = (String)request.getSession().getAttribute(Constat.STRBACKURL);
        	%>
			document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		    var mainTitle="<%=guaguakaBean.getTitle() %>";
		    var mainURL="<%=strBackUrl%>";
			var mainDesc="<%=guaguakaBean.getDesc_service() %>";
			var mainImgUrl= "<%=request.getScheme()%>://<%=request.getServerName()%><%=guaguakaBean.getImg()%>";
			
			window.shareData = {
				"imgUrl": mainImgUrl,
				"timeLineLink": mainURL,//发送朋友圈链接
				"sendFriendLink": mainURL,//发送好友链接
				"tTitle": mainTitle,//发送朋友圈标题
				"tContent": mainDesc,//发送朋友圈内容
				"fTitle": mainTitle,//发送好友标题
				"fContent": mainDesc,//发送好友内容
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
					"title": mainDesc
				}, function (res) {
					_report('timeline', res.err_msg);
				});
			});

		}, false)
	</script>
</html>