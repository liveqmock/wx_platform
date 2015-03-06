<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>
<%@page import="com.zhike.sql.beans.ClockUserBean"%>
<%@page import="com.zhike.sql.beans.ClockInfoBean"%>

<%@page import="com.zhike.finals.Constat"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html >
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta name="format-detection" content="telephone=no">
		<title>考勤记录</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_dialog.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_webapp_new.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new_common.js"></script>
	</head>
<script>
//loading效果定义
var loading_asset = '<%=path%>/weixin/member/image/loading.gif';
function _hideLoading(){
	window.setTimeout(function(){
		var div = document.getElementById('loading'); 
		if (div) div.style.display = 'none'; },250); }
function _showLoading(){ 
	var div = document.getElementById('loading');
	 if (!div){
		 div = document.createElement('div');
		  div.style.display = 'none'; 
		  div.id = 'loading';
		   div.innerHTML = '<div class="lbk"></div><div class="lcont"><img src="'+loading_asset+'" alt="loading..."/>加载中...</div>'; 
		   document.querySelector('body').appendChild(div);
		    } ;
		    window.setTimeout(function(){
			    div.style.top = (_q('body').scrollTop+150)+'px'; div.style.display = ''; }, 150); 
		}


</script>
<style>
.yue{
	background: url('<%=path%>/weixin/member/image/icon_balance.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.jifen{
	background: url('<%=path%>/weixin/member/image/icon_score.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
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
.footer  .back-top a {
	text-decoration:none;
	padding: 5px 10px;
	font-size: 62.5%;
	color: #949494;
}

*{ margin:0; padding:0;}
.clearfix{
	zoom:1;
 	padding:5px; 
 	border-bottom:1px solid #c2c2c2;
 	list-style:none;
}
.clearfix:after {visibility: hidden;display: block;clear: both;height: 0;font-size: 0;content: ".";}
.l_div{
	width:60%; 
	padding-left:10px;
	line-height:22px;
	float:left;
	text-align:left;
}

.r_div{
	width:20%; 
	position:relative;
	float:right;
}

.jifen{
	background: url('<%=path%>/weixin/member/image/icon_score.png') no-repeat 9px 14px; 
	-webkit-background-size: 24px 21px;
	 background-size: 24px 21px;
}
.l_explan{
	font-weight: bold;
}
.l_date{
	font-size: small;
	color:#808080
}
.r_num{
	position: absolute;
	top: 14px;
	right:10px;
	font-weight: bold;
}
.green{
	color:green;
}
.orange{
	color:#f4830d;
}
.page_error{
	text-align: center;
	margin-top: 50px;
	display: inline-block;
	width: 100px;
	height: 115px;
	background: url('<%=path%>/weixin/member/image/no_data.png') no-repeat 0 0;
}
.page_text{
	text-align: center;
	padding-left: 10px;
	margin-top: 25px;
	font-weight: 400;
	color: #000000;	
}
.page-url-link{
	color: gray;
}
.month_choose{
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	border:1px solid #F00;
}
.pre_month{
	width: 20%;
	line-height: 22px;
	float: left;
	border:1px solid blue;
}
.middle{
	width: 60%;
	float: left;
	border:1px solid black;
}
.next_month{
	width: 20%;
	float: left;
	border:1px solid green;
}
.pre_icon{
	margin-top: 6px;
	background-image: url('<%=path%>/weixin/clock/image/pre_icon.png');
	float: right;
	width: 12px;
	height: 22px;
}

.next_icon{
	margin-top: 6px;
	background-image: url('<%=path%>/weixin/clock/image/next_icon.png');
	float: left;
	width: 12px;
	height: 22px;
}
.pre_icon_dis{
	margin-top: 6px;
	background-image: url('<%=path%>/weixin/clock/image/pre_icon_dis.png');
	float: right;
	width: 12px;
	height: 22px;
}

.next_icon_dis{
	margin-top: 6px;
	background-image: url('<%=path%>/weixin/clock/image/next_icon_dis.png');
	float: left;
	width: 12px;
	height: 22px;
}
</style>

	<body id="page_card" style="background: url('<%=path%>/weixin/member/image/bk_repeat1_1.jpg');padding-bottom: 0px;padding-top: 0px;">
	<%
	ClockUserBean  clockUserBean  = (ClockUserBean)request.getSession().getAttribute("clockUserBean");
	ClockBean  clockBean  = (ClockBean)request.getSession().getAttribute("clockBean");
	
	%>
		<div id="mappContainer">
			<div>
			
				<ul>
				  <li class="clearfix" style="height: 40px;">
					<table width="100%">
					  <tr>
					    <td onclick="pre_month()">
					    <div style="width:100%;height:50px;text-align: right;" >
					    <div class="pre_icon"></div>
						</div>
						</td>
					    <td style="width:220px;">
					    	<div style="width:100%;height:50px;">
					    	<span id="currentMonth" style="font-size: small">2014年8月1日 - 2014年8月31日</span><br/>
					    	 <span style="font-size:x-small">
							 <%
							 if(clockBean.getIsflextime()!=null&&clockBean.getIsflextime().equals("1")){
								 %>
								 工作时长:<%=clockBean.getWorktime()%>小时
								 <%
							 }else{
								 %>
								  工作时间:<%=clockBean.getStarttime()%> - <%=clockBean.getEndtime()%>
								 <%
							 }
							 %>
					    	 </span>
					    	</div>
					    </td>
					    <td  onclick="next_month()">
					    <div style="width:100%; height:50px;text-align: left;">
					    <div id="next" class="next_icon_dis"></div>
					    </div>
					    </td>
					  </tr>
					</table>				  
				   </li>					
				</ul>
			
			   <ul id="content" style="background-color: #f5f5f5;">
			   </ul>
				<div id="nodata" style="width: 100%;text-align: center;display: none;">
					<span class="page_error"></span>
					<p class="page_text">暂无考勤记录&nbsp;&nbsp;</p>
				</div>
			</div>
		</div>
		
		<div id="loading" style="top: 243px; display: none;">
			<div class="lbk"></div>
			<div class="lcont">
				<img src="<%=path%>/weixin/member/image/loading.gif" alt="loading...">
				正在加载...
			</div>
		</div>
		
		<form id="history">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input  type="hidden" name="clockUserBean.id" value="<%=clockUserBean.getId()%>"/>
			<input  type="hidden" name="clockBean.id" value="<%=clockBean.getId()%>"/>
			<input type="hidden" id="year" name="clockUserBean.query_year"/>
			<input type="hidden" id="month" name="clockUserBean.query_month"/>	
			
		</form>
	</body>
	<script type="text/javascript">
	
	
 	function pre_month(){
 		$('#next').removeClass().addClass("next_icon");
 		
 		var year = $('#year').val();
 		var month = $('#month').val();
		if(month!=1){
			month =  month-1;
		}else{
			year = year-1;
			month = 12;
		}
		currentMonth(year,month);
		requeryInfoPage(1);
 	}
 	function next_month(){
 		var myDate = new Date();
 		var tempYear = myDate.getFullYear(); 
 	 	var tempMonth = myDate.getMonth()+1;  
 		var year = parseInt($('#year').val());
 		var month = parseInt($('#month').val()); 
 		if(month == tempMonth-1 && year == tempYear){
 			$('#next').removeClass().addClass("next_icon_dis");
 	 		}
		if(month == tempMonth && year == tempYear){
			
		}else{
			if(month!=12){
				month =  month+1;
			}else{
				year = year+1;
				month = 1;
			}
			currentMonth(year,month);
			requeryInfoPage(1);
		}
	}

	function currentMonth(year,month){
		var days;
		switch(month){
		case 1: 
		case 3: 
		case 5: 
		case 7: 
		case 8: 
		case 10: 
		case 12: 
			days = 31;
			break;
		case 2 : 
			if((year%4==0&&year%100!=0)||(year%400==0))
			{
				days = 29;
			}else{
				days = 28;
			}
			break;
		default : 
			days = 30;
			break;
		}
		
		var currentMonth = year+"年"+month+"月1日 - "+year+"年"+month+"月"+days+"日";
		$('#currentMonth').text(currentMonth);
		$('#year').val(year);
		$('#month').val(month);
		}
	
	$(document).ready(function(){
		var myDate = new Date();
		var year = myDate.getFullYear();    //获取完整的年份(4位,1970-????)
		var month = myDate.getMonth()+1;       //获取当前月份(0-11,0代表1月)
		var date = myDate.getDate();        //获取当前日(1-31)

		currentMonth(year,month);
				
		//初始化
		requeryInfoPage(1);
	})
		
	
	//算总数	
	function requeryInfoPage(page){
		_showLoading();
		$('#toPage').val(page);
		var params = $("form[id=history]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clockwx!requeryInfoPage.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
				//显示人数
				//$('#user_count').html(josnStr["totalRecord"]);	
				
				if(totalPages_paginator=='0'){
					$('#content').html('');
					$('#nodata').css('display','');
					_hideLoading();
				}else{
					$('#nodata').css('display','none');
					requeryInfoResult();	
				}
			}
		});	
		}

	//替换数据
	function requeryInfoResult(){
		var params = $("form[id=history]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clockwx!requeryInfoResult.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				_hideLoading();
				$('#content').html(data);
			}
		});	
	}


	</script>
</html>