<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.UserActionBean"%>
				<table class="table table-hover"  style="width: 100%;" >
			        <tbody>
			         
			      <%
			      List<UserActionBean>  userActionBeanList  = (List<UserActionBean>)request.getAttribute("userActionBeanList");
			      for(int i=0;i<userActionBeanList.size();i++){
			    	  UserActionBean uerBean =  userActionBeanList.get(i);
			      %>    
			          <tr  onmouseover="tr_onmouseover('<%=i%>')" onmouseout="tr_onmouseout('<%=i%>')" >
			            <td style="padding: 15px 0px 15px 15px;width: 6%;">
			            <img class="user_info_img" src="https://mp.weixin.qq.com/misc/getheadimg?token=1001015341&fakeid=2124520920"/>
			            </td>
			            <td width="width: 60%;">
			            	<a class="nick_name"><%=uerBean.getWid() %></a>
			            	<a href="javascript:;" class="icon14_common edit_gray js_changeRemark" data-fakeid="822884582" title="修改备注"></a>
			            	<div class="wxMsg">
			            	<%
			            	if(uerBean.getEvent().equals("image")){
			            		%>
			            		<a target="_blank" href="<%=uerBean.getAction() %>">
			            			<img style="max-width: 80px;" src="<%=uerBean.getAction() %>"/>
			            		</a>
			            		<%
			            	}else if(uerBean.getEvent().equals("KEYWORD")){
			            		%>
			            			<%=uerBean.getAction() %>
			            		<%
			            	}else if(uerBean.getEvent().equals("LOCATION")){
			            		%>
		            			位置信息：<%=uerBean.getAction() %>
		            		<%
		            		}else if(uerBean.getEvent().equals("subscribe")){
			            		%>
			            		新关注用户
		            		<%
		            		}else if(uerBean.getEvent().equals("unsubscribe")){
			            		%>
			            		用户取消关注
		            		<%
		            			}
			            	%>
			            	
			            	</div>
			            	
			            </td>
			            <td width="width: 20%;">
			          	  <div class="wxTime"><%=uerBean.getActiontime() %></div>
			            </td>
			            <td>
			           	 <%
			            	if(uerBean.getIsreply()==1){
			            		%>
			            		<em class="tips" ><i>●</i>已回复</em>
			            		<%  
			            	}else{
			            		%>
			            		<em class="tips" ><i></i><div style="width: 50px;"></div></em>
			            		<%
			            	}
			           	 %>
			            	
			            </td>
			            <td   width="width: 14%;">
			            	<span id="icon_<%=i%>" style="display:none;">
								<a  style="margin-left: 14px;margin-top: 5px;" href="javascript:;"  class="icon20_common reply_gray js_reply" title="快捷回复">快捷回复</a>
				            	<a  style="margin-left: 14px;" href="javascript:;" class="js_star icon16_common star_gray"    title="收藏消息">取消收藏</a>
				         	    <a  style="margin-left: 14px;" href="javascript:;" class="js_star icon16_common star_orange"    title="取消收藏">取消收藏</a>
				         	    <a  style="margin-left: 14px;" href="javascript:;" class="js_save icon16_common save_gray"  title="保存为素材">保存为素材</a>
				          		<a  style="margin-left: 14px;" href="javascript:;" class="icon18_common download_gray" target="_blank"  title="下载">下载</a>
			     		   </span>
			     		   <div style="min-width: 200px;">&nbsp;</div>
			            </td>
			          </tr>
			       	  <%}%>
			       	  </tbody>
				</table>