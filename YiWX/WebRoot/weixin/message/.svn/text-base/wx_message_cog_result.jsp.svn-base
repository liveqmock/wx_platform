<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MessageBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
<style>
textarea
{
	width:100%;
	height:100%;
    border:solid 1px #f00;
}
</style>
<script>
	function edit_service(id)
	{
		if($('#tr'+id).is(":hidden"))
			$('#tr'+id).show();	
		else 
			$('#tr'+id).hide();	
	}
</script>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th width="10%">昵称</th>
			            <th width="25%">内容</th>
			            <th width="10%">联系方式</th>
			            <th width="15%">时间</th>
			            <th width="25%">客服回复</th>
			            <th width="10%">操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<MessageBean> messageBeanList  = (List<MessageBean>)request.getAttribute("messageBeanList");
			      for(int i=0;i<messageBeanList.size();i++){
			      		MessageBean messageBean = messageBeanList.get(i);
			      %>    
			      	  <form id="mes<%=messageBean.getId() %>" role="form">
			      	  <input type="hidden" name="messageViewModel.id" value="<%=messageBean.getId() %>">
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=messageBean.getSender()%></td>
			            <td><%=messageBean.getText()%></td>
			            <td><%=messageBean.getTel()%></td>
			            <td><%=messageBean.getTime()%></td>
			            <td><%=messageBean.getReply()==null?"":messageBean.getReply()%></td>
						<td>
						<!-- <button type="button" onclick="forUsed(<%=messageBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="发奖"><span class="icon-ok"></span></button> -->
						<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=messageBean.getId()%>)"><span class="icon-trash"></span></button>
						<% 
						if(messageBean.getReply()==null || "".equals(messageBean.getReply())) {
						%>
						<button type="button" class="btn btn-default" style="padding: 0 12px" title="回复" onclick="edit_service(<%=messageBean.getId()%>)"><span class="icon-edit"></span></button>
						<%} else { %>
						<button type="button" class="btn btn-default disabled" disabled="true" style="padding: 0 12px" title="回复" onclick="edit_service(<%=messageBean.getId()%>)"><span class="icon-edit"></span></button>
						<%} %>
						</td>
			          </tr>
			          
					<tr id="tr<%=messageBean.getId()%>" class="trhuifu">
						<td colspan="5"><textarea name="messageViewModel.reply" ></textarea></td>
						<td>
						<button type="button" onclick="forupdate(<%=messageBean.getId()%>)" class="btn btn-default" style="padding: 0 12px" title="回复"><span class="icon-ok"></span></button>
						</td>
					</tr>
					  </form>
			       <%
			  		   }
			       %>   
			   		</tbody>
				</table>    
	<script>
	$('.trhuifu').hide();
	</script>
