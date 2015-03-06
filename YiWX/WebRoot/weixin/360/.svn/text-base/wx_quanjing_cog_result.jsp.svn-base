<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.QuanJingBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="20%">全景图标题</th>
			            <th width="50%">全景图关键字</th>
			            <th width="25%">操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<QuanJingBean> quanjingBeanList  = (List<QuanJingBean>)request.getAttribute("quanjingBeanList");
			      for(int i=0;i<quanjingBeanList.size();i++){
			      		QuanJingBean quanjingBean = quanjingBeanList.get(i);
			      %>    
			      	  <form id="mes<%=quanjingBean.getId() %>" role="form">
			      	  <input type="hidden" name="quanjingViewModel.id" value="<%=quanjingBean.getId() %>">
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=quanjingBean.getTitle()%></td>
			            <td><%=quanjingBean.getKeywords()%></td>
						<td>
						<div class="btn-group">
							<button type="button" onclick="forUsed(<%=quanjingBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="预览"><span class="icon-eye-open"></span></button>
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=quanjingBean.getId()%>)"><span class="icon-edit"></span></button>
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=quanjingBean.getId()%>)"><span class="icon-trash"></span></button>
						</div>
						</td>
			          </tr>
					  </form>
			       <%
			  		   }
			       %>   
			   			        </tbody>
				</table>    
