<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockUserBean"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>

<%@page import="com.zhike.sql.beans.PageBean"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" type="text/css"></link>	
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/todc_bootstrap.css">
<script type="text/javascript" src="<%=path%>/js/bootstrap.js"></script>


		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/msg_sender.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/advanced_reply_common19e425.css"
			media="all">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/kindeditor.js"></script>
		<script type="text/javascript" src="<%=path%>/lang/zh_CN.js"></script>
		
		<script type="text/javascript" src="<%=path%>/js/bootstrap-paginator.js"></script>	
		<style type="text/css">
.tool_bar {
	text-align: left;
	margin: 0;
	padding-top: 0;
	border-top-width: 0;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
}

.page_advanced_reply .msg_sender {
	margin-bottom: 20px;
}

.tool_bar .btn {
	margin-left: 0em;
	margin-right: 1em;
}

.msg_sender {
	margin-bottom: 20px;
}

.fontRed{
	color: red;
}
.month_select a{
	width: 14px;
	height: 14px;
	margin: 0px 7px 0;
	text-indent: -999px;
	background-image: url('<%=path%>/weixin/clock/image/icon_month_select.png');
	background-repeat: no-repeat;
	overflow: hidden;
}

.month_select a.link_pre {
background-position: 0 4px;
}
.month_select a.link_pre_forbid {
background-position: 0 -52;
}
.month_select a.link_next {
background-position: 0 -24px;
}
.month_select a.link_next_forbid {
background-position: 0 -80px;
}
</style>

	</head>
	<body class="page_advanced_reply">
	<%
	ClockBean clockBean = (ClockBean)request.getAttribute("clockBean");
	ClockUserBean clockUserBean  = (ClockUserBean)request.getAttribute("clockUserBean");
	%>
	
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a href="">考勤管理</a>
						</li>
					</ul>
				</div>
			</div>
		<div class="main_bd">
			<form id="clock" style="margin: 0px;">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input  type="hidden" name="clockBean.id" value="<%=clockBean.getId()%>"/>
			<input id="clock_service_id" type="hidden" name="clockUserBean.id" value="<%=clockUserBean.getId()%>"/>
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											<span class="reply_title_tips">
											员工姓名：
											 <a><%=clockUserBean.getName() %></a>
											</span>		
											<span class="reply_title_tips">
											工作时间：
											 <a><%=clockBean.getStarttime() %>-<%=clockBean.getEndtime() %></a>
											</span>	
											<span class="reply_title_tips">
											时间制度：
											 <a>
											 <%
											 if(clockBean.getIsflextime()!=null&&clockBean.getIsflextime().equals("1")){
												%>
												弹性制度
												<% 
											 }else{
												 %>
												 正常制度
												<%		
												}%>
												</a>
											</span>	
											<span class="reply_title_tips month_select">
											当前月份：
											<a id="pre" href="#;" class="link_pre" onclick="pre_month()">&nbsp;&nbsp;&nbsp;&nbsp;</a>
											<span id="currentMonth"></span>
											<a id="next" href="#;" class="link_next_forbid" onclick="next_month()">&nbsp;&nbsp;&nbsp;&nbsp;</a>
											</span>												
											<input type="hidden" id="year" name="clockUserBean.query_year"/>
											<input type="hidden" id="month" name="clockUserBean.query_month"/>	

											<a style="float: right;" onclick="history.go(-1)" >
											<span  class="btn"  title="返回" style="margin-top: -5px"><i class="icon-arrow-left"></i>
											返回</span>
											</a>																					
										</h3>
									</div>
								</div>
							</div>
				</form>
				<div id="content"></div>
				<!--分页 -->
				<jsp:include page="${path}/paginator.jsp"></jsp:include>
		</div>
			
			
	</body>
	<script type="text/javascript">
	//分页控件
    var options = {
   		onPageClicked: function(e,originalEvent,type,page){
   			if(page!=$('#currentPage_paginator').val()){
   				requeryCogPage(page);
   	   			}
    	
    	}
    }
    $('#paginator').bootstrapPaginator(options);
	//算总数
	function requeryCogPage(page){
		$('#toPage').val(page);
		var params = $("form[id=clock]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clock!requeryInfoPage.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
					
				if(totalPages_paginator=='0'){
					$('#content').html('');
					$('#paginator').css('display','none');
				}else{
					$('#currentPage_paginator').val(currentPage_paginator);
					$('#totalPages_paginator').val(totalPages_paginator);
					$('#numberOfPages_paginator').val(numberOfPages_paginator);
					$('#paginator').css('display','block');

					options = {
							currentPage: currentPage_paginator,
							totalPages: totalPages_paginator,
							numberOfPages:numberOfPages_paginator,
						}				
					$('#paginator').bootstrapPaginator(options);					
				}
				requeryCogResult();		

			}
		});	
		}
	
	//替换数据
	function requeryCogResult(){
		var params = $("form[id=clock]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clock!requeryInfoResult.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				$('#content').html(data);
				
			}
		});	
	}
	
	//分页控件结束
	
	$(document).ready(function(){
		//当前日期
		var myDate = new Date();
		var year = myDate.getFullYear();
		var month = myDate.getMonth()+1;  
		var currentMonth = year+"-"+month;
		$('#currentMonth').text(currentMonth);
		$('#year').val(year);
		$('#month').val(month);
		
		//初始化
		requeryCogPage(1);

		
	})
		
  	function querySn(){
		requeryCogPage(1);
  	}

 	function pre_month(){
 		$('#next').removeClass().addClass("link_next");
 		
 		var year = $('#year').val();
 		var month = $('#month').val();
		if(month!=1){
			month =  month-1;
		}else{
			year = year-1;
			month = 12;
		}
		var currentMonth = year+"-"+month;
		$('#currentMonth').text(currentMonth);
		$('#year').val(year);
		$('#month').val(month);
		requeryCogPage(1);
 	}
 	function next_month(){
 		var myDate = new Date();
 		var tempYear = myDate.getFullYear(); 
 	 	var tempMonth = myDate.getMonth()+1;  
 		var year = parseInt($('#year').val());
 		var month = parseInt($('#month').val()); 
 		if(month == tempMonth-1 && year == tempYear){
 			$('#next').removeClass().addClass("link_next_forbid");
 	 		}
		if(month == tempMonth && year == tempYear){
			
		}else{
			if(month!=12){
				month =  month+1;
			}else{
				year = year+1;
				month = 1;
			}
			var currentMonth = year+"-"+month;
			$('#currentMonth').text(currentMonth);
			$('#year').val(year);
			$('#month').val(month);
			requeryCogPage(1);
		}
	}

	function tr_onmouseover(id){
		var word = '.word_'+id;
		var time = '.time_'+id;
		$(word).css('display','none');
		$(time).css('display','');
		}
	
	function tr_onmouseout(id){
		var word = '.word_'+id;
		var time = '.time_'+id;
		$(word).css('display','');
		$(time).css('display','none');
		}

	</script>
</html>