<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>
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
	List<LBSBean> lbsBeanList = (List<LBSBean>)request.getAttribute("lbsBeanList");
	%>	
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="">会员卡</a>
						</li>
					</ul>
				</div>
			</div>
	<form id="member" style="margin: 0px;">
		<div class="main_bd">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input id="member_service_id" type="hidden" name="memberInfoBean.service_id" value="<%=memberBean.getId()%>"/>
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											会员信息
											<span class="reply_title_tips">
											会员人数：
											 <a id="member_count"></a>
											</span>
											<span class="reply_title_tips">
											会员卡号：
											</span>	
											<input type="text" placeholder="请输入会员卡号" style="width: 120px;margin-left:5px;margin-top: 3px" name="memberInfoBean.temp"/>		
											<span class="reply_title_tips">
											姓名：
											</span>	
											<input type="text" placeholder="请输入姓名" style="width: 120px;margin-left:5px;margin-top: 3px" name="memberInfoBean.card_name"/>		
											<span class="reply_title_tips">
											手机号：
											</span>	
											<input type="text" placeholder="请输入手机号" style="width: 120px;margin-left:5px;margin-top: 3px" name="memberInfoBean.card_tel"/>																						
											<a onclick="querySn()" >
											<span  class="btn"  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
											查询</span>
											</a>	
											
									<span title="可以录入已有的会员卡,用户可以自主绑定" class="reply_title_tips"> <a onclick="entity_card(<%=memberBean.getId()%>)">管理实体会员卡</a>
									
											</span>										
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
 	<input id="form_modal_service_id" type="hidden" name="memberInfoBean.service_id" value="<%=memberBean.getId()%>"/>
 	<input id="forUsed" type="hidden" name="memberInfoBean.id" value="0"/>
 	<input type="hidden" name="memberBean.card_rule_xiaofei" value="<%=memberBean.getCard_rule_xiaofei()%>"/>
 	<input type="hidden" name="memberBean.card_rule_zengsong" value="<%=memberBean.getCard_rule_zengsong()%>"/>
 
<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">会员操作</h3>
  </div>
  <div class="modal-body">
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				类型:
			</label>
			<span>
				<select id="member_type" name="memberInfoCogBean.member_type">
				<option id="0" value="0" selected="selected" >-请选择-</option>
		   		<option id="1" value="1">余额充值</option>
		   		<option id="2" value="2">余额消费</option>
		   		<option id="3" value="3">积分充值</option>
		   		<option id="4" value="4">积分消费</option>
		   		<option id="5" value="5">现金消费</option>
		   		</select>
			</span>
		</div>  
		<div class="appmsg_edit_item">
			<label for="" class="frm_label" style="margin-top: 10px;">
				数值：
			</label>
			<span>
				<input  id="member_number" name="memberInfoCogBean.member_number" type="text" placeholder="请输入增减的数值" style="margin-top: 10px" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="0"/>	
			</span>
		</div>  
		<div class="appmsg_edit_item">
			<label for="" class="frm_label">
				使用门店:
			</label>
			<span>
				 <select id="member_lbs" name="memberInfoCogBean.member_lbs" >
					 <option id="0" selected="selected" value="0">-请选择-</option>
				 <% 
				 for(int i=0;i<lbsBeanList.size();i++){
					 %>
					 <option id="<%=i+1%>" value="<%=lbsBeanList.get(i).getId()%>"><%=lbsBeanList.get(i).getTitle()%></option>
					 <%
				 }
				 %>
		   		</select>
			</span>
		</div> 	
		<div class="appmsg_edit_item">
			<label for="" class="frm_label" style="margin-top: 10px;">
				备注：
			</label>
			<span>
				<input id="member_explan" name="memberInfoCogBean.member_explan" type="text" placeholder="对本次操作的原因进行备注" style="margin-top: 10px"  />	
			</span>
		</div>  		 									
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
    <a class="btn btn-primary" onclick="saveMyModal()">保存</a>
  </div>
</div>
</form>


