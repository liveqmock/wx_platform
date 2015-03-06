<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.APPBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>微信封-微信营销系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/todc_bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style.css">
  </head>
  
  <body>
  <%
  	APPBean appBean = (APPBean) request.getAttribute("APPBEANINFO");
  %>
    	<div class="col_main">
			<div class="main_bd">
				<div class="box ">
					<div class="box-title">
						<h3>
							<i class="icon-user"></i>账户信息
						</h3>
					</div>
					<div class="box-content">

						<dl class="dl-horizontal">
							<dt>
								<img
									src="<%=appBean.getWx_header_url() %>"
									style="width: 88px; height: 88px" class="img-rounded">
							</dt>
							<dd>
								<p>
									<strong><%=session.getAttribute("app_wx_name") %></strong>
									<!-- <b class="text-warning">体验版</b>
									<a
										href="http://wpa.qq.com/msgrd?v=3&amp;uin=56916860&amp;site=qq&amp;menu=yes"
										target="_blank"><i class="icon-arrow-up" title="升级"></i>升级</a> -->
								</p>



								<table class="table noborder">
									<tbody>
										<tr>
											<td>
												套餐有效期：2015-01-02
											</td>
											<td>
												文本自定义：0/100
											</td>
											<td>
												图文自定义：0/100
											</td>
											<td>
												语音自定义：0/0
											</td>
										</tr>
										<tr>
											<td>
												请求数剩余： 10000
											</td>
											<td>
												总请求数：0
											</td>
											<td>
												本月请求数：0
											</td>
											<td>
												每月可请求总数：10000
											</td>
										</tr>
									</tbody>
								</table>
								<p>
									<strong>接口地址：</strong><%=appBean.getWx_url() %>&nbsp;&nbsp;&nbsp;&nbsp;
									<strong>TOKEN：</strong><%=appBean.getWx_token() %>
								</p>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
  </body>
</html>
