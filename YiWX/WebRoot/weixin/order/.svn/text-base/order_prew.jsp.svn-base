<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.zhike.sql.beans.OrderBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%@page import="weibo4j.org.json.JSONObject"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
    <head>
    <%
	OrderBean bean = (OrderBean) request.getAttribute("order_mobile_prew");
    %>	
    <title><%=bean.getTitle() %></title>
    <script type="text/javascript">var yyuc_jspath = "<%=path %>/";</script>
    <script type="text/javascript" src="<%=path %>/weixin/order/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="<%=path %>/weixin/order/js/yyucadapter.js"></script>
    
    <script type="text/javascript" src="<%=path %>/js/weixinJS.js"></script>
    
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/weixin/order/css/order.css" media="all" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <!-- Mobile Devices Support @begin -->
    <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
    <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
    <meta content="no-cache" http-equiv="pragma">
    <meta content="0" http-equiv="expires">
    <meta content="telephone=no, address=no" name="format-detection">
    <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <script type="text/javascript" src="<%=path %>/weixin/order/js/swipe.js"></script>
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
    </style>
</head>
<body id="hotels" ondragstart="return false;" onselectstart="return false;" >
	<%
		if(bean == null) bean = new OrderBean();
	%>
	<input type="hidden" value ="<%=bean.getConditions() %>" class="bookingset"/>
	<section class="body">
		<div class="banner">
			<div id="imgs_box" class="box_swipe">
				<img class="mm" src="<%=bean.getImg() %>" style="width: 100%;">	
			</div>
		</div>
		<div class="cardexplain">
			<ul class="round">
				<li class="title mb"><span class="none">预约说明</span></li>
				<li class="nob"><span><%=bean.getIntroduce() %></span></li>
			</ul>

			<!--后台可控制是否显示-->
			<ul class="round">
				<li class="tel"><a href="tel:<%=bean.getTel() %>"><span><%=bean.getTel() %> </span></a></li>
				<li class="addr"><a href="http://api.map.baidu.com/marker?location=<%=bean.getLat()%>,<%=bean.getLng()%>&title=<%=bean.getTitle() %>&content=<%=bean.getPlace()%>&output=html&src=vxinfeng|zhongtou"><span><%=bean.getPlace() %></span></a></li>
			</ul>

			<ul class="round">
                <li>
                    <a href="<%=path %>/selectAllWxOrderByAppIdAndWID.action?serviceid=<%=bean.getId() %>" >
                        <span>我的在线预约<em class="ok"><%=bean.getOrderCount() %></em></span>
                    </a>
                </li>
            </ul>

			<ul class="round" id="theform">
					<li class="title mb"><span class="none">请认真填写预约订单</span></li>
					
					<%
						JSONArray array = new JSONArray(bean.getConditions());
						for(int i = 0 ; i < array.length() ; i++){
							JSONObject object = array.getJSONObject(i);
					%>
						<li class="nob">
							<table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
							<tbody>
							<tr>
								<th><%=object.get("name") %></th>
								<td>
								<%
									String type = object.getString("type");
									if("text".compareTo(type) == 0){
								%>
									<input type="text" data-title="<%=object.get("name") %>" value="" class="px sv" placeholder="<%=object.getString("holder") %>"/>
								<%
									}
									else if("textarea".compareTo(type) == 0){
								%>
								<textarea data-title="<%=object.get("name") %>" class="pxtextarea sv" style="height:99px;overflow-y:visible" placeholder="<%=object.getString("holder") %>"></textarea>
								<%	}
									else if("datetime".compareTo(type) == 0){
								%>
								<input type="text" data-title="<%=object.get("name") %>" value="" class="px sv" placeholder="<%=object.getString("holder") %>" mdate="date" relobj="yyucmcalendar" rel="yyuc"/>
								<%
									}
									else if("select".compareTo(type) == 0){
								%>
								<select class="dropdown-select sv" data-title="<%=object.get("name") %>">
									<%
										StringTokenizer tokenizer = new StringTokenizer(object.getString("holder"),"|");
										while ( tokenizer.hasMoreElements() ){
										String selVal = tokenizer.nextToken();
									%>
										<option value="<%=selVal %>" ><%=selVal %></option>
									<%
										}
									%>
								</select>
								<%
									}
								%>
								</td>
							</tr>
							</tbody></table>
						</li>
					<%
						}
					%>
			</ul>
			<div class="footReturn">
				<a id="showcard" class="submit" href="javascript:void(0);">提   	&nbsp;&nbsp;交</a>
				<div class="window" id="windowcenter">
					<div id="title" class="wtitle">提示<span class="close" id="alertclose"></span></div>
					<div class="content">
						<div id="txt"></div>
					</div>
				</div>
			</div>
		</div>
</section>
<div class="mfooter" id="wxgjfooter" style="text-align: center;width: 100%;height: 20px;line-height: 20px;margin-top:10px;">
	<span class="sp2"><a href="http://www.vxinfeng.com" style="color: #5e5e5e;font-size: 12px;">技术支持：微信封(vxinfeng)</a></span>
</div>
<div style="width: 0px;height: 0px;overflow: hidden;">
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F43da571de43e9d6228927d0883b8b8b4' type='text/javascript'%3E%3C/script%3E"));
</script>

</div>
<div>
<form method="post" id="theforms">
	<input type="hidden" name="orderInformation" id="orderInformation"/>
	<input type="hidden" name="oid" value="<%=bean.getId() %>">
	<input type="hidden" name="appid" value="<%=bean.getApp_id() %>"/>
	<input type="hidden" name="openid" value="<%=bean.getWid() %>">	
</form>
</div>
     <script>
    	$(document).ready(function(){
    		$(function(){
				new Swipe(document.getElementById('imgs_box'), {
					speed:500,
					//auto:3000,
					callback: function(index, elem){
						var lis = $('#imgs_box').children("ol").children();
						lis.removeClass("on").eq(index).addClass("on");
					}
				}); 
			});
    		
    		$('#showcard').click(function(){
    			var ctj = true;
    			$('#theform').find('select,input[type="text"]').each(function(){
    				if($.trim($(this).val())==''){
    					ctj = false;
    				}
    			});
    			if(!ctj){
    				tusi('请填写完整预约项');
    				return;
    			}
    			var orderArray = [];
    			$('.sv').each(function(){
    				var order = {name : $(this).attr('data-title'),value:$(this).val()};
    				orderArray.push(order);
    			});
    			$('#orderInformation').val(JSON.stringify(orderArray));
    			$.ajax({
    			url:'<%=path %>/addNewWXOrder.action',
    			data:$('#theforms').serialize(),
    			type:'POST',
    			success:function(m){
    				if(m=='ok'){
    					$('#txt').text('提交成功');
    					$('#windowcenter').slideDown();
    				}
    				setTimeout(function(){
    					$('#windowcenter').slideUp();
    					location.href = location.href;
    				},1000);
    			}
    			});
    		});
    	});
   	</script>
</body>
</html>