<!-- Tag -->
<form id="form_tag">
 	<input id="forTag" type="hidden" name="memberInfoBean.id" value="0"/>
	<div id="myTag" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">添加备注</h3>
	  </div>
	  <div class="modal-body">
			<div class="appmsg_edit_item">
				<label for="" class="frm_label" style="margin-top: 10px;">
					姓名：
				</label>
				<span>
					<input  id="tag_name" name="memberInfoBean.card_name" type="text" placeholder="会员姓名" style="margin-top: 10px" />	
				</span>
			</div>
			<div class="appmsg_edit_item">
				<label for="" class="frm_label">
					性别:
				</label>
				<span>
					 <select id="tag_sex" name="memberInfoBean.card_sex" >
						 <option id="0" selected="selected" value="0">-请选择-</option>
						 <option id="1"  value="1">男</option>
						 <option id="2"  value="2">女</option>
			   		</select>
				</span>
			</div> 			
			<div class="appmsg_edit_item">
				<label for="" class="frm_label" style="margin-top: 10px;">
					手机号：
				</label>
				<span>
					<input  id="tag_tel" name="memberInfoBean.card_tel" type="text" placeholder="会员手机号" style="margin-top: 10px" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="0"/>	
				</span>
			</div> 
			<div class="appmsg_edit_item">
				<label for="" class="frm_label" style="margin-top: 10px;">
					生日：
				</label>
				<span>
					<input  id="tag_birthday" name="memberInfoBean.card_birthday" type="text" placeholder="格式例如:1987-01-04" style="margin-top: 10px" />	
				</span>
			</div> 				 	  
	  
			<div class="appmsg_edit_item">
				<label for="" class="frm_label" style="margin-top: 10px;">
					备注：
				</label>
				<span>
					<input id="tag_remark" name="memberInfoBean.card_remark" type="text" placeholder="对会员进行备注" style="margin-top: 10px"  />	
				</span>
			</div>  		 									
	  </div>
	  <div class="modal-footer">
	    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
	    <a class="btn btn-primary" onclick="saveMyTag()">保存</a>
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
			url : 'member!requeryCogPage.action', //请求的action路径
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
			url : 'member!requeryCogResult.action', //请求的action路径
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
  	
  	function forList(id){
  		loadContent('member!cogInfoList.action?id='+id);
  	} 

  	function forTag(id,name,sex,tel,birthday,remark){
  		$('#forTag').val(id);
		if(name!='null'){
			$('#tag_name').val(name);
			}else{
			$('#tag_name').val('');
			}
		if(sex!='null'){
			$('#tag_sex').val(sex);
			}else{
			$('#tag_sex').val(0);
			}
		if(tel!='null'){
			$('#tag_tel').val(tel);
			}else{
			$('#tag_tel').val('');
			}
		if(birthday!='null'){
			$('#tag_birthday').val(birthday);
			}else{
			$('#tag_birthday').val('');
			}
		if(remark!='null'){
			$('#tag_remark').val(remark);
			}else{
			$('#tag_remark').val('');
			}
  		 _showMyTag();
  	}	
  	
  	function saveMyModal(){
  	  	if($('#member_type').val()==0){
  	  	  	alert('请选择会员操作类型。');
  	  	  	return;
  	  	  	}
  	  	if($('#member_number').val()==0||$('#member_number').val()>100000){
  	  	  	alert('请输入本次操作的数值,1-100000之内。');
  	  	  	return;
  	  	  	}	  	
  		_hideMyModal();
		var params = $("form[id=form_modal]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'member!saveMemberInfoCog.action', //请求的action路径
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
		 $('#member_number').val('0');
		 $('#member_explan').val('');
		 $('#member_type').val('0');
		 $('#member_lbs').val('0');
		 
		}	
	function _hideMyModal(){
		 $('#myModal').modal('hide');
		}  	

	function entity_card(id){
		loadContent('member!entityCard.action?id='+id);
		}
  	

	function _showMyTag(){
		 $('#myTag').modal('show');
		 $('#tag_explan').val('');
		 
		}	
	function _hideMyTag(){
		 $('#myTag').modal('hide');
		} 

 	function saveMyTag(){
  		_hideMyTag();
		var params = $("form[id=form_tag]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'member!saveMemberInfoCogForTag.action', //请求的action路径
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
	  	 	
	</script>
</html>