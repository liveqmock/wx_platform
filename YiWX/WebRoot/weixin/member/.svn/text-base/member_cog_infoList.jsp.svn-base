<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
<%@page import="com.zhike.sql.beans.WxUserBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoCogBean"%>
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
	<%
	MemberInfoBean memberInfoBean  = (MemberInfoBean)request.getAttribute("memberInfoBean");
	List<LBSBean> lbsBeanList = (List<LBSBean>)request.getSession().getAttribute("lbsBeanList");
	%>
	
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a href="">会员卡</a>
						</li>
					</ul>
				</div>
			</div>
		<div class="main_bd">
			<form id="member" style="margin: 0px;">
			<input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
			<input  type="hidden"  name="memberInfoCogBean.memberInfo_id" value="<%=memberInfoBean.getId()%>"/>
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											消费记录
											<span class="reply_title_tips">
											操作类型：
											<select style="width: 130px;" id="member_type" onchange="querySn()" name="memberInfoCogBean.member_type" >
												<option id="0" value="0" selected="selected" >-请选择-</option>
										   		<option id="1" value="1">余额充值</option>
										   		<option id="2" value="2">余额消费</option>
										   		<option id="3" value="3">积分充值</option>
										   		<option id="4" value="4">积分消费</option>
										   		<option id="5" value="5">每日签到</option>
										   		<option id="6" value="6">赠送积分</option>
									   		</select>
											</span>
											<span class="reply_title_tips">
											当前门店:
											 <select id="member_lbs" onchange="querySn()" name="memberInfoCogBean.member_lbs">
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
											<!-- 								
											<a onclick="querySn()" >
											<span  class="btn"  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
											查询</span>
											</a>	
											 -->	
											<a style="float: right;" onclick="history.go(-1)" >
											<span  class="btn"  title="返回" style="margin-top: -5px"><i class="icon-arrow-left"></i>
											返回</span>
											</a>				
										</h3>
										<h3>
											<span class="reply_title_tips">
											会员卡号：
											 <a><%=memberInfoBean.getId()%></a>
											</span>		
									         <span class="reply_title_tips">
									            	微信昵称：
									            	<%
									            	if(memberInfoBean.getWxUserBean()!=null){
									            		%>
									   			        <img style="width:35px;height: 35px;" src="<%=memberInfoBean.getWxUserBean().getHeadimgurl()%>"/>
									            	    <%=memberInfoBean.getWxUserBean().getNickname() %>         		
									            		<%
									            	}
									            	%> 									            	
									         </span>	
											<span class="reply_title_tips">
											预存余额：
											 <a>￥<%=memberInfoBean.getYue()%></a>
											</span>		
											<span class="reply_title_tips">
											积分：
											 <a><%=memberInfoBean.getJifen()%></a>
											</span>											
										</h3>
									</div>
								</div>
							</div>
				</form>
				<div id="content"></div>
				<!--分页 -->
				<jsp:include page="${path}/paginator.jsp"></jsp:include>
		</div>
			
			
	</body>
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
			url : 'member!requeryCogPageForCogInfoList.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
					
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
			url : 'member!requeryCogResultForCogInfoList.action', //请求的action路径
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

 
	</script>
</html>