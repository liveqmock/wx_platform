<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" type="text/css"></link>	
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/todc_bootstrap.css">
<script type="text/javascript" src="<%=path%>/js/bootstrap.js"></script>	
	
	
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media_list.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
	
		
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
		
		<style type="text/css">
		
		.user_info_img{
			width: 48px;
			height: 48px;
		}
		.nick_name{
			color: #222;
		}
		.wxMsg{
			width:550px;
			max-width:550px;
			color: #7b7b7b;
		}
		.wxTime{
			color: #7b7b7b;
		}		
		.tips{
			font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
			margin-left: 1em;
			color: #a67c52;
			font-weight: 400;
			font-style: normal;
		}
		</style>
		<script type="text/javascript">
		function tr_onmouseover(i){
			$('#icon_'+i).css('display','block');
		}
		function tr_onmouseout(i){
			$('#icon_'+i).css('display','none');
		}	
		function checkBoxChange(){
			var checkVal = 	$('#ipt_checkbox').val();
			if(checkVal==1){
				$('#icon_checkbox').removeClass().addClass("icon_checkbox");
				$('#ipt_checkbox').val(0);
			}else{
				$('#icon_checkbox').removeClass().addClass("icon_checkbox selected");
				$('#ipt_checkbox').val(1);
			}
			requeryPage(1);
			
		}	
		</script>
	</head>
<body >
		<%
			//List<MaterialBean> materialBeans = (List<MaterialBean>) request.getAttribute(Constat.MATERIALS);
		%>

		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a style="line-height: 35px;"  href="<%=path %>/selectAllNewMaterialByUserId.action">今天</a>
						</li>
						<li class="title_tab_nav js_top " data-id="media10">
							<a style="line-height: 35px;" href="<%=path %>/file!show.action">昨天</a>
						</li>	
						<li class="title_tab_nav js_top " data-id="media10">
							<a style="line-height: 35px;" href="<%=path %>/file!show.action">前天</a>
						</li>	
						<li class="title_tab_nav js_top " data-id="media10">
							<a style="line-height: 35px;" href="<%=path %>/file!show.action">全部消息</a>
						</li>		
						<li class="title_tab_nav js_top " data-id="media10">
							<a style="line-height: 35px;" href="<%=path %>/file!show.action">星标消息</a>
						</li>																				
					</ul>
				</div>
			</div>
			<div class="main_bd" >
				<div class="sub_title_bar white">
					<div class="info">
						<h3 id="page_title">
							图文消息列表(共<span id="js_listCount">123</span>个)
							<label onclick="checkBoxChange()" class="frm_checkbox_label " style="margin-left: 10px;">
							<i id="icon_checkbox" class="icon_checkbox selected" ></i>
								隐藏已回复消息
							</label>
						</h3>
					</div>
				</div>
				
			<div id="content" class="main_bd" style="padding:0px 20px 0px 20px;">
			</div>	
				<div style="text-align: center;">
					<a id="prev" href="javascript:void(0);" onclick="prev_click()" class="btn page_prev"><i class="arrow"></i></a>
					<span class="page_num">
		                <label id="fenye" style="margin: 0 2px 0 2px">2 / 3</label>
         	  		 </span>
					<a id="next" href="javascript:void(0);" onclick="next_click()" class="btn page_next"><i class="arrow"></i></a>
					<span class="goto_area">
				        <input id="tiaozhuan" type="text" style="margin-top: 10px;">
				        <a href="javascript:void(0);" onclick="tiaozhuan()" class="btn page_go">跳转</a>
				    </span>
				  <jsp:include page="${path}/paginator.jsp"></jsp:include>
				</div>
				
				
					
			</div>
		</div>
	<div>
		<form id="kefu">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input type="hidden" id ="ipt_checkbox" name="userActionBean.hidden" value="1"/>
		</form>
	</div>
</body>
	
<script type="text/javascript">

//算总数
function requeryPage(page){
	$('#toPage').val(page);
	var params = $("form[id=kefu]").serialize();
	$.ajax({
		async : false,
		cache : false,
		type : 'POST',
		data : params,
		url : 'kefu!requeryPage.action', //请求的action路径
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
			}
			fenye(currentPage_paginator,totalPages_paginator);
			requeryResult();		

		}
	});	
	}

//替换数据
function requeryResult(){
	var params = $("form[id=kefu]").serialize();
	$.ajax({
		async : false,
		cache : false,
		type : 'POST',
		data : params,
		url : 'kefu!requeryResult.action', //请求的action路径
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
	requeryPage(1);

})

function fenye(current,total){
	if(total!=0){
		$('#fenye').html(current+' / '+total);
		if(current==1){
			$('#prev').css('display','none');
		}else{
			$('#prev').css('display','');
		}
		if(current==total){
			$('#next').css('display','none');
		}else{
			$('#next').css('display','');
		}
	}else{
		
	}	
}

function prev_click(){
	var page = $('#currentPage_paginator').val();
	page--;
	requeryPage(page);
}

function next_click(){
	var page = $('#currentPage_paginator').val();
	page++;
	requeryPage(page);
}

function tiaozhuan(){
	var totalPage = $('#totalPages_paginator').val();
	var tiaozhuanPage = $('#tiaozhuan').val();
	if(tiaozhuanPage<=totalPage&&tiaozhuanPage>0){
		requeryPage(tiaozhuanPage);
	}else{
		alert('请输入正确的页码');
	}
}

</script>
</html>