<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.zhike.sql.beans.CheckLoginBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html><head>
<title></title>
</head>
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<body>
<button onclick="test()">12321</button>
<form action="apiMember.action" method="post">
	<input type="text" name="data"> 
	<input type="submit">
</form>
</body>
<script type="text/javascript">
function test(){
	$.ajax({
		async : false,
		cache : false,
		type : 'POST',
		data : 'data={"entityCard":[{"service_id":28,"card_id":"N100003","card_password":"","card_yue":"14200","card_jifen":"200","type":1}]}',
		url : 'apiMember.action', //请求的action路径
		error : function() {//请求失败处理函数);
			
		},
		success : function(data) { //请求成功后处理函数
			alert(data);
			
		}
	});
	
}
</script>
</html>
