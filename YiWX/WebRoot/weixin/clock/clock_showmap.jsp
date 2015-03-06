<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<%
	LBSBean lbsBean  = (LBSBean)request.getAttribute("lbsBean");
	if(lbsBean!=null){
	%>
	<title><%=lbsBean.getTitle()%></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&ak=thSqZqVjSs1kp3kmMf1pXkSZ&v=1.0"></script>			
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;} @media (max-device-width: 780px){#golist{display: block!important;}}#golist {display: none;}
</style>

	</head>

	<body class="page_advanced_reply">
	<div id="allmap"></div>
	</body>
	
	<script type="text/javascript">
	
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(<%=lbsBean.getLng()%>,<%=lbsBean.getLat()%>);
	map.centerAndZoom(point, 15);
	map.addControl(new BMap.ZoomControl());          //添加地图缩放控件
	map.addControl(new BMap.ScaleControl());         // 添加比例尺控件
	

	var marker = new BMap.Marker(point);  // 创建标注
	map.addOverlay(marker);              // 将标注添加到地图中

	var opts = {
			  width : 200,     // 信息窗口宽度
			  height: 60,     // 信息窗口高度
			  title : "<%=lbsBean.getTitle() %>" // 信息窗口标题
			}
	var infoWindow = new BMap.InfoWindow("地址：<%=lbsBean.getAddress() %>", opts);  // 创建信息窗口对象
	marker.openInfoWindow(infoWindow,point); //开启信息窗口
	//创建信息窗口

	marker.addEventListener("click", function(){
		window.location.href = "http://api.map.baidu.com/marker?location=<%=lbsBean.getLat()%>,<%=lbsBean.getLng()%>&title=<%=lbsBean.getTitle() %>&content=<%=lbsBean.getAddress()%>&output=html&src=vxinfeng|zhongtou";
		});
	</script>
	<%	
	}
	%>
</html>