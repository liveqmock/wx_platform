<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockUserBean"%>
<%@page import="com.zhike.sql.beans.ClockDepartmentBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="13%">姓名</th>
			             <th>性别</th>
			             <th>部门</th>
			            <th>手机号</th>
			            <th>邮箱</th>
			            <th>生日</th>
			            <th>审批权限</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<ClockUserBean> clockUserBeanList  = (List<ClockUserBean>)request.getAttribute("clockUserBeanList");
				List<ClockDepartmentBean> clockDepartmentBeanList =  (List<ClockDepartmentBean>)request.getAttribute("clockDepartmentBeanList");
				
				if(clockUserBeanList!=null){
			      for(int i=0;i<clockUserBeanList.size();i++){
			    	  ClockUserBean  clockUserBean = clockUserBeanList.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=clockUserBean.getName() %></td>
			            <td><%
			            if(clockUserBean.getSex().equals("1")){
			            	%>
			            	男
			            	<% }else{
			            		%>
			            		女
			            		<%
			            		}
			            %></td>
			            <td>
			            <%
			            for(int j=0;j<clockDepartmentBeanList.size();j++){
			            	if(clockDepartmentBeanList.get(j).getId()==clockUserBean.getClockde_id()){
			            		%>
			            		<%=clockDepartmentBeanList.get(j).getName() %>
			            		<%
			            	}
			            }
			            %>
			            </td>
			            <td><%=clockUserBean.getTel()%></td>
			            <td><%=clockUserBean.getEmail()%></td>
			            <td><%=clockUserBean.getBirthday()%></td>
			            <td>
			            <%
			            for(int j=0;j<clockDepartmentBeanList.size();j++){
			            	if(clockDepartmentBeanList.get(j).getLeader()==clockUserBean.getId()){
			            		%>
			            		<%=clockDepartmentBeanList.get(j).getName()%>
			            		&nbsp;
			            		<%
			            	}
			            }
			            %>
			            </td>
						<td>
						<div class="btn-group">
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="查看考勤" onclick="forInfo(<%=clockUserBean.getId()%>)"><span class="icon-list-alt"></span></button>
							<button type="button" onclick="forUsed(<%=clockUserBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="权限操作"><span class="icon-edit"></span></button>
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="delInfo(<%=clockUserBean.getId()%>)"><span class="icon-trash"></span></button>
						 </div> 
						  </td>
			          </tr>
			       <%
			  		   }
			       }%>   
			   			        </tbody>
				</table>    
