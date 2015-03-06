<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>

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
		<script src="<%=path%>/js/weiboTextLen.js"></script>
			
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
	List<GuaguakaBean> guaguakaBeanList  = (List<GuaguakaBean>)request.getAttribute("guaguakaBeanList");
	if(guaguakaBeanList!=null){
	%>
	<form id="guaguaka">
	<input id="del_service_id" type="hidden" name="guaguakaBean.id"/>
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="">刮刮卡</a>
						</li>
					</ul>
				</div>
			</div>
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											刮刮卡
											<span class="reply_title_tips"> <a
												>关键词相同时,返回给用户最新创建的活动!</a>
											</span>
											<a href="<%=path%>/guaguaka!add.action" >
											<span  class="btn"  title="创建活动" ><i class="icon-plus"></i>
											创建活动</span>
											</a>	
															
										</h3>
					
									</div>
								</div>
							</div>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th>触发关键字</th>
			            <th>活动标题</th>
			            <th>活动时间</th>
			            <th>活动状态</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      for(int i=0;i<guaguakaBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=guaguakaBeanList.get(i).getKeywords()%></td>
			            <td><%=guaguakaBeanList.get(i).getTitle()%></td>
			            <td><%=guaguakaBeanList.get(i).getStarttime()%>~<%=guaguakaBeanList.get(i).getEndtime()%></td>
			            <td>
			            <% 
						switch(guaguakaBeanList.get(i).getState()){
							case 0:%><span class="fontRed">进行中</span><%break;
							case 1:%>未开始<%break;
							case 2:%>已结束<%break;
						}
					%>
			            </td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="管理中奖粉丝信息" onclick="cogInfo(<%=guaguakaBeanList.get(i).getId()%>)"><i class="icon-cog"></i></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=guaguakaBeanList.get(i).getId()%>)"><span class="icon-edit"></span></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=guaguakaBeanList.get(i).getId()%>)"><span class="icon-trash"></span></button>
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
	</body>
		<%
	}
	%>
	<script type="text/javascript">
	function del_service(id){
		$('#del_service_id').attr('value',id);
		var params = $("form[id=guaguaka]").serialize();
		if(confirm('将删除该活动的关联数据,是否确定？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'guaguaka!del.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert('删除失败');
				},
				success : function(data) { //请求成功后处理函数
					if(data=='success'){
						loadContent('guaguaka!list.action');
						}
				}
			});	
			 } 		
		}
	function edit_service(id){
		loadContent('guaguaka!edit.action?id='+id);
		}	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}

  	function cogInfo(id){
  		loadContent('guaguaka!cogInfo.action?id='+id);
  	  	}
	</script>
</html>