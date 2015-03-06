<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="true"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.sql.beans.MenuBean"%>
<%@page import="com.zhike.sql.beans.APPBean"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="com.zhike.sql.beans.ActionLinkBean"%>
<%@page import="com.zhike.actions.LinkAction"%>
<%@page import="com.zhike.sql.beans.KeywordsBean"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>微信封-微信营销系统</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/msg_sender.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base193425.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/advanced_menu_setting19e425.css"
			media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/msg_sender.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/jquery.sinaEmotion.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/emoji.css"
			media="all">
		<link type="text/css" href="<%=path%>/css/loading-animation.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/msg_sender.css" media="all">
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/qq/css/pagination.css" media="all">	
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery-ui-1.9.2.custom.min.js"></script>
		<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
		<script src="<%=path%>/js/weiboTextLen.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.tmpl.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
	</head>
	<style>
	.small_button{
		padding: 0 10px;
		height: 21px;
		line-height: 21px;
		margin-left: 8px;
		
	}
	.kaifazhe_div{
	padding-top: 10px;
	padding-bottom: 5px;
	}
	</style>
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
	
	input[disabled],select[disabled],textarea[disabled],input[readonly],select[readonly],textarea[readonly] {
		cursor: not-allowed;
		background-color: #eee
	}
	
	select,textarea,input[type="text"],input[type="password"],input[type="datetime"],input[type="datetime-local"],input[type="date"],input[type="month"],input[type="time"],input[type="week"],input[type="number"],input[type="email"],input[type="url"],input[type="search"],input[type="tel"],input[type="color"],.uneditable-input {
		display: inline-block;
		height: 20px;
		padding: 4px 6px;
		margin-bottom: 10px;
		font-size: 13px;
		line-height: 20px;
		color: #555;
		vertical-align: middle;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		border-radius: 4px
	}
	<!--table-->
.table {
width: 100%;
font-size: 14px;
background-color: #fff;
text-align: center;
border-top: 1px solid #d3d3d3;
border-bottom: 1px solid #e6e6e6;
}
.table-bordered {
border: 1px solid #ddd;
border-collapse: separate;
border-left: 0;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}
.table {
width: 100%;
margin-bottom: 20px;
}
table {
max-width: 100%;
background-color: transparent;
border-collapse: collapse;
border-spacing: 0;
}

table {
	max-width: 100%;
	background-color: transparent;
	border-collapse: collapse;
	border-spacing: 0
}

.table {
	width: 100%;
	margin-bottom: 20px
}

.table th,.table td {
	padding: 8px;
	line-height: 20px;
	text-align: left;
	vertical-align: top;
	border-top: 1px solid #ddd
}

.table th {
	font-weight: bold
}

.table thead th {
	vertical-align: bottom
}

.table caption+thead tr:first-child th,.table caption+thead tr:first-child td,.table colgroup+thead tr:first-child th,.table colgroup+thead tr:first-child td,.table thead:first-child tr:first-child th,.table thead:first-child tr:first-child td {
	border-top: 0
}

.table tbody+tbody {
	border-top: 2px solid #ddd
}

.table .table {
	background-color: #fff
}

.table-condensed th,.table-condensed td {
	padding: 4px 5px
}

.table-bordered {
	border: 1px solid #ddd;
	border-collapse: separate;
	*border-collapse: collapse;
	border-left: 0;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px
}

.table-bordered th,.table-bordered td {
	border-left: 1px solid #ddd
}

.table-bordered caption+thead tr:first-child th,.table-bordered caption+tbody tr:first-child th,.table-bordered caption+tbody tr:first-child td,.table-bordered colgroup+thead tr:first-child th,.table-bordered colgroup+tbody tr:first-child th,.table-bordered colgroup+tbody tr:first-child td,.table-bordered thead:first-child tr:first-child th,.table-bordered tbody:first-child tr:first-child th,.table-bordered tbody:first-child tr:first-child td {
	border-top: 0
}

.table-bordered thead:first-child tr:first-child>th:first-child,.table-bordered tbody:first-child tr:first-child>td:first-child,.table-bordered tbody:first-child tr:first-child>th:first-child {
	-webkit-border-top-left-radius: 4px;
	border-top-left-radius: 4px;
	-moz-border-radius-topleft: 4px
}

.table-bordered thead:first-child tr:first-child>th:last-child,.table-bordered tbody:first-child tr:first-child>td:last-child,.table-bordered tbody:first-child tr:first-child>th:last-child {
	-webkit-border-top-right-radius: 4px;
	border-top-right-radius: 4px;
	-moz-border-radius-topright: 4px
}

.table-bordered thead:last-child tr:last-child>th:first-child,.table-bordered tbody:last-child tr:last-child>td:first-child,.table-bordered tbody:last-child tr:last-child>th:first-child,.table-bordered tfoot:last-child tr:last-child>td:first-child,.table-bordered tfoot:last-child tr:last-child>th:first-child {
	-webkit-border-bottom-left-radius: 4px;
	border-bottom-left-radius: 4px;
	-moz-border-radius-bottomleft: 4px
}

.table-bordered thead:last-child tr:last-child>th:last-child,.table-bordered tbody:last-child tr:last-child>td:last-child,.table-bordered tbody:last-child tr:last-child>th:last-child,.table-bordered tfoot:last-child tr:last-child>td:last-child,.table-bordered tfoot:last-child tr:last-child>th:last-child {
	-webkit-border-bottom-right-radius: 4px;
	border-bottom-right-radius: 4px;
	-moz-border-radius-bottomright: 4px
}

.table-bordered tfoot+tbody:last-child tr:last-child td:first-child {
	-webkit-border-bottom-left-radius: 0;
	border-bottom-left-radius: 0;
	-moz-border-radius-bottomleft: 0
}

.table-bordered tfoot+tbody:last-child tr:last-child td:last-child {
	-webkit-border-bottom-right-radius: 0;
	border-bottom-right-radius: 0;
	-moz-border-radius-bottomright: 0
}

.table-bordered caption+thead tr:first-child th:first-child,.table-bordered caption+tbody tr:first-child td:first-child,.table-bordered colgroup+thead tr:first-child th:first-child,.table-bordered colgroup+tbody tr:first-child td:first-child {
	-webkit-border-top-left-radius: 4px;
	border-top-left-radius: 4px;
	-moz-border-radius-topleft: 4px
}

.table-bordered caption+thead tr:first-child th:last-child,.table-bordered caption+tbody tr:first-child td:last-child,.table-bordered colgroup+thead tr:first-child th:last-child,.table-bordered colgroup+tbody tr:first-child td:last-child {
	-webkit-border-top-right-radius: 4px;
	border-top-right-radius: 4px;
	-moz-border-radius-topright: 4px
}

.table-striped tbody>tr:nth-child(odd)>td,.table-striped tbody>tr:nth-child(odd)>th {
	background-color: #f9f9f9
}

.table-hover tbody tr:hover>td,.table-hover tbody tr:hover>th {
	background-color: #f5f5f5
}

table td[class*="span"],table th[class*="span"],.row-fluid table td[class*="span"],.row-fluid table th[class*="span"] {
	display: table-cell;
	float: none;
	margin-left: 0
}

.table td.span1,.table th.span1 {
	float: none;
	width: 44px;
	margin-left: 0
}

.table td.span2,.table th.span2 {
	float: none;
	width: 124px;
	margin-left: 0
}

.table td.span3,.table th.span3 {
	float: none;
	width: 204px;
	margin-left: 0
}

.table td.span4,.table th.span4 {
	float: none;
	width: 284px;
	margin-left: 0
}

.table td.span5,.table th.span5 {
	float: none;
	width: 364px;
	margin-left: 0
}

.table td.span6,.table th.span6 {
	float: none;
	width: 444px;
	margin-left: 0
}

