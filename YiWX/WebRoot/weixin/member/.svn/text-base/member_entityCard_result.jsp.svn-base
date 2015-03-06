<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.MemberEntityCardBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="13%">实体卡号</th>
			             <th>密码</th>
			            <th>姓名</th>
			            <th>性别</th>
			            <th>手机号</th>
			            <th>生日</th>
			            <th>余额</th>
			            <th>积分</th>
			            <th>备注</th>
			            <th>操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<MemberEntityCardBean> memberEntityCardBeanList  = (List<MemberEntityCardBean>)request.getAttribute("memberEntityCardBeanList");
				if(memberEntityCardBeanList!=null){
			      for(int i=0;i<memberEntityCardBeanList.size();i++){
			    	  MemberEntityCardBean  memberEntityCardBean = memberEntityCardBeanList.get(i);
			      %>    
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=memberEntityCardBean.getCard_id()%></td>
			            <td><%=memberEntityCardBean.getCard_password()%></td>
			            <td><%=memberEntityCardBean.getCard_name()%></td>
			            <td>
			            <%
			            if(memberEntityCardBean.getCard_sex()!=null&&memberEntityCardBean.getCard_sex().equals("1")){
			            	%>男<%
			            }else if(memberEntityCardBean.getCard_sex()!=null&&memberEntityCardBean.getCard_sex().equals("2")){
			            	 %>女<%
			            }
			            %>
			            </td>
			            <td><%=memberEntityCardBean.getCard_tel()%></td>
			            <td><%=memberEntityCardBean.getCard_birthday()%></td>
			            <td><%=memberEntityCardBean.getCard_yue()%></td>
			            <td><%=memberEntityCardBean.getCard_jifen()%></td>
			            <td><%=memberEntityCardBean.getCard_remark()%></td>
						<td>
						<div class="btn-group">
						<%
						if(memberEntityCardBean.getCard_used()==0){
							%>
							<button type="button" onclick="forEdit('<%=memberEntityCardBean.getId()%>','<%=memberEntityCardBean.getCard_id()%>','<%=memberEntityCardBean.getCard_password()%>','<%=memberEntityCardBean.getCard_sex()%>','<%=memberEntityCardBean.getCard_name()%>','<%=memberEntityCardBean.getCard_birthday()%>','<%=memberEntityCardBean.getCard_tel()%>','<%=memberEntityCardBean.getCard_remark()%>','<%=memberEntityCardBean.getCard_yue()%>','<%=memberEntityCardBean.getCard_jifen()%>')" class="btn btn-default" style="padding: 0 12px" title="编辑"><span class="icon-edit"></span></button>
							<% 
						}else{
							%>
							<button type="button" disabled="disabled" class="btn btn-default" style="padding: 0 12px" title="已绑定微信会员卡"><span class="icon-edit"></span></button>
							<% 
						}
						%>
				
							<button type="button" onclick="forDel(<%=memberEntityCardBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="删除"><span class="icon-trash"></span></button>
						 </div> 
						  </td>
			          </tr>
			       <%
			  		   }
			       }%>   
			   			        </tbody>
				</table>    
