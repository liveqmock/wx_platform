<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MessageBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=path%>/weixin/message/css/message.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>


<title>微信封留言板</title>
<script type="text/javascript">
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
	$(document).ready(function() {
			$("#showcard1").click(function() {
				var wxname = $("#wxname1").val();
				if (wxname == '') {
					alert("请输入昵称");
					return;
				}
				var info = $("#info1").val();
				if (info == '') {
					alert("请输入内容");
					return;
				}
				var params = $("form[id=message1]").serialize();
				$.ajax({
					async : true,
					cache : false,
					type : 'POST',
					data : params,
					url : 'addMessage.action', //请求的action路径
					error : function() {//请求失败处理函数);
						alert("访问服务器失败");
					},
					success : function(data) { //请求成功后处理函数
						dealLoginResult(data);
					}
				});
			});

			
			$("#showcard2").click(function() {
				var wxname = $("#wxname2").val();
				if (wxname == '') {
					alert("请输入昵称");
					return;
				}
				var info = $("#info2").val();
				if (info == '') {
					alert("请输入内容");
					return;
				}
	
				var params = $("form[id=message2]").serialize();
				$.ajax({
					async : true,
					cache : false,
					type : 'POST',
					data : params,
					url : 'addMessage.action', //请求的action路径
					error : function() {//请求失败处理函数);
						alert("访问服务器失败");
					},
					success : function(data) { //请求成功后处理函数
						dealLoginResult(data);
					}
				});
			});
			//
			$(".hhsubmit").click(function() {
				var objid = $(this).attr("date");
				var info = $(".hly" + objid).val();
				if (info == '') {
					alert("请输入内容");
					return;
				}
				var submitData = {
					nickname : '',
					cid : 389,
					rid : objid,
					info : info,
					token : 'ozdP9jghMUvTCmXJ2oeSDbTskj10',
					action : "leavemsg"
				};
				$.post('operations', submitData, function(data) {
					if (data.success == true) {
						alert(data.msg);
						setTimeout(
								'window.location.href=location.href',
								1000);
						return;
					} else {
						alert(data.msg || "留言失败");
					}
				}, "json");
			});
			//
			$(".hfinfo").click(function() {
				var objid = $(this).attr("date");
				$(".hhly" + objid).slideToggle();
			});
			//
			$(".hhbt").click(function() {
				var objid = $(this).attr("date");
				$(".hhly" + objid).slideToggle();
			});
			//
			$("#windowclosebutton").click(function() {
				$("#windowcenter").slideUp(500);
			});
			//
			$("#alertclose").click(function() {
				$("#windowcenter").slideUp(500);
			});
		});
	//
	function alert(title) {
		window.scrollTo(0, -1);
		$("#windowcenter").slideToggle("slow");
		$("#txt").html(title);
		setTimeout(function() {
			$("#windowcenter").slideUp(500);
		}, 4000);
	}
	//
	$(document).ready(function() {
		$(".first1").click(function() {
			$(".ly1").slideToggle();
		});
		$(".first2").click(function() {
			$(".ly2").slideToggle();
		});
	});
</script>
</head>
<body id="message" onselectstart="return true;" ondragstart="return false;">
	<div class="container">
		<div class="qiandaobanner">
			<a href="javascript:history.go(-1);"> <img
				src="<%=path%>/weixin/message/images/message_header.jpg"
				style="width: 100%;" />
			</a>
		</div>
		
		<div class="cardexplain">
			<div class="window" id="windowcenter">
				<div id="title" class="wtitle">
					操作提示<span class="close" id="alertclose"></span>
				</div>
				<div class="content">
					<div id="txt"></div>
				</div>
			</div>
			<%String serviceid = request.getAttribute("serviceid").toString(); %>
			<div class="history">
				<div class="history-date">
					<ul>
						<a><h2 class="first first1" style="position: relative;">请点击留言</h2></a>
						
						
						<li class="green bounceInDown nob ly1" style="display: none">
						<form id="message1" role="form">
							<input type="hidden" name="messageViewModel.serviceid" value="<%=serviceid %>">
							<dl>
								<span id="errorMsg" style="color: red;"></span>
								<dt>
									<input name="messageViewModel.sender" type="text" class="px" id="wxname1"
										value="" placeholder="请输入您的昵称">
								</dt>
								<dt>
									<textarea name="messageViewModel.text" class="pxtextarea" style="height: 60px;"
										id="info1" placeholder="请输入留言"></textarea>
								</dt>
								<dt>
									<a id="showcard1" class="submit" href="javascript:void(0)">提交留言</a>
								</dt>
							</dl>
						</form>
						</li>
						
						
						
						<% 
						List<MessageBean> messageBeans = (List<MessageBean>)request.getAttribute("messageBeans");
						for(MessageBean messageBean : messageBeans) {
						%>
						<li class="green bounceInDown">
							<h3>
								<%=messageBean.getSender() %><span><%=messageBean.getTime() %></span>
								<div class="clr"></div>
							</h3>
							<dl>
								<dt class="hfinfo"><%=messageBean.getText() %></dt>
							</dl>
							<% 
							if(!"".equals(messageBean.getReply()) && null!=messageBean.getReply()) {
							%>
							<dl class="huifu">
								<dt>
									<span>客服 回复：<%=messageBean.getReply() %> </span>
								</dt>
							</dl>
							<%} %>
						</li>
						<%} %>
						
						<li class="green bounceInDown nob ly2" style="display: none">
						<form id="message2" role="form">
							<input type="hidden" name="messageViewModel.serviceid" value="<%=serviceid %>">
							<dl>
								<span id="errorMsg" style="color: red;"></span>
								<dt>
									<input name="messageViewModel.sender" type="text" class="px" id="wxname2"
										value="" placeholder="请输入您的昵称">
								</dt>

								<dt>
									<textarea name="messageViewModel.text" class="pxtextarea" style="height: 60px;"
										id="info2" placeholder="请输入留言"></textarea>
								</dt>
								<dt>
									<a id="showcard2" class="submit" href="javascript:void(0)">提交留言</a>
								</dt>
							</dl>
						</form>
						</li>
						
						<a><h2 class="first first2" style="position: relative;">请点击留言</h2></a>
						 
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>

</html>


