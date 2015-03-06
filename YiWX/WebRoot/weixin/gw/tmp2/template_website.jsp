<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//List<WebsiteTempBean> wtb = (List) request.getAttribute(Constat.WEBSITESTEMP);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=path %>/img/logo_icon.png" rel="Shortcut Icon"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/appmsg_edit19e425.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/appmsg_editor.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/themes/default/default.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/sco/sco.message.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/pagination.css" media="all"/>	
<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/common.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/menu-3.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/site.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/color3.css" media="all"/>

<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/inside.css" media="all"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/resource.css" media="all"/>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-ui-1.9.2.custom.min.js"></script>
<title>微信封-微信营销系统</title>
<script type="text/javascript">
function doselectemp(obj,tnum){
	$("input[type='button']").val("选 择");
	$(".btn").css({ color: "black", background: "#EEE" });
	$(obj).val("已选择");
	$(obj).parent().css({ color: "white", background: "#56a447" });
	$("._black").hide();
	$("._white").show();
	$(obj).parent().prevAll("._white").hide();
	$(obj).parent().prev("._black").show();
	var imgval = "<%=path%>/weixin/gw/images/tempimg/tmp_img_"+tnum+"b.jpg";
	parent.window.$("#tempImg").attr("src", imgval);
	parent.window.$("#tempNum").val(tnum);
	parent.window.hideTemplate(true);
	
	//window.opener.window.$("#tempImg").attr("src", imgval);
	//window.opener.window.$("#tempNum").val(tnum);
	//window.close();
	//alert(window.opener.window.$("#tempImg").attr("src"));
	//alert(window.opener.window.$("#tempNum").val());
}
function qhlab(obj){
	$(".active").removeClass("active");
	$(obj).parent().addClass("active");
	$($(obj).attr("href")).addClass("active");
	return false;
}
</script>
<style type="text/css">
.style-cont{
	float: left;
	position: relative;
	margin-bottom: 15px;
	width: 150px;
}
.style-cont img{
	display: block;
	margin: 0 auto;
	width: 90%;
}
.style-cont .new-style{
	position: absolute;
	right: 15px;
	top: 4px;
	width: 50px;
}
.style-cont .btn{
	display: block;
	margin: 10px auto;
}
.style-cont span{
	width: 110px;
}
.style-cont-hide{
	display: none;
}
</style>
</head>
<body style="width: 800px">
<div id="style-sel-cont" style="width: 800px">
<div class="tabbable">
	
	<ul class="nav nav-tabs" id="myTab">
	    <!--<li class="active"><a href="#s1" data-toggle="tab">热门推荐</a></li>-->
	    <!--<li class="active"><a href="#s2" data-toggle="tab" onclick="return qhlab(this)">列表风格</a></li>-->
	    <li class="active"><a href="#s2" data-toggle="tab" onclick="return qhlab(this)">轮播图模板</a></li>
	    <!--<li><a href="#s3" data-toggle="tab" onclick="return qhlab(this)">可变背景色块</a></li>-->
	    <li><a href="#s4" data-toggle="tab" onclick="return qhlab(this)">背景图模板</a></li>
	    <li><a href="#s5" data-toggle="tab" onclick="return qhlab(this)">图标模板</a></li>
	</ul>
	<div class="tab-content">
	    <!--<div class="tab-pane active" id="s1">
	    	<div class="style-list fn-clear">
				<div class="style-cont">
					<img src="http://wxj.weixinjia.net/image/admin/wsite/v2/style/1.jpg"/>
					<button class="btn" data-id="2">选择</button>
				</div>
				<div class="style-cont">
					<img src="http://wxj.weixinjia.net/image/admin/wsite/v2/style/2.jpg"/>
					<button class="btn" data-id="1">选择</button>
				</div>
	    	</div>
	    </div>
	    -->
	    
	    <div class="tab-pane active" id="s2">
	    	<div class="style-list fn-clear">
	    		<c:forEach items="${webSitesTemp}" varStatus="status" var="rows" begin="0" end="4">
				<div class="style-cont">
					<img class="_white" style="<c:if test="${webSites.tempnum == rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}.jpg" />
					<img class="_black" style="<c:if test="${webSites.tempnum != rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}b.jpg" />
					<span class="btn btn_default btn_input" <c:if test="${webSites.tempnum == rows.tempnum}">style="color: white;background: #56a447;"</c:if> ><input type="button" value="<c:if test="${webSites.tempnum == rows.tempnum}">已选择</c:if><c:if test="${webSites.tempnum != rows.tempnum}">选 择</c:if>" onclick="doselectemp(this,'${rows.tempnum }')"/></span>
				</div>
				</c:forEach>
	    	</div>
	    </div>
	    
	    <div class="tab-pane" id="s3">
			<div class="alert alert-info">
			  	<p><span class="bold">说明：</span>此类模板的特点是菜单节点采用背景色块展示，模板中每个菜单的默认背景颜色可以在栏目设置中修改。</p>
			</div>
		    <div class="style-list fn-clear">
				<c:forEach items="${webSitesTemp}" varStatus="status" var="rows" begin="10" end="18">
				<div class="style-cont">
					<img class="_white" style="<c:if test="${webSites.tempnum == rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}.jpg" />
					<img class="_black" style="<c:if test="${webSites.tempnum != rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}b.jpg" />
					<span class="btn btn_default btn_input" <c:if test="${webSites.tempnum == rows.tempnum}">style="color: white;background: #56a447;"</c:if> ><input type="button" value="<c:if test="${webSites.tempnum == rows.tempnum}">已选择</c:if><c:if test="${webSites.tempnum != rows.tempnum}">选 择</c:if>" onclick="doselectemp(this,'${rows.tempnum }')"/></span>
				</div>
				</c:forEach>
			</div>
	    </div>
	    <div class="tab-pane" id="s4">
			<div class="alert alert-info">
			  	<p><span class="bold">说明：</span>大背景图模板采用背景大图片（在“图片设置”中设置）作为微官网背景，只显示菜单信息，不显示顶部滚动图片和一键拨号。上传的背景大图片会横向充满屏幕，底部多余的部分将会被隐藏。建议上传清晰度高且尺寸较长的图片作为背景以适应不同屏幕尺寸的手机。</p>
			</div>
			<div class="style-list fn-clear">
				<c:forEach items="${webSitesTemp}" varStatus="status" var="rows" begin="5" end="24">
				<div class="style-cont">
					<img class="_white" style="<c:if test="${webSites.tempnum == rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}.jpg" />
					<img class="_black" style="<c:if test="${webSites.tempnum != rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}b.jpg" />
					<span class="btn btn_default btn_input" <c:if test="${webSites.tempnum == rows.tempnum}">style="color: white;background: #56a447;"</c:if> ><input type="button" value="<c:if test="${webSites.tempnum == rows.tempnum}">已选择</c:if><c:if test="${webSites.tempnum != rows.tempnum}">选 择</c:if>" onclick="doselectemp(this,'${rows.tempnum }')"/></span>
				</div>
				</c:forEach>
			</div>
		</div>
	    <div class="tab-pane" id="s5">
			<div class="style-list fn-clear">
				<c:forEach items="${webSitesTemp}" varStatus="status" var="rows" begin="25" end="36">
				<div class="style-cont">
					<img class="_white" style="<c:if test="${webSites.tempnum == rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}.jpg" />
					<img class="_black" style="<c:if test="${webSites.tempnum != rows.tempnum}">display: none;</c:if>"
					alt="${rows.tempname}" title="${rows.tempname}" src="<%=path %>/weixin/gw/images/tempimg/tmp_img_${rows.tempnum}b.jpg" />
					<span class="btn btn_default btn_input" <c:if test="${webSites.tempnum == rows.tempnum}">style="color: white;background: #56a447;"</c:if> ><input type="button" value="<c:if test="${webSites.tempnum == rows.tempnum}">已选择</c:if><c:if test="${webSites.tempnum != rows.tempnum}">选 择</c:if>" onclick="doselectemp(this,'${rows.tempnum }')"/></span>
				</div>
				</c:forEach>
			</div>
		</div>
	    
	</div>
</div>
</div>


</body>
</html>
