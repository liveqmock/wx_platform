<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<%
	GuaguakaBean guaguakaBean = (GuaguakaBean)request.getSession().getAttribute("guaguakaBean");
	if(guaguakaBean!=null){
		%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 

    <title><%=guaguakaBean.getTitle() %></title>
    
    <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
     <script type="text/javascript" src="<%=path%>/js/service/wScratchPad.js"></script>  
    <link rel="stylesheet" href="<%=path%>/css/service/fl.normal.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/service/skin.orange.css" type="text/css"></link></head>
    <link rel="Stylesheet" type="text/css" href="<%=path%>/service/guaguaka.css" />
   

</head>
<body >
		<div class="main">
			<div class="content">
				<section class="turntable-lottery">
				<form id="turntableForm3">
				<div style="height: 20px;">
				</div>
					<div class="content">
						<div class="title">
							活动状态：
						</div>
						<p class="desc">
						<%
						if(guaguakaBean.getState()==1){
							%>
							当前活动还未开始,请在活动开始后再来抽奖吧!
							<%	
						}else if(guaguakaBean.getState()==2){
							%>
							亲，活动已经结束，请继续关注我们的后续活动哦。	
							<%
						}
						%>
						</p>
					</div>				
					<div class="content">
						<div class="title">
							活动规则：
						</div>
						<p class="desc">
							每个帐号每天有<%=guaguakaBean.getEverydaytime()%>次抽奖机会<br>总计可以抽奖<%=guaguakaBean.getTotaltime()%>次
						</p>
					</div>
					<div class="content">
						<div class="title">
							活动时间：
						</div>
						<p class="desc">
							开始时间：<%=guaguakaBean.getStarttime() %> 
							<br>
							结束时间：<%=guaguakaBean.getEndtime() %> 
						</p>
					</div>
					<div class="content">
						<div class="title">
							奖项设置：
						</div>
						<%
						if(guaguakaBean.getOne_number()!=0){
							%>
							<p class="desc">
							一等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getOne_number() %>名）<%}%>：<%=guaguakaBean.getOne_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getTwo_number()!=0){
							%>
							<p class="desc">
							二等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getTwo_number() %>名）<%}%>：<%=guaguakaBean.getTwo_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getThree_number()!=0){
							%>
							<p class="desc">
							三等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getThree_number() %>名）<%}%>：<%=guaguakaBean.getThree_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getFour_number()!=0){
							%>
							<p class="desc">
							四等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getFour_number() %>名）<%}%>：<%=guaguakaBean.getFour_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getFive_number()!=0){
							%>
							<p class="desc">
							五等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getFive_number() %>名）<%}%>：<%=guaguakaBean.getFive_prize() %>
							</p>
							<%
						}
						%>																							
					</div>
					<div class="content">
						<div class="title">
							其他说明：
						</div>
						<p class="desc">
							<%=guaguakaBean.getExplain_service() %>
						</p>
					</div>
				<div style="height: 20px;">
				</div>
				</form>
				</section>
			
			</div>
			<footer class="footer">
			<section class="f-content center">
			<span class="back-top left"> <a
				href="http://www.vxinfeng.com">本页面由微信封 vxinfeng.com支持</a> </span>
			<span class="back-top right"> <a class="ml10 fl_report"
				data-url="http://fl.act.qq.com/report/report/reason">举报</a> </span>
			</section>
			</footer>
		</div>	
</body>
		<%
	}
	%>
</html>