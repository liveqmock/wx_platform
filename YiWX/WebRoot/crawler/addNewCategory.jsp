<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>增加数据采集</title>
<style type="text/css">
.input{
	width: 250px;
}

#content{
	width:960px;
	margin:0 auto;
	text-align: center;
}

#content div{
	width:500px;
	margin:10px;
}
</style>
</head>
<body>
<div id="content">
	<form action="<%=path%>/crawler!addNewCategory.action">
		<div><label>分类名称：</label><input type="text" placeHolder="请输入分类名称" class="input" name="categoryBean.categoryName"/></div>
		<div><label>分类权重：</label><input type="text" placeHolder="请输入数字权重" class="input" name="categoryBean.weight"/></div>
		<div><input type="submit" title="提交" class="input"/></div>
	</form>
</div>
</body>
</html>