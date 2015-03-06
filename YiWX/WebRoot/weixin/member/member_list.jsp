<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>

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
	List<MemberBean> memberBeanList  = (List<MemberBean>)request.getAttribute("memberBeanList");
	if(memberBeanList!=null){
	%>
	<form id="member">
	<input id="del_member_id" type="hidden" name="memberBean.id"/>
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
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											会员卡
											<span class="reply_title_tips"> <a>会员卡的适用门店可以在管理-门店管理中设置!</a>
											</span>
											<a href="<%=path%>/member!add.action" >
											<span  class="btn"  title="创建会员卡" ><i class="icon-plus"></i>
											创建会员卡</span>
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
			            <th>会员卡名称</th>
			            <th>每日签到积分</th>
			            <th>是否支持实体会员卡</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      for(int i=0;i<memberBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=memberBeanList.get(i).getKeywords()%></td>
			            <td><%=memberBeanList.get(i).getCard_name()%></td>
			            <td><%=memberBeanList.get(i).getCard_integral()%></td>
			            <td>
			            	<%
							if(memberBeanList.get(i).getCard_issupport()!=null&&memberBeanList.get(i).getCard_issupport().equals("1")){
								%>
								支持
								<%
							}else{
								%>
								不支持
								<%
							}
							%>
			            </td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						     	   <button type="button" class="btn btn-default" style="padding: 0 12px" title="管理会员信息" onclick="cogInfo(<%=memberBeanList.get(i).getId()%>)"><i class="icon-cog"></i></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=memberBeanList.get(i).getId()%>)"><span class="icon-edit"></span></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=memberBeanList.get(i).getId()%>)"><span class="icon-trash"></span></button>
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
		$('#del_member_id').attr('value',id);
		var params = $("form[id=member]").serialize();
		if(confirm('确定删除？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'member!del.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert('删除失败');
				},
				success : function(data) { //请求成功后处理函数
					if(data=='success'){
						loadContent('member!list.action');
						}
				}
			});	
			 } 		
		}
	function edit_service(id){
		loadContent('member!edit.action?id='+id);
		}	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}
  	function cogInfo(id){
  		loadContent('member!cogInfo.action?id='+id);
  	 }

	</script>
</html>