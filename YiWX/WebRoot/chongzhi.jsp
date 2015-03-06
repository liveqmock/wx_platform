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

	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/setting_index19e425.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base19e425.css">
<style>

input {
	border: 1px solid #DDDDDD;
	height: 30px;
	width: 200px;
	margin-left: 10px;
}

.new-btn-login {
	background-color: transparent;
	background-image:
		url("./themes/User/default/common/images/img/new-btn-fixed.png");
	border: medium none;
	border: 1px solid red;
}

.new-btn-login {
	background-position: 0 -198px;
	width: 82px;
	color: #FFFFFF;
	font-weight: bold;
	height: 28px;
	line-height: 28px;
	padding: 0 10px 3px;
}

.new-btn-login:hover {
	background-position: 0 -167px;
	width: 82px;
	color: #FFFFFF;
	font-weight: bold;
	height: 28px;
	line-height: 28px;
	padding: 0 10px 3px;
}

.bottonbox {
	border: 1px solid #D74C00;
	padding: 1px;
	display: inline-block;
}
</style>
	</head>

	<body>
		<%
			CheckLoginBean checkLoginBean = (CheckLoginBean) request
					.getSession().getAttribute(Constat.LOGIN_SESSION);
		%>
		<div class="col_main">
			<div class="main_hd">
				<h2>
					会员充值
				</h2>
			</div>


			<div class="main_bd">
				<div class="account_setting_area" id="settingArea">
					
						<form
							action="/wx/uploads/index.php?g=User&amp;m=Alipay&amp;a=post"
							method="post">
<ul>
							<li class="account_setting_item">
							<div class="meta_content">
															<b>充值用户名: </b>
								<input type="text" value="<%=checkLoginBean.getUsername()%>"
									disabled="disabled">
								<b>充值帐号,默认当前登录用户</b>
							</div>
							</li>
							<li class="account_setting_item">
								<b>充值&nbsp;&nbsp;&nbsp;金额: </b>
								<input type="text" name="price" value="100" id="price" size="60" onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
								
								<b>充值金额将保存到系统默认账户当中</b>
							</li>

							<li class="account_setting_item no_extra">
								<span><img style="cursor:pointer;" src='<%=path%>/images/pay-button.png'  onclick="window.open('http://wpa.qq.com/msgrd?v=3&uin=56916860&site=qq&menu=yes','_blank')"/>  </span>
							</li>
							</ul>
						</form>
					
					<div class="clr"></div>
				</div>
				<div class="cLine">
					<div class="pageNavigator right">
						<div class="pages"></div>
					</div>
					<div class="clr"></div>
				</div>
			</div>
		</div>
		<div class="clr"></div>
	</body>
</html>
