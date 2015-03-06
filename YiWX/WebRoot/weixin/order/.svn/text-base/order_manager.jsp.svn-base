<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
<%@page import="com.zhike.sql.beans.OrderDetailBean"%>
<%@page import="com.zhike.sql.beans.OrderBean"%>

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
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/msg_sender.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">

	<script type="text/javascript" src="<%=path%>/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
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
</style>

	</head>
	<body class="page_advanced_reply">
		<%
		OrderBean orderBean = (OrderBean) request.getAttribute("orderBean");
		if(orderBean!=null){
			%>

		<div class="main_hd">
			<div class="title_tab" id="topTab">
				<ul class="title_tab_navs">
					<li class="title_tab_nav js_top selected">
						<a href="">微预约</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main_bd">
			<form id="order" style="margin: 0px;">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input  type="hidden" name="orderDetailBean.oid" value="<%=orderBean.getId()%>"/>
			<input  type="hidden" name="orderDetailBean.appid" value="<%=orderBean.getApp_id()%>"/>
			<input  type="hidden" id="forUsed" name="orderDetailBean.id" value="0" />
				<div class="inner_main">
					<div class="bd">
						<div class="sub_title_bar no_extra">
							<h3>预约信息
								<span class="reply_title_tips">预约人数：
									 <a id="totalRecord"></a>
								</span>
										<span class="reply_title_tips">
											操作类型：
											<select style="width: 130px;" id="member_type" onchange="querySn()" name="orderDetailBean.orderstatus" >
												<option id="9" value="9" selected="selected" >-请选择-</option>
										   		<option id="0" value="0">待确认</option>
										   		<option id="1" value="1">确认</option>
										   		<option id="2" value="2">取消</option>
									   		</select>
										</span>
							
								<a style="float: right;" onclick="history.go(-1)" >
									<span  class="btn"  title="返回" style="margin-top: -5px"><i class="icon-arrow-left"></i>返回</span>
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
				<%
		}
		%>	
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
		var params = $("form[id=order]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'order!requeryCogPage.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
				var totalRecord = josnStr["totalRecord"];
				$('#totalRecord').html(totalRecord);
				
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
		var params = $("form[id=order]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'ordeRequeryCogResult.action', //请求的action路径
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
		//初始化
		requeryCogPage(1);

	})
		
  	function querySn(){
		requeryCogPage(1);
  	}

  	function forOk(id){
  		if(confirm('确认预约？成功后无法更改！')) { 
  			$('#forUsed').val(id);
  			var params = $("form[id=order]").serialize();
  			$.ajax({
  				async : false,
  				cache : false,
  				type : 'POST',
  				data : params,
  				url : 'order!forOk.action', //请求的action路径
  				error : function() {//请求失败处理函数);
  					alert('确认失败');
  				},
  				success : function(data) { //请求成功后处理函数
  	  				if(data=='success'){
  	  				requeryCogPage($('#currentPage_paginator').val());
  	  	  				}
  				}
  			});	
  	  	}	  	
  	  }
  	function forRemove(id){
  			$('#forUsed').val(id);
  			var params = $("form[id=order]").serialize();
  			$.ajax({
  				async : false,
  				cache : false,
  				type : 'POST',
  				data : params,
  				url : 'order!forRemove.action', //请求的action路径
  				error : function() {//请求失败处理函数);
  					alert('取消失败');
  				},
  				success : function(data) { //请求成功后处理函数
  	  				if(data=='success'){
  	  				requeryCogPage($('#currentPage_paginator').val());
  	  	  				}
  				}
  			});	
	  }
	  
  	function forDel(id){
  		if(confirm('确认预约？成功后无法更改！')) { 
  			$('#forUsed').val(id);
  			var params = $("form[id=order]").serialize();
  			$.ajax({
  				async : false,
  				cache : false,
  				type : 'POST',
  				data : params,
  				url : 'order!forDel.action', //请求的action路径
  				error : function() {//请求失败处理函数);
  					alert('删除失败');
  				},
  				success : function(data) { //请求成功后处理函数
  	  				if(data=='success'){
  	  				requeryCogPage($('#currentPage_paginator').val());
  	  	  				}
  				}
  			});	
  	  	}	  	
  	  }
  	
	</script>
</html>