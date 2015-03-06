<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
<%@page import="com.zhike.sql.beans.GuaguakaInfoBean"%>
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
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media_list.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
<link href="<%=path%>/file/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/kindeditor.js"></script>
<script type="text/javascript" src="<%=path%>/lang/zh_CN.js"></script>
<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
<script src="<%=path%>/js/weiboTextLen.js"></script>

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
</style>

	</head>
	<body class="page_advanced_reply">
		<div class="main_hd">
			<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  " data-id="media10">
							<a href="<%=path %>/selectAllNewMaterialByUserId.action">图文消息</a>
						</li>
						<li class="title_tab_nav js_top selected" data-id="media10">
							<a href="<%=path %>/file!show.action">图片</a>
						</li>						
					</ul>			
			</div>
		</div>
			<div class="sub_title_bar white">
					<div class="info">
						<h3 id="page_title">
							图片列表
						</h3>
					</div>
			</div>
		<div class="rightinfo">
		<ul class="imglist">
		<% 
		String status = request.getAttribute("status").toString();
		if(status.equals("0")){
			String dir = request.getAttribute("dir").toString();
			List<String> fileList = (List<String>)request.getAttribute("fileList");
			for(int i=0;i<fileList.size();i++) {
				String dirName = dir + fileList.get(i);
		%>
    
	    <li id="li_<%=i%>" >
	    <span><img src="<%=dirName%>" class="mmm" /></span>
	    <h2><a href="javascript:;"><%=fileList.get(i) %></a></h2>
	    <p><a href="javascript:del('<%=fileList.get(i) %>',<%=i%>)">删除</a></p>
	    </li>
	    
	    <%}
	    } %>
	    
	    </ul>
	    </div>
    	<script>
    		$('.mmm').height(124);
    		$('.mmm').width(168);
    	</script>
		
		<!-- 
		<div class="main_bd">
			<form id="message" style="margin: 0px;">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<div class="inner_main">
				<div class="bd">
					<div class="sub_title_bar no_extra">
						<h3>
							<a style="float: right;" onclick="history.go(-1)" >
							<span  class="btn"  title="返回" style="margin-top: -5px"><i class="icon-arrow-left"></i>
							返回</span>
							</a>			
						</h3>
	
					</div>
				</div>
			</div>
			</form>
			<div id="content">
			<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="13%">昵称</th>
			            <th width="26%">内容</th>
			            <th width="13%">时间</th>
			            <th width="26%">回复</th>
			            <th width="13%">操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
			          <tr>
			            <td>asdf</td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
						<td>
						<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service()"><span class="icon-trash"></span></button>
						<button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service()"><span class="icon-edit"></span></button>
						</td>
			          </tr>
			   		</tbody>
				</table>
			</div>
		</div>
		 -->
			
	</body>
	<script type="text/javascript">
 	function del(name,i){
 		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			url : 'file!delete.action?name='+name, //请求的action路径
			error : function() {//请求失败处理函数);
				alert("访问服务器失败");
			},
			success : function(data) 
			{ //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var status = josnStr["status"];
				var content = josnStr["content"];
				if(status=='success'){
					$('#li_'+i).remove();
					alert("删除成功");
				}else{
					$("#errorMsg").html(content);
				}
				//dealLoginResult(data);
			}
		});
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
	</script>
</html>