.table td.span7,.table th.span7 {
	float: none;
	width: 524px;
	margin-left: 0
}

.table td.span8,.table th.span8 {
	float: none;
	width: 604px;
	margin-left: 0
}

.table td.span9,.table th.span9 {
	float: none;
	width: 684px;
	margin-left: 0
}

.table td.span10,.table th.span10 {
	float: none;
	width: 764px;
	margin-left: 0
}

.table td.span11,.table th.span11 {
	float: none;
	width: 844px;
	margin-left: 0
}

.table td.span12,.table th.span12 {
	float: none;
	width: 924px;
	margin-left: 0
}

.table tbody tr.success>td {
	background-color: #dff0d8
}

.table tbody tr.error>td {
	background-color: #f2dede
}

.table tbody tr.warning>td {
	background-color: #fcf8e3
}

.table tbody tr.info>td {
	background-color: #d9edf7
}

.table-hover tbody tr.success:hover>td {
	background-color: #d0e9c6
}

.table-hover tbody tr.error:hover>td {
	background-color: #ebcccc
}

.table-hover tbody tr.warning:hover>td {
	background-color: #faf2cc
}

.table-hover tbody tr.info:hover>td {
	background-color: #c4e3f3
}[class^="icon-"],[class*=" icon-"] {
	display: inline-block;
	width: 14px;
	height: 14px;
	margin-top: 1px;
	*margin-right: .3em;
	line-height: 14px;
	vertical-align: text-top;
	background-image: url("../img/glyphicons-halflings.png");
	background-position: 14px 14px;
	background-repeat: no-repeat
}
user agent stylesheettable {
display: table;
border-collapse: separate;
border-spacing: 2px;
border-color: gray;
}
</style>
		<script type="text/javascript">
		function edit_key(){
			$('#bt1').css('display','none');
			$('#bt2').css('display','inline-block');
			$('#bt3').css('display','inline-block');

			$('#appid_ipt_1').css('display','none');
			$('#appid_ipt_2').css('display','inline-block');
			$('#appsecret_ipt_1').css('display','none');
			$('#appsecret_ipt_2').css('display','inline-block');			
			
		}
		function save_key(){
			if($('#appid_ipt_2').val().length==0||$('#appid_ipt_2').val().length>40){
				$.scojs_message('AppId长度不合法', $.scojs_message.TYPE_ERROR);
				return;
			}
			if($('#appsecret_ipt_2').val().length==0||$('#appsecret_ipt_2').val().length>40){
				$.scojs_message('AppSecret长度不合法', $.scojs_message.TYPE_ERROR);
				return;
			}			
			var params = $("form[id=kaifazhe_form]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'saveAppidAndSecret.action', //请求的action路径
				error : function() {
					$.scojs_message('访问服务器失败,请重试.', $.scojs_message.TYPE_ERROR);
				},
				success : function(data) {
					if(data=='success'){
						$('#bt1').css('display','inline-block');
						$('#bt2').css('display','none');
						$('#bt3').css('display','none');
						//赋值
						$('#appid_ipt_1').html($('#appid_ipt_2').val());
						$('#appsecret_ipt_1').html($('#appsecret_ipt_2').val());
						
						$('#appid_ipt_1').css('display','inline-block');
						$('#appid_ipt_2').css('display','none');
						$('#appsecret_ipt_1').css('display','inline-block');
						$('#appsecret_ipt_2').css('display','none');	
						}
				}
			});
			


						
		}
		function cancel_key(){
			$('#bt1').css('display','inline-block');
			$('#bt2').css('display','none');
			$('#bt3').css('display','none');

			$('#appid_ipt_1').css('display','inline-block');
			$('#appid_ipt_2').css('display','none');
			$('#appsecret_ipt_1').css('display','inline-block');
			$('#appsecret_ipt_2').css('display','none');		
		}
		</script>
	<body class="page_menu_setting">
	<%
	
		MenuBean menuBean = (MenuBean) request.getAttribute("menus");
		APPBean appBean= (APPBean) request.getAttribute(Constat.APPBEAN);
	%>
		<div class="col_main">
			<div class="main_hd">
				<div id="topTab" class="title_tab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="edit">
							<a>编辑自定义菜单</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						开发者凭据
					<a href="javascript:void(0);" class="small_button btn btn_primary" onclick="edit_key()" id="bt1" >编辑</a>
					<a href="javascript:void(0);" class="small_button btn btn_primary" onclick="save_key()" id="bt2" style="display:none;">保存</a>	
					<a href="javascript:void(0);" class="small_button btn btn_default" onclick="cancel_key()" id="bt3" style="display:none;">取消</a>						
					</h3>
				</div>
				<div id="kaifazhe">
					<form id="kaifazhe_form">
					<div class="menu_setting_area_hd kaifazhe_div" >
						<label for="" class="frm_label">
							AppId
						</label>
						<span id="appid_ipt_1">
							<%=appBean.getWx_appkey() %>
						</span>
						<span >
							<input name="kaifazhe_appid" id="appid_ipt_2" style="width: 25%;display: none;" type="text"  name="" value="<%=appBean.getWx_appkey()%>">
						</span>
					</div>
					<div class="menu_setting_area_hd kaifazhe_div" ">
						<label for="" class="frm_label">
							AppSecret
						</label>
						<span id="appsecret_ipt_1">
							<%=appBean.getWx_appsecret() %>
						</span>
						<span  >
							<input name="kaifazhe_appsecret" id="appsecret_ipt_2"  style="width: 25%;display: none;" type="text" class=" " name="" value="<%=appBean.getWx_appsecret() %>">
						</span>
					</div>	
					</form>	
				</div>						
				<div class="parent_title_bar">
					<h3>
						自定义菜单
					</h3>
				</div>
				<div class="menu_setting_area edit">
					<div class="menu_setting_area_hd">
						<h3>
							编辑
						</h3>
						<p>
							可创建最多 3 个一级菜单，每个一级菜单下可创建最多 5 个二级菜单。编辑中的菜单不会马上被用户看到，请放心调试。
						</p>
					</div>
					<div class="inner_container_box side_l menu_setting_area_bd">
						<div class="inner_side">
							<div class="bd">
								<div class="menu_manage">
									<div class="sub_title_bar light">
										<h4>
											菜单管理
										</h4>
										<div class="btn_wrp">
											<a href="javascript:void(0);" id="addBt"
												class="btn btn_primary">添加</a>
											<a href="javascript:void(0);" id="orderBt"
												class="btn btn_default">排序</a>
											<a href="javascript:void(0);" id="finishBt"
												class="btn btn_primary btn_sorting" style="display: none">完成</a>
											<a href="javascript:void(0);" id="cancelBt"
												class="btn btn_default btn_sorting" style="display: none">取消</a>
											&nbsp;
										</div>
									</div>
									<div class="inner_menu_box with_switch blue" id="menuList"></div>
								</div>
							</div>
						</div>
						<div class="inner_main">
							<div class="bd">
								<div class="action_setting">
									<div class="sub_title_bar light">
										<h4>
											设置动作
										</h4>
										<div class="btn_wrp">
											<a href="javascript:void(0);"
												class="btn btn_default btn_editing" id="changeBt"
												style="display: none;">修改</a>
										</div>
									</div>
									<!-- style="display: block;" -->
									<div class="action_content default jsMain" id="none"
										style="display: block;">
										<p class="action_tips">
											你可以先添加一个菜单，然后开始为其设置响应动作
										</p>
									</div>
									<!--  style="display: none;" -->
									<div class="action_content init jsMain" style="display: none;" id="index">
										<p class="action_tips">
											请选择订阅者点击菜单后，公众号做出的相应动作
										</p>
										<a href="javascript:void(0);" id="sendMsg"><i
											class="icon_menu_action send"></i><strong>发送信息</strong> </a>
										<a href="javascript:void(0);" id="goPage"><i
											class="icon_menu_action url"></i><strong>跳转到网页</strong> </a>
										<a href="javascript:void(0);" id="goApps"><i
											class="icon_menu_action other"></i><strong>跳转到应用</strong> </a>
									</div>
									<% 
										MaterialBean bean = (MaterialBean) session.getAttribute("L_MATERIAL_BEAN");
										String app_wx_name = (String)session.getAttribute("app_wx_name");
									%>
									<!-- 添加应用 -->
									<input type="hidden" id="publicNumName" value="<%=app_wx_name%>"/>
									<div id="addApps" style="display: none;margin-left: 15px;margin-top: 15px;">
										<span>请选择要添加的应用</span>
										<div class="js_selectArea dropdown_menu appmsg_main_item" id="ref_select" style="<%=(bean != null && ("应用").compareTo(bean.getWx_link()) == 0)?"display:inline-block":"display: none;margin-top:5px;"%>">
												<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
												<label class="jsBtLabel" data-ref="main_href">请选择</label><i class="arrow"></i></a>
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
										<div>
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
														<input id="app_url" type="text" class="frm_input js_action_link" readonly="readonly"/>
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
										<div class="tool_bar">
											<a href="javascript:void(0);" class="btn btn_default"
												id="appurl_editBack">返回</a>
											<a href="javascript:void(0);" class="btn btn_primary"
												id="appurl_editSave">保存</a>
										</div>
									</div>	
										
										
										
									<div class="action_content url jsMain" id="url"
										style="display: none;">
											<p class="action_tips">
												订阅者点击该子菜单会跳到以下链接&nbsp;<a href="javascript:void(0);" id="loadMaterial">引用素材</a></p>
											<div class="frm_control_group">
												<span class="frm_input_box">
													<input type="text" class="frm_input" id="urlText" name="urlText"> 
													
												</span>
												<p class="frm_msg fail" style="display: none;" id="urlFail">
													<i>●</i>
													<span for="urlText" class="frm_msg_content"
														style="display: inline;">请输入正确的URL,开头包含https|http|ftp|rtsp|mms</span>
												</p>
											</div>
										<div class="tool_bar">
											<a href="javascript:void(0);" class="btn btn_default"
												id="urlBack">返回</a>
											<a class="submit btn btn_primary" type="submit" id="urlSave">保存</a>
										</div>
									</div>
									<div class="action_content sended jsMain" id="view"
										style="display: none;width: 600px;">

									</div>
									<div class="action_content send jsMain url" id="edit" style="display: none;">
											<p class="action_tips">
												订阅者点击该子菜单会发送如下关键字
											</p>
											<div class="frm_control_group">
													<span class="frm_input_box"> <input type="text"
															class="frm_input" id="keywordText" name="keywordText"> </span>
													<p class="frm_msg fail" style="display: none;" id="urlFail">
														<i>●</i>
														<span for="keywordText" class="frm_msg_content"
															style="display: inline;">请输入正确的URL,开头包含https|http|ftp|rtsp|mms</span>
													</p>
											</div>
										<!--<div class="msg_sender small" id="editDiv">
											<div class="tab">
												<ul class="tab_navs">

													<li class="tab_nav tab_text width5 selected" data-type="1"
														data-tab=".js_textArea">
														<a href="javascript:void(0);"><i
															class="icon_msg_sender"></i>文字</a>
													</li>

													<li class="tab_nav tab_appmsg width5 no_extra"
														data-type="10" data-tab=".js_appmsgArea">
														<a href="javascript:void(0);"><i
															class="icon_msg_sender"></i>图文消息</a>
													</li>

												</ul>
												<div class="tab_panel">

													<div class="tab_content" style="display: block;" id="wx_text">
														<div class="js_textArea inner no_extra">
															<div class="emotion_editor">
																<div class="edit_area js_editorArea"
																	style="display: none;"></div>
																<div class="edit_area js_editorArea"
																	contenteditable="true"
																	style="overflow-y: auto; overflow-x: hidden;" id="wx_edit_area"></div>
																<div class="editor_toolbar">

																	<a href="javascript:void(0);"
																		class="icon_emotion emotion_switch js_switch" id="wx_face">表情</a>
																	<p class="editor_tip js_editorTip">
																		还可以输入
																		<em>600</em>字
																	</p>
																</div>
															</div>
														</div>
													</div>
													
													<div class="tab_content" style="display: none;" id="wx_img">
														<div class="js_appmsgArea inner" id="wx_edit_img"></div>
													</div>
												</div>
											</div>
										</div>-->
										<div class="tool_bar">
											<a href="javascript:void(0);" class="btn btn_default"
												id="editBack">返回</a>
											<a href="javascript:void(0);" class="btn btn_primary"
												id="editSave">保存</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
		</div>
		<div class="menu_setting_area release">
			<div class="menu_setting_area_hd">
				<h3>
					发布
				</h3>
				<p>
					编辑中的菜单不能直接在用户手机上生效，你需要进行发布，发布后24小时内所有的用户都将更新到新的菜单。
				</p>
			</div>
			<div class="menu_setting_area_bd">
				<div class="tool_bar">
					<a href="javascript:void(0);" class="btn btn_primary" id="viewBt">预览</a>
					<a href="javascript:void(0);" class="btn btn_primary" id="saveBt">保存</a>
					<a href="javascript:void(0);" class="btn btn_primary" id="pubBt">保存并发布</a>
				</div>
			</div>
		</div>
	</div>
		<!-- 预览 -->
		<div class="mobile_preview" id="mobileDiv">
			<div class="mobile_preview_hd">
				<strong class="nickname" id="app_wx_name"></strong>
			</div>
			<div class="mobile_preview_bd">
				<ul id="viewShow" class="show_list"></ul>
			</div>
			<div class="mobile_preview_ft">
				<ul class="pre_menu_list" id="viewList"></ul>
			</div>
			<a href="javascript:void(0);" class="mobile_preview_closed" id="viewClose">关闭</a>
		</div>
	</div>
		<!-- 添加  -->
		<div class="dialog_wrp dlg_add simple"
			style="width: 726px; margin-left: -363px; margin-top: -225.5px; display: none;">
			<div class="dialog">
				<div class="dialog_hd">
					<h3>
						输入提示框
					</h3>
					<a href="javascript:;" onclick="return false;" class="icon16_opr closed pop_closed">关闭</a>
				</div>
				<div class="dialog_bd">
					<div class="simple_dialog_content">
						<form id="popupForm_" method="post" class="form"
							onsubmit="return false;" novalidate="novalidate">
							<div class="frm_control_group">
								<label class="frm_label"></label>
								<span class="frm_input_box">
									<input type="text" class="frm_input" name="popInput" id="popInput" value="">
									<input style="display: none">
								</span>
								<p class="frm_msg fail" style="display: none;"  id="error_add_msg">
									<i>●</i>
									<span for="popInput" class="frm_msg_content" style="display: inline;">菜单名称名字不多于4个汉字或8个字母</span>
								</p>
							</div>
							<div class="js_verifycode"></div>
						</form>
					</div>
				</div>

				<div class="dialog_ft">
					<span class="btn btn_primary btn_input js_btn_p"><button class="js_btn" data-index="0">确认</button></span>
					<span class="btn btn_default btn_input js_btn_p"><button class="js_btn" data-index="1">取消</button></span>
				</div>
			</div>
		</div>

		<!-- dialog素材 -->
			<div id="matercial">
				<div class="dialog_wrp media"
					style="width: 960px; margin-left: -480px; margin-top: -314.5px; display: none;">
					<div class="dialog">
						<div class="dialog_hd">
							<h3>
								选择素材
							</h3>
							<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>
						</div>

						<div class="dialog_bd">
							<div class="dialog_media_container">
								<div class="circle"></div>
								<div class="circle1"></div>
							</div>
						</div>

						<div class="dialog_ft">
							<span class="btn btn_primary btn_input js_btn_p"><button class="js_btn js_btn_ok" data-index="0">确定</button></span>
							<span class="btn btn_default btn_input js_btn_p"><button class="js_btn js_btn_cancel" data-index="1">取消</button></span>
						</div>
					</div>
				</div>
			</div>

			<!-- 删除 -->
			<div class="dialog_wrp dlg_del"
				style="width: 720px; margin-left: -360px; margin-top: -174.5px;display: none;">
				<div class="dialog" id="wxDialog_1">
					<div class="dialog_hd">
						<h3>
							温馨提示
						</h3>
						<a href="javascript:;" class="pop_closed">关闭</a>
					</div>
					<div class="dialog_bd">
						<div class="page_msg simple default ">
							<div class="inner group">
								<span class="msg_icon_wrapper"><i class="icon_msg warn "></i>
								</span>
								<div class="msg_content ">
									<h4>
										删除确认
									</h4>
									<p>
										删除后该菜单下设置的消息将不会被保存
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="dialog_ft">
						<a href="javascript:;" class="btn btn_primary js_btn_ok js_del">确定</a>
						<a href="javascript:;" class="btn btn_default js_btn_cancel">取消</a>
					</div>
				</div>
			</div>
