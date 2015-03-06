<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LiuyingInfoBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="15%">留言人</th>
			            <th>留言内容</th>
			            <th width="25%">留影</th>
			            <th width="25%">操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<LiuyingInfoBean> liuyingInfoBeanList  = (List<LiuyingInfoBean>)request.getAttribute("liuyingInfoBeanList");
			      for(int i=0;i<liuyingInfoBeanList.size();i++){
			    	  LiuyingInfoBean liuyingInfoBean = liuyingInfoBeanList.get(i);
			      %>    
			      	  <input type="hidden" name="photoViewModel.id" value="<%=liuyingInfoBean.getId() %>">
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=liuyingInfoBean.getName()%></td>
			            <td><%=liuyingInfoBean.getLiuyan()%></td>
			             <td><img style="width: 100px;" src="<%=liuyingInfoBean.getLiuying()%>"/></td>
						<td>
						<div class="btn-group">
							<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del(<%=liuyingInfoBean.getId()%>)"><span class="icon-trash"></span></button>
						</div>
						</td>
			          </tr>
			       <%
			  		   }
			       %>   
			   			        </tbody>
				</table>    
