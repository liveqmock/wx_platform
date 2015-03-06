<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockInfoBean"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>
<%@page import="com.zhike.sql.beans.PageBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <thead>
			          <tr>
			            <th>#</th>
			            <th>日期</th>
			            <th>星期</th>
			            
			            <%
			            ClockBean clockBean = (ClockBean)request.getAttribute("clockBean");
			            if(clockBean.getIsflextime()!=null&&clockBean.getIsflextime().equals("1")){
			            	%>
			            	<th>工时</th>
			            	<%
			            }
			            %>
			            <th>上班打卡</th>
			            <th>备注</th>
			            <th>下班打卡</th>
			            <th>备注</th>
			          </tr>
			        </thead>				
			        <tbody id="content">
				<%
				List<ClockInfoBean> clockInfoBeanList = (List<ClockInfoBean>)request.getAttribute("clockInfoBeanList");
				if(clockInfoBeanList!=null){
					if(clockBean.getIsflextime()!=null&&clockBean.getIsflextime().equals("1")){
						for(int i=0;i<clockInfoBeanList.size();i++){
					    	  ClockInfoBean clockInfoBean = clockInfoBeanList.get(i);
					%>
					 <tr>
						<td><%=i+1%></td>
						<td><%=clockInfoBean.getCreatetime()%></td>
						<td><%=clockInfoBean.getWeeks()%></td>
						<td>
						<%
						if(clockInfoBean.getIsfull()==null||clockInfoBean.getIsfull().equals("0")){
							%>
							<span style="color: red;">未打卡</span>
							<%
						}else if(clockInfoBean.getIsfull()!=null&&clockInfoBean.getIsfull().equals("1")){
							%>
							<span ><%=clockInfoBean.getWorktime()%></span>
							<%	
						}else if(clockInfoBean.getIsfull()!=null&&clockInfoBean.getIsfull().equals("2")){
							%>
							<span style="color: red;"><%=clockInfoBean.getWorktime()%></span>
							<%	
						}		
						%>
						</td>
						<td>
						<%
						if(clockInfoBean.getOnwork_time()!=null&&!clockInfoBean.getOnwork_time().equals("")){
							%>
							<span><%=clockInfoBean.getOnwork_time()%></span>
							<%
							}else{
							%>
							<span style="color:red;">未打卡</span>
							<%								
							}						
						%>
						</td>
						<td>
						<%
						if(clockInfoBean.getOnwork_remark()!=null&&!clockInfoBean.getOnwork_remark().equals("")){
						%>
						<%=clockInfoBean.getOnwork_remark()%>
						<%
						}
						%>
						</td>
						<td>
						<%
						if(clockInfoBean.getOffwork_time()!=null&&!clockInfoBean.getOffwork_time().equals("")){
							%>
							<span><%=clockInfoBean.getOffwork_time()%></span>
							<%
							}else{
							%>
							<span style="color:red;">未打卡</span>
							<%								
							}						
						%>
						</td>
						<td>
						<%
						if(clockInfoBean.getOffwork_remark()!=null&&!clockInfoBean.getOffwork_remark().equals("")){
						%>
						<%=clockInfoBean.getOffwork_remark()%>
						<%
						}
						%>						
						</td>
					<%
						}
					}else{
						for(int i=0;i<clockInfoBeanList.size();i++){
					    	  ClockInfoBean clockInfoBean = clockInfoBeanList.get(i);
					%>
					 <tr onmouseover="tr_onmouseover('<%=clockInfoBean.getId()%>')" onmouseout="tr_onmouseout('<%=clockInfoBean.getId()%>')">
			            <td><%=i+1%></td>
						<td><%=clockInfoBean.getCreatetime()%></td>
						<td><%=clockInfoBean.getWeeks()%></td>
						<td>
						<%
						if(clockInfoBean.getOnwork_ontime()==1){
							%>
							<span><%=clockInfoBean.getOnwork_time() %></span>
							<%
						}else{
							if(clockInfoBean.getOnwork_time()!=null&&!clockInfoBean.getOnwork_time().equals("")){
							%>
							<span class="word_<%=clockInfoBean.getId()%>" style="color:red;" >迟到</span>
							<span class="time_<%=clockInfoBean.getId()%>" style="color:red;display: none;" ><%=clockInfoBean.getOnwork_time()%></span>
							<%
							}else{
							%>
							<span style="color:red;">未打卡</span>
							<%								
							}
						}
						 %>
						</td>
						<td>
						<%
						if(clockInfoBean.getOnwork_remark()!=null&&!clockInfoBean.getOnwork_remark().equals("")){
						%>
						<%=clockInfoBean.getOnwork_remark()%>
						<%
						}
						%>
						</td>
						<td>
						<%
						if(clockInfoBean.getOffwork_ontime()==1){
							%>
							<span><%=clockInfoBean.getOffwork_time() %></span>
							<%
						}else{
							if(clockInfoBean.getOffwork_time()!=null&&!clockInfoBean.getOffwork_time().equals("")){
							%>
							<span class="word_<%=clockInfoBean.getId()%>" style="color:red;" >早退</span>
							<span class="time_<%=clockInfoBean.getId()%>" style="color:red;display: none;" ><%=clockInfoBean.getOffwork_time()%></span>
							<%
							}else{
							%>
							<span style="color:red;">未打卡</span>
							<%								
							}
						}
						 %>
						</td>
						<td>
						<%
						if(clockInfoBean.getOffwork_remark()!=null&&!clockInfoBean.getOffwork_remark().equals("")){
						%>
						<%=clockInfoBean.getOffwork_remark()%>
						<%
						}
						%>
						</td>						
						</tr>
					<%
						}
					}
				}
				%>
			   			        </tbody>
				</table>    
