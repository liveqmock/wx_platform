<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="com.zhike.sql.beans.ActionLinkBean"%>
<%@page import="com.zhike.actions.LinkAction"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>微信封-微信营销系统</title>
		
		<link href="<%=path %>/img/logo_icon.png" rel="Shortcut Icon">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_editor.css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/qq/css/base1a003d.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/qq/css/pagination.css" media="all">	
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/qq/css/appmsg_edit19e425.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/qq/css/appmsg_editor.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/qq/css/msg_sender.css" media="all">


		<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>
<style type="text/css">
	#wx_action_detail{
		min-width: 320px;
	}
	
	#wx_action_detail .appmsg{
		max-width: 320px;
	}
	a:HOVER{text-decoration: none;}
	.appmsg_main_item {
		padding: 12px 0px;
	}
	
.btn {
/* border: 0; */
-webkit-box-shadow: none;
-moz-box-shadow: none;
box-shadow: none;
text-shadow: none;
-webkit-border-radius: 0;
-moz-border-radius: 0;
border-radius: 0;
padding: 5px 9px;
filter: none;
}
.frm_textarea_box{padding-left: 0em;}
</style>
</head>
<body class="page_appmsg_edit">
	<% 
		MaterialBean bean = (MaterialBean) request.getAttribute("L_MATERIAL_BEAN"); 
	%>
	<form action="<%=path %>/uploadMaterialSingle.action" method="post">
		<input type="hidden" name="uploadMaterialViewModel.id" value="<%=(bean == null ? "" : bean.getId()) %>">
		<input type="hidden" name="acType" value="<%=(bean == null ? "add" : "edit") %>">
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media<%=(bean != null ? bean.getId() : 0)%>">
							<a>图文消息</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="main_bd">
				<div class="media_preview_area">
					<div class="appmsg  editing">
						<div id="js_appmsg_preview" class="appmsg_content">
							<div id="appmsgItem<%=(bean != null ? bean.getId() : 0)%>" data-id="<%=(bean != null ? bean.getId() : 0)%>"
								class="js_appmsg_item ">

								<h4 class="appmsg_title">
									<a onclick="return false;" href="javascript:void(0);" target="_blank">
										<%=(bean == null ? "标题" : bean.getWx_title()) %>
									</a>
								</h4>
								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="appmsg_thumb_wrp">
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=(bean == null ? "" : bean.getWx_img()) %>" style="display:<%=(bean != null && bean.getWx_img() != null? "block" : "none") %>">
									<i class="appmsg_thumb default">封面图片</i>
								</div>
								<p class="appmsg_desc"><%=(bean == null ? "" : bean.getWx_desc()) %></p>
							</div>
						</div>
					</div>
				</div>
				<div id="js_appmsg_editor" class="media_edit_area">
					<div class="appmsg_editor" style="margin-top: 0px;">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">标题</label>
								<span>
									<input type="text" class="js_title" style="width: 98%" name="uploadMaterialViewModel.wx_title" value="<%=(bean == null ? "" : bean.getWx_title()) %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									<strong class="title">作者</strong>
									<p class="tips">
										（选填）
									</p>
								</label>
								<span>
									<input type="text" class="js_author" style="width: 98%" name="uploadMaterialViewModel.wx_author" value="<%=(bean == null ? "" : bean.getWx_author()) %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									<strong class="title">封面</strong>
									<p class="js_cover_tip tips r">
										大图片建议尺寸：360像素 * 200像素
									</p>
								</label>
								<div class='frm_input_box'>
									<div class="upload_box">
										<div class="upload_area">
											<a id="js_appmsg_upload_cover" href="javascript:void(0);"
												onclick="return false;" class="upload_access" width="50"
												height="22"> <i class="icon18_common upload_gray"></i>
												上传 </a>
										</div>
									</div>
									&nbsp;
									<p class="js_cover upload_preview" style="display: block;">
										<img id="upload_preview_img" src="<%=(bean == null ? "" : bean.getWx_img()) %>">
										<input type="hidden" class="frm_input js_title frm_input_hidden" name="uploadMaterialViewModel.wx_img" value="<%=(bean == null ? "" : bean.getWx_img()) %>">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>

							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">
									摘要
								</label>
								<span class="frm_textarea_box">
									<textarea class="js_desc frm_textarea" name="uploadMaterialViewModel.wx_desc"><%=(bean == null ? "" : bean.getWx_desc()) %></textarea>
								</span>
							</div>
							
							
							<div class="appmsg_edit_item">
								<label class="frm_label">编辑文章内容或者选择以下链接为素材预览内容</label>
							</div>
							
							<div>
								<div>
									<input type="hidden" value="<%=(bean != null ? bean.getWx_link() : "文章") %>" id="actionLink" name="uploadMaterialViewModel.wx_link">
									<input type="hidden" value="<%=(bean != null ? bean.getWx_template_type() : "") %>" id="actionValue" name="uploadMaterialViewModel.wx_template_type">
								</div>
								<div id="wx_action_type" class="appmsg_main_item">
										<div class="js_selectArea dropdown_menu">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel" data-ref="main_href"><%=(bean != null ? bean.getWx_link() : "文章") %></label><i class="arrow"></i></a>
											<!-- block; -->
											<ul class="dropdown_data_list jsDropdownList" style="display: none;">
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="文章" data-value="文章">文章</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="网址" data-value="网址">网址</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="应用" data-value="应用">应用</a>
												</li>
											</ul>
										</div>
		
		
										<div class="js_selectArea dropdown_menu appmsg_main_item" id="ref_select" style="<%=(bean != null && ("应用").compareTo(bean.getWx_link()) == 0)?"display:inline-block":"display: none;"%>">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel" data-ref="main_href">请选择</label><i class="arrow"></i></a>
											<!-- block; -->
											<ul class="dropdown_data_list jsDropdownList" style="display: none;">
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_gw" data-name="官网">微官网</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_ly" data-name="留言">微留言</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_hy" data-name="会员">微会员</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_qj" data-name="全景">微全景</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_xc" data-name="相册">微相册</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_yy" data-name="预约">微预约</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_zp" data-name="转盘">大转盘</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_gk" data-name="刮卡">刮刮卡</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_dy" data-name="调研">微调研</a>
												</li>
														<li class="dropdown_data_item">
														<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_dk" data-name="打卡">打卡</a>
													</li>
													<li class="dropdown_data_item">
														<a href="javascript:;" class="jsDropdownItem jsAction" data-ref="div_lyq" data-name="留影墙">留影墙</a>
													</li>											
											</ul>
										</div>
									</div>
								
									<div id="wx_action_detail" class="appmsg_main_item">
										<%
											if(bean != null && ("网址").compareTo(bean.getWx_link()) == 0){
										%>
										<div class="appmsg_edit_item">
											<label for="" class="frm_label">链接地址</label>
											<span><input type="text" class="frm_input" placeholder="如 http://www.vxinfeng.com" id="net_address" value="<%=bean.getWx_template_type() %>"></span>
										</div>
										<%
											}else if(bean != null && ("应用").compareTo(bean.getWx_link()) == 0){
										%>
											<div class="appmsg_edit_item">
												<label for="" class="frm_label">链接地址</label>
												<span>
													<input type="text" class="frm_input js_action_link" readonly="readonly" value="<%=bean.getWx_template_type() %>"/>
												</span>
											</div>
										<%
											}
										%>
									</div>
									
									<div id="js_ueditor" class="appmsg_edit_item content_edit" style="<%=(bean != null && bean.getWx_link().compareTo("文章") == 0)?"display: block;":"display: none;" %>">
												<a href="javascript:void(0);"
													class="icon16_common close jsClose" onclick="return false;">关闭</a>
												<label for="" class="frm_label">
													<strong class="title">正文</strong>
													<p class="tips r">
														<em id="js_auto_tips"></em>
														<a id="js_cancle" style="display: none;" href="javascript:void(0);" onclick="return false;">取消</a>
													</p>
												</label>
												
												<div id="js_editor" class="edui_editor_wrp edui-default">
				
													<div id="edui1" class="edui-editor  edui-default"
														style="z-index: 999;">
														<div id="edui1_iframeholder"
															class="edui-editor-iframeholder edui-default"
															style="overflow: hidden; height: 320px; ">
															<textarea id="editor_id" style="width:99.5%;" name="uploadMaterialViewModel.wx_content"><%=(bean == null ? "" : bean.getWx_content()) %></textarea>
														</div>
													</div>
												</div>
									</div>
									
									<div style="display: none;">
										<%
											Map<Integer,List<ActionLinkBean>> map = (HashMap<Integer,List<ActionLinkBean>>) request.getAttribute("L_ACTIONS");
											for(int i = 0 ; i<=10 ; i++){
												List<ActionLinkBean> beans = map.get(i);
										%>
										<div id="<%=LinkAction.getReflectDIV(i) %>" class="ref_action">
										<%
												if(beans != null){
										%>
											<div class="appmsg_edit_item">
												<label for="" class="frm_label">链接地址</label>
												<span>
													<input type="text" class="frm_input js_action_link" readonly="readonly"/>
												</span>
											</div>
											<table class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
												<thead><tr><th>选择</th><th>活动标题</th><th>关键词</th><th style="width:80px;">创建时间</th></tr></thead>
											   	<tbody id="appmsg_thumb_wrp_items">
										<%
													for(ActionLinkBean actionBean : beans){
										%>
											   		<tr><td><div class="radio"><label><input type="radio" name="rd_selected" value="<%=actionBean.getUrl() %>">选中</label></div></td>
											   		<td><%=actionBean.getTitle() %></td><td><%=actionBean.getKeyword() %></td><td><%=actionBean.getCreatetime() %></td></tr>
										<%
												}
										%>
												</tbody>
											</table>
										<%
											}
												else{
										%>
											<label class="no_data"><%=LinkAction.getReflectName(i) %>没有添加对应的活动页面。</label>
										<%
											}
										%>
										</div>
										<%
											}
										%>
									</div>
									
									<!-- dialog素材 -->
									<div id="matercial">
											<div class="dialog_wrp media"
												style="width: 960px; margin-left: -480px; margin-top: -314.5px;display: none;">
												<div class="dialog">
													<div class="dialog_hd">
														<label class="frm_label">
															选择素材
														</label>
														<a href="javascript:;" onclick="return false"
															class="icon16_opr closed pop_closed">关闭</a>
													</div>
								
													<div class="dialog_bd">
														<div class="dialog_media_container">
															<div class="circle"></div>
															<div class="circle1"></div>
														</div>
													</div>
								
													<div class="dialog_ft">
														<span class="btn btn_input btn_media_ok" style="background:#56a447;"><button style="color: white;" onclick="return false;">确定</button></span>
														<span class="btn btn_input btn_media_cancel pop_closed" style="background:#56a447;"><button style="color: white;" onclick="return false;">取消</button></span>
													</div>
												</div>
											</div>
								</div>
							</div>
						</div>
						<i class="arrow arrow_out" style="margin-top: 0px;"></i>
						<i class="arrow arrow_in" style="margin-top: 0px;"></i>
					</div>
				</div>
				<div class="tool_area">
					<div class="tool_bar">
						<span id="js_preview" class="btn btn_input btn_primary"><button>返回</button></span>
						<span id="js_submit" class="btn btn_input btn_primary"><button>保存</button></span>
					</div>
				</div>
			</div>
		</div>
