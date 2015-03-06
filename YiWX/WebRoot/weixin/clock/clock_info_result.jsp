<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>
<%@page import="com.zhike.sql.beans.ClockInfoBean"%>
<%@page import="com.zhike.finals.Constat"%>


	<%
	List<ClockInfoBean> clockInfoBeanList  = (List<ClockInfoBean>)request.getAttribute("clockInfoBeanList");
	ClockBean clockBean  = (ClockBean)request.getAttribute("clockBean");
	if(clockInfoBeanList!=null){
		if(clockBean.getIsflextime()!=null&&clockBean.getIsflextime().equals("1")){
			//弹性时间
			for(int i=0;i<clockInfoBeanList.size();i++){
				ClockInfoBean clockInfoBean = clockInfoBeanList.get(i);
				
			%>
				  <li class="clearfix" style="text-align: left;background-color: #E0E0E0;padding-left: 10px;}">
				  <%=clockInfoBean.getCreatetime() %>&nbsp;&nbsp;<%=clockInfoBean.getWeeks() %> 
				  <%
						if(clockInfoBean.getIsfull()==null||clockInfoBean.getIsfull().equals("0")){
							%>
							<span  style="color:red;margin-right: 10px;float: right;">未打卡</span>
							<%
						}else if(clockInfoBean.getIsfull()!=null&&clockInfoBean.getIsfull().equals("1")){
							%>
							<span style="margin-right: 10px;float: right;"><%=clockInfoBean.getWorktime()%></span>
							<%	
						}else if(clockInfoBean.getIsfull()!=null&&clockInfoBean.getIsfull().equals("2")){
							%>
							<span  style="color:red;margin-right: 10px;float: right;"><%=clockInfoBean.getWorktime()%></span>
							<%	
						}		
				  %>
				  </li>
				  <li class="clearfix" >
				        <div class="l_div">
				            <div><span class="l_explan" >上班
				            </span></div>
				        </div>
				        <div class="r_div">
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
				        </div>
				   </li>	
				  <li class="clearfix" >
				        <div class="l_div">
				            <div><span class="l_explan" >下班
				            </span></div>
				        </div>
				        <div class="r_div">
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
				        </div>
				   </li>			   		
			<%
			 }
			
		}else{
			//普通时间
			for(int i=0;i<clockInfoBeanList.size();i++){
				ClockInfoBean clockInfoBean = clockInfoBeanList.get(i);
				
			%>
				  <li class="clearfix" style="text-align: left;background-color: #E0E0E0;padding-left: 10px;}">
				  <%=clockInfoBean.getCreatetime() %>&nbsp;&nbsp;<%=clockInfoBean.getWeeks() %>
				  </li>
				  <li class="clearfix" >
				        <div class="l_div">
				            <div><span class="l_explan" >上班
				            </span></div>
				        </div>
				        <div class="r_div">
						<%
						if(clockInfoBean.getOnwork_ontime()==1){
							%>
							<span><%=clockInfoBean.getOnwork_time() %></span>
							<%
						}else{
							if(clockInfoBean.getOnwork_time()!=null&&!clockInfoBean.getOnwork_time().equals("")){
							%>
							<span class="time_<%=clockInfoBean.getId()%>" style="color:red;" ><%=clockInfoBean.getOnwork_time()%></span>
							<%
							}else{
							%>
							<span style="color:red;">未打卡</span>
							<%								
							}
						}
						 %>
				        </div>
				   </li>	
				  <li class="clearfix" >
				        <div class="l_div">
				            <div><span class="l_explan" >下班
				            </span></div>
				        </div>
				        <div class="r_div">
						<%
						if(clockInfoBean.getOffwork_ontime()==1){
							%>
							<span><%=clockInfoBean.getOffwork_time() %></span>
							<%
						}else{
							if(clockInfoBean.getOffwork_time()!=null&&!clockInfoBean.getOffwork_time().equals("")){
							%>
							<span class="time_<%=clockInfoBean.getId()%>" style="color:red;" ><%=clockInfoBean.getOffwork_time()%></span>
							<%
							}else{
							%>
							<span style="color:red;">未打卡</span>
							<%								
							}
						}
						 %>
				        </div>
				   </li>			   		
			<%
			 }			
			
		}
	}
	%>
		  	
