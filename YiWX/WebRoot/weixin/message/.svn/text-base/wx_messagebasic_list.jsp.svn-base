<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MessagebasicBean"%>

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
	<form id="messagebasic">
		<div class="main_hd">
			<div class="title_tab" id="topTab">
				<ul class="title_tab_navs">
					<li class="title_tab_nav js_top  selected" data-id="media10">
						<a href="">微留言</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											微留言
											<span class="reply_title_tips"> <a>关键词相同时,返回给用户最新创建的微留言!</a>
											</span>
											<a href="<%=path%>/messagebasic!add.action" >
											<span  class="btn"  title="创建微留言" ><i class="icon-plus"></i>
											创建微留言</span>
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
			            <th>留言标题</th>
			            <th>创建时间</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      List<MessagebasicBean> messagebasicBeans  = (List<MessagebasicBean>)request.getAttribute("messagebasicBeans");
				  if(messagebasicBeans!=null){
			      for(int i=0;i<messagebasicBeans.size();i++){
			      		MessagebasicBean messagebasicBean = (MessagebasicBean)messagebasicBeans.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=messagebasicBean.getKeywords()%></td>
			            <td><%=messagebasicBean.getTitle()%></td>
			            <td><%=messagebasicBean.getCreatetime()%></td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="管理留言信息" onclick="cogInfo(<%=messagebasicBean.getId()%>)"><i class="icon-cog"></i></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=messagebasicBean.getId()%>)"><span class="icon-edit"></span></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=messagebasicBean.getId()%>)"><span class="icon-trash"></span></button>
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
		var params = $("form[id=messagebasic]").serialize();
		if(confirm('将删除该留言的关联数据,是否确定？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'messagebasic!delOneMessagebasic.action?id='+id, //请求的action路径
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
		loadContent('messagebasic!edit.action?id='+id);
	}	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}

  	function cogInfo(id){
  		loadContent('showAllMessages!cogInfo.action?serviceid='+id);
  	}
	</script>
</html>