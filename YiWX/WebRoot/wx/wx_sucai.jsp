<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/media_list.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
	</head>
<body>
		<%
			List<MaterialBean> materialBeans = (List<MaterialBean>) request.getAttribute(Constat.MATERIALS);
		%>
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a href="<%=path %>/selectAllNewMaterialByUserId.action">图文消息</a>
						</li>
						<li class="title_tab_nav js_top " data-id="media10">
							<a href="<%=path %>/file!show.action">图片</a>
						</li>						
					</ul>
				</div>
			</div>
			<div class="main_bd" >
				<div class="sub_title_bar white">
					<div class="info">
						<h3 id="page_title">
							图文消息列表(共<span id="js_listCount"><%=materialBeans.size() %></span>个)
						</h3>
					</div>
				</div>
				
				<div style="width:891px;margin-left:auto;margin-right: auto;">
				<!-- 左侧的列表 -->
				<div class="appmsg_list" id="appmsgList">
					<div class="appmsg_col">
						<div class="inner" id="appmsgList1">
							<span class="create_access"> 
								<i class="icon42_common add_gray"></i><strong>&nbsp;</strong>
								<a href="<%=path %>/sucai_single.action"><i class="icon_appmsg_create"></i><strong>单图文消息</strong></a>
								<a href="<%=path %>/sucai_mulite.action"><i class="icon_appmsg_create multi"></i><strong>多图文消息</strong></a>
							</span>
							
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
							<div id="appmsg<%=materialBean.getId() %>">
								<div class="appmsg" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
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

									<div class="appmsg_opr">
										<ul>
											<li class="appmsg_opr_item with2">
												<a class="js_edit" href="<%=path %>/editMaterial.action?materialId=<%=materialBean.getId() %>">
													<i class="icon18_common edit_gray">编辑</i>
												</a>
											</li>
											<li class="appmsg_opr_item with2 no_extra">
												<a class="js_del no_extra" data-id="<%=materialBean.getId() %>"
													href="javascript:void(0);"><i
													class="icon18_common del_gray">删除</i>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<%
								}else{
							%>
							<div id="appmsg<%=materialBean.getId() %>">
								<div class="appmsg multi" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
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
									                <h4 class="appmsg_title"><a><%=title %></a></h4>
									                <div class="appmsg_thumb_wrp"><img src="<%=img %>" alt="" class="appmsg_thumb"></div>
									            </div>
								            	<%
								            		}
								            		else{
								            	%>
								            	<div class="appmsg_item">
									                <img src="<%=img %>" alt="" class="appmsg_thumb">
									                <h4 class="appmsg_title"><a><%=title %></a></h4>
									            </div>
								            	<%
								            		}
								            	%>
								            <%
								            	}
								            %>
								    </div>
							    
								    <div class="appmsg_opr">
								        <ul>
								            <li class="appmsg_opr_item with2">
								            <a class="js_edit" href="<%=path %>/editMaterial.action?materialId=<%=materialBean.getId() %>"><i class="icon18_common edit_gray">编辑</i></a>
								            </li>
								            <li class="appmsg_opr_item with2 no_extra">
								                <a class="js_del no_extra" data-id="<%=materialBean.getId() %>" href="javascript:void(0);"><i class="icon18_common del_gray">删除</i></a>
								            </li>
								        </ul>
								    </div>
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
							<div id="appmsg<%=materialBean.getId() %>">
								<div class="appmsg" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
									<div class="appmsg_content">
										<h4 class="appmsg_title">
											<a><%=materialBean.getWx_title() %></a>
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

									<div class="appmsg_opr">
										<ul>
											<li class="appmsg_opr_item with2">
												<a class="js_edit" href="<%=path %>/editMaterial.action?materialId=<%=materialBean.getId() %>">
													<i class="icon18_common edit_gray">编辑</i>
												</a>
											</li>
											<li class="appmsg_opr_item with2 no_extra">
												<a class="js_del no_extra" data-id="<%=materialBean.getId() %>"
													href="javascript:void(0);"><i
													class="icon18_common del_gray">删除</i>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<%
								}else{
							%>
							<div id="appmsg<%=materialBean.getId() %>">
								<div class="appmsg multi" data-id="<%=materialBean.getId() %>" data-fileid="<%=materialBean.getId() %>">
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
									                <h4 class="appmsg_title"><a><%=title %></a></h4>
									                <div class="appmsg_thumb_wrp"><img src="<%=img %>" alt="" class="appmsg_thumb"></div>
									            </div>
								            	<%
								            		}
								            		else{
								            	%>
								            	<div class="appmsg_item">
									                <img src="<%=img %>" alt="" class="appmsg_thumb">
									                <h4 class="appmsg_title"><a><%=title %></a></h4>
									            </div>
								            	<%
								            		}
								            	%>
								            <%
								            	}
								            %>
								    </div>
							    
								    <div class="appmsg_opr">
								        <ul>
								            <li class="appmsg_opr_item with2">
								            	<a class="js_edit" href="<%=path %>/editMaterial.action?materialId=<%=materialBean.getId() %>">
								            	<i class="icon18_common edit_gray">编辑</i></a>
								            </li>
								            <li class="appmsg_opr_item with2 no_extra">
								                <a class="js_del no_extra" data-id="<%=materialBean.getId() %>" href="javascript:void(0);">
								                <i class="icon18_common del_gray">删除</i></a>
								            </li>
								        </ul>
								    </div>
								</div>
							</div>
							<%	
							}}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<div style="display: block;">
	<form id="material_form"><input type="hidden" name="id" value="" id="material_input"></form>
</div>
</body>
	
<script type="text/javascript">

$(function(){
	$('.js_del').bind('click',function(){
		var material_del_id = $(this).attr('data-id');
		$('#material_input').val(material_del_id);
		var params = $("form[id=material_form]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : '<%=path %>/deleteMaterial.action',
			error : function() {
				$.scojs_message('访问服务器失败', $.scojs_message.TYPE_OK);
			},
			success : function(data) {
				reqStatus = eval('(' + data+ ')');
				if(reqStatus["status"] == 'ok'){
					$('#appmsg'+material_del_id).slideUp(1000,function (){
					    $(this).remove();
					});
					$.scojs_message('删除素材成功', $.scojs_message.TYPE_OK);
				}
				else{
					$.scojs_message('删除素材失败,请重试.', $.scojs_message.TYPE_OK);
				}
			}
		});
	});
});
</script>
</html>