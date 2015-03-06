<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>
<%@page import="com.zhike.sql.beans.ClockDepartmentBean"%>
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
.dialog_title{
	display: block;
	font-size: 1.17em;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	font-weight: bold;
}
.frm_label {
	float: left;
	width: 6em;
	margin-top: .3em;
	margin-right: 1em;
}
.frm_input {
	height: 22px;
	margin: 4px 0;
}
</style>

	</head>
	<body class="page_advanced_reply">
	
	<%
	ClockBean clockBean  = (ClockBean)request.getAttribute("clockBean");
	List<ClockDepartmentBean> clockDepartmentBeanList =  (List<ClockDepartmentBean>)request.getAttribute("clockDepartmentBeanList");
	//List<ClockUserBean> clockUserBeanList = (List<ClockUserBean>)request.getAttribute("clockUserBeanList");
	%>	
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="">考勤管理</a>
						</li>
					</ul>
				</div>
			</div>
	<form id="clock" style="margin: 0px;">
		<div class="main_bd">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input id="clock_service_id" type="hidden" name="clockUserBean.service_id" value="<%=clockBean.getId()%>"/>
			<input type="hidden" name="clockBean.id" value="<%=clockBean.getId()%>"/>
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											员工管理
											<span class="reply_title_tips">
											员工人数：
											 <a id="user_count"></a>
											</span>
											<span class="reply_title_tips">
											部门名称：
											<select style="width: 130px;margin-bottom: 6px;" id="clockde_id" onchange="querySn()" name="clockUserBean.clockde_id" >
												<option id="0" value="0" selected="selected" >-请选择-</option>
												<%
												for(int i=0;i<clockDepartmentBeanList.size();i++){
													%>
													<option id="<%=clockDepartmentBeanList.get(i).getId()%>" value="<%=clockDepartmentBeanList.get(i).getId()%>"><%=clockDepartmentBeanList.get(i).getName()%></option>
													<%
												}
												%>												
									   		</select>
											</span>											
											<span class="reply_title_tips">
											员工姓名：
											</span>	
											<input type="text" placeholder="请输入员工姓名" style="margin-left:5px;margin-top: 3px" name="clockUserBean.name"/>																						
											<a onclick="querySn()" >
											<span  class="btn"  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
											查询</span>
											</a>	
											
									
											<a style="float: right;" onclick="history.go(-1)" >
											<span  class="btn"  title="返回" style="margin-top: -5px"><i class="icon-arrow-left"></i>
											返回</span>
											</a>			
										</h3>
					
									</div>
								</div>
							</div>
				
				<div id="content"></div>
				<!--分页 -->
				<jsp:include page="${path}/paginator.jsp"></jsp:include>
		</div>
 	</form>
 <form id="form_modal">
 	<input id="forUsed" type="hidden" name="clockUserBean.id" value="0"/>
 
<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">部门权限操作</h3>
  </div>
  <div class="modal-body">
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				审批权限:
			</label>
			<span>
			<%
			for(int i=0;i<clockDepartmentBeanList.size();i++){
				%>
				<input class="checkclass" name="clockUserBean.clickde" type="checkbox" value="<%=clockDepartmentBeanList.get(i).getId()%>"/><span style="margin-top: 2px"><%=clockDepartmentBeanList.get(i).getName() %></span>&nbsp;&nbsp;
				<%
			}
			%>
			</span>
		</div>  
		<br/>
		<div class="appmsg_edit_item">
				<span class="help-block">每个部门只能有一个审批人员,保存将覆盖之前的操作。</span>
		</div>			
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
    <a class="btn btn-primary" onclick="saveMyModal()">保存</a>
  </div>
</div>
</form>
<form id="form_clock_user">
	<input id="clock_user_id" type="hidden" name="clockUserBean.id" />	
</form>
  
	</body>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
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
			url : 'clock!requeryUserPage.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
				//显示人数
				$('#user_count').html(josnStr["totalRecord"]);	
				
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
			url : 'clock!requeryUserResult.action', //请求的action路径
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
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}
 	 
  	function forUsed(id){
  		$('#forUsed').val(id);
  		 _showMyModal();
  	}
  	
  	function forInfo(id){
  		loadContent('clock!forInfo.action?id='+id);
  	} 
  		
  	function delInfo(id){
		$('#clock_user_id').attr('value',id);
		var params = $("form[id=form_clock_user]").serialize();
		if(confirm('确定删除？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'clock!delOneUser.action', //请求的action路径
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
  	
  	
  	function saveMyModal(){
  		_hideMyModal();
		var params = $("form[id=form_modal]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clock!saveClockUserDe.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				if(data=='success'){
					requeryCogPage($('#currentPage_paginator').val());
				}else{
					//alert(data);
				}
			}
		});	  	 		
	
  	  	}
	function _showMyModal(){
		 $('#myModal').modal('show');
		 $('.checkclass').removeAttr("checked");
		}	
	function _hideMyModal(){
		 $('#myModal').modal('hide');
		}  	

	function entity_card(id){
		loadContent('member!entityCard.action?id='+id);
		}
  	

  	
	</script>
</html>