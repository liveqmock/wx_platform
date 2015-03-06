<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ResearchBean"%>
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
			            <th width="45%">题目名称</th>
			            <th width="35%">最多可选择的答案数</th>
			            <th width="20%">操作</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<ResearchBean> researchBeanList  = (List<ResearchBean>)request.getAttribute("researchBeanList");
			      for(int i=0;i<researchBeanList.size();i++){
			      		ResearchBean researchBean = researchBeanList.get(i);
			      %>    
			      	  <form id="mes<%=researchBean.getId() %>" role="form">
			      	  <input type="hidden" name="researchViewModel.id" value="<%=researchBean.getId() %>">
			          <tr>
			            <td><%=i+1%></td>
			            <td><%=researchBean.getTitle()%></td>
			            <td><%=researchBean.getAnswers()%></td>
						<td>
						<button type="button" class="btn btn-default" style="padding: 0 12px" title="编辑" onclick="edit_service(<%=researchBean.getId()%>)"><span class="icon-edit"></span></button>
						<button type="button" class="btn btn-default" style="padding: 0 12px" title="删除" onclick="del_service(<%=researchBean.getId()%>)"><span class="icon-trash"></span></button>
						
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
