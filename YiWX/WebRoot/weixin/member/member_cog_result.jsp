<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="13%">微信昵称</th>
			            <th>卡号</th>
			            <th>余额</th>
			            <th>积分</th>			            
			            <th>姓名</th>
			            <th>手机号</th>	
			            <th>备注</th>				            
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<MemberInfoBean> memberInfoBeanList  = (List<MemberInfoBean>)request.getAttribute("memberInfoBeanList");
				if(memberInfoBeanList!=null){
			      for(int i=0;i<memberInfoBeanList.size();i++){
			    	  MemberInfoBean  memberInfoBean = memberInfoBeanList.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td>
			            	<%
			            	if(memberInfoBean.getWxUserBean()!=null){
			            		%>
			   			        <img style="width:35px;height: 35px;" src="<%=memberInfoBean.getWxUserBean().getHeadimgurl()%>"/>
			            	    <%=memberInfoBean.getWxUserBean().getNickname() %>         		
			            		<%
			            	}
			            	%> 

			            </td>
			            <td><%=memberInfoBean.getId()%></td>
			            <td>￥<%=memberInfoBean.getYue()%></td>
			            <td><%=memberInfoBean.getJifen()%></td>			            
		           		<td>
			            <%
			            if(memberInfoBean.getCard_name()!=null){
			            	%>
			            	<%=memberInfoBean.getCard_name()%>
			            	<%
			            }
			            %>
			            </td>
		           		<td>
			            <%
			            if(memberInfoBean.getCard_tel()!=null){
			            	%>
			            	<%=memberInfoBean.getCard_tel()%>
			            	<%
			            }
			            %>
			            </td>		
		           		<td>
			            <%
			            if(memberInfoBean.getCard_remark()!=null){
			            	%>
			            	<%=memberInfoBean.getCard_remark()%>
			            	<%
			            }
			            %>
			            </td>				            			            	            			            
						<td>
						<div class="btn-group">
							<button type="button" onclick="forUsed(<%=memberInfoBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="操作"><span class="icon-edit"></span></button>
							<button type="button" onclick="forList(<%=memberInfoBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="消费记录"><span class="icon-list-alt"></span></button>
							<button type="button" onclick="forTag('<%=memberInfoBean.getId()%>','<%=memberInfoBean.getCard_name()%>','<%=memberInfoBean.getCard_sex()%>','<%=memberInfoBean.getCard_tel()%>','<%=memberInfoBean.getCard_birthday()%>','<%=memberInfoBean.getCard_remark()%>')" class="btn btn-default" style="padding: 0 12px" title="备注"><span class="icon-tags"></span></button>
						 </div> 
						 </td>
			          </tr>
			       <%
			  		   }
			       }%>   
			   			        </tbody>
				</table>    
