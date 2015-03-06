<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>
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
	List<ClockBean> clockBeanList  = (List<ClockBean>)request.getAttribute("clockBeanList");
	List<LBSBean> lbsBeanList  = (List<LBSBean>)request.getAttribute("lbsBeanList");
	
	if(clockBeanList!=null){
	%>
	<form id="clock">
	<input id="del_clock_id" type="hidden" name="clockBean.id"/>
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
		<div class="main_bd">
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											考勤管理
											<span class="reply_title_tips"> <a>关键词相同时,返回给用户最新创建的办公考勤!</a>
											</span>
											<a href="<%=path%>/clock!add.action" >
											<span  class="btn"  title="创建考勤信息" ><i class="icon-plus"></i>
											创建考勤信息</span>
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
			            <th>门店名称</th>
			            <th>上/下班时间</th>
			            <th>工作时长</th>
			             <th>是否弹性工作制</th>
			            <th>接收考勤邮箱</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      for(int i=0;i<clockBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=clockBeanList.get(i).getKeywords()%></td>
			            <td>
			            <%
			            for(int j=0;j<lbsBeanList.size();j++){
			            	if(clockBeanList.get(i).getLbs_id()==lbsBeanList.get(j).getId()){
			            		%>
			            		<%=lbsBeanList.get(j).getTitle() %>
			            		<%
			            		break;
			            	}
			            }
			            %>
			            
			            </td>
			            <td><%=clockBeanList.get(i).getStarttime()%>-<%=clockBeanList.get(i).getEndtime()%></td>
			            <td><%=clockBeanList.get(i).getWorktime()%>小时</td>
			            <td>
			            <%
			            if(clockBeanList.get(i).getIsflextime()!=null&&clockBeanList.get(i).getIsflextime().equals("1")){
			            	%>
			            		是
			            	<% 
			            }
			            %>
			            </td>
			            <td><%=clockBeanList.get(i).getReceive_mail()%></td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						       	 <button type="button" class="btn btn-default" style="padding: 0 12px" title="员工管理" onclick="cog_service(<%=clockBeanList.get(i).getId()%>)"><span class="icon-cog"></span></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=clockBeanList.get(i).getId()%>)"><span class="icon-edit"></span></button>
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="发送考勤记录" onclick="del_service(<%=clockBeanList.get(i).getId()%>)"><span class="icon-share"></span></button>
						       	  <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=clockBeanList.get(i).getId()%>)"><span class="icon-trash"></span></button>
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
		$('#del_clock_id').attr('value',id);
		var params = $("form[id=clock]").serialize();
		if(confirm('确定删除？此操作不可以恢复！')) { 
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'clock!del.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert('删除失败');
				},
				success : function(data) { //请求成功后处理函数
					if(data=='success'){
						loadContent('clock!list.action');
						}
				}
			});	
			 } 		
		}
	function edit_service(id){
		loadContent('clock!edit.action?id='+id);
		}	
	function cog_service(id){
		loadContent('clock!cogUser.action?id='+id);
		}
	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}

	</script>
</html>