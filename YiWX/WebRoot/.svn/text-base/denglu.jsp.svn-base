<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
   + request.getServerName() + ":" + request.getServerPort()
   + path + "/";
%>
<html>
	<head>
		<title>微信封-微信营销系统</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta name="keywords" content="爱微,企业微信营销,微信营销案例,微信营销技巧,微信公共平台" />
		<meta name="description" content="爱微平台是企业微信管理和营销工具,通过爱微平台,用户可以轻松管理自己的微信各类信息,对微信公众账号进行维护、开展智能机器人、微信会员卡在线发优惠劵等活动,对微信营销实现有效监控,极大扩展潜在客户群和实现企业的运营目标!服务热线：18623556069" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/skins/aero.css"/>
		
		<script src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/js/jquery-ui-1.9.2.custom.min.js"></script>
		<script src="<%=path%>/js/artDialog.js"></script>
		
		<style type="text/css">
.gbanner {
	background: url(images/h20030701271.jpg) center no-repeat #264C79;
}

.banner {
	height: 200px;
	text-align: center;
	border-bottom: 2px solid #ddd;
}

.contaier {
	zoom: 1;
}

.contaier:after {
	content: '.';
	display: block;
	width: 0;
	height: 0;
	visibility: hidden;
	line-height: 0;
	font-size: 0;
	clear: both;
}

/*基础*/
body {
	font-size: 16px;
	font-family: Century Gothic, \5FAE\8F6F\96C5\9ED1, \5E7C\5706, Arial,
		Verdana;
	color: #323232;
}

select,input,textarea {
	outline: none;
	font-family: Century Gothic, \5FAE\8F6F\96C5\9ED1, \5E7C\5706, Arial,
		Verdana;
	font-size: 16px;
	color: #323232
}

textarea {
	resize: none;
	overflow: auto;
}

a {
	text-decoration: none;
	color: #007DDB;
}

a:hover {
	text-decoration: underline;
}

/*布局*/
.header {
	width: 100%;
	height: 54px;
	background-color: #323232;
	line-height: 54px;
	color: #fff;
	position: fixed !important;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 5;
	border-bottom: 1px solid silver
}

.wp {
	max-width: 980px !important;
	width: auto !important;
	width: 980px;
	padding: 0 12px;
	margin: 0 auto;
	position: relative;
}

.contaier {
	padding-bottom: 18px;
	padding-top: 24px;
	background: #fff;
	height: auto !important;
	min-height: 500px;
	height: 500px;
}

.header {
	width: 100%;
	height: 54px;
	background-color: #323232;
	line-height: 54px;
	color: #fff;
	position: fixed !important;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 5;
	border-bottom: 1px solid silver
}

.think-login,.think-register {
	padding-right: 60px;
	border-right: 1px solid #ddd;
}

.think-login,.think-register,.login-other {
	margin-top: 36px;
	min-width: 320px;
}

.think-login .head,.think-register .head,.login-other .head {
	height: 36px;
	line-height: 36px;
}

.think-login .head strong,.think-register .head strong {
	font-weight: normal;
	font-size: 30px;
	vertical-align: bottom;
}

.think-login .head span,.think-register .head span {
	margin-left: 24px;
	color: #999;
}

.think-login .head a,.think-register .head a {
	color: #007DDB;
	margin-left: 6px;
	text-decoration: underline;
}

.think-login .body,.think-register .body {
	padding-top: 12px;
}

.think-login,.think-register {
	float: left;
}

.think-form {
	padding-bottom: 36px;
}

.think-form .must {
	font-style: normal;
	color: #c00;
	margin-right: 3px;
}

.think-form th,.think-form td {
	padding: 6px 0;
}

.think-form th {
	font-weight: normal;
	vertical-align: top;
	line-height: 32px;
	padding-right: 9px;
	text-align: left;
}

.think-form .text {
	height: 24px;
	width: 350px;
	line-height: 24px;
	padding: 3px;
	border: 1px solid #ccc;
}

.think-form .text:focus {
	box-shadow: 0 0 5px rgba(52, 143, 212, .6);
	border-color: #348FD4;
}

.think-form .checkbox {
	margin-right: 6px;
}

.think-form .submit {
	background: #348FD4;
	color: #fff;
	font-size: 16px;
	height: 30px;
	line-height: 21px;
	padding: 0 24px;
	vertical-align: middle;
	border: 0;
	cursor: pointer;
}

.think-form .submit:hover {
	background-color: #2F81BF;
}

.think-form select {
	height: 32px;
	padding: 3px;
	border: 1px solid #ccc;
}

.think-form .login .text {
	height: 24px;
	width: 250px;
	line-height: 24px;
	padding: 3px;
	border: 1px solid #ccc;
}

.think-form .login .verify {
	height: 24px;
	width: 150px;
	line-height: 24px;
	padding: 3px;
	border: 1px solid #ccc;
}

.login-other {
	float: left;
	padding-left: 60px;
	margin-left: -1px;
	display: inline;
	border-left: 1px solid #ddd;
}

.login-other .head strong {
	font-weight: normal;
	color: #999;
}
</style>



<script type="text/javascript">

function popTip(content,time)
{
	art.dialog({content: content,time: time});
}


