<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.OrderDetailBean"%>
<%@page import="com.zhike.sql.beans.OrderBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%@page import="weibo4j.org.json.JSONObject"%>
<%
OrderBean orderBean  = (OrderBean)request.getAttribute("orderBean");
%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
						<%
							JSONArray array = new JSONArray(orderBean.getConditions());
							for(int i = 0 ; i< array.length();i++){
							JSONObject object = array.getJSONObject(i);
						%>
							<th><%=object.getString("name") %></th>
						<%
							}
						%>			            
			            <th>预约状态</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<OrderDetailBean> orderDetailBeanList  = (List<OrderDetailBean>)request.getAttribute("orderDetailBeanList");
				if(orderDetailBeanList!=null){
			      for(int i=0;i<orderDetailBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
						<%
						JSONArray arrayResult = new JSONArray(orderDetailBeanList.get(i).getOrderdetail());
						for(int j = 0 ; j< arrayResult.length();j++){
						JSONObject object = arrayResult.getJSONObject(j);
						%>
							<td><%=object.getString("value") %></td>
						<%
							}
						%>	
						<td>
						<%
						switch(orderDetailBeanList.get(i).getOrderstatus()){
						case 0:%>
						<div class="btn-group">
							<button type="button" onclick="forOk(<%=orderDetailBeanList.get(i).getId() %>)" class="btn btn-default" style="padding: 0 12px" title="确认"><span class="icon-ok"></span></button>
							<button type="button" onclick="forRemove(<%=orderDetailBeanList.get(i).getId() %>)" class="btn btn-default" style="padding: 0 12px" title="取消"><span class="icon-remove"></span></button>
						 </div> 							
						<%break;
						case 1:%>已确认 <%break;
						case 2:%>已取消<%break;
						}
						%>
						  </td>
						  <td>
						  	<button type="button" onclick="forDel(<%=orderDetailBeanList.get(i).getId() %>)" class="btn btn-default" style="padding: 0 12px" title="删除"><span class="icon-trash"></span></button>
						  </td>
			          </tr>
			       <%
			  		   }
			       }%>   
			   			        </tbody>
				</table>    
