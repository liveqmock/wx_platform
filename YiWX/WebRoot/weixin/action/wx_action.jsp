<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ActionLinkBean"%>
<%@page import="com.zhike.actions.LinkAction"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/pagination.css" media="all">	
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/appmsg_edit19e425.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/appmsg_editor.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/msg_sender.css" media="all">
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
	<style type="text/css">
	input.frm_input{
		height:30px;
	}
	
	#wx_action_detail{
		width: 320px;
	}
	.appmsg_main_item {
		padding: 12px 14px;
	}
	</style>
</div>
  
<div id="wx_action_type" class="appmsg_main_item">
		<div class="js_selectArea dropdown_menu">
			<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
			<label class="jsBtLabel" data-ref="main_href">网址</label><i class="arrow"></i></a>
			<!-- block; -->
			<ul class="dropdown_data_list jsDropdownList" style="display: none;">
				<li class="dropdown_data_item">
					<a href="javascript:;" class="jsDropdownItem jsAction" data-name="网址">网址</a>
				</li>
				<li class="dropdown_data_item">
					<a href="javascript:;" class="jsDropdownItem jsAction" data-name="电话">电话</a>
				</li>
				<li class="dropdown_data_item">
					<a href="javascript:;" class="jsDropdownItem jsAction" data-name="素材">素材</a>
				</li>
				<li class="dropdown_data_item">
					<a href="javascript:;" class="jsDropdownItem jsAction" data-name="应用">应用</a>
				</li>
			</ul>
		</div>
		
		<div class="js_selectArea dropdown_menu appmsg_main_item" id="ref_select">
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

	<div id="wx_action_detail "  class="appmsg_main_item">
	
	</div>
	
	<div style="display: none;">
		<%
			Map<Integer,List<ActionLinkBean>> map = (HashMap<Integer,List<ActionLinkBean>>) request.getAttribute("L_ACTIONS");
			for(int i = 0 ; i<=8 ; i++){
				List<ActionLinkBean> beans = map.get(i);
		%>
		<div id="<%=LinkAction.getReflectDIV(i) %>" class="ref_action appmsg_main_item">
		<%
				if(beans != null){
		%>
			<table class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
				<thead><tr><th>选择</th><th>活动标题</th><th>关键词</th><th style="width:80px;">创建时间</th></tr></thead>
			   	<tbody id="appmsg_thumb_wrp_items">
		<%
					for(ActionLinkBean bean : beans){
		%>
			   		<tr><td><div class="radio"><label><input type="radio" name="rd_selected" value="<%=bean.getUrl() %>">选中</label></div></td>
			   		<td><%=bean.getTitle() %></td><td><%=bean.getKeyword() %></td><td><%=bean.getCreatetime() %></td></tr>
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
						<span  class="btn btn_input btn_media_ok" style="background:#56a447;"><button style="color: white;">确定</button></span>
						<span  class="btn btn_input btn_media_cancel pop_closed" style="background:#56a447;"><button style="color: white;">取消</button></span>
					</div>
				</div>
			</div>
</div>
<!-- 遮蔽罩 -->
<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>

<script type="text/html" id="div_net">
	<div class="appmsg_edit_item">
		<label for="" class="frm_label">链接地址</label>
		<span><input type="text" class="frm_input" placeholder="如 http://www.vxinfeng.com"></span>
	</div>
</script>
<script type="text/html" id="div_phone">
	<div class="appmsg_edit_item">
		<label for="" class="frm_label">电话号码</label>
		<span><input type="text" class="frm_input" placeholder="如 010-12345678"></span>
	</div>
</script>
<script type="text/html" id="div_table">
<table id="listTable" class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
	<thead><tr><th>展示</th><th>事件类型</th><th>是否显示</th><th style="width:80px;">操作</th></tr></thead>
    <tbody id="appmsg_thumb_wrp_items" class="ui-sortable"></tbody>
</table>
</script>
  <script type="text/javascript">
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
	
	/*function rebindItemValue(obj,ref,val){
		if(obj == 'js_appmsg_edit_ads_detail'){
			$('#appmsg_thumb_wrp_items').children('.editing').children('td').children('.'+ref).html(val);
		}
		else if(obj == 'js_appmsg_edit_main_detail'){
			$('#appmsg_main_wrp_items').children('.editing').children('td').children('.'+ref).html(val);
			$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.'+ref).html(val);
		}
	}*/
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
		if(actype == '网址'){
			$('#wx_action_detail').html($("#div_net").html());
			refSelectOption(false);
		}
		else if(actype == '电话'){
			$('#wx_action_detail').html($("#div_phone").html());
			refSelectOption(false);
		}
		else if(actype == '素材'){
			hideMaterial(false);
			refSelectOption(false);
		}
		else if(actype == '应用'){
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
			alert($(this).val());
		});
	}
  </script>
</html>