</form>

<!-- 遮蔽罩 -->
<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>

<script type="text/html" id="div_net">
	<div class="appmsg_edit_item">
		<label for="" class="frm_label">链接地址</label>
		<span><input type="text" class="frm_input" placeholder="如 http://www.vxinfeng.com" id="net_address"></span>
	</div>
</script>
<script type="text/html" id="div_phone">
	<div class="appmsg_edit_item">
		<label for="" class="frm_label">电话号码</label>
		<spa><input type="text" class="frm_input" placeholder="如 010-12345678"></span>
	</div>
</script>
<script type="text/html" id="div_table">
<table id="listTable" class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
	<thead><tr><th>展示</th><th>事件类型</th><th>是否显示</th><th style="width:80px;">操作</th></tr></thead>
    <tbody id="appmsg_thumb_wrp_items" class="ui-sortable"></tbody>
</table>
</script>

</body>

<script>

	$('.js_title').bind('input propertychange',function(){
		var text = $('.js_title').val();
		if(text == ''){
			$('.appmsg_title > a').text('标题');
		}
		else{
			$('.appmsg_title > a').text(text);
		}
	});


	$('.js_desc').bind('input propertychange',function(){
		$('.appmsg_desc').html($('.js_desc').val());
	});


	$('.js_addURL').bind('click',function(){
			$('.js_addURL').css('display','none');
			$('.js_url_area').css('display','block');
	});
	
	$('.js_removeCover').bind('click',function(){
			$('.js_appmsg_thumb').attr('src','');
			$('#upload_preview_img').attr('src','');
			$('.js_appmsg_thumb').css('display','block');
			$('.frm_input_hidden').val('');
	});
	
	
    KindEditor.ready(function(K) {
			var editor = K.editor({
				allowFileManager : true,
				uploadJson : '<%=path%>/jsp/upload_json.jsp',
		        fileManagerJson : '<%=path%>/jsp/file_manager_json.jsp',
		            height:'320px',
		            //上传后的回调函数
		            afterUpload : function(data) {
		        	}
				});
			
			window.editor = K.create('#editor_id',editor);
			
			K('#js_appmsg_upload_cover').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						$('.js_appmsg_thumb').attr('src',url);
						$('#upload_preview_img').attr('src',url);
						$('.js_appmsg_thumb').css('display','block');
						$('.frm_input_hidden').val(url);
						editor.hideDialog();
					}
				});
			});
		});
    });
    
    
	<!--下拉-->
	$('.dropdown_menu').bind('click',function(){
		if($(this).children('.jsDropdownBt').parent().hasClass('open')){
			$(this).children('.jsDropdownBt').parent().removeClass('open');
			$(this).children('.jsDropdownList').css('display','none');
		}
		else{
			if($('.jsDropdownBt').parent().hasClass('open')){
				$('.jsDropdownBt').parent().removeClass('open');
				$('.jsDropdownList').css('display','none');
			}
			$(this).children('.jsDropdownBt').parent().addClass('open');
			$(this).children('.jsDropdownList').css('display','block');
		}
	});

	function loadDatas(){
		$('.dialog_media_container').html("<div class='circle'></div><div class='circle1'></div>");
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			url : '<%=path%>/selectAllNewMaterialByUserIdForKeywordForEdit.action', 
			error : function() {
				alert('error');
			},
			success : function(data) { 
				$('.dialog_media_container').html(data);
				$('.appmsg').bind('click',function(){
					if(!$(this).hasClass('selected')){
						$('.appmsg').removeClass('selected');
						$(this).addClass('selected');
					}
				});
			}
		});
	}
	
	function hideMaterial(b){
		if(b == true){
			$('.media').css('display','none');
			$('.mask').css('display','none');
			$('.appmsg').unbind('click');
		}
		else{
			$('.media').css('display','');
			$('.mask').css('display','');
			loadDatas();
		}
	}

	$('.pop_closed').bind('click',function(){
		hideMaterial(true);
	});

	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_input.btn_media_cancel.pop_closed').bind('click',function(){
		hideMaterial(true);
	});
	
	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_input.btn_media_ok').bind('click',function(){
		$('#wx_action_detail').html($("div[class*='selected']").parent());
		$('.appmsg').removeClass('selected');
		hideMaterial(true);
	});
	
	function refSelectOption(bshow,refTarget){
		var ref_select = $('#ref_select');
		if(bshow == true){
			if($(ref_select).css('display') == 'none'){
				$(ref_select).css('display','inline-block');
			}
		}
		else{
			$(ref_select).css('display','none');
		}
	}
	
	function reflectJsDropdownItemAction(target,actype){
		$('#wx_action_detail').html('');
		if(actype == '文章'){
			$('#actionLink').val($(target).attr('data-value'));
			$('#actionValue').val($(target).attr(''));
			$("#js_ueditor").css('display','block');
			refSelectOption(false);
		}
		else if(actype == '网址'){
			$('#actionLink').val($(target).attr('data-value'));
			$('#actionValue').val($(target).attr(''));
			$("#js_ueditor").css('display','none');
			$('#wx_action_detail').html($("#div_net").html());
			bindNetAddressEvents();
			refSelectOption(false);
		}
		else if(actype == '素材'){
			hideMaterial(false);
			refSelectOption(false);
		}
		else if(actype == '应用'){
			$('#actionLink').val($(target).attr('data-value'));
			$('#actionValue').val($(target).attr(''));
			$("#js_ueditor").css('display','none');
			refSelectOption(true);
		}
		else{
			$('.ref_action').css('display','none');
			$('#wx_action_detail').html($('#'+$(target).attr('data-ref')).html());
			bindRadioEvents();
		}
	}
	
	$('.jsDropdownItem').bind('click',function(){
		$(this).parents('.dropdown_menu').children('.jsDropdownBt').children('.jsBtLabel').html($(this).attr('data-name'));
		if($(this).hasClass('jsAction')){
			reflectJsDropdownItemAction(this,$(this).attr('data-name'));
		}
	});


	function bindRadioEvents(){
		$('input[name="rd_selected"]').click(function(){
			$('#actionValue').val($(this).val());
			$('.js_action_link').val($(this).val());
		});
	}
	
	function bindNetAddressEvents(){
		$('#net_address').bind('input propertychange',function(){
			$('#actionValue').val($(this).val());
		});
	}
</script>
</html>