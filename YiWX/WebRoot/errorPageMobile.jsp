<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		
	<head>
	</head>
<script>

</script>
<style>
.page_error{
	text-align: center;
	margin-top: 50px;
	display: inline-block;
	width: 100px;
	height: 115px;
	background: url('<%=path%>/img/icon_errorpage.png') no-repeat 0 0;
}
.page_text{
	text-align: center;
	padding-left: 10px;
	margin-top: 25px;
	font-weight: 400;
	color: #000000;	
}

.body_color{
	background-color: #eee;
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
}
</style>	

	<body class="body_color">
		<div style="width: 100%;text-align: center;">
			<span class="page_error"></span>
			<p class="page_text">系统繁忙，请稍候再试。</p>
		</div>

	</body>
	<script type="text/javascript">
	$(document).ready(function(){

	})		
	</script>
</html>