<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>

<div style="display: block;">
	<form id="menu_form"><input type="text" name="menus" value="" id="menu_input"></form>
</div>

<!-- dialog模版 -->
<div id="template">
	<div class="dialog_wrp template" style="width: 850px; margin-left: -450px; margin-top: -280px;display: none;">
		<div class="dialog">
			<div class="dialog_hd">
				<label class="frm_label" style="height: 39px;margin-top: 0;margin-bottom: 0;line-height: 39px;">选择模板</label>
				<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>
			</div>

			<div class="" style="width: 850px;height: 450px;">
				<iframe frameborder="0" style="top:0px;left:0px;width:100%;height:100%;" src="<%=path %>/template_WebSite.action"></iframe>
			</div>
		</div>
	</div>
</div>
</body>
<script id="menu_tpl" type="text/x-jquery-tmpl">
    <dl class="inner_menu jsMenu">
        <dt class="inner_menu_item jslevel1" id="${id}" data-type="${data_type}" data-value="${data_value}" data-value-id="${data_value_id}" data-value-display="${data_value_display}">
        <i class="icon_inner_menu_switch"></i>
        <a href="javascript:void(0);" class="inner_menu_link"><strong>${name}</strong></a>
        <span class="menu_opr">
			<a></a>
            <a href="javascript:void(0);" class="icon14_common add_gray jsAddBt">添加</a>
            <a href="javascript:void(0);" class="icon14_common edit_gray jsEditBt">编辑</a>
            <a href="javascript:void(0);" class="icon14_common del_gray jsDelBt">删除</a>
            <a href="javascript:void(0);" class="icon14_common sort_gray jsOrderBt" style="display:none">排序</a>
        </span>
        </dt>
    </dl>
