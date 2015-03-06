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
			
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.tmpl.js"></script>
		
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
		List<MaterialBean> beans = (List<MaterialBean>) request.getAttribute("L_MATERIAL_BEAN");
		MaterialBean bean = (beans != null && beans.size() > 0 ? beans.get(0) : null);
	%>
	<form action="<%=path %>/uploadMaterialMulite.action" method="post">
		<input type="hidden" name="id" value="<%=(bean == null ? "" : bean.getId()) %>">
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
					<div class="appmsg multi editing">
						<div id="js_appmsg_preview" class="appmsg_content">
							<div id="appmsgItem<%=(bean != null ? bean.getId() : 0)%>" data-id="<%=(bean != null ? bean.getId() : 0)%>"
								class="js_appmsg_item">

								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="cover_appmsg_item">
									<h4 class="appmsg_title">
										<a href="javascript:void(0);" onclick="return false;" target="_blank"><%=(bean == null ? "标题" : bean.getWx_title()) %></a>
									</h4>
									<div class="appmsg_thumb_wrp">
										<img class="js_appmsg_thumb appmsg_thumb" src="<%=(bean != null ? bean.getWx_img():"") %>" style="display:<%=(bean == null ? "none":"block" ) %>">
										<i class="appmsg_thumb default" style="display:<%=(bean != null ? "none":"block" ) %>">封面图片</i>
									</div>
									<div class="appmsg_edit_mask">
										<a onclick="return false;"
											class="icon18_common edit_gray js_edit" data-id="1"
											href="javascript:;">编辑</a>
									</div>
								</div>
								<div class="wx_hide">
								<input type='hidden' class='wx_title' name='wx_title' value="<%=(bean == null ? "" : bean.getWx_title()) %>" />
								<input type='hidden' class='wx_author' name='wx_author' value="<%=(bean == null ? "" : bean.getWx_author()) %>" />
								<input type='hidden' class='wx_img' name='wx_img' value="<%=(bean == null ? "" : bean.getWx_img()) %>" />
								<textarea style="display: none;" class="wx_content" name="wx_content"><%=(bean == null ? "" : bean.getWx_content()) %></textarea>
								<input type="hidden" class='wx_linkkey' name='wx_template_type' value="<%=(bean != null ? bean.getWx_template_type() : "文章")%>" />
								<input type="hidden" class="wx_linkvalue" name="wx_link" value="<%=(bean == null ? "" : bean.getWx_link()) %>" />
								</div>
							</div>
						</div>
						
						<%
							if(beans != null && beans.size() > 0){
								for(int i = 1 ; i < beans.size(); i++){
									MaterialBean subBean = beans.get(i);
						%>
						<div id='appmsgItem2' data-id='3' class='appmsg_item js_appmsg_item'>
							<img class='js_appmsg_thumb appmsg_thumb' src='<%=(subBean == null ? "" : subBean.getWx_img()) %>' style="display: block;">
							<i class='appmsg_thumb default' style="display: none;">缩略图</i>
							<h4 class='appmsg_title'>
								<a onclick='return false;' href='javascript:void(0);' target='_blank'><%=(subBean == null ? "标题" : subBean.getWx_title()) %></a>
							 </h4>
							<div class='appmsg_edit_mask'>
								<a class='icon18_common edit_gray js_edit' data-id='3' onclick='return false;' href='javascript:void(0);'>编辑</a>
								<a class='icon18_common del_gray js_del'   data-id='3' onclick='return false;' href='javascript:void(0);'>删除</a>
							</div>
							<div class='wx_hide'>
								<input type='hidden' class='wx_title' name='wx_title' value="<%=(subBean == null ? "" : subBean.getWx_title()) %>">
								<input type='hidden' class='wx_author' name='wx_author' value="<%=(subBean == null ? "" : subBean.getWx_author()) %>">
								<input type='hidden' class='wx_img' name='wx_img' value="<%=(subBean == null ? "" : subBean.getWx_img()) %>">
								<textarea style="display: none;" class="wx_content" name="wx_content"><%=(bean == null ? "" : subBean.getWx_content()) %></textarea>
								<input type="hidden" class='wx_linkkey' name='wx_template_type' value="<%=(subBean == null ? "" : subBean.getWx_template_type()) %>"/>
								<input type="hidden" class="wx_linkvalue" name="wx_link" value="<%=(subBean == null ? "" : subBean.getWx_link()) %>"/>
							</div>
						</div>
						<%		}
							}
						%>
						
						<div class="appmsg_add">
							<a onclick="return false;" id="js_add_appmsg"
								href="javascript:void(0);"><i class="icon24_common add_gray">增加一条</i>
							</a>
						</div>
					</div>
				</div>
				<div id="js_appmsg_editor" class="media_edit_area" >
					<div class="appmsg_editor" style="margin-top: 0px;" data-id="1">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">标题</label>
								<span >
									<input type="text" class="frm_input js_title" value="<%=(bean == null ? "" : bean.getWx_title()) %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									<strong class="title">作者</strong>
									<p class="tips l">
										（选填）
									</p>
								</label>
								<span>
									<input type="text" class="frm_input js_author" value="<%=(bean == null ? "" : bean.getWx_author()) %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									<strong class="title">封面</strong>
									<p class="js_cover_tip tips r">
										大图片建议尺寸：360像素 * 200像素
									</p>
								</label>
								<div class="frm_input_box">
									<div class="upload_box">
										<div class="upload_area">
											<a id="js_appmsg_upload_cover" href="javascript:void(0);"
												onclick="return false;" class="upload_access" width="50"
												height="22"> <i class="icon18_common upload_gray"></i>
												上传 </a>
										</div>
										<p class="js_cover upload_preview" id="upload_preview">
											<img src="<%=(bean != null ? bean.getWx_img():"") %>" id="upload_preview_img">
											<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
							            </p>
									</div>
								</div>
							</div>

							<p>
								<a class="js_addDesc" href="javascript:void(0);"
									onclick="return false;" style="display: none;">添加摘要</a>
							</p>
							<div class="js_desc_area dn appmsg_edit_item" style="display: none;">
								<label for="" class="frm_label">
									<%=(bean == null ? "" : bean.getWx_desc()) %>
								</label>
								<span class="frm_textarea_box"><textarea class="js_desc frm_textarea"><%=(bean != null?bean.getWx_desc():"") %></textarea> </span>
							</div>
							<div class="appmsg_edit_item">
								<label class="frm_label">编辑文章内容或者选择以下链接为素材预览内容</label>
							</div>
							<div>
							<div id="wx_action_type" class="appmsg_main_item">
										<div class="js_selectArea dropdown_menu">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel" data-ref="main_href" id="ref_first_action"><%=(bean != null ? bean.getWx_template_type() : "文章") %></label><i class="arrow"></i></a>
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
		
		
										<div class="js_selectArea dropdown_menu appmsg_main_item" id="ref_select" style="display: none;">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel" data-ref="main_href" id="ref_second_action">请选择</label><i class="arrow"></i></a>
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
									<div id="wx_action_detail" class="appmsg_main_item"></div>
									<div id="js_ueditor" class="appmsg_edit_item content_edit">
										<a href="javascript:void(0);"
											class="icon16_common close jsClose" onclick="return false;">关闭</a>
										<label for="" class="frm_label">
											<strong class="title">正文</strong>
											<p class="tips r">
												<a id="js_cancle" style="display: none;"
													href="javascript:void(0);" onclick="return false;">取消</a>
											</p>
										</label>
										<div id="js_editor" class="edui_editor_wrp edui-default">
											<div id="edui1" class="edui-editor  edui-default"
												style="z-index: 999;">
												<div id="edui1_iframeholder"
													class="edui-editor-iframeholder edui-default"
													style="overflow: hidden; height: 320px; ">
													<textarea class="js_html" name="content"
														style="width:99.5%;"><%=(bean == null ? "" : bean.getWx_content()) %></textarea>
												</div>
											</div>
										</div>
									</div>
									
									<div style="display: none;">
										<%
											Map<Integer,List<ActionLinkBean>> map = (HashMap<Integer,List<ActionLinkBean>>) request.getAttribute("L_ACTIONS");
											for(int i = 0 ; i<=10 ; i++){
												List<ActionLinkBean> actionBeans = map.get(i);
										%>
										<div id="<%=LinkAction.getReflectDIV(i) %>" class="ref_action">
										<%
												if(actionBeans != null){
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
													for(ActionLinkBean actionBean : actionBeans){
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
							</div>
						</div>
						<i class="arrow arrow_out" style="margin-top: 0px;"></i>
						<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
					</div>
				</div>
				<div class="tool_area">
					<div class="tool_bar">
						<span id="js_preview" class="btn btn_input btn_primary"><button>返回</button></span>
						<span id="js_submit"  class="btn btn_input btn_primary"><button>保存</button></span>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<script id="sub_item" type="text/x-jquery-tmpl">
<div id='appmsgItem2' data-id='3' class='appmsg_item js_appmsg_item'>
	<img class='js_appmsg_thumb appmsg_thumb' src=''>
	<i class='appmsg_thumb default'>缩略图</i>
	<h4 class='appmsg_title'>
		<a onclick='return false;' href='javascript:void(0);' target='_blank'>标题</a>
	 </h4>
	<div class='appmsg_edit_mask'>
		<a class='icon18_common edit_gray js_edit' data-id='3' onclick='return false;' href='javascript:void(0);'>编辑</a>
		<a class='icon18_common del_gray js_del'   data-id='3' onclick='return false;' href='javascript:void(0);'>删除</a>
	</div>
	<div class='wx_hide'>
		<input type='hidden' class='wx_title' name='wx_title' />
		<input type='hidden' class='wx_author' name='wx_author' />
		<input type='hidden' class='wx_img' name='wx_img' />
		<textarea style="display: none;" class="wx_content" name="wx_content"></textarea>
		<input type="hidden" class='wx_linkkey' name='wx_template_type' value='文章'/>
		<input type="hidden" class="wx_linkvalue" name="wx_link" />
	</div>
</div>
</script>
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
<script>
 		KindEditor.ready(function(K) {
			var editor = K.editor({
				allowFileManager : true,
				uploadJson : '<%=path%>/jsp/upload_json.jsp',
		        fileManagerJson : '<%=path%>/jsp/file_manager_json.jsp',
		            height:'320px',
		            //上传后的回调函数
		            afterUpload : function(data) {
		        	},
		        	afterChange : function() {
						var text = this.html();
						var data_id = $('.appmsg_editor').attr('data-id');
						$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_content').text(text);
					}
				});
			
			window.editor = K.create('.js_html',editor);
			
			K('#js_appmsg_upload_cover').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						$('#upload_preview_img').attr('src',url);
						var data_id = $('.appmsg_editor').attr('data-id');
						
						if(data_id != 1){
							$('#appmsgItem'+data_id).children('.appmsg_thumb').attr('src',url);
							$('#appmsgItem'+data_id).children('.appmsg_thumb').css('display','block');
							$('#appmsgItem'+data_id).children('.default').css('display','none');
						}
						else{
							$('#appmsgItem'+data_id).children('.cover_appmsg_item').children('.appmsg_thumb_wrp').children('.appmsg_thumb').attr('src',url);
							$('#appmsgItem'+data_id).children('.cover_appmsg_item').children('.appmsg_thumb_wrp').children('.appmsg_thumb').css('display','block');
						}
						$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_img').val(url);
						editor.hideDialog();
					}
				});
			});
		});
		
	$('.js_title').bind('input propertychange',function(){
		var text = $('.js_title').val();
		
		var data_id = $('.appmsg_editor').attr('data-id');
		if(data_id != 1){
			$('#appmsgItem'+data_id).children('.appmsg_title').children('a').text(text);
		}
		else{
			$('#appmsgItem'+data_id).children('.cover_appmsg_item').children('.appmsg_title').children('a').text(text);
		}
		
		$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_title').val(text);
	});
	
	$('.js_author').bind('input propertychange',function(){
		var text = $('.js_author').val();
		var data_id = $('.appmsg_editor').attr('data-id');
		$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_author').val(text);
	});
	
	
	$('.js_url').bind('input propertychange',function(){
		var text = $('.js_url').val();
		var data_id = $('.appmsg_editor').attr('data-id');
		$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_link').val(text);
	});
	

	$('.js_addURL').bind('click',function(){
		$('.js_addURL').css('display','none');
		$('.js_url_area').css('display','block');
	});

	function re_init(){
		var index = 1;
		$('.js_appmsg_item').each(function(){
			$(this).attr('id','appmsgItem'+index);
			$(this).attr('data-id',index);
			$(this).children('.appmsg_edit_mask').children('.icon18_common').attr('data-id',index);
			index++;
		});
		
		init_edit_data(1);
	}
	
	function init_edit_data(index){
		if (index == 1) {
			$('.appmsg_editor').css('margin-top', '0');
			$('#upload_preview_img').attr('src',$('#appmsgItem'+index).children('.wx_hide').children('.wx_img').val());
		} else {
			$('.appmsg_editor').css('margin-top', 184 + (index - 2) * 103);
			$('#upload_preview_img').attr('src',$('#appmsgItem'+index).children('.wx_hide').children('.wx_img').val());
		}
		$('.appmsg_editor').attr('data-id',index);
		$('.js_title').val($('#appmsgItem'+index).children('.wx_hide').children('.wx_title').val());
		$('.js_author').val($('#appmsgItem'+index).children('.wx_hide').children('.wx_author').val());
		$('.js_url').val($('#appmsgItem'+index).children('.wx_hide').children('.wx_link').val());
		$('#ref_first_action').html($('#appmsgItem'+index).children('.wx_hide').children('.wx_linkkey').val());
		
		$('#wx_action_detail').html('');
		if($('#ref_first_action').html() == '应用'){
			$("#js_ueditor").css('display','none');
			$('#ref_select').css('display','inline-block');
			$('#wx_action_detail').html('<label class="frm_label">链接地址</label><span><input type="text" class="frm_input js_action_link" readonly="readonly" value="'
				+$('#appmsgItem'+index).children('.wx_hide').children('.wx_linkvalue').val()+'"></span>');
			refSelectOption(true);
		}
		else if($('#ref_first_action').html() == '网址'){
			$("#js_ueditor").css('display','none');
			$('#wx_action_detail').html($("#div_net").html());
			$('#net_address').val($('#appmsgItem'+index).children('.wx_hide').children('.wx_linkvalue').val());
			bindNetAddressEvents();
			refSelectOption(false);
		}
		else if($('#ref_first_action').html() == '文章'){
			$("#js_ueditor").css('display','block');
			refSelectOption(false);
		}
		K.html('.js_html',$('#appmsgItem'+index).children('.wx_hide').children('.wx_content').text());
	}
	
	function bind_js_edit(){
		re_init();
		
		$('.js_edit').unbind('click');
		$('.js_edit').bind('click', function() {
			var data_id = $(this).attr('data-id');
			init_edit_data(data_id);
		});
		
		$('.js_del').unbind('click');
		$('.js_del').bind('click', function() {
			$(this).parent().parent().slideUp(1000,function (){
				$(this).remove();
				init_edit_data(1);
				re_init();
			});
		});
	}
	
	bind_js_edit();

	$('#js_add_appmsg').bind('click', function() {
		if($('.appmsg_item').length >= 7){
			$.scojs_message('你最多只可以加入8条图文消息', $.scojs_message.TYPE_OK);
		}
		else{
			$('#sub_item').tmpl(null).appendTo('#js_appmsg_preview');
			bind_js_edit();
		}
	});
	
	$('.js_removeCover').bind('click',function(){
			$('#upload_preview_img').attr('src','');
			var data_id = $('.appmsg_editor').attr('data-id');
							
			if(data_id != 1){
				$('#appmsgItem'+data_id).children('.js_appmsg_thumb').attr('src','');
				$('#appmsgItem'+data_id).children('.js_appmsg_thumb').css('display','none');
				$('#appmsgItem'+data_id).children('.default').css('display','block');
			}
			else{
				$('#appmsgItem'+data_id).children('.cover_appmsg_item').children('.appmsg_thumb_wrp').children('.js_appmsg_thumb').attr('src','');
				$('#appmsgItem'+data_id).children('.cover_appmsg_item').children('.appmsg_thumb_wrp').children('.js_appmsg_thumb').css('display','none');
			}
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_img').val('');
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
			var data_id = $('.appmsg_editor').attr('data-id');
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkkey').val($(target).attr('data-value'));
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkvalue').val('');
			$("#js_ueditor").css('display','block');
			refSelectOption(false);
		}
		else if(actype == '网址'){
			var data_id = $('.appmsg_editor').attr('data-id');
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkkey').val($(target).attr('data-value'));
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkvalue').val('');
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
			var data_id = $('.appmsg_editor').attr('data-id');
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkkey').val($(target).attr('data-value'));
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkvalue').val('');
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
			var data_id = $('.appmsg_editor').attr('data-id');
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkvalue').val($(this).val());
			$('.js_action_link').val($(this).val());
		});
	}
	
	function bindNetAddressEvents(){
		$('#net_address').bind('input propertychange',function(){
			var data_id = $('.appmsg_editor').attr('data-id');
			$('#appmsgItem'+data_id).children('.wx_hide').children('.wx_linkvalue').val($(this).val());
		});
	}
</script>
</html>