function regNewUser()
{
	var params = $("form[id=regNewUser]").serialize();
		$.ajax({
		async : true,
		cache : false,
		type : 'POST',
		data : params,
		url : 'regNewUser.action', //请求的action路径
		error : function() {//请求失败处理函数);
			popTip("访问服务器失败",2);
		},
		success : function(data) { //请求成功后处理函数
			dealRegResult(data);
		}
	});
}


function dealRegResult(data){
	var josnStr = eval('(' + data + ')');
	var status = josnStr["status"];
	var msg ;
	switch(status){
		case 0:
		msg = "注册成功!";
		break;
		case 1:
		msg = "没有输入任何注册信息!";
		break;
		case 2:
		msg = "用户名不能为空!";
		break;
		case 3:
		msg = "密码不能为空!";
		break;
		case 4:
		msg = "请确认邮箱格式!";
		break;
		case 5:
		msg = "联系人只能为中文!";
		break;
		case 6:
		msg = "手机不能为空!";
		break;
		case 7:
		msg = "重复密码不能为空!";
		break;
		case 8:
		msg = "密码和重复密码不同!";
		break;
		case 9:
		msg = "用户已经存在!";
		break;
		case 10:
		msg = "注册用户失败!";
		break;
	}
	
	if(status == 0)
	{
		window.top.location.href = "<%=basePath%>index.jsp";
	}
	else{
		$("#errorMsg").html(msg);
	}
}

</script>
	</head>
	<body>

		<div class="banner gbanner"></div>
		<div class="main">
			<div class="abody">
				<div class="contaier wp cf">
					<div class="think-login">
						<div class="head">
							<strong>用户登录</strong>
						</div>
						<div class="body think-form ">
							<form action="login.action" method="post" class="login">
								<table>
									<tbody>
										<tr>
											<th>
												用户名
											</th>
											<td>
												<input class="text" type="text"
													name="loginViewModel.username">
											</td>
										</tr>
										<tr>
											<th>
												密 码
											</th>
											<td>
												<input class="text" type="password"
													name="loginViewModel.password">
											</td>
										</tr>
										<tr>
											<th>
												&nbsp;
											</th>
											<td>
												<input class="submit" type="submit" value="登录">
											</td>
										</tr>
										<tr>
											<th>
												&nbsp;
											</th>
											<td>
												&nbsp;

											</td>
										</tr>
										<tr>
											<th>
												&nbsp;
											</th>
											<td>
												&nbsp;

											</td>
										</tr>
										<tr>
											<th>
												帐号审核：
											</th>
											<td>
												QQ:56916860
											</td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" name="__hash__"
									value="b46a7b92d6044a6dcd95549e2ee084a2_c19a78ae8711aa897aad3e60b91e40fc" />
							</form>
						</div>
					</div>
					<div class="login-other">
						<div class="head">
							<strong
								style="font-weight: normal; font-size: 30px; vertical-align: bottom; color: #323232;">用户注册</strong>
							<a id="errorMsg" style="color: red;"></a>
						</div>
						<div class="body think-form ">
							<form class="login" id="regNewUser">
								<table>
									<tbody>
										<tr>
											<th>
												用户名
											</th>
											<td>
												<input class="text" required="" value="请输入用户名"
													onclick="if(this.value=='请输入用户名'){this.value=''}"
													onblur="if(this.value==''){this.value='请输入用户名'}"
													type="text" name="loginViewModel.username" maxlength="30">
											</td>
										</tr>
										<tr>
											<th>
												密 码
											</th>
											<td>
												<input class="text" type="password"
													name="loginViewModel.password" maxlength="30">
											</td>
										</tr>
										<tr>
											<th>
												重复密码
											</th>
											<td>
												<input class="text" type="password"
													name="loginViewModel.repassword">
											</td>
										</tr>
										<tr>
											<th>
												邮 箱
											</th>
											<td>
												<input class="text" type="text" name="loginViewModel.email"
													value="请输入电子邮箱" onclick="if (this.value=='请输入电子邮箱'){this.value=''};" 
													onblur="if(this.value==''){this.value='请输入电子邮箱'}" maxlength="45">
											</td>
										</tr>
										<tr>
											<th>
												联系人
											</th>
											<td>
												<input class="text" type="text"
													name="loginViewModel.contact" value="请输入联系人姓名,只能输入汉字" 
													onclick="if(this.value== '请输入联系人姓名,只能输入汉字'){this.value=''};" 
													onblur="if(this.value==''){this.value='请输入联系人姓名,只能输入汉字'}" maxlength="15"><a></a>
											</td>
										</tr>
										<tr>
											<th>
												手机号
											</th>
											<td>
												<input class="text" type="text" name="loginViewModel.mobile"
													value="请输入手机号" onclick="if (this.value=='请输入手机号'){this.value=''};" 
													onblur="if(this.value==''){this.value='请输入手机号'}" maxlength="11">
											</td>
										</tr>
										<tr>
											<th>
												
											</th>
											<td>
												<input id="submit" type="button" class="submit"
													onclick="regNewUser();" value="注册" >
											</td>
										</tr>
										<tr>
											<th>
												&nbsp;
											</th>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<th>
												帐号审核：
											</th>
											<td>
												QQ:56916860
											</td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" name="__hash__"
									value="b46a7b92d6044a6dcd95549e2ee084a2_c19a78ae8711aa897aad3e60b91e40fc" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
			
	</body>


</html>