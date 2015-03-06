<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberInfoCogBean"%>
<%@page import="com.zhike.sql.beans.WxUserBean"%>
<%@page import="com.zhike.finals.Constat"%>


	<%
	List<MemberInfoCogBean> memberInfoCogBeanList  = (List<MemberInfoCogBean>)request.getAttribute("memberInfoCogBeanList");
	if(memberInfoCogBeanList!=null){
		for(int i=0;i<memberInfoCogBeanList.size();i++){
			MemberInfoCogBean memberInfoCogBean = memberInfoCogBeanList.get(i);
		%>
			  <li class="clearfix" >
			        <div class="l_div">
			            <div><span class="l_explan" >
			             <%switch(memberInfoCogBeanList.get(i).getMember_type()){
			            case 1: %>余额充值<%break;
			            case 2: %>余额消费<%break;
			            case 3: %>积分充值<%break;
			            case 4: %>积分消费<%break;
			            case 5: %>每日签到<%break;
			            case 6: %>赠送积分<%break;
			             }%>
			            </span></div>
			            <div><span class="l_date" ><%=memberInfoCogBean.getCreatetime() %></span></div>
			        </div>
			        <div class="r_div">
			        <%
					switch(memberInfoCogBean.getMember_type()){
					case 1: 
					case 3: 
					case 5: 
					case 6: 
						%>
						 <span class="r_num green">+<%=memberInfoCogBean.getMember_number() %></span>
						<%
						break;
					default : 
						%>
						<span class="r_num orange">-<%=memberInfoCogBean.getMember_number() %></span>
						<%
						break;	
					}
			        %>
			        </div>
			   	</li>			
		<%
		}
	}
	%>
		  	
