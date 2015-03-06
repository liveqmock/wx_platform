<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zhike.sql.beans.ResearchBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

 List<ResearchBean> researchBeans  = (List<ResearchBean>)request.getAttribute("researchBeans");
				  String renshu=request.getAttribute("renshu").toString();
			     
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=path%>/weixin/diaoyan/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=path%>/weixin/diaoyan/css/admin.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/weixin/diaoyan/js/bootstrap.min.js"></script>
<title>微调研数据统计</title>
<style>
.question-cont{
	margin-bottom: 20px;
}
.progress{
	width: 200px;
	float: left;
	margin: 0px 10px 5px 0px;
}
</style>
</head>
<body>
	<div class="row-fluid">
		<ul id="mytab" class="nav nav-tabs" style="margin-top: 10px;">
		  <li class="active"><a href="#chart" data-toggle="tab">统计图表</a></li>
		<!--   <li><a href="#userinfo" data-toggle="tab">用户数据</a></li> -->
		</ul>
		<div class="tab-content">
		  <div class="tab-pane active" id="chart">
			<div class="span12">
				<h2>参与调研用户总数：<%= renshu%>人</h2><br />
				<%
				  for(int i=0;i<researchBeans.size();i++){
				 %>
				
				<div class="question-cont">
					<h3>第<%=i+1 %>题：<%=researchBeans.get(i).getTitle() %></h3>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th class="span6">选项</th>
								<th>小计</th>
								<th class="span5">比例</th>
							</tr>
						</thead>
						<tbody>
						<%if(!"".equals(researchBeans.get(i).getAnswer_a().toString())){ %>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_a().toString() %></td>
							<td><%=researchBeans.get(i).getAchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getAper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getAper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_b().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_b().toString() %></td>
							<td><%=researchBeans.get(i).getBchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getBper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getBper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_c().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_c().toString() %></td>
							<td><%=researchBeans.get(i).getCchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getCper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getCper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_d().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_d().toString() %></td>
							<td><%=researchBeans.get(i).getDchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getDper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getDper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_e().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_e().toString() %></td>
							<td><%=researchBeans.get(i).getEchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getEper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getEper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_f().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_f().toString() %></td>
							<td><%=researchBeans.get(i).getFchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getFper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getFper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_g().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_g().toString() %></td>
							<td><%=researchBeans.get(i).getGchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getGper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getGper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_h().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_h().toString() %></td>
							<td><%=researchBeans.get(i).getHchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getHper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getHper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_i().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_i().toString() %></td>
							<td><%=researchBeans.get(i).getIchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getIper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getIper().toString()+"%" %></td>
						</tr>
						<%} if(!"".equals(researchBeans.get(i).getAnswer_j().toString())){%>
						<tr>
							<td><%=researchBeans.get(i).getAnswer_j().toString() %></td>
							<td><%=researchBeans.get(i).getJchoosed() %></td>
							<td><div class="progress"><div class="bar" style="width: <%=researchBeans.get(i).getJper().toString()+"%" %>;"></div></div><%=researchBeans.get(i).getJper().toString()+"%" %></td>
						</tr>
						<%} %>
						
						
						
						
						</tbody>
						<tfoot>
							<tr>
								<th>本题有效填写人次</th>
								<th colspan="2"><%=researchBeans.get(i).getAallchoosed() %></th>
							</tr>
						</tfoot>
					</table>
				</div>
				<%
				} %>
				
				
		    </div>
		  </div>
		  <div class="tab-pane" id="userinfo">
		  	
			<div class="alert alert-info">
			  	<p><span class="bold">注意：</span>活动结束后从下面的参与用户中选取中奖者并发送中奖通知。</p>
			</div>
			<div class="main-title">
					<h3>qwewq参与用户信息</h3>
			</div>
			<div id="testlist">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>用户名</th>
							<th>手机</th>
							<th class="span7">建议</th>
						</tr>
					</thead>
					<tbody>
					
					</tbody>
				</table>

<div class="pagination">
  <ul>
    <li class='disabled'><span>上一页</span></li>
  </ul>
</div>
			</div>
		  </div>
		</div>
	</div>

</body>
</html>
