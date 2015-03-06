<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ResearchbasicBean"%>

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
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/kindeditor.js"></script>
		<script type="text/javascript" src="<%=path%>/lang/zh_CN.js"></script>
		<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
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
	<form id="researchbasic">
		<div class="main_hd">
			<div class="title_tab" id="topTab">
				<ul class="title_tab_navs">
					<li class="title_tab_nav js_top  selected" data-id="media10">
						<a href="">微调研</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											微调研
											<span class="reply_title_tips"> <a>关键词相同时,返回给用户最新创建的微调研!</a>
											</span>
											<a href="<%=path%>/researchbasic!add.action" >
											<span  class="btn"  title="创建微调研" ><i class="icon-plus"></i>
											创建微调研</span>
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
			            <th>调研名称</th>
			            <th>活动时间</th>
			            <th>状态</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      List<ResearchbasicBean> researchbasicBeans  = (List<ResearchbasicBean>)request.getAttribute("researchbasicBeans");
				  if(researchbasicBeans!=null){
			      for(int i=0;i<researchbasicBeans.size();i++){
			      		ResearchbasicBean researchbasicBean = (ResearchbasicBean)researchbasicBeans.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=researchbasicBean.getKeywords()%></td>
			            <td><%=researchbasicBean.getTitle()%></td>
			            <td><%=researchbasicBean.getActtime()%></td>
			            <td><%=researchbasicBean.getStatus()%></td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						       <div class="btn-group">
					          <%
					          if("未开始".equals(researchbasicBean.getStatus())) {
					          %>
					          <button type="button" class="btn btn-default" style="padding: 0 12px" title="设置题目" onclick="cogInfo(<%=researchbasicBean.getId()%>)"><i class="icon-cog"></i></button>
					          <%if(Integer.parseInt(researchbasicBean.getIdcount())>0) {%>
						      <button type="button" onclick="forUsed(<%=researchbasicBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="预览微调研"><span class="icon-eye-open"></span></button>
						      <%}else{ %>
						      <button type="button" onclick="forUsed(<%=researchbasicBean.getId()%>)" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="请设置题目"><span class="icon-eye-open"></span></button>
						      <%} %>
					          <button type="button" class="btn btn-default" style="padding: 0 12px" title="修改" onclick="edit_service(<%=researchbasicBean.getId()%>)"><i class="icon-edit"></i></button>
					          <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="停止" onclick="stop_service(<%=researchbasicBean.getId()%>)"><i class="icon-off"></i></button>
					      	  <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="统计" onclick="relist(<%=researchbasicBean.getId()%>)"><i class="icon-th"></i></button>
					          <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=researchbasicBean.getId()%>)"><i class="icon-trash"></i></button>
					          
					          <%}else if ("进行中".equals(researchbasicBean.getStatus())){
					          %>
					          <button type="button" class="btn btn-default" style="padding: 0 12px" title="设置题目" onclick="cogInfo(<%=researchbasicBean.getId()%>)"><i class="icon-cog"></i></button>
						      <%if(Integer.parseInt(researchbasicBean.getIdcount())>0) {%>
						      <button type="button" onclick="forUsed(<%=researchbasicBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="预览微调研"><span class="icon-eye-open"></span></button>
						      <%}else{ %>
						      <button type="button" onclick="forUsed(<%=researchbasicBean.getId()%>)" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="请设置题目"><span class="icon-eye-open"></span></button>
						      <%} %>
						      <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="修改" onclick="edit_service(<%=researchbasicBean.getId()%>)"><i class="icon-edit"></i></button>
						      <button type="button" class="btn btn-default" style="padding: 0 12px" title="停止" onclick="stop_service(<%=researchbasicBean.getId()%>)"><i class="icon-off"></i></button>
						      <button type="button" class="btn btn-default" style="padding: 0 12px" title="统计" onclick="relist(<%=researchbasicBean.getId()%>)"><i class="icon-th"></i></button>
						      <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="删除" onclick="del_service(<%=researchbasicBean.getId()%>)"><i class="icon-trash"></i></button>
					          <%}
					          else if ("已结束".equals(researchbasicBean.getStatus())){
					           %>
					          <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="设置题目" onclick="cogInfo(<%=researchbasicBean.getId()%>)"><i class="icon-cog"></i></button>
						     <%if(Integer.parseInt(researchbasicBean.getIdcount())>0) {%>
						      <button type="button" onclick="forUsed(<%=researchbasicBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="预览微调研"><span class="icon-eye-open"></span></button>
						      <%}else{ %>
						      <button type="button" onclick="forUsed(<%=researchbasicBean.getId()%>)" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="请设置题目"><span class="icon-eye-open"></span></button>
						      <%} %>
						      <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="修改" onclick="edit_service(<%=researchbasicBean.getId()%>)"><i class="icon-edit"></i></button>
						      <button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="停止" onclick="stop_service(<%=researchbasicBean.getId()%>)"><i class="icon-off"></i></button>
						      <button type="button" class="btn btn-default" style="padding: 0 12px" title="统计" onclick="relist(<%=researchbasicBean.getId()%>)"><i class="icon-th"></i></button>
						      <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=researchbasicBean.getId()%>)"><i class="icon-trash"></i></button>
					          <%}
					           %>
						        </div>
						      </div>
			            </td>
			          </tr>
			       	  <%}
			       	  }%>
			       	  </tbody>
				</table>
				<br/><br/><br/><br/><br/><br/>
			</div>
		</form>
	</body>
	<script type="text/javascript">
	function del_service(id){
		var params = $("form[id=researchbasic]").serialize();
		if(confirm('将删除该活动的关联数据,是否确定？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'researchbasic!delOneResearchbasic.action?id='+id, //请求的action路径
				error : function() {//请求失败处理函数);
					alert('访问服务器失败');
				},
				success : function(data) { //请求成功后处理函数
					dealLoginResult(data)
				}
			});	
		} 		
	}
		function stop_service(id){
		var params = $("form[id=researchbasic]").serialize();
		if(confirm('将停止该活动,是否确定？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'researchbasic!stopOneResearchbasic.action?id='+id, //请求的action路径
				error : function() {//请求失败处理函数);
					alert('访问服务器失败');
				},
				success : function(data) { //请求成功后处理函数
					dealLoginResult(data)
				}
			});	
		} 		
	}
	function dealLoginResult(data){
		var josnStr = eval('(' + data + ')');
		var status = josnStr["status"];
		var content = josnStr["content"];
		if(status=='success'){
			window.location="<%=path%>/"+content+"";
		}else{
			$("#errorMsg").html(content);
		}
	}
	function edit_service(id){
		loadContent('researchbasic!edit.action?id='+id);
	}	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}

  	function cogInfo(id){
  		loadContent('research!answerlist.action?basicid='+id);
  	}
  	function relist(id){
  		loadContent('researchbasic!resultlist.action?basicid='+id);
  	}
  	function forUsed(id) {
  		var left = ($(window.parent.parent).width() - 450) / 2;
		window.open("<%=path %>/researchperson.action?serviceid="+id+"&openid=asdffdsa", "我的微相册", "height=650,width=450,top=0,left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
  		//loadContent('photo!yulan.action?id='+id);
  	}
	</script>
</html>