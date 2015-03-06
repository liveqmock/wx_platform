<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ResearchBean"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String basicid=request.getAttribute("basicid").toString();
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
	<form id="research">
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
											<span class="reply_title_tips"> 
											</span>
											<a href="<%=path%>/research!addq.action?basicid=<%=basicid%>" >
											<span  class="btn"  title="创建微调研" ><i class="icon-plus"></i>
											创建题目</span>
											</a>	
															
										</h3>
					
									</div>
								</div>
							</div>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th>题目名称</th>
			            <th>最多答案个数</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody>
			         
			      <%
			      List<ResearchBean> researchBeans  = (List<ResearchBean>)request.getAttribute("researchBeans");
				  if(researchBeans!=null){
			      for(int i=0;i<researchBeans.size();i++){
			      		ResearchBean researchBean = (ResearchBean)researchBeans.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            
			            <td><%=researchBean.getTitle()%></td>
			            <td><%=researchBean.getAnswers()%></td>
			            <td>
						      <div class="btn-toolbar" style="margin: 0px" role="toolbar" >
						        <div class="btn-group">
						         <button type="button" class="btn btn-default" style="padding: 0 12px" title="修改" onclick="edit_service(<%=researchBean.getId()%>)"><i class="icon-edit"></i></button>
						         
						          <button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=researchBean.getId()%>)"><span class="icon-trash"></span></button>
						       
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
				url : 'research!deleteResearch.action?id='+id+'&basicid=<%=basicid%>', //请求的action路径
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
		loadContent('research!editq.action?id='+id+'&basicid=<%=basicid%>');
	}	
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}

  	function cogInfo(id){
  		loadContent('showAllResearch!cogInfo.action?basicid='+id);
  	}
	</script>
</html>