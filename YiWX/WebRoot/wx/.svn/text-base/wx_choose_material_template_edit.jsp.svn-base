<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<%
			List<MaterialBean> materialBeans = (List<MaterialBean>) request.getAttribute(Constat.MATERIALS);
		%>
		<div class="dialog_media_container">
			<div class="js_appmsg_list appmsg_list media_dialog">
				<div class="appmsg_col">
					<div class="inner">
						<%
								int i = 0 ; 
								for(MaterialBean materialBean : materialBeans){
								if(i%2 == 0){
									i++;
								}
								else{
									i++;
									continue;
								}
								if(materialBean.getWx_type() == 0){
							%>
							<div id="appmsg<%=materialBean.getId() %>" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
								<div class="appmsg">
									<div class="appmsg_content">
										<h4 class="appmsg_title">
											<a><%=materialBean.getWx_title() %></a>
										</h4>
										<div class="appmsg_info">
											<em class="appmsg_date"><%=materialBean.getWx_createtime() %></em>
										</div>
										<div class="appmsg_thumb_wrp">
											<img src="<%=materialBean.getWx_img() %>" alt="" class="appmsg_thumb">
										</div>
										<p class="appmsg_desc">
											<%=materialBean.getWx_desc() %>
										</p>
									</div>
									<div class="appmsg_mask"></div>
									<i class="icon_appmsg_selected">已选择</i>
								</div>
							</div>
							<%
								}else{
							%>
							<div id="appmsg<%=materialBean.getId() %>" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
								<div class="appmsg multi">
								    <div class="appmsg_content">
								            <div class="appmsg_info">
								                <em class="appmsg_date"><%=materialBean.getWx_createtime() %></em>
								            </div>
								            <%
								            	String titles = materialBean.getWx_title();
								            	JSONArray titleArray = new JSONArray(titles);
								            	String imgs = materialBean.getWx_img();
								            	JSONArray imgsArray = new JSONArray(imgs);
								            	for(int j = 0 ; j< titleArray.length() ; j++){
								            		String title = titleArray.getJSONObject(j).getString("title");
								            		String img = imgsArray.getJSONObject(j).getString("img");
								            		if(title == null) continue;
								            %>
								            	<%
								            		if(j ==0){
								            	%>
								            	<div class="cover_appmsg_item">
									                <h4 class="appmsg_title"><a href="" target="_blank"><%=title %></a></h4>
									                <div class="appmsg_thumb_wrp"><img src="<%=img %>" alt="" class="appmsg_thumb"></div>
									            </div>
								            	<%
								            		}
								            		else{
								            	%>
								            	<div class="appmsg_item">
									                <img src="<%=img %>" alt="" class="appmsg_thumb">
									                <h4 class="appmsg_title"><a href="" target="_blank"><%=title %></a></h4>
									            </div>
								            	<%
								            		}
								            	%>
								            <%
								            	}
								            %>
								    </div>

								    <div class="appmsg_mask"></div>
									<i class="icon_appmsg_selected">已选择</i>
								</div>
							</div>
							<%	
							}}
							%>
					</div>
				</div>
				&nbsp;
				<div class="appmsg_col">
					<div class="inner">
						<%
								i = 0;
								for(MaterialBean materialBean : materialBeans){
								if(i%2 == 1){
									i++;
								}
								else{
									i++;
									continue;
								}
								if(materialBean.getWx_type() == 0){
							%>
							<div id="appmsg<%=materialBean.getId() %>" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
								<div class="appmsg">
									<div class="appmsg_content">
										<h4 class="appmsg_title">
											<a href="" target="_blank"><%=materialBean.getWx_title() %></a>
										</h4>
										<div class="appmsg_info">
											<em class="appmsg_date"><%=materialBean.getWx_createtime() %></em>
										</div>
										<div class="appmsg_thumb_wrp">
											<img
												src="<%=materialBean.getWx_img() %>"
												alt="" class="appmsg_thumb">
										</div>
										<p class="appmsg_desc">
											<%=materialBean.getWx_desc() %>
										</p>
									</div>
								    <div class="appmsg_mask"></div>
									<i class="icon_appmsg_selected">已选择</i>
								</div>
							</div>
							<%
								}else{
							%>
							<div id="appmsg<%=materialBean.getId() %>"  data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
								<div class="appmsg multi">
								    <div class="appmsg_content">
								            <div class="appmsg_info">
								                <em class="appmsg_date"><%=materialBean.getWx_createtime() %></em>
								            </div>
								            
								            <%
								            	String titles = materialBean.getWx_title();
								            	JSONArray titleArray = new JSONArray(titles);
								            	String imgs = materialBean.getWx_img();
								            	JSONArray imgsArray = new JSONArray(imgs);
								            	for(int j = 0 ; j< titleArray.length() ; j++){
								            		String title = titleArray.getJSONObject(j).getString("title");
								            		String img = imgsArray.getJSONObject(j).getString("img");
								            		if(title == null) continue;
								            %>
								            	<%
								            		if(j ==0){
								            	%>
								            	<div class="cover_appmsg_item">
									                <h4 class="appmsg_title"><a href="" target="_blank"><%=title %></a></h4>
									                <div class="appmsg_thumb_wrp"><img src="<%=img %>" alt="" class="appmsg_thumb"></div>
									            </div>
								            	<%
								            		}
								            		else{
								            	%>
								            	<div class="appmsg_item">
									                <img src="<%=img %>" alt="" class="appmsg_thumb">
									                <h4 class="appmsg_title"><a href="" target="_blank"><%=title %></a></h4>
									            </div>
								            	<%
								            		}
								            	%>
								            <%
								            	}
								            %>
								    </div>

								    <div class="appmsg_mask"></div>
									<i class="icon_appmsg_selected">已选择</i>
								</div>
							</div>
							<%	
							}}
							%>
						</div>
					</div>
				</div>
			</div>
	</body>
</html>