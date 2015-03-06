<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.CheckLoginBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link href="https://res.wx.qq.com/mpres/htmledition/images/favicon19d8e4.ico" rel="Shortcut Icon">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base19e425.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/setting_index19e425.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/leanModal.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/360/bootstrap_min.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" />
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_edit19e425.css">
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_editor.css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/pagination.css" media="all">
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.leanModal.min.js"></script>
		<style type="text/css">
body {
	overflow-x: hidden;
	/*overflow-y : hidden;   去掉竖条*/
}

#lean_overlay {
	position: fixed;
	z-index: 100;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 100%;
	background: #000;
	display: none;
}

#signup {
	width: 450px;
	padding-bottom: 2px;
	display: none;
	background: #FFF;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.7);
	-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.7);
	-moz-box-shadow: 0 0px 4px rgba(0, 0, 0, 0.7);
	position: fixed;
}
</style>
	</head>
	<%
		CheckLoginBean checkLoginBean = (CheckLoginBean) request
				.getSession().getAttribute(Constat.LOGIN_SESSION);
	%>
	<body>
		<div class="col_main">
			<div class="main_hd">
				<h2>
					帐号信息
				</h2>
			</div>
			<form id="gerenxinxi" class="form-horizontal form-validate">
			<div class="main_bd">
				<div class="account_setting_area" id="settingArea">
					<ul>
						<li class="account_setting_item">
							<h4>
								默认头像
							</h4>
							<!--  <div class="meta_opr">
								<a id="more_size" href="javascript:;s">更换头像</a>
							</div>-->
							<div class="meta_content">
								<!--  <a target="_blank" class="verifyInfo" title="点击下载"
									href="/cgi-bin/getqrcode?fakeid=2393870153&amp;token=240236166&amp;style=1&amp;action=download">-->
								<img src="<%=path%>/images/header.jpg" width="150">
							<!-- 	</a> -->
							</div>
						</li>

						<li class="account_setting_item">
							<h4>
								登录帐号
							</h4>
							<div class="meta_opr">
								登录帐号不能修改,如有需求请联系客服
							</div>
							<div class="meta_content">
								<span><%=checkLoginBean.getUsername()%></span>
							</div>
							<input type="hidden" value="<%=checkLoginBean.getUsername()%>" name="loginViewModel.username">
						</li>
						
						<li class="account_setting_item">
							<h4>
								登录密码
							</h4>
							<!-- 
							<div class="meta_opr">
								<p>
									<a href="#signup" rel="leanModal">修改</a>
								</p>
							</div>
							 -->
							<div>
								<!-- <span><input type="password" value="<%=checkLoginBean.getPassword()%>" disabled="disabled"></span> -->
								<span><input type="password" value="<%=checkLoginBean.getPassword()%>" name="loginViewModel.password" class="inputC"></span>
							</div>
						</li>

						<li class="account_setting_item">
							<h4>
								联系人
							</h4>
							<!-- 
							<div class="meta_opr">
								<p>
									<a href="#signup" rel="leanModal">修改</a>
								</p>
							</div>
							 -->
							<div>
								<!-- <span><input type="password" value="<%=checkLoginBean.getPassword()%>" disabled="disabled"></span> -->
								<span><input type="text" value="<%=(checkLoginBean.getContact() == null ? "" : checkLoginBean.getContact())%>" name="loginViewModel.contact"  class="inputC"></span>
							</div>
						</li>
						<li class="account_setting_item">
							<h4>
								联系邮箱
							</h4>
							<!-- 
							<div class="meta_opr">
							</div>
							<div class="meta_opr">
								<a href="#signup" rel="leanModal">修改</a>
							</div>
							  -->
							<div>
								<span><input type="text" class="inputC" value="<%=(checkLoginBean.getEmail() == null ? "" : checkLoginBean.getEmail())%>" name="loginViewModel.email"></span>
							</div>
						</li>
						<li class="account_setting_item">
							<h4>
								联系电话
							</h4>
							<!-- 
							<div class="meta_opr">
								<a href="#signup" rel="leanModal">修改</a>
							</div>
							 -->
							<div>
								<span><input type="text" value="<%=checkLoginBean.getMobile()%>" name="loginViewModel.mobile" class="inputC"></span>
							</div>
						</li>
						<li class="account_setting_item">
							<h4>
								联系QQ
							</h4>
							<!-- 
							<div class="meta_opr">
								<a href="#signup" rel="leanModal">修改</a>
							</div>
							 -->
							<div>
								<span><input type="text" value="<%=(checkLoginBean.getQq() == null ? "" : checkLoginBean.getQq())%>" name="loginViewModel.qq" class="inputC"></span>
							</div>
						</li>

						<li class="account_setting_item">
							<h4>
								剩余金额
							</h4>
							<div class="meta_opr verify">
								<a onclick="loadContent('href_vip','dispatch.action?action=chongzhi','content');">会员充值</a>
							</div>
							<div class="meta_content">
								<span><font style="color: red;"><%=checkLoginBean.getMoney()%></font>&nbsp;¥</span>
							</div>
						</li>

						<li class="account_setting_item">
							<h4>
								上一次登录时间
							</h4>
							<div class="meta_content">
								<span><%=checkLoginBean.getLastTime()%></span>
							</div>
						</li>
					</ul>
					<!--  <div class="tool_bar">
						<span class="btn btn_input btn_primary" id="saveSetting"><button>
								保存
							</button> </span>
					</div>-->
				</div>
			</div>
			<input type="hidden" value="<%=checkLoginBean.getId()%>" name="loginViewModel.id">
			</form>
			<div class="tool_area">
				<div class="tool_bar">
					<span class="btn  btn_default" onclick="history.go(-1);">
							返回
					</span>					
					<span class="btn  btn_primary" onclick="addSave();">
							保存
					</span>		
				</div>
			</div>	
		</div>


		<!-- 修改用户名  -->
		<div id="signup">
			<div id="signup-ct">
				<div id="signup-header">
					<h2>
						修改
					</h2>
					<p>
					</p>
					<a class="modal_close" href="#"></a>
				</div>

					<div class="txt-fld">
						<label for="">
							联系人
						</label>
						<input id="" class="good_input" name="" type="text">
					</div>
					
					<div class="btn-fld">
						<span class="btn btn_input btn_primary"><button>
								保存
							</button>
						</span>
					</div>
			</div>
		</div>
	</body>

	<script type="text/javascript">
	$(function(){
		$("a[rel*=leanModal]").leanModal({ top : 200, overlay : 0.4, closeButton: ".modal_close" });
		$('.inputC').width(206);
		$('.inputC').height(20);
	});
	
	function addSave() {
	    var params = $("form[id=gerenxinxi]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : 'gerenxinxi.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert("访问服务器失败");
			},
			success : function(data) { //请求成功后处理函数
				dealLoginResult(data);
			}
		});
	}
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
