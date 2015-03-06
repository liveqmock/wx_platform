<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberInfoCogBean"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th>操作类型</th>
			            <th>数值</th>
			            <th>使用门店</th>
			            <th>备注</th>
			            <th>操作时间</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<MemberInfoCogBean> memberInfoCogBeanList = (List<MemberInfoCogBean>)request.getAttribute("memberInfoCogBeanList");
				List<LBSBean> lbsBeanList = (List<LBSBean>)request.getSession().getAttribute("lbsBeanList");
				if(memberInfoCogBeanList!=null){
			      for(int i=0;i<memberInfoCogBeanList.size();i++){
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td>
			            <%switch(memberInfoCogBeanList.get(i).getMember_type()){
			            case 1: %>余额充值<%break;
			            case 2: %>余额消费<%break;
			            case 3: %>积分充值<%break;
			            case 4: %>积分消费<%break;
			            case 5: %>每日签到<%break;
			            case 6: %>赠送积分<%break;
			            }
			            %>
			            </td>
			            <td>
			            <%
			            if(memberInfoCogBeanList.get(i).getMember_type()==1||memberInfoCogBeanList.get(i).getMember_type()==3||memberInfoCogBeanList.get(i).getMember_type()==5||memberInfoCogBeanList.get(i).getMember_type()==6){
				            %>
				            <span style="color: green;">+<%=memberInfoCogBeanList.get(i).getMember_number()%></span>
				            <%
			            }else{
			           	 	%>
			           	 	<span style="color: red;">-<%=memberInfoCogBeanList.get(i).getMember_number()%></span>
				            <%	
			            }
			            %>
			            
			            </td>
			            <td>
			            <%
			            if(lbsBeanList!=null){
			            	for(int j=0;j<lbsBeanList.size();j++){
			            		if(lbsBeanList.get(j).getId()==memberInfoCogBeanList.get(i).getMember_lbs()){
			            			%><%=lbsBeanList.get(j).getTitle()%><%
			            			break;
			            		}
			            	}
			            }
			            %>
			            </td>
						<td><%=memberInfoCogBeanList.get(i).getMember_explan()%></td>
						<td><%=memberInfoCogBeanList.get(i).getCreatetime()%></td>
			          </tr>
			       <%
			  		   }
			       }%>   
			   			        </tbody>
				</table>    
