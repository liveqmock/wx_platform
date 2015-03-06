<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.utils.RequestScopeFactory"%>
<%@page import="com.zhike.sql.beans.OrderDetailBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.sql.beans.WxUserBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%@page import="weibo4j.org.json.JSONObject"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
    <head>
    <title>我的订单</title>
	    <script type="text/javascript">var yyuc_jspath = "<%=path %>/";</script>
	    <script type="text/javascript" src="<%=path %>/weixin/order/js/jquery-1.7.2.min.js"></script>
	    <script type="text/javascript" src="<%=path %>/weixin/order/js/yyucadapter.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=path %>/weixin/order/css/order.css" media="all" />
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
        <meta name="Keywords" content="" />
        <meta name="Description" content="" />
        <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
        <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
        <meta content="no-cache" http-equiv="pragma">
        <meta content="0" http-equiv="expires">
        <meta content="telephone=no, address=no" name="format-detection">
        <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <!-- Mobile Devices Support @end -->
        <style>
img.mm{ width:100%!important;}
            
.footermenu {
position: fixed;
bottom: 0;
left: 0;
right: 0;
z-index: 900;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.footermenu ul {
border-top: 1px solid #3D3D46;
position: fixed;
z-index: 900;
bottom: 0;
left: 0;
right: 0;
margin: auto;
display: block;
width: 100%;
background: rgba(255,255,255,0.7);
height: 48px;
display: -webkit-box;
display: box;
-webkit-box-orient: horizontal;
background: -webkit-gradient(linear, 0 0, 0 100%, from(#697077), to(#3F434E), color-stop(60%, #464A53));
box-shadow: 0 1px 0 #949494 inset;
}
.footermenu ul li{
width: auto!important;
height: 100%;
position: static!important;
margin: 0;
border-radius: 0!important;
-webkit-box-sizing: border-box;
box-sizing: border-box;
-webkit-box-flex: 1;
box-flex: 1;
-webkit-box-sizing: border-box;
box-shadow: none!important;
background: none;
}
.footermenu ul li a {
color: #fff;
font-size: 20px;
line-height: 20px;
text-align: center;
display: block;
text-decoration: none;
padding-top: 2px;
position:relative;
text-shadow:0 1px rgba(0, 0, 0, 0.2);
}
.footermenu ul li a.active {
    background:-webkit-gradient(linear, 0 0, 0 100%, from(#535A5F), to(#17181B), color-stop(60%, #32363A));
	border: 1px solid rgba(148, 148, 148, 0.6);
	border-bottom:0;
}
.footermenu ul li a .num {
font-size:10px;
	position:absolute;
	left: 55%;
	top:-5px;
	background-color:#eb3634;
	color:#fff;
	font-family:Verdana;
	font-weight:normal;
	line-height:10px;
	padding:2px 4px;
	-moz-box-shadow:0 0 0 2px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
	-webkit-box-shadow:0 0 0 2px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
	box-shadow:0 0 0 2px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
	border-radius:15px;
}
.footermenu ul li a img{
width:24px;
height:24px;
}
.footermenu ul li a p{
margin: 2px 0 0 0;
font-size: 12px;
display: block !important;
line-height: 18px;
text-align: center;
}
.round_photo{
    width:110px;
    height:110px;
    border:4px solid #ddddde;
    -moz-border-radius: 59px;
    -webkit-border-radius: 59px;
    border-radius:59px;
    behavior:url(PIE.htc);
    top:50px;
    left:20px;
}
</style>
</head>
<body id="hotels" ondragstart="return false;" onselectstart="return false;" >
	<%
		List<OrderDetailBean> detailBeans = (List<OrderDetailBean>) request.getAttribute("L_ORDERDETAILBEANS");
		WxUserBean wxUserBean = (WxUserBean) RequestScopeFactory.SessionScope().get(Constat.LOGIN_WXSESSION);	
		if(detailBeans == null) detailBeans = new ArrayList<OrderDetailBean>();
	%>
    <section class="body">
        <div class="cardexplain">
  			<div class="inner root" style="height: 100%;text-align: center;">
				<div>
				<img class="round_photo" src="<%=wxUserBean.getHeadimgurl() %>"/>
				<p style="margin: 15px;font-weight: bold;"><%=wxUserBean.getNickname() %></p>
				</div>
			</div>	      
	            
	        <ul class="round">
	        	<%
					
					for(OrderDetailBean bean : detailBeans){
						JSONArray array = new JSONArray(bean.getOrderdetail());
				%>
	            <li class="title">
					<a style="display: block;width:100%;height:100%;">
						<span>订单详情
						<%
						switch(bean.getOrderstatus()){
						case 1: %>
						<em class="ok">已确认</em>
						<%break;
						case 2: %>
						<em class="error">已取消</em>
						<%break;
						default:%>
						<em class="no">未处理</em>
						<%break;
						}
						%>
						</span>
					</a>
				</li>
				<li>
					<div class="text">
					<p>提交时间:<%=bean.getOrdertime() %></p>
					
						<%
							for(int i = 0 ; i< array.length();i++){
							JSONObject object = array.getJSONObject(i);
						%>
							<p><%=object.getString("name") %>：<%=object.getString("value") %></p>
						<%
							}
						%>
					</div>
				</li>
				<%
					}
				%>
			</ul> 
		</div>
</section>

<script type="text/javascript">

</script> 
<div class="mfooter" id="wxgjfooter" style="text-align: center;width: 100%;height: 20px;line-height: 20px;margin-top:10px;">
	<span class="sp2"><a href="http://www.vxinfeng.com" style="color: #5e5e5e;font-size: 12px;">技术支持：微信封(vxinfeng)</a></span>
</div>
<div style="width: 0px;height: 0px;overflow: hidden;">
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F43da571de43e9d6228927d0883b8b8b4' type='text/javascript'%3E%3C/script%3E"));
</script>

</div>
<script>
/**
$(function(){
	if($('body').height()<$(window).height()){
		$('body').height($(window).height());
		$('#wxgjfooter').css('position','fixed').css('bottom','0px');
	}
});
**/
</script>
</body>
</html>