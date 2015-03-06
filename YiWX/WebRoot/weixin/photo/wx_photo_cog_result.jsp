<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.PhotoBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="20%">相册标题</th>
			            <th width="50%">创建时间</th>
			            <th width="25%">操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<PhotoBean> photoBeanList  = (List<PhotoBean>)request.getAttribute("photoBeanList");
			      for(int i=0;i<photoBeanList.size();i++){
			      		PhotoBean photoBean = photoBeanList.get(i);
			      %>    
			      	  <form id="mes<%=photoBean.getId() %>" role="form">
			      	  <input type="hidden" name="photoViewModel.id" value="<%=photoBean.getId() %>">
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=photoBean.getTitle()%></td>
			            <td><%=photoBean.getTime()%></td>
						<td>
						<div class="btn-group">
							<button type="button" onclick="forUsed(<%=photoBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="预览相册"><span class="icon-eye-open"></span></button>
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=photoBean.getId()%>)"><span class="icon-edit"></span></button>
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=photoBean.getId()%>)"><span class="icon-trash"></span></button>
						</div>
						</td>
			          </tr>
			          </form>
			       <%
			  		   }
			       %>   
			   			        </tbody>
				</table>    
