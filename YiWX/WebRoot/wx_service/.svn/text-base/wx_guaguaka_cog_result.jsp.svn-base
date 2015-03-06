<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
<%@page import="com.zhike.sql.beans.GuaguakaInfoBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="13%">微信ID</th>
			            <th>奖品类别</th>
			            <th>SN码</th>
			            <th>联系方式</th>
			            <th>参与次数</th>
			            <th>中奖时间</th>
			            <th>发奖时间</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<GuaguakaInfoBean> guaguakaInfoBeanList  = (List<GuaguakaInfoBean>)request.getAttribute("guaguakaInfoBeanList");
				if(guaguakaInfoBeanList!=null){
			      for(int i=0;i<guaguakaInfoBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=guaguakaInfoBeanList.get(i).getOpenid()%></td>
			            <td><%
			            switch(guaguakaInfoBeanList.get(i).getPrizetype()){
			            case 1:%>一等奖<% break;
			            case 2:%>二等奖<% break;
			            case 3:%>三等奖<% break;
			            case 4:%>四等奖<% break;
			            case 5:%>五等奖<% break;
			            }
			            %></td>
			            <td><%=guaguakaInfoBeanList.get(i).getSn()%></td>
			            <td><%=guaguakaInfoBeanList.get(i).getContact()==null?"":guaguakaInfoBeanList.get(i).getContact()%></td>
			            <td><%=guaguakaInfoBeanList.get(i).getTotaltime()%>次</td>
						<td><%=guaguakaInfoBeanList.get(i).getCreatetime()%></td>
						<td><%=guaguakaInfoBeanList.get(i).getUpdatetime()==null?"":guaguakaInfoBeanList.get(i).getUpdatetime()%></td>
						<td><%
						if(guaguakaInfoBeanList.get(i).getType()==1){
							%><button type="button" onclick="forUsed(<%=guaguakaInfoBeanList.get(i).getId()%>)" class="btn btn-default" style="padding: 0 12px" title="发奖"><span class="icon-ok"></span></button>
							<%
						}else{
							%>
							已兑奖
							<%
						}
						%>
						 </td>
			          </tr>
			       <%
			  		   }
			       }%>   
			   			        </tbody>
				</table>    
