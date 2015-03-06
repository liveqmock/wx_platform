<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.PhotoBean"%>
<%@page import="com.zhike.sql.beans.PhotobasicBean"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
List<PhotoBean> photoBeans = (List<PhotoBean>)request.getAttribute("photoBeans");
PhotobasicBean photobasicBean = (PhotobasicBean)request.getAttribute("photobasicBean");

%>
<title><%=photobasicBean.getTitle()%></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,minimum-scale=1,user-scalable=no,maximum-scale=1,initial-scale=1" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" href="<%=path %>/weixin/photo/css/common.css" />
<link rel="stylesheet" href="<%=path %>/weixin/photo/css/photo.css" />
<script type="text/javascript" src="<%=path %>/weixin/photo/js/zepto.min.js"></script>
</head>
<style>
.page-url-link{
	color: gray;
}
</style>
<body>
<div id="photo">
	<h3 style="text-align: center;"><%=photobasicBean.getTitle()%></h3>
	
	<ul class="chatPanel fn-clear">
		<% 
		
		for(int i=0;i<photoBeans.size();i++) {
			PhotoBean photoBean = photoBeans.get(i);
		%>
		<li class="media mediaFullText" data-index="0">
			<a href='<%=path %>/prephoto.action?id=<%=photoBean.getId() %>'>
				<div class="mediaPanel">
					<div class="mediaHead">
						<div class="clr"></div>
					</div>
					<div class="mediaImg" style="width: auto;">
						
						<img class="cover" src="<%=photoBean.getImg() %>" />
						
					</div>
					<div class="mediaFooter">
						<span class="mesgIcon right"></span><span class="bt"><%=photoBean.getTitle() %></span>
						<div class="clr"></div>
					</div>
				</div>
			</a>
		</li>
		<%} %>
		
 	<p class="page-url">
		<a href="http://www.vxinfeng.com" class="page-url-link">本页面由微信封 vxinfeng.com支持</a>
	</p>
</div>
</body>
</html>