</script>

<script id="sub_menu_tpl" type="text/x-jquery-tmpl">
    <dd class="inner_menu_item jslevel2" id="${id}" data-type="${data_type}" data-value="${data_value}" data-value-id="${data_value_id}" data-value-display="${data_value_display}">
        <i class="icon_dot">●</i>
        <a href="javascript:void(0);" class="inner_menu_link">
            <strong>${name}</strong>
        </a>
        <span class="menu_opr">
			<a></a>
            <a href="javascript:void(0);" class="icon14_common edit_gray jsSubEditBt">编辑</a>
            <a href="javascript:void(0);" class="icon14_common del_gray jsSubDelBt">删除</a>
            <a href="javascript:void(0);" class="icon14_common sort_gray jsOrderBt" style="display:none">排序</a>
        </span>
    </dd>
</script>

<script id="mobile_preview_menu" type="text/x-jquery-tmpl">
    <li class="pre_menu_item with3 jsViewLi" data-id="${id}" id="prew${id}">
   		<a href="javascript:void(0);" class="jsView">${name}</a>
    	<div class="sub_pre_menu_box jsSubViewDiv" style="display:none">
        	<ul class="sub_pre_menu_list"></ul>
        	<i class="arrow arrow_out"></i>
        	<i class="arrow arrow_in"></i>
 		</div>
    </li>
</script>

<script id="mobile_preview_subMenu" type="text/x-jquery-tmpl">
    <li data-id="${id}" id="prew${id}"><a href="javascript:void(0);" class="jsSubView">${name}</a></li>
</script>

<script id="menu_action_url" type="text/x-jquery-tmpl">
	<p class="action_tips">订阅者点击该子菜单会跳到以下链接</p>
	<div class="msg_wrp" id="viewDiv">${url}</div>
	<div class="tool_bar"><span id="edit_url_btn" class="btn btn_primary btn_input"><button>编辑</button></span></div>
</script>

<script id="menu_action_text" type="text/x-jquery-tmpl">
	<p class="action_tips">订阅者点击该子菜单会触发如下关键字<br>
	请在<span style="color:red;">"回复管理"</span>&gt;&gt;<span style="color:red;">"关键词自动回复"</span>中添加该关键字,
	<br/>若没有配置该关键字,系统将默认回复<span style="color:red;">"消息自动回复"</span>中的配置;
	</p><div class="msg_wrp" id="viewDiv">${text}</div>
	<div class="tool_bar">
		<span id="edit_text_btn" class="btn btn_primary btn_input"><button>编辑</button></span>
	</div>
</script>

<script id="menu_action_apps" type="text/x-jquery-tmpl">
	<div class="action_tips">订阅者点击该子菜单会跳转到以下应用</p><div class="msg_wrp" id="viewDiv">
		<p>
			<p style="display:${all_display}">${appstextdisplay}</p>
			<p style="display:${half_display}">应用名称：${appsname}</p>
			<p style="display:${half_display}">关键词：${appskeyword}</p>
		</p>
	</div>
	<div class="tool_bar">
		<span id="edit_apps_btn" class="btn btn_primary btn_input"><button>编辑</button></span>
	</div>
</script>
<!-- 去除显示 url<p style="color:red;display:${half_display}">应用地址：</p>${appsurl} -->

<script id="preview_item" type="text/x-jquery-tmpl">
	<li class="show_item">
		<img class="avatar" src="<%=path %>/img/wx_header.png">
		<div class="show_content" id="_view_">${content}</div>
	</li>
