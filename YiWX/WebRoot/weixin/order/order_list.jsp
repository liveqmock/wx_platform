<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.OrderBean"%>

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
	List<OrderBean> orderBeanList  = (List<OrderBean>)request.getAttribute("orderBeanList");
	if(orderBeanList!=null){
	%>
	<form id="guaguaka">
	<input id="del_service_id" type="hidden" name="guaguakaBean.id"/>
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a href="">微预约</a>
						</li>
					</ul>
				</div>
			</div>
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											微预约
											<span class="reply_title_tips"> <a
												>关键词相同时,返回给用户最新创建的预约!</a>
											</span>
											<a href="<%=path%>/order!add.action" >
											<span  class="btn"  title="创建活动" ><i class="icon-plus"></i>
											创建预约</span>
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
			            <th>预约标题</th>
			            <th>预约电话</th>
			            <th>创建时间</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      for(int i=0;i<orderBeanList.size();i++){
			      	OrderBean bean = orderBeanList.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=bean.getKeywords()%></td>
			            <td><%=bean.getTitle()%></td>
			            <td><%=bean.getTel()%></td>
			            <td><%=bean.getCreatetime()%></td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						          <a type="button" class="btn btn-default" href="<%=path %>/order!manager.action?id=<%=bean.getId() %>" style="padding: 0 12px" title="预约管理" ><i class="icon-cog"></i></a>
						          <a type="button" class="btn btn-default" href="<%=path %>/order!edit.action?id=<%=bean.getId() %>"  style="padding: 0 12px" title="编辑" ><span class="icon-edit"></span></a>
						          <a type="button" class="btn btn-default" onclick="forDel(<%=bean.getId() %>)"  style="padding: 0 12px" title="删除"><span class="icon-trash"></span></a>
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
  	function forDel(id){
  		if(confirm('将删除该预约的关联数据,是否确定？此操作不可以恢复！')) { 
          	var url = '<%=path %>/order!delete.action?id='+id;
          	window.location.href = url;
  	  	}	  	
  	  }
	</script>
</html>