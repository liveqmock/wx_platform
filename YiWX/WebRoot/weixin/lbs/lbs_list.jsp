<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>

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
	List<LBSBean> lbsBeanList  = (List<LBSBean>)request.getAttribute("lbsBeanList");
	if(lbsBeanList!=null){
	%>
	<form id="lbs">
	<input id="del_lbs_id" type="hidden" name="lbsBean.id"/>
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="">门店管理</a>
						</li>
					</ul>
				</div>
			</div>
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											门店管理
											<span class="reply_title_tips"> <a>收到用户发送的位置信息时,返回给用户距离最近的门店!</a>
											</span>
											<a href="<%=path%>/lbs!add.action" >
											<span  class="btn"  title="创建门店信息" ><i class="icon-plus"></i>
											创建门店信息</span>
											</a>	
															
										</h3>
					
									</div>
								</div>
							</div>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th>LBS名称</th>
			            <th>LBS地址</th>
			            <th>会员卡标记</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      for(int i=0;i<lbsBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=lbsBeanList.get(i).getTitle()%></td>
			            <td><%=lbsBeanList.get(i).getAddress()%></td>
			            <td>
			            <%
			            if(lbsBeanList.get(i).getIsVip()!=null&&lbsBeanList.get(i).getIsVip().equals("1")){
			            	%>
			            	开启会员卡
			            	<%
			            }%>
			            </td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=lbsBeanList.get(i).getId()%>)"><span class="icon-edit"></span></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=lbsBeanList.get(i).getId()%>)"><span class="icon-trash"></span></button>
						        </div>
						      </div>
			            </td>
			          </tr>
			       	  <%}%>
			       	  </tbody>
				</table>
				<br/><br/><br/><br/><br/><br/>
			</div>
		</form>
		<
	</body>
		<%
	}
	%>
	<script type="text/javascript">
	function del_service(id){
		$('#del_lbs_id').attr('value',id);
		var params = $("form[id=lbs]").serialize();
		if(confirm('确定删除？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'lbs!del.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert('删除失败');
				},
				success : function(data) { //请求成功后处理函数
					if(data=='success'){
						loadContent('lbs!list.action');
						}
				}
			});	
			 } 		
		}
	function edit_service(id){
		loadContent('lbs!edit.action?id='+id);
		}	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}

	</script>
</html>