</script>
<script type="text/javascript">

	$(function() {
		$("#app_wx_name").text($("#publicNumName").val());
		function bindEditBtn(){
			$("#edit_url_btn,#edit_text_btn,#edit_apps_btn").bind('click', function() {
				switch($(this).attr('id')){
					case 'edit_url_btn':
					  $('#urlText').val($('.inner_menu.jsMenu .selected').attr('data-value'));
					  break;
					case 'edit_text_btn':
					  $('#keywordText').val($('.inner_menu.jsMenu .selected').attr('data-value'));
					  break;
					default:
					//alert('apps');
					  //$('#textText').val($('.inner_menu.jsMenu .selected').attr('data-value'));
				}
				$('.action_content.sended.jsMain').css('display','none');
				$('.action_content.init.jsMain').css('display','block');
			});
		};
	
		
		//增加窗口
		$("#addBt").bind('click', function() {
			if($('.inner_menu.jsMenu').length >= 3){
				$.scojs_message('一级菜单最多只能三个.',$.scojs_message.TYPE_OK);
			}
			else{
				$('.dlg_add').attr("add_type","menu");
				$('#popInput').val('');
				$('.dlg_add').css('display', 'block');
				$('.mask').css('display', 'block');
				$('.frm_control_group .frm_label').text('菜单名称名字不多于4个汉字或8个字母:');
			}
		});
		//关闭窗口
		$(".icon16_opr.closed.pop_closed").bind('click', function() {
			$('.dlg_add').css('display', 'none');
			$('.mask').css('display', 'none');
		});

		$('.dlg_add').children('.dialog').children('.dialog_ft').children(".btn.btn_default.btn_input.js_btn_p").bind('click', function() {
			$('#error_add_msg').css('display','none');
			$('.dlg_add').css('display', 'none');
			$('.mask').css('display', 'none');
		});

		$('.dlg_add').children('.dialog').children('.dialog_ft').children(".btn.btn_primary.btn_input.js_btn_p").bind('click', function() {
			var type = $('.dlg_add').attr("add_type");
			//alert('type--'+type);
			if(type == 'menu'){
				if(validataMenu(8)){
					$('#error_add_msg').css('display','none');
					var menu = {name:$('#popInput').val(),id:'menu_'+($('.inner_menu.jsMenu').length+1)};
					$('#menu_tpl').tmpl(menu).appendTo('.inner_menu_box.with_switch.blue'); 
					$('#error_add_msg').css('display','none');
					$('.dlg_add').css('display', 'none');
					$('.mask').css('display', 'none');
					bindEvents();
					$('.dlg_add').removeAttr("add_type");
				};
			}
			else if(type == 'subMenu'){
				if(validataMenu(16)){
					$('#error_add_msg').css('display','none');
					var subMenu = {name:$('#popInput').val(),id:'subMenu_menu_0_0'+($('.inner_menu.jsMenu').length+1)};
					$('#sub_menu_tpl').tmpl(subMenu).appendTo($('#'+$('.dlg_add').attr("subMenuId")).parent()); 
					$('#error_add_msg').css('display','none');
					$('.dlg_add').css('display', 'none');
					$('.mask').css('display', 'none');
					
					bindEvents();
					
					$('.dlg_add').removeAttr("add_type");
				};
			}
			else{
				if(type=='um'){
					if(validataMenu(8)){
						updateSubMenu();
					};
				}else{
					if(validataMenu(16)){
						updateSubMenu();
					};
				};
			};
		});
		
		
		function bindMobileEvents(){
			$('.pre_menu_item').bind('click',function() {
				if ($(this).children('.sub_pre_menu_box').css('display') == 'block') {
					$(this).children('.sub_pre_menu_box').css('display', 'none');
				} else {
					$('.pre_menu_item').children('.sub_pre_menu_box').css('display','none');
						if ($(this).children('.sub_pre_menu_box').children('.sub_pre_menu_list').children('li').length > 0) {
							$(this).children('.sub_pre_menu_box').css('display', 'block');
					}
				}
			});
		}
		
		function bindPreviewEvents(){
			$('.jsView').unbind("click"); 
			$('.jsView').bind('click', function() {
				if($('#'+$(this).parent().attr('data-id')).parent().children('dd').length == 0){
					if($('#'+$(this).parent().attr('data-id')).attr('data-type') == 'url'){
						window.open($('#'+$(this).parent().attr('data-id')).attr('data-value'));
					}
					else{
						var prewview_item_content = {};
						var prewview_item= $('#preview_item').tmpl(prewview_item_content);
						prewview_item.children('div').html($('#'+$(this).parent().attr('data-id')).attr('data-value'))
						prewview_item.appendTo('#viewShow');
					}
				}
			});
			
			$('.jsSubView').unbind("click");
			$('.jsSubView').bind('click', function() {
				if($('#'+$(this).parent().attr('data-id')).attr('data-type') == 'url'){
					window.open($('#'+$(this).parent().attr('data-id')).attr('data-value'));
				}
				else{
					var prewview_item_content = {};
					var prewview_item= $('#preview_item').tmpl(prewview_item_content);
					prewview_item.children('div').html($('#'+$(this).parent().attr('data-id')).attr('data-value'))
					prewview_item.appendTo('#viewShow');
				}
			});
		}
		
		//预览
		$("#viewBt").bind('click', function() {
			$('#viewShow').children().remove();
			$('#viewList').html('');
			var menu_index = 0;
			$('.inner_menu.jsMenu').each(function(){
				var menu_id = $(this).children('dt').attr('id');
				var menu = {name:$(this).children('dt').children('a').children('strong').text(),id:menu_id};
				//添加到
				$('#mobile_preview_menu').tmpl(menu).appendTo('#viewList');
				var sub_menu_index = 0;
				$(this).children('dd').each(function(){
					var sub_menu = {name:$(this).children('a').children('strong').text(),id:$(this).attr('id')};
					$('#mobile_preview_subMenu').tmpl(sub_menu).
						appendTo($('#prew'+menu_id).children('.sub_pre_menu_box.jsSubViewDiv').children('.sub_pre_menu_list'));
					sub_menu_index++;
				});
				menu_index++;
			});
			
			bindMobileEvents();
			$('#mobileDiv').css('display', 'block');
			$('.mask').css('display', 'block');
			
			bindPreviewEvents();
		});

		$(".mobile_preview_closed").bind('click', function() {
			$('#mobileDiv').css('display', 'none');
			$('.mask').css('display', 'none');
		});

		$("#sendMsg").bind('click', function() {
			$('#index').css('display', 'none');
			$('#edit').css('display', 'block');
		});

		$("#editBack").bind('click', function() {
			$('#index').css('display', 'block');
			$('#edit').css('display', 'none');
			$('#text_img').css('display', 'none');
		});
		
		$("#appurl_editBack").bind('click', function() {
			$('#index').css('display', 'block');
			$('#edit').css('display', 'none');
			$('#addApps').css('display', 'none');
			$('#text_img').css('display', 'none');
		});

		$("#goPage").bind('click', function() {
			$('#index').css('display', 'none');
			$('#url').css('display', 'block');
			$('#text_img').css('display', 'none');
		});
		
		//跳转到应用apps
		$("#goApps").bind('click', function() {
			$('#index').css('display', 'none');
			$('#text_img').css('display', 'none');
			$('#addApps').css('display', 'block');
			$('#ref_select').css('display', 'block');
			
		});

		$("#urlBack").bind('click', function() {
			$('#index').css('display', 'block');
			$('#url').css('display', 'none');
			$('#text_img').css('display', 'none');
		});

		$("#orderBt").bind('click',function() {
			$('#finishBt').css('display', 'inline-block');
			$('#cancelBt').css('display', 'inline-block');
			$('#addBt').css('display', 'none');
			$('#orderBt').css('display', 'none');
			$('#text_img').css('display', 'none');

			$('.inner_menu').addClass('ui-sortable-disabled');
			$('.inner_menu_box').addClass('sorting');

			$('.menu_opr').children('.jsSubEditBt').css('display', 'none');
			$('.menu_opr').children('.jsSubDelBt').css('display', 'none');
			$('.menu_opr').children('.jsOrderBt').attr('style','');

			$('.menu_opr').children('.jsAddBt').css('display','none');
			$('.menu_opr').children('.jsEditBt').css('display','none');
			$('.menu_opr').children('.jsDelBt').css('display','none');

			$('.inner_menu_item').children('.jsSubEditBt').css('display', 'none');
			$('.inner_menu_item').children('.jsSubDelBt').css('display', 'none');
			$('.inner_menu_item').children('.jsOrderBt').css('display', '');
			$(".inner_menu_box.with_switch.blue").sortable({ revert: true,opacity: 0.8,cursor: 'move',
				start: function(event, ui){
		            $(ui.item).animate({
		                'background-color': '#dae8f8'
		            }, 'fast');
		        },
		        stop: function(event, ui){
		            $(ui.item).animate({
		                'background-color': ''
		            }, 'fast');
		        }});
			$(".inner_menu_box.with_switch.blue").disableSelection();
			$(".inner_menu.jsMenu").sortable({items: '> dd', revert: true,opacity: 0.8,cursor: 'move',
				start: function(event, ui){
		            $(ui.item).animate({
		                'background-color': '#dae8f8'
		            }, 'fast');
		        },
		        stop: function(event, ui){
		            $(ui.item).animate({
		                'background-color': ''
		            }, 'fast');
		        }});
		    $(".inner_menu.jsMenu.ui-sortable").disableSelection();
		});

		$("#finishBt").bind('click', function() {
			$('#finishBt').css('display', 'none');
			$('#cancelBt').css('display', 'none');
			$('#addBt').css('display', 'inline-block');
			$('#orderBt').css('display', 'inline-block');

			$('.inner_menu').removeClass('ui-sortable-disabled');
			$('.menu_opr').children('.jsSubEditBt').css('display', '');
			$('.menu_opr').children('.jsSubDelBt').css('display', '');
			$('.menu_opr').children('.jsOrderBt').css('display', 'none');

			$('.menu_opr').children('.jsAddBt').css('display', '');
			$('.menu_opr').children('.jsEditBt').css('display', '');
			$('.menu_opr').children('.jsDelBt').css('display', '');

			$('.inner_menu_box').addClass('ui-sortable-disabled');
			$('.inner_menu_box').removeClass('sorting');
			
			$(".inner_menu_box.with_switch.blue").sortable('destroy');
			$(".inner_menu.jsMenu").sortable('destroy');
		});

		$("#cancelBt").bind('click', function() {
			$('#finishBt').css('display', 'none');
			$('#cancelBt').css('display', 'none');
			$('#addBt').css('display', 'inline-block');
			$('#orderBt').css('display', 'inline-block');

			$('.inner_menu').removeClass('ui-sortable-disabled');
			$('.menu_opr').children('.jsSubEditBt').css('display', '');
			$('.menu_opr').children('.jsSubDelBt').css('display', '');
			$('.menu_opr').children('.jsOrderBt').css('display', 'none');

			$('.menu_opr').children('.jsAddBt').css('display', '');
			$('.menu_opr').children('.jsEditBt').css('display', '');
			$('.menu_opr').children('.jsDelBt').css('display', '');

			$('.inner_menu_box').addClass('ui-sortable-disabled');
			$('.inner_menu_box').removeClass('sorting');
			
			$(".inner_menu_box.with_switch.blue").sortable('destroy');
			$(".inner_menu.jsMenu").sortable('destroy');
		});
		
		//表情
		$("#wx_face").SinaEmotion($('#wx_edit_area'));
		
		
		
		$('.js_btn_cancel').bind('click',function(){
			hideMaterial(true);
			hideConfirm(true);
		});
		
		$('.js_btn_ok').bind('click',function(){
			//$('#wx_edit_img').html($("div[class*='selected']").parent());
			//$('.appmsg_mask').remove();
			//$('.icon_appmsg_selected').remove();
			var media_id = $("div[class*='selected']").parent().attr('data-id');
			//		alert("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
			$("#urlText").val("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
			hideMaterial(true);
		});
		
		$('.btn.btn_primary.js_btn_ok.js_del').bind('click',function(){
			var del_id = $('.dlg_del').attr('js_del_id');
			if(del_id.charAt(0) == "s"){
				$('#'+del_id).remove();
			}
			else{
				$('#'+del_id).parent().remove();
			}
			hideConfirm(true);
		});
		

		$('.pop_closed').bind('click',function(){
			hideMaterial(true);
			hideConfirm(true);
		});


		$('.tab_appmsg').bind('click',function(){
			$('#wx_text').css("display","none");
			$('#wx_img').css("display","block");
			
			$('.tab_text').removeClass('selected');
			$('.tab_appmsg').addClass('selected');
			
			$('.editor_toolbar').css("display","none");
			hideMaterial(false);
		});
		
		$('.tab_text').bind('click',function(){
			$('#wx_text').css("display","block");
			$('#wx_img').css("display","none");
			
			$('.tab_appmsg').removeClass('selected');
			$('.tab_text').addClass('selected');
			
			$('.editor_toolbar').css("display","block");
		});
		
		function hideConfirm(b){
			if(b == true){
				$('.dlg_del').css('display','none');
				$('.mask').css('display','none');
			}
			else{
				$('.dlg_del').css('display','');
				$('.mask').css('display','');
			}
		}

		function bindEvents(){
			//编辑
			$('.jsEditBt').bind('click',function(event){
				$('.frm_control_group .frm_label').text('菜单名称名字不多于4个汉字或8个字母:');
				$('.dlg_add').attr("add_type","um");
				
				$('.frm_input').val($(this).parents('.inner_menu_item').children('.inner_menu_link').children('strong').text());
				$('#popInput').next().val($(this).parents('.inner_menu_item').attr('id'));
				$('.simple').css('display', 'block');
				$('.mask').css('display', 'block');
				event.stopPropagation();//  阻止事件冒泡
			});
			
			//编辑
			$('.jsSubEditBt').bind('click',function(event){
				$('.frm_control_group .frm_label').text('菜单名称名字不多于8个汉字或16个字母:');
				$('.dlg_add').attr("add_type","us");
				$('#popInput').val($(this).parents('.inner_menu_item').children('.inner_menu_link').children('strong').text());
				$('#popInput').next().val($(this).parents('.inner_menu_item').attr('id'));
				$('.simple').css('display', 'block');
				$('.mask').css('display', 'block');
				event.stopPropagation();//  阻止事件冒泡
			});
			
			//删除
			$('.jsSubDelBt').bind('click',function(event){
				$('.dlg_del').attr('js_del_id',$(this).parents('.inner_menu_item').attr('id'));
				hideConfirm(false);
				delHideOtherDiv();
				event.stopPropagation();//  阻止事件冒泡
			});
			
			//删除
			$('.jsDelBt').bind('click',function(event){
				$('.dlg_del').attr('js_del_id',$(this).parents('.inner_menu_item').attr('id'));
				hideConfirm(false);
				delHideOtherDiv();
				event.stopPropagation();//  阻止事件冒泡
			});
			
			//增加
			
			$('.jsAddBt').bind('click', function() {
				if($(this).parent().parent().parent().children('dd').length >= 5){
					$.scojs_message('二级菜单最多只能五个.', $.scojs_message.TYPE_OK);
				}else{
					$('.dlg_add').attr("add_type","subMenu");
					$('#popInput').val('');
					$('.dlg_add').attr("subMenuId",$(this).parent().parent().attr('id'));
					$('.dlg_add').css('display', 'block');
					$('.frm_control_group .frm_label').text('菜单名称名字不多于8个汉字或16个字母:');
					$('.mask').css('display', 'block');
				}
			});
			
			//绑定点击事件
			$('.inner_menu_item').bind('click', function() {
				$('#addApps').css('display', 'none');
				if($(this).hasClass('selected') == false){
					$('.inner_menu_item').removeClass('selected');
					$(this).addClass('selected')
				}
				
				var id = $(this).attr('id');
				
				$('#text_img').css('display','none');
				$('.action_content').css('display','none');
				//none , index , view  edit
				if(id.charAt(0) == "m"){
					//已经添加过
					if($(this).parent().children('dd').length >0){
						$('.action_content.default.jsMain').children('.action_tips').text('已有子菜单，无法设置动作');
						$('.action_content.default.jsMain').css('display','block');
					}
					//没有添加过
					else{
					if($(this).attr('data-value-display')){
						$('.action_content.sended.jsMain').css('display','block');
						var url_content = {
							appstextdisplay : $(this).attr('data-value-display'),
							all_display:'block',
							half_display:'none'
						};
						$('.action_content.sended.jsMain').html($('#menu_action_apps').tmpl(url_content));
					}else{
						if($(this).attr('data-type') == 'url'){
							$('.action_content.sended.jsMain').css('display','block');
							var url_content = {url : $(this).attr('data-value')};
							$('.action_content.sended.jsMain').html($('#menu_action_url').tmpl(url_content));
						}
						else if($(this).attr('data-type') == 'text'){
							$('.action_content.sended.jsMain').css('display','block');
							var text_content = {text : $(this).attr('data-value')};
							$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(text_content));
						}
						else if($(this).attr('data-type') == 'media'){
							$('.action_content.sended.jsMain').css('display','block');
							var media_content = {};
							$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(media_content));
							$('.action_content.sended.jsMain').children('#viewDiv').html($(this).attr('data-value'));
						}else{
							$('.action_content.init.jsMain').css('display','block');
						};
					}
					bindEditBtn();
					};
				}else{
					if($(this).attr('data-value-display')){
						$('.action_content.sended.jsMain').css('display','block');
						var url_content = {
							appstextdisplay : $(this).attr('data-value-display'),
							all_display:'block',
							half_display:'none'
						};
						$('.action_content.sended.jsMain').html($('#menu_action_apps').tmpl(url_content));
					}else{
						if($(this).attr('data-type') == 'url'){
							$('.action_content.sended.jsMain').css('display','block');
							var url_content = {url : $(this).attr('data-value')};
							$('.action_content.sended.jsMain').html($('#menu_action_url').tmpl(url_content));
						}else if($(this).attr('data-type') == 'apps'){
							$('.action_content.sended.jsMain').css('display','block');
							var url_content = {apps : $(this).attr('data-value')};
							$('.action_content.sended.jsMain').html($('#menu_action_apps').tmpl(url_content));
						}else if($(this).attr('data-type') == 'text'){
							$('.action_content.sended.jsMain').css('display','block');
							var text_content = {text : $(this).attr('data-value')};
							var isDiv = text_content.text.toString().substring(0,4)=='<div'?true:false;
							//alert('mush--'+isDiv+'--'+text_content.text.toString().substring(0,4));
							if(isDiv){
								$('.action_content.sended.jsMain').empty();
								$("<p class='action_tips'>订阅者点击该子菜单会发送如下关键字</p><div class='msg_wrp' id='viewDiv'></div><div class='tool_bar'><span id='edit_text_btn' class='btn btn_primary btn_input'><button>编辑</button></span></div>").appendTo('.action_content.sended.jsMain');
								$(text_content.text).appendTo('#viewDiv');
							}else{
								$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(text_content));
							};
						}else if($(this).attr('data-type') == 'media'){
							$('.action_content.sended.jsMain').css('display','block');
							var media_content = {};
							$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(media_content));
							$('.action_content.sended.jsMain').children('#viewDiv').html($(this).attr('data-value'));
						}else{
							$('.action_content.init.jsMain').css('display','block');
							$('#wx_edit_area').text('');
						};
					};
					
					//执行绑定函数
					bindEditBtn();
					//清除填写的值
					clearInputValue();
				}
			});
		}
		//绑定事件
		bindEvents();
		
		function getMenus(){
			var menuArray = [];
			$('.inner_menu.jsMenu').each(function(){
				var menu = {name:$(this).children('dt').children('a').children('strong').text(),type:'menu',data_type:$(this).children('dt').attr('data-type'),
							data_value:$(this).children('dt').attr('data-value'),data_value_id:$(this).children('dt').attr('data-value-id'),
							data_value_display:$(this).children('dt').attr('data-value-display')};
				//添加到
				var g_sub_menu_index = 0;
				var subMenuArray = [];
				$(this).children('dd').each(function(){
					var sub_menu = {name:$(this).children('a').children('strong').text(),type:'sub_menu',data_type:$(this).attr('data-type'),
									data_value:$(this).attr('data-value'),data_value_id:$(this).attr('data-value-id'),
									data_value_display:$(this).attr('data-value-display')};
					subMenuArray.push(sub_menu);
				});
				menu.sub_menu = subMenuArray;
				
				menuArray.push(menu);
			});
			
			
			return JSON.stringify(menuArray);
		}
		
		//保存
		$('#saveBt').bind('click', function() {
			$('#menu_input').val(getMenus());
			var params = $("form[id=menu_form]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'updateMenuByAppKey.action', //请求的action路径
				error : function() {
					$.scojs_message('访问服务器失败,请重试.', $.scojs_message.TYPE_ERROR);
				},
				success : function(data) {
					
					reqStatus = eval('(' + data+ ')');
					if(reqStatus["status"] == 'ok'){
						$.scojs_message(reqStatus['text'], $.scojs_message.TYPE_OK);
					}else{
						$.scojs_message(reqStatus['text'], $.scojs_message.TYPE_ERROR);
					}
				}
			});
		});
		
		//提交
		$('#pubBt').bind('click', function() {
		
			$('#menu_input').val(getMenus());
			var params = $("form[id=menu_form]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'updateMenuAndPushlishByAppKey.action', //请求的action路径
				error : function() {
					$.scojs_message('访问服务器失败,请重试.', $.scojs_message.TYPE_ERROR);
				},
				success : function(data) {
					
					reqStatus = eval('(' + data+ ')');
					if(reqStatus["status"] == 'ok'){
						$.scojs_message(reqStatus['text'], $.scojs_message.TYPE_OK);
					}else{
						$.scojs_message(reqStatus['text'], $.scojs_message.TYPE_ERROR);
					}
				}
			});
		});
		
		function explandMenus(){
			var menu_text = <%=menuBean == null ? "[]":menuBean.getMenus()%>;
			for(var menu_obj in menu_text){
				var menu_id = 'menu_'+($('.inner_menu.jsMenu').length+1);

				var exp_menu = {name:menu_text[menu_obj].name,id:menu_id,data_type:menu_text[menu_obj].data_type,
									data_value:menu_text[menu_obj].data_value,data_value_id:menu_text[menu_obj].data_value_id};
				$('#menu_tpl').tmpl(exp_menu).appendTo('.inner_menu_box.with_switch.blue');
				
				var submenu_text = menu_text[menu_obj].sub_menu;
				for(var submenu_obj in submenu_text){
					var exp_submenu = {name:submenu_text[submenu_obj].name,id:'subMenu_menu_0_0'+($('.inner_menu.jsMenu').children('dd').length+1),
											data_type:submenu_text[submenu_obj].data_type,data_value:submenu_text[submenu_obj].data_value,
											data_value_id:submenu_text[submenu_obj].data_value_id,
											data_value_display:submenu_text[submenu_obj].data_value_display
											};
					$('#sub_menu_tpl').tmpl(exp_submenu).appendTo($('#'+menu_id).parent());
				}
			}
			bindEvents();
		}
		
		explandMenus();
		
		function isURL(url) {
            //var strRegex = "^((https|http|ftp|rtsp|mms)://)?[a-z0-9A-Z]{3}\.[a-z0-9A-Z][a-z0-9A-Z]{0,61}?[a-z0-9A-Z]\.com|net|cn|cc (:s[0-9]{1-4})?/$";
            return true;
            var strRegex = "^(https|http|ftp|rtsp|mms):\/\/(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))+(\\?\\S*)?$";
            var re = new RegExp(strRegex);
            if (re.test(url)) {
                return true;
            } else {
                 return false;
            }
        }
		
		$('#urlSave').bind('click', function() {
			//alert('isurl'+isURL($('#urlText').val()));
			if(isURL($('#urlText').val())){
				//$('.selected').attr('data-type','url');
				$('.inner_menu_item.selected').attr('data-type','url');
				$('.selected').attr('data-value',$('#urlText').val());
				$('.action_content').css('display','none');
				$('.action_content.sended.jsMain').css('display','block');
				var url_content = {url : $('#urlText').val()};
				$('.action_content.sended.jsMain').html($('#menu_action_url').tmpl(url_content));
				$('#urlFail').css('display','none');
				$('#urlText').val('');
			}else{
				$('#urlFail').css('display','block');
			};
			bindEditBtn();
		});
		
		
		$('#text_img_save').bind('click', function() {
		var flag = $('.tab_navs .selected').attr('data-type');//1:文字，2：图文
		//alert('flag=='+flag);
		if(flag == '1'){
			var text = $('#wx_edit_area').text();
			//alert("text--"+text);
			if(text==''){
				alert('所填内容不能为空');
				return;
			};
			//alert('不为空');
			//把文本写入返显的地方
			var url_content = {text : text};
			$('.action_content.sended.jsMain').css('display','block');
			$('.selected').attr('data-type','text');
			$('.tab .tab_navs .tab_nav.selected').attr('data-type','1');
			$('.selected').attr('data-value',text);
			$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(url_content));
			$('#text_img').css('display','none');
			$('#urlFail').css('display','none');
			$('#wx_edit_area').text('');
		}else if(flag == '2'){
			var img_content = $.trim($('#wx_edit_img').text());
			if(img_content==''){
				alert('请选择图文模板');
				return;
			}else{
				var url_content = {text : ''};
				$('.action_content.sended.jsMain').css('display','block');
				$('.selected').attr('data-type','text');
				$('.tab .tab_navs .tab_nav.selected').attr('data-type','2');
				$('.selected').attr('data-value',$('#wx_edit_img').html());
				$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(url_content));
				$($('#wx_edit_img').html()).appendTo('#viewDiv');
				
				
				$('#text_img').css('display','none');
				$('#urlFail').css('display','none');
			};
		};
		bindEditBtn();
		});
		
		$('#appurl_editSave').bind('click', function() {
		
			var appselect = $('.jsBtLabel').text();
			if(appselect=='请选择'){
				alert('请选择要添加的应用');
				return;
			}
			var isHasApps = $('#wx_action_detail label').hasClass('no_data');
			if(isHasApps){
				alert('当前没有应用可选择,请更换其它的应用');
				return;
			};
			var appsurl = $('#app_url').val();
			if(appsurl==''){
				alert('请选择要添加的应用的URL');
				return;
			}
			
			$('.selected').attr('data-type','text');
			var appsname = $($('#appmsg_thumb_wrp_items tr td')[1]).text();
			var appskeyword = $($('#appmsg_thumb_wrp_items tr td')[2]).text();
			$('.selected').attr('data-value',$($('#appmsg_thumb_wrp_items tr td')[2]).text());
			$('.action_content').css('display','none');
			$('.action_content.sended.jsMain').css('display','block');
			var text_content = {
				appsname : appsname,
				appsurl : appsurl,
				appskeyword : appskeyword,
				appstextdisplay : '',
				all_display:'none',
				half_display:'block'
			};
			$('.action_content.sended.jsMain').html($('#menu_action_apps').tmpl(text_content));
			$('.selected').attr('data-value-display',$('#viewDiv').text());
			$('#addApps').css('display', 'none');
			$('#keywordText').val('');
			bindEditBtn();
		});
		
		$('#editSave').bind('click', function() {
			var textvalue = $('#keywordText').val();
			if(textvalue==''){
				alert('关键字不能为空.');
				return;
			}else{
				$('.selected').attr('data-type','text');
				$('.selected').attr('data-value',$('#keywordText').val());
				$('.action_content').css('display','none');
				$('.action_content.sended.jsMain').css('display','block');
				var text_content = {text : $('#keywordText').val()};
				$('.action_content.sended.jsMain').html($('#menu_action_text').tmpl(text_content));
				$('#keywordText').val('');
				bindEditBtn();
			};
		});
	});
