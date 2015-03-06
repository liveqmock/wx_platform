<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
<%@page import="com.zhike.sql.beans.MemberEntityCardBean"%>
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
	MemberBean memberBean  = (MemberBean)request.getAttribute("memberBean");
	%>	
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="">实体会员卡</a>
						</li>
					</ul>
				</div>
			</div>
	<form id="member" style="margin: 0px;">
		<div class="main_bd">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input id="member_service_id" type="hidden" name="memberEntityCardBean.service_id" value="<%=memberBean.getId()%>"/>
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											实体卡信息
											<span class="reply_title_tips">
											会员人数：
											 <a id="member_count"></a>
											</span>
											<span class="reply_title_tips">
											实体卡号：
											</span>	
											<input type="text" placeholder="请输入实体卡号" style="margin-left:5px;margin-top: 3px;width:100px;" name="memberEntityCardBean.card_id" value=""/>
											<span class="reply_title_tips">
											姓名：
											</span>	
											<input type="text" placeholder="请输入姓名" style="margin-left:5px;margin-top: 3px;width:100px;" name="memberEntityCardBean.card_name"  value=""/>	
											<span class="reply_title_tips">
											生日：
											</span>	
											<input type="text" placeholder="模糊搜索,如：-01-或01-24" style="margin-left:5px;margin-top: 3px;width:170px;" name="memberEntityCardBean.card_birthday"  value=""/>																																													
											<a onclick="querySn()" >
											<span  class="btn"  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
											查询</span>
											</a>	
	
											<a style="float: right;" onclick="history.go(-1)" >
											<span  class="btn"  title="返回" style="margin-top: -5px"><i class="icon-arrow-left"></i>
											返回</span>
											</a>	
											<a style="float: right;margin-right: 5px;" onclick="forAdd()" >
											<span  class="btn"  title="添加实体卡" style="margin-top: -5px"><i class="icon-plus"></i>
											添加实体卡</span>
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
  	<input id="form_modal_service_id" type="hidden" name="memberEntityCardBean.service_id" value="<%=memberBean.getId()%>"/>
 	<input id="entity_Card_id" type="hidden" name="memberEntityCardBean.id" value="0"/>
 
<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">添加实体会员卡</h3>
  </div>
  <div class="modal-body">
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				实体卡号:
			</label>
			<span>
				<input  id="card_id" name="memberEntityCardBean.card_id" type="text" placeholder="实体卡号,必填"" style="margin-top: 2px" />	
			</span><span class="fontRed">*</span>	
		</div>  
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				实体卡密码：
			</label>
			<span>
				<input  id="card_password" name="memberEntityCardBean.card_password" type="text" placeholder="实体卡密码,没有则不填" style="margin-top: 2px" />	
			</span>
		</div>  
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				姓名:
			</label>
			<span>
			<input id="card_name" name="memberEntityCardBean.card_name" type="text" placeholder="实体卡会员姓名" style="margin-top: 2px"  /> 

			</span>
		</div> 	
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				性别：
			</label>
			<span>
				<select id="card_sex" name="memberEntityCardBean.card_sex" >
					 <option selected="selected" value="0">-请选择-</option>
					 <option  value="1">男</option>
					 <option  value="2">女</option>
		   		</select>
			</span>
		</div> 
		<div class="appmsg_edit_item">
			<label for="" class="frm_label" style="margin-top: 10px" >
				手机号：
			</label>
			<span>
				<input  id="card_tel" name="memberEntityCardBean.card_tel" type="text" placeholder="实体卡会员的手机号" style="margin-top: 10px" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" />	
			</span>
		</div>  		
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				生日：
			</label>
			<span>
				<input  id="card_birthday" name="memberEntityCardBean.card_birthday" type="text" placeholder="格式例如:1987-01-04" style="margin-top: 2px" />	
			</span>
		</div> 	
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				备注:
			</label>
			<span>
			<input id="card_remark" name="memberEntityCardBean.card_remark" type="text" placeholder="对实体卡会员进行备注" style="margin-top: 2px"  />	

			</span>
		</div> 
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				余额:
			</label>
			<span>
			<input id="card_yue" name="memberEntityCardBean.card_yue" type="text" placeholder="实体卡余额" style="margin-top: 2px" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')"  />	

			</span>
		</div> 
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				积分:
			</label>
			<span>
			<input id="card_jifen" name="memberEntityCardBean.card_jifen" type="text" placeholder="实体卡积分" style="margin-top: 2px"  onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" />	

			</span>
		</div> 				
					 		 									
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
    <a class="btn btn-primary" onclick="saveMyModal()">保存</a>
  </div>
</div>
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
		var params = $("form[id=member]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'member!requeryEntityCardPage.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
				//显示人数
				$('#member_count').html(josnStr["totalRecord"]);	
				
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
		var params = $("form[id=member]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'member!requeryEntityCardResult.action', //请求的action路径
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

	function forAdd(){
		_showMyModal();
	}
	
  	function forEdit(id,card_id,card_password,card_sex,card_name,card_birthday,card_tel,card_remark,card_yue,card_jifen){
  		_showMyModal();
		 $('#entity_Card_id').val(id);
		 
		 $('#card_id').val(card_id);
		 $('#card_password').val(card_password);
		 $('#card_sex').val(card_sex);
		 $('#card_name').val(card_name);
		 $('#card_birthday').val(card_birthday);
		 $('#card_tel').val(card_tel);
		 $('#card_remark').val(card_remark);
		 $('#card_yue').val(card_yue);
		 $('#card_jifen').val(card_jifen);
  		
  		 
  	}
  	
  	function forDel(id){
  		 $('#entity_Card_id').val(id);
  		if(confirm('确定删除？此操作不可以恢复！')) { 
  			var params = $("form[id=form_modal]").serialize();
  			$.ajax({
  				async : false,
  				cache : false,
  				type : 'POST',
  				data : params,
  				url : 'member!delEntityCard.action', //请求的action路径
  				error : function() {//请求失败处理函数);
  					alert('查询失败');
  				},
  				success : function(data) { //请求成功后处理函数
  					if(data=='success'){
  						requeryCogPage($('#currentPage_paginator').val());
  					}else{
  						alert(data);
  					}
  				}
  			});	   	  		
  	  		}
  	} 	
  	
  	function saveMyModal(){
  	  	if($('#card_id').val()==''){
  	  	  	alert('请输入实体卡号。');
  	  	  	return;
  	  	  	}
  	
  		_hideMyModal();
		var params = $("form[id=form_modal]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'member!saveEntityCard.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				if(data=='success'){
					requeryCogPage($('#currentPage_paginator').val());
				}else{
					alert(data);
				}
			}
		});	  	 		
	
  	  	}
	function _showMyModal(){
		 $('#myModal').modal('show');
		 $('#entity_Card_id').val('0');
		 $('#card_id').val('');
		 $('#card_password').val('');
		 $('#card_sex').val('0');
		 $('#card_name').val('');
		 $('#card_birthday').val('');
		 $('#card_tel').val('');
		 $('#card_remark').val('');
		 $('#card_yue').val('');
		 $('#card_jifen').val('');
		 
		}	
	function _hideMyModal(){
		 $('#myModal').modal('hide');
		}  	

	function entity_card(){
		loadContent('member!entityCard.action');
		}
  	

  	
	</script>
</html>