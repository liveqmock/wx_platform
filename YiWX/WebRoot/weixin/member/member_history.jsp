<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberInfoCogBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>

<%@page import="com.zhike.sql.beans.WxUserBean"%>
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
	<%
	List<MemberInfoCogBean> memberInfoCogBeanList  = (List<MemberInfoCogBean>)request.getSession().getAttribute("memberInfoCogBeanList");
	%>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta name="format-detection" content="telephone=no">
		<title>会员卡明细</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_dialog.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_webapp_new.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new.js"></script>
		<script src="<%=path%>/weixin/member/js/wei_webapp_new_common.js"></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap-paginator.js"></script>	
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
		   div.innerHTML = '<div class="lbk"></div><div class="lcont"><img src="'+loading_asset+'" alt="loading..."/>正在加载...</div>'; 
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
</style>

	<body id="page_card" style="background: url('<%=path%>/weixin/member/image/bk_repeat1_1.jpg');padding-bottom: 0px;padding-top: 0px;">
	<%
	MemberInfoBean memberInfoBean = (MemberInfoBean)request.getAttribute("memberInfoBean");
	%>
		<div id="mappContainer">
			<div>
			   <ul id="content" style="background-color: #f5f5f5;">
			   </ul>
				<div id="nodata" style="width: 100%;text-align: center;display: none;">
					<span class="page_error"></span>
					<p class="page_text">暂无消费记录&nbsp;&nbsp;</p>
				</div>
				<p style="text-align: center;margin-top: 10px;margin-bottom: 10px;">
				<img id="loadingImg" style="vertical-align: middle;display:none;" src="<%=path%>/weixin/member/image/loading.gif" width="25px"></img>
					<a  onclick="getMore()" class="page-url-link" id="getMore">
					点击加载更多</a>
				</p>			   
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
			<input id="clock_service_id" type="hidden" name="memberInfoCogBean.memberInfo_id" value="<%=memberInfoBean.getId()%>"/>
		</form>
		<div style="display: none;">
		<!--分页 -->
		<jsp:include page="${path}/paginator.jsp"></jsp:include>
		</div>
	</body>
	<script type="text/javascript">
	

	$(document).ready(function(){
		//初始化
		requeryHistoryPage(1);
	})
		
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
	function requeryHistoryPage(page){
		$('#toPage').val(page);
		$('#loadingImg').css('display','');
		$('#getMore').html('加载中');
		var params = $("form[id=history]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'memberwx!requeryHistoryPage.action', //请求的action路径
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
					$('#paginator').css('display','none');
					$('#loadingImg').css('display','none');
					$('#nodata').css('display','');
					$('#getMore').css('display','none');
					tempLoading =false;
				}else{
					$('#currentPage_paginator').val(currentPage_paginator);
					$('#totalPages_paginator').val(totalPages_paginator);
					$('#numberOfPages_paginator').val(numberOfPages_paginator);
					$('#paginator').css('display','block');
					requeryHistoryResult();	
				}
			}
		});	
		}

	//替换数据
	function requeryHistoryResult(){
		var params = $("form[id=history]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'memberwx!requeryHistoryResult.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				$('#content').append(data);
				//处理分页
				$('#loadingImg').css('display','none');
				$('#getMore').html('点击加载更多');
				tempLoading = true;
				if($('#currentPage_paginator').val()==$('#totalPages_paginator').val()){
					$('#getMore').html('没有更多了');
					tempLoading =false;
					}	
			}
		});	
	}

	var tempLoading = true;
	function getMore(){
		var currentPage = $('#currentPage_paginator').val();
		if(tempLoading){
			currentPage++;
			requeryHistoryPage(currentPage);
			tempLoading = false;
			}
	}
	</script>
</html>