</script>


<!-- 添加应用 -->
<script>

	/*下拉*/
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
			$('#text_img').css('display', 'none');
		}
	});

	function loadDatas(){
			$('.dialog_media_container').html("<div class='circle'></div><div class='circle1'></div>");
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				url : '<%=path%>/selectAllNewMaterialByUserIdForKeyword.action', 
				error : function() {
					$.scojs_message('访问服务器出错,请重试.', $.scojs_message.TYPE_OK);
				},
				success : function(data) { 
					$('.dialog_media_container').html(data);
					$('.appmsg').bind('click',function(){
						if($(this).hasClass('selected') == false){
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
		var media_id = $("div[class*='selected']").parent().attr('data-id');
		//$('.appmsg_mask').remove();
		//$('.icon_appmsg_selected').remove();
		alert("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
		$("#urlText").val("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
		hideMaterial(true);
		//	$('#appmsg_thumb_wrp_items').children('.editing').children('td').children('.thumb_link').html("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);

		hideMaterial(true);
	});
	
	function refSelectOption(bshow,refTarget){
		var ref_select = $('#ref_select');
		if(bshow == true){
			if($(ref_select).css('display') == 'none'){
				$(ref_select).css('display','inline-block');
			};
		}else{
			$(ref_select).css('display','none');
		};
	}
	
	$("#loadMaterial").bind("click",function(){
		hideMaterial(false);
	});
	
	function reflectJsDropdownItemAction(target,actype){
			$('#wx_action_detail').html('');
			$('.ref_action').css('display','none');
			$('#text_img').css('display', 'none');
			$('#wx_action_detail').html($('#'+$(target).attr('data-ref')).html());
			bindRadioEvents();
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
	};
</script>

<!--文字and图片-->
<script type="text/javascript">
$(function(){
	function measureTextCount(){
		var length = $("#wx_edit_area").html().length;
		$('#wx_edit_area_tip').html("您还可以输入<em><font color='red'>&nbsp;"+(600-length)+"&nbsp;</font></em>字");
	}
	
	measureTextCount();
	
	$("#wx_edit_area").bind('input propertychange', function(){
		measureTextCount();
	});
	
	$('.tab_text').bind('click',function(){
		$('#wx_text').css("display","block");
		$('#wx_img').css("display","none");
		
		$('.tab_appmsg').removeClass('selected');
		$('.tab_text').addClass('selected');
		
		$('#tool_bar').css("display","block");
	});
	$('#js_del').bind('click',function(){
		$('#index').css('display', 'block');
		$('#url').css('display', 'none');
		$('#text_img').css('display', 'none');
		$('#addApps').css('display', 'none');
	});
	
	
	
});
function getStringLength(str){
	return str.match(/[^ -~]/g) == null ? str.length : str.length + str.match(/[^ -~]/g).length;
};

function validataMenu(max){
	var textValue = $('#popInput').val();
	//验证文字。
	var len = getStringLength(textValue);
	//alert(len+'--length');
	if(len>max){
		$('#error_add_msg').css('display','block');
		$('#error_add_msg span').text('菜单名称名字不多于'+max/2+'个汉字或'+max+'个字母:');
		$('#popInput').focus();
		return false;
	};
	return true;
};

function delHideOtherDiv(){
	$('.action_content.default.jsMain').css('display','block');
	$('.action_content.sended.jsMain').css('display','none');
	$('.action_content.url.jsMain').css('display','none');
	$('.action_content.init.jsMain').css('display','none');
};

function updateSubMenu(){
	$('#'+$('#popInput').next().val()).children('.inner_menu_link').children('strong').html($('#popInput').val());
	$('#error_add_msg').css('display','none');
	$('.dlg_add').css('display', 'none');
	$('.mask').css('display', 'none');
};

function clearInputValue(){
	$('#keywordText').val('');
	$('#urlText').val('');
};

</script>
</html>
