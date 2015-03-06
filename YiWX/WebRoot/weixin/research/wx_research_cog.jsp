<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/jquery.sinaEmotion.css" />
		<link rel="stylesheet" href="<%=path%>/weixin/poto/css/default.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/kindeditor.js"></script>
		<script type="text/javascript" src="<%=path%>/lang/zh_CN.js"></script>
		<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
		<script src="<%=path%>/js/weiboTextLen.js"></script>
		
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
		<div class="main_hd">
			<div class="title_tab" id="topTab">
				<ul class="title_tab_navs">
					<li class="title_tab_nav js_top  selected" data-id="media10">
						<a
							href="">题目管理</a>
					</li>
				</ul>
			</div>
		</div>
		<%String basicid = request.getAttribute("basicid").toString();
		 %>
		<div class="main_bd">
			<form id="research" style="margin: 0px;">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input  type="hidden" name="researchViewModel.basicid" value="<%=basicid %>"/>
			<div class="inner_main">
				<div class="bd">
					<div class="sub_title_bar no_extra">
						<h3>
							微调研
							<span class="reply_title_tips"> <a
								>关键词相同时,返回给用户最新创建的相册!</a>
							</span>
							<a href="<%=path%>/photo!add.action?basicid=<%=basicid %>" >
							<span  class="btn"  title="添加相册" ><i class="icon-plus"></i>
							添加相册</span>
							</a>	
							<!-- 
							<a style="float: right;" onclick="querySn()" >
							<span  class="btn"  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
							查询</span>
							</a>
							 -->
							<input name="researchViewModel.title" type="hidden" value="">
							<!-- 
							<input name="quanjingViewModel.title" type="text" placeholder="请输入全景图标题" style="float: right;margin-left:5px;margin-top: 3px"/>
							 -->	
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
		var params = $("form[id=research]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'research!requeryCogPage.action', //请求的action路径
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
					//alert('无人留言');
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
		var params = $("form[id=research]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'showAllResearch!requeryCogResult.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('替换数据失败');
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
  	
  	function del_service(id) {
  		var params = $("form[id=mes"+id+"]").serialize();
  		if(confirm('是否确定删除此相册？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'photo!deletePhoto.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert('服务器访问失败');
				},
				success : function(data) { //请求成功后处理函数
					requeryCogResult();
				}
				
			});	
		}
  	}
  	
  	function edit_service(id) {
  		loadContent('photo!edit.action?id='+id);
  	}
  	
  	function forUsed(id) {
  		var left = ($(window.parent.parent).width() - 450) / 2;
		window.open("<%=path %>/prephoto.action?id="+id, "我的微相册", "height=650,width=450,top=0,left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
  	
  		//loadContent('photo!yulan.action?id='+id);
  	}
  	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}
  	

 
	</script>
</html>