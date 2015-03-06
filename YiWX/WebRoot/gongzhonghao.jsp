<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.sql.beans.APPBean"%>
<%@page import="com.zhike.sql.beans.CheckLoginBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base19e425.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/inside.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/processor_bar1a9473.css">		
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/setting_index19e425.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/todc_bootstrap.css">
		<link href="<%=path%>/css/common_style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style.css"/>

		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>
		<script src="<%=path%>/js/validate.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
		<script src="<%=path%>/js/inside.js"></script>
	<style type="text/css">
	i {
		display: inline-block;
		width: 14px;
		height: 14px;
		margin-top: 1px;
		line-height: 14px;
		vertical-align: text-top;
		background-image: url("<%=path%>/img/glyphicons-halflings.png");
		background-position: 14px 14px;
		background-repeat: no-repeat;
	}
	.icon-edit {
	background-position: -96px -72px;
	}
	.icon-remove {
	background-position: -312px 0;
	}
	.icon-cog {
	background-position: -432px 0;
	}
	.icon-plus {
	background-position: -408px -96px;
	}
	
	.usercontent{
	margin-top: 5px;margin-bottom: 5px;
	}
.btn_primary:hover {
background-color: #53a046;
background-image: -moz-linear-gradient(top,#5aab4d 0,#4f9841 100%);
background-image: -webkit-gradient(linear,0 0,0 100%,from(#5aab4d),to(#4f9841));
background-image: -webkit-linear-gradient(top,#5aab4d 0,#4f9841 100%);
background-image: -o-linear-gradient(top,#5aab4d 0,#4f9841 100%);
background-image: linear-gradient(to bottom,#5aab4d 0,#4f9841 100%);
box-shadow: 0 1px 2px rgba(0,0,0,0.3);
-moz-box-shadow: 0 1px 2px rgba(0,0,0,0.3);
-webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.3);
color: #fff;
}
.btn_primary {
background-color: #56a447;
background-image: -moz-linear-gradient(top,#60b452 0,#56a447 100%);
background-image: -webkit-gradient(linear,0 0,0 100%,from(#60b452),to(#56a447));
background-image: -webkit-linear-gradient(top,#60b452 0,#56a447 100%);
background-image: -o-linear-gradient(top,#60b452 0,#56a447 100%);
background-image: linear-gradient(to bottom,#60b452 0,#56a447 100%);
border-color: #3d810c;
color: #fff;
}
.btn button, .btn input[type="button"], .btn input[type="submit"], .btn input[type="reset"] {
display: block;
background-color: transparent;
border: 0;
outline: 0;
overflow: visible;
padding: 0 36px;
}
.btn_primary button, .btn_primary input[type="button"], .btn_primary input[type="submit"], .btn_primary input[type="reset"] {
color: #fff;
}
h3 {
display: block;
font-size: 1.17em;
-webkit-margin-before: 1em;
-webkit-margin-after: 1em;
-webkit-margin-start: 0px;
-webkit-margin-end: 0px;
font-weight: bold;
}

.frm_input_box {
display: inline-block;
position: relative;
height: 30px;
line-height: 30px;
vertical-align: middle;
width: 200px;
font-size: 14px;
padding: 0 .8em;
border: 1px solid #b3b3b3;
box-shadow: inset 0 1px 1px rgba(0,0,0,0.15);
-moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.15);
-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.15);
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
background-color: #fff;
}

.frm_input {
height: 22px;
margin: 4px 0;
}

.frm_label {
float: left;
width: 5em;
margin-top: .3em;
margin-right: 1em;
}

.maroon {
color: #f30;
margin-left: 5px;
}


.frm_msg.fail {
color: #b11516;
}
.frm_msg {
display: none;
overflow: hidden;
width: 300px;
visibility: hidden;
}

.frm_msg i {
float: left;
font-weight: 400;
font-style: normal;
margin-right: 5px;
}

.frm_msg.fail {
visibility:visible;
color: #b11516;
}

.icon-question-sign {
background-position: -96px -96px;
}

.icon-smile {
background-position: -120px -96px;
}

.help-inline
{
display: inline-block;
margin-bottom: 0;
vertical-align: middle;
margin-left: 10px;
}

.help-inline a {
color: #e63a3a;
}

.radio, .checkbox {
min-height: 20px;
padding-left: 20px;
}

.radio input[type="radio"], .checkbox input[type="checkbox"] {
margin-left: -20px;
}

input[type="radio"] {
-webkit-border-radius: 1em;
-moz-border-radius: 1em;
border-radius: 1em;
width: 15px;
height: 15px;
}

input[type="checkbox"], input[type="radio"] {
-webkit-appearance: none;
appearance: none;
width: 15px;
height: 15px;
background: white;
border: 1px solid #dcdcdc;
-webkit-border-radius: 1px;
-moz-border-radius: 1px;
border-radius: 1px;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
position: relative;
box-sizing: content-box \9;
width: 16px \9;
height: 16px \9;
border-width: 0 \9;
}

select:focus,input[type="file"]:focus,input[type="radio"]:focus,input[type="checkbox"]:focus {
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px
}
input[type="radio"], input[type="checkbox"] {
margin: 4px 0 0;
margin-top: 1px \9;
line-height: normal;
}

input, textarea {
-webkit-border-radius: 0 !important;
-moz-border-radius: 0 !important;
border-radius: 0 !important;
-webkit-box-shadow: none !important;
-moz-box-shadow: none !important;
box-shadow: none !important;
}

.radio{
color: #c09853
}

input[type="radio"]:checked::after {
content: '';
display: block;
position: relative;
top: 3px;
left: 3px;
width: 7px;
height: 7px;
background: #666;
-webkit-border-radius: 1em;
-moz-border-radius: 1em;
border-radius: 1em;
}

input[type="radio"]:focus {
  outline: none;
  border-color: #4d90fe;
}



label, input, button, select, textarea {
font-size: 13px;
}
label {
margin-bottom: 5px;
}
label, input, button, select, textarea {
font-size: 14px;
font-weight: normal;
line-height: 20px;
}
label, select, button, input[type="button"], input[type="reset"], input[type="submit"], input[type="radio"], input[type="checkbox"] {
cursor: pointer;
}
.box-title h3 {
float: left;
margin: 3px 0 3px 0;
line-height: 24px;
font-weight: 400;
color: #444;
font-size: 20px;
}
.box-title {
border-bottom: 1px solid #ddd;
padding: 7px 0 7px 10px;
margin-top: 0px;
}
.box-title:after {
content: "";
display: table;
clear: both;
}
	</style>
	</head>

	<body  id="content" class="page_advanced_reply">
		<%
			CheckLoginBean checkLoginBean = (CheckLoginBean) request.getSession().getAttribute(Constat.LOGIN_SESSION);
			String wx_base64 = (String) request.getAttribute("wx_base64");
			String wx_token = (String) request.getAttribute("wx_token");
			String wx_url = (String) request.getAttribute("wx_url");
		%>
		<div class="col_main">
				<div class="box-title">
	                <div class="span10">
	                	<h3><i class="icon-tasks"></i>公众号管理</h3>
	                </div>
	            </div>
			<div class="main_bd">

				<div class="usercontent">
					<!-- href="<%=path %>/dispatch.action?action=add_app"  -->
					<a class="btn " rel="tooltip" title="请添加公众帐号,进入功能管理,再进行功能测试" onclick="add_newapp();"><i class="icon-plus"></i>添加公众帐号</a>
					<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=56916860&amp;site=qq&amp;menu=yes" target="_blank" class="btn btn-warning" style="cursor:pointer">微助手</a>
				</div>

				<div class="account_setting_area" id="settingArea">
					<%
						List<APPBean> appBeans = (List<APPBean>) session.getAttribute(Constat.APPKEYS);
					%>
					<table class="ListProduct" border="0" cellspacing="0"
						cellpadding="0" width="100%">
						<thead>
							<tr>
								<th>
									公众号名称
								</th>
								<th>
									VIP等级
								</th>
								<th>
									创建时间/到期时间
								</th>
								<th>
									已定义/上限
								</th>
								<th>
									请求数
								</th>
								<th>
									操作
								</th>
							</tr>
						</thead>
						<tbody>
						<%
							for(APPBean appBean : appBeans)
							{
						%>
							<tr></tr>
							<tr>
								<td>
									<p>
										<a
											href="/wx/uploads/index.php?g=User&amp;m=Function&amp;a=index"
											title="点击进入功能管理">
										<img src="<%=appBean.getWx_header_url() %>"
												width="40" height="40"> </a>
									</p>
									<p>
										<%=appBean.getWx_name() %>
									</p>
								</td>
								<td align="center">
									3
								</td>
								<td>
									<p>
										创建时间:<%=appBean.getCreatetime() %>
									</p>
									<!--<p>
										  到期时间:2013-11-09
									</p>
									<p>
										<a
											href="/wx/uploads/index.php?g=User&amp;m=Alipay&amp;a=index"
											id="smemberss" class="green"><em>续费</em> </a>
									</p>-->
								</td>
								<td>
									<p>
										图文：0/5000
									</p>
								</td>
								<td>
									<p>
										总请求数:0
									</p>
									<p>
										本月请求数:5000
									</p>
								</td>
								<td class="norightborder">
									<div class="btn-group">
									 <a href="javascript:void(0)" onclick="parent.location.href='<%=path %>/manageApp.action?appid=<%=appBean.getId() %>&app_wx_name=<%=appBean.getWx_name() %>'" class="btn btn-default" rel="tooltip" title="管理"><i class="icon-cog"></i></a>
                               		 <a onclick="edit_app('<%=appBean.getId()%>','<%=appBean.getWx_name()%>','<%=appBean.getWx_id()%>','<%=appBean.getWx_account()%>','<%=appBean.getWx_header_url()%>','<%=appBean.getWx_type()%>','<%=appBean.getWx_verified()%>','<%=appBean.getWx_url()%>','<%=appBean.getWx_token()%>')" class="btn" rel="tooltip" title="编辑"><i class="icon-edit"></i></a>
                                	 <a href="javascript:G.ui.tips.confirm('您确定要删除此公众帐号吗?', '<%=path %>/deleteAppKey.action?appid=<%=appBean.getId() %>');" class="btn btn-default" rel="tooltip" title="删除"><i class="icon-trash"></i></a>
                                  </div>
                                </td>
							</tr>
						<%	
							}
						%>
						</tbody>
					</table>
				</div>
				<div class="cLine">
					<div class="pageNavigator right">
						<div class="pages"></div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
		</div>
	
<div id="dialog_add_app">
	<div class="dialog_wrp change_avatar add" style="width: 960px; margin-left: -480px; margin-top: -324.5px;display: none;">
		<div class="dialog">
			<div class="dialog_hd">
				<h3 style="margin-top: 0px">添加公众账号</h3>
				<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>
			</div>
					<div class="dialog_bd">
					<form class='validate' id="wx_app">
						<div class="processor_bar_wrp" id="Js_stepBar">
							<ul class="processor_bar">
								<li class=" step with3 current" id="stepBar_1">
									<h4>
										1 微信公众号配置
									</h4>
								</li>
								<li class=" step with3 next" id="stepBar_2">
									<h4>
										2 服务器配置
									</h4>
								</li>
								<li class="no_extra step with3 nnext" id="stepBar_3">
									<h4>
										3 公众号配置测试
									</h4>
								</li>
							</ul>
						</div>
						<div class="setting_dialog_content avatar_setting" id="step1Desc">
								<div class="account_setting_area" id="settingArea">
									<ul>
										<li class="account_setting_item">
											<label class="frm_label">
												名称
											</label>
											<div class="meta_content">
												<span class="frm_input_box"> <input type="text"
														class="frm_input" id="wx_name" name="viewModel.wx_name"
														maxlength="25"> </span>
														<span class="maroon">*</span><span class="error_wx_name maroon" ></span> 
											</div>
										</li>

										<li class="account_setting_item">
											<label class="frm_label">
												原始ID
											</label>
											<!-- <div class="meta_opr">
													<p>
														<a href="#signup" rel="leanModal">修改</a>
													</p>
												</div>-->
											<div class="meta_content">
												<span class="frm_input_box"> <input type="text"
														name="viewModel.wx_id" class="frm_input" id="wx_id"
														maxlength="25"> </span>
												<span class="maroon">*</span><span class="error_wx_id maroon"></span> 
											 <a href="/wechat/wxdirections"><i
														class="icon-question-sign"></i>不懂问我</a> <a
													href="http://wpa.qq.com/msgrd?v=3&amp;uin=115313937&amp;site=qq&amp;menu=yes"
													target="_blank"> <i class="icon-smile"></i>联系客服 </a>
											</div>
										</li>
										<li class="account_setting_item">
											<label class="frm_label">
												微信号
											</label>
											<!-- <div class="meta_opr">
													<a href="#signup" rel="leanModal">修改</a>
												</div>-->
											<div class="meta_content">
												<span class="frm_input_box"> <input type="text"
														name="viewModel.wx_account" class="frm_input"
														id="wx_account" maxlength="25"> </span>
														<span class="error_wx_account maroon"></span> 
											</div>
										</li>

										<li class="account_setting_item">
											<label class="frm_label">
												头像
											</label>
											<div class="meta_content">
												<img id="thumb_img"
													src="<%=path %>/img/20131129145018_91311.gif"
													style="max-height: 32px;">
												<span> <input type="hidden" id="wx_upload_file"
														name="viewModel.wx_upload_file"> <input
														type="button" id="wx_upload_file_btn" value="选择封面"
														class="btn_black" />
												</span>
												<span class="maroon">*</span><span class="error_wx_upload_file maroon"></span> 
											</div>
										</li>

										<li class="account_setting_item">
											<label class="frm_label">
												类型
											</label>
											<!--  <div class="meta_opr">
													<a href="#signup" rel="leanModal">修改</a>
												</div>-->
											<div class="meta_content">
												<label class="radio">
													<input type="radio" name="viewModel.wx_type"
														checked="checked" value="1">
													<span>订阅号</span>
												</label>

												<label class="radio" style="margin-left: 100px;">
													<input type="radio" name="viewModel.wx_type" value="0">
													<span>服务号</span>
												</label>
											</div>
										</li>

										<li class="account_setting_item"
											style="border-bottom: 0px solid #e6e6e6;">
											<label class="frm_label">
												认证情况
											</label>
											<div class="meta_content">
												<label class="radio">
													<input type="radio" name="viewModel.wx_verified"
														checked="checked" value="1">
													<span>已认证</span>
												</label>

												<label class="radio" style="margin-left: 100px;">
													<input type="radio" name="viewModel.wx_verified" value="0">
													<span>未认证</span>
												</label>
											</div>
										</li>
									</ul>
								</div>
						</div>
						<div class="setting_dialog_content avatar_setting protocol" id="step2Desc"
							style="display: none;">
							<!-- <div class="main_bd">
									<div class="account_setting_area" id="settingArea">
										<ul>
											<li class="account_setting_item">
												<label class="frm_label">
													开发者凭据
												</label>
												<div class="meta_content">
													<div>
													<span class="frm_input_box"><input type="text" class="frm_input" name="viewModel.wx_appkey" maxlength="25"></span><span class="help-inline">微信公众平台APPKEY</span>
													</div>
													<br/>
													<div>
													<span class="frm_input_box"><input type="text" class="frm_input" name="viewModel.wx_secret" maxlength="25"></span><span class="help-inline">微信公众平台APPSECRET</span>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div> -->
									<div style="display: none;">
										<input type="text" name="viewModel.wx_base64"
											value="<%=wx_base64 %>" maxlength="25">
										<input type="text" name="viewModel.wx_token"
											value="<%=wx_token %>" maxlength="25">
										<input type="text" name="viewModel.wx_url" value="<%=wx_url %>"
											maxlength="100">
									</div>
									<dl class="protocol_content">
										<dt>
											服务器配置:
										</dt>
										<dt>
											复制此处URL和Token到微信公众平台绑定
										</dt>
										<table >
											<tr>
												<td >URL</td>
												<td><%=wx_url %></td>
											</tr>
											<tr>
												<td style="padding-right: 20px">Token</td>
												<td><%=wx_token %></td>
											</tr>											
										</table>
											<br>
											绑定成功后点击下一步进行配置测试。
										</dd>
										<dd class="pic_area">
											<i class="icon_protocol"></i>
										</dd>
									</dl>
						</div>
						<div class="setting_dialog_content avatar_setting protocol" id="step3Desc"
							style="display: none;">
									<dl class="protocol_content">
										<dt>
											现在可以向你的公众账号发送信息:"测试"
										</dt>
										<dd>
											如果返回为"绑定成功"，可以使用微信公众平台的服务了。
										</dd>
										<dd class="pic_area">
											<i class="icon_protocol_finish"></i>
										</dd>
									</dl>
						</div>
					</form>
				</div>

			<div class="dialog_ft">
				
	            <span class="btn btn_default btn_input js_btn_p" style="display: none;"><button class="js_btn" data-index="0">返回</button></span>
		        
	            <span class="btn btn_primary btn_input js_btn_p" style="display: inline-block;"><button class="js_btn" data-index="1">保存并进入下一步</button></span>
		        
	            <span class="btn btn_primary btn_input js_btn_p" style="display: none;"><button class="js_btn" data-index="2">上一步</button></span>
		        
	            <span class="btn btn_primary btn_input js_btn_p" style="display: none;"><button class="js_btn" data-index="3">下一步</button></span>
		        
	            <span class="btn btn_primary btn_input js_btn_p" style="display: none;"><button class="js_btn " data-index="4">确定</button></span>
		        
			</div>
			
		</div>
	</div>
	<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>
</div>

<div id="dialog_edit_app">
	<div class="dialog_wrp change_avatar edit" style="width: 960px; margin-left: -480px; margin-top: -324.5px;display: none;">
		<div class="dialog">
			<div class="dialog_hd">
				<h3 style="margin-top: 0px">编辑公众账号</h3>
				<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>
			</div>
					<div class="dialog_bd">
					<form class='validate' id="edit_wx_app">
						<div class="setting_dialog_content avatar_setting">
								<div class="account_setting_area" id="settingArea">
								<input type="hidden" id="edit_app_id" name="viewModel.id"/>
									<ul>
										<li class="account_setting_item">
											<label class="frm_label">
												名称
											</label>
											<div class="meta_content">
												<span class="frm_input_box"> <input type="text"
														class="frm_input" id="edit_wx_name" name="viewModel.wx_name"
														maxlength="25"> </span>
														<span class="maroon">*</span><span class="error_wx_name maroon"></span> 
											</div>
										</li>

										<li class="account_setting_item">
											<label class="frm_label">
												原始ID
											</label>
											<!-- <div class="meta_opr">
													<p>
														<a href="#signup" rel="leanModal">修改</a>
													</p>
												</div>-->
											<div class="meta_content">
												<span class="frm_input_box"> <input type="text"
														name="viewModel.wx_id" class="frm_input" id="edit_wx_id"
														maxlength="25"> </span>
												<span class="maroon">*</span><span class="error_wx_id maroon"></span> 
											</div>
										</li>
										<li class="account_setting_item">
											<label class="frm_label">
												微信号
											</label>
											<div class="meta_content">
												<span class="frm_input_box"> <input type="text"
														name="viewModel.wx_account" class="frm_input"
														id="edit_wx_account" maxlength="25"> </span>
														<span class="error_wx_account maroon"></span> 
											</div>
										</li>

										<li class="account_setting_item">
											<label class="frm_label">
												头像
											</label>
											<div class="meta_content">
												<img id="edit_thumb_img"
													src="<%=path %>/img/20131129145018_91311.gif"
													style="max-height: 32px;">
												<span> <input type="hidden" id="edit_wx_upload_file"
														name="viewModel.wx_upload_file"> <input
														type="button" id="edit_wx_upload_file_btn" value="选择封面"
														class="btn_black" />
												</span>
												<span class="maroon">*</span><span class="error_wx_upload_file maroon"></span> 
											</div>
										</li>
										<li class="account_setting_item" style="padding: 12px 50px">
											<label class="frm_label">
												URL
												</br>
												Token
											</label>
								
											<div class="meta_content frm_label">
												<span id="edit_wx_url"></span>
												</br>
												<span id="edit_wx_token"></span>
											</div>
										</li>
																	
										<li class="account_setting_item" style="padding: 12px 50px">
											<label class="frm_label">
												类型
											</label>
											<!--  <div class="meta_opr">
													<a href="#signup" rel="leanModal">修改</a>
												</div>-->
											<div class="meta_content">
												<label class="radio">
													<input id="edit_wx_type_1" type="radio" name="viewModel.wx_type"
														 value="1">
													<span>订阅号</span>
												</label>

												<label class="radio" style="margin-left: 100px;">
													<input id="edit_wx_type_0"  type="radio" name="viewModel.wx_type" value="0">
													<span>服务号</span>
												</label>
											</div>
										</li>

										<li class="account_setting_item" 
											style=" padding: 12px 50px ;border-bottom: 0px solid #e6e6e6;">
											<label class="frm_label">
												认证情况
											</label>
											<div class="meta_content">
												<label class="radio">
													<input id="edit_wx_verified_1" type="radio" name="viewModel.wx_verified"
														 value="1">
													<span>已认证</span>
												</label>

												<label class="radio" style="margin-left: 100px;">
													<input id="edit_wx_verified_0" type="radio" name="viewModel.wx_verified" value="0">
													<span>未认证</span>
												</label>
											</div>
										</li>
									</ul>
								</div>
						</div>
					</form>
				</div>

			<div class="dialog_ft">
	            <span class="btn btn_primary btn_input js_btn_p" style="display: inline-block;"><button class="js_btn" data-index="5">保存</button></span>
			</div>
			
		</div>
	</div>
	<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>
</div>	
	<form  id="del_wx_app">
		<input id="del_app_id" type="hidden" name="viewModel.id"/>
	</form>
	</body>
	
	<script type="text/javascript">
		var alreadyAdd = false;
    
      	function onFinishCallback(){
      	  loadContent('href_manager','showAppKeys.action','content');
        }

      	function loadContent(call,action,target){
      		var arrow = $("#"+call);
      		$(".pmenu").removeClass("selected");
      		arrow.parent().addClass("selected");
      		//window.open(action,target);
      		
      		$.ajax({
      			async : true,
      			cache : false,
      			type : 'POST',
      			url : action, //请求的action路径
      			success : function(data) { //请求成功后处理函数
      				$("#"+target).html(data);
      			}
      		});
      	}
      	
		function add_newapp(){
			$('.dialog_wrp.change_avatar.add').css('display','');
			$('.mask').css('display','');
		}

		function edit_app(id,wx_name,wx_id,wx_account,wx_upload_file,wx_type,wx_verified,wx_url,wx_token){
			$('.dialog_wrp.change_avatar.edit').css('display','');
			$('.mask').css('display','');

			$('#edit_app_id').attr('value',id);
			$('#edit_wx_name').attr('value',wx_name);
			$('#edit_wx_id').attr('value',wx_id);
			$('#edit_wx_account').attr('value',wx_account);
			$('#edit_thumb_img').attr("src",wx_upload_file);
			$('#edit_wx_upload_file').attr('value',wx_upload_file);
			$('#edit_wx_url').html(wx_url);
			$('#edit_wx_token').html(wx_token);
			$('#edit_wx_type_'+wx_type).attr('checked',true);
			$('#edit_wx_verified_'+wx_verified).attr('checked',true);

			}
		function del_app(id){
			$('#del_app_id').attr('value',id);
			var params = $("form[id=del_wx_app]").serialize();
			if(confirm('将删除该微信号的关联数据,是否确定？此操作不可以恢复！')) { 
				$.ajax({
					async : false,
					cache : false,
					type : 'POST',
					data : params,
					url : 'tokenDelAction.action', //请求的action路径
					error : function() {//请求失败处理函数);
						$.scojs_message('删除失败', $.scojs_message.TYPE_OK);
					},
					success : function(data) { //请求成功后处理函数
						if(data=='success'){
							onFinishCallback();
							$.scojs_message('删除成功', $.scojs_message.TYPE_OK);
						}
					}
				});	
				 } 
			}
		

		function popClosed(){
			$('.dialog_wrp.change_avatar').css('display','none');
			$('.mask').css('display','none');
			onFinishCallback();
			}
		$(function(){
			$('.pop_closed').bind('click',function(){
				popClosed();
			});
			
			$('.js_btn').bind('click',function(){
				var step_index = $(this).attr('data-index');
				if(step_index == 0){
					$('.setting_dialog_content.avatar_setting').css('display','none');
					
					$('#step1Desc').css('display','block');
					$(".js_btn[data-index=0]").parent().css('display','none');
					$(".js_btn[data-index=1]").parent().css('display','inline-block');
					$(".js_btn[data-index=2]").parent().css('display','none');
					$(".js_btn[data-index=3]").parent().css('display','none');
					$(".js_btn[data-index=4]").parent().css('display','none');
					
					$('#stepBar_1').removeClass("pprev");
					$('#stepBar_1').addClass("current");
					$('#stepBar_2').removeClass("prev");
					$('#stepBar_2').addClass("next");
					$('#stepBar_3').removeClass("current");
					$('#stepBar_3').addClass("nnext");
				}
				else if(step_index == 1){
					var params = $("form[id=wx_app]").serialize();
					$.ajax({
						async : false,
						cache : false,
						type : 'POST',
						data : params,
						url : 'tokenCreatorAction.action', //请求的action路径
						error : function() {//请求失败处理函数);
							isStepValid = false;
						},
						success : function(data) { //请求成功后处理函数
							var josnStr = eval('(' + data + ')');
							var status = josnStr["status"];
							if(status == 'success'){
								$('.setting_dialog_content.avatar_setting').css('display','none');
								
								$('#step2Desc').css('display','block');
								$(".js_btn[data-index=1]").parent().css('display','none');
								$(".js_btn[data-index=2]").parent().css('display','none');
								$(".js_btn[data-index=3]").parent().css('display','inline-block');
								
								$('#stepBar_1').removeClass("current");
								$('#stepBar_1').addClass("prev");
								$('#stepBar_2').removeClass("next");
								$('#stepBar_2').addClass("current");
								$('#stepBar_3').removeClass("nnext");
								$('#stepBar_3').addClass("next");
							}
							else{
								var error_wx_name = josnStr["error_wx_name"];
								var error_wx_id = josnStr["error_wx_id"];
								var error_wx_upload_file = josnStr["error_wx_upload_file"];
								var error_wx_account = josnStr["error_wx_account"];	
								
								$('.error_wx_name').html(error_wx_name);
								$('.error_wx_id').html(error_wx_id);
								$('.error_wx_upload_file').html(error_wx_upload_file);
								$('.error_wx_account').html(error_wx_account);							
							}
						}
					});
	
					

				}
				else if(step_index == 2){
					$('.setting_dialog_content.avatar_setting').css('display','none');
					
					$('#step2Desc').css('display','block');
					$(".js_btn[data-index=1]").parent().css('display','none');
					$(".js_btn[data-index=2]").parent().css('display','none');
					$(".js_btn[data-index=3]").parent().css('display','inline-block');
					$(".js_btn[data-index=4]").parent().css('display','none');
					
					$('#stepBar_1').removeClass("pprev");
					$('#stepBar_1').addClass("prev");
					$('#stepBar_2').removeClass("prev");
					$('#stepBar_2').addClass("current");
					$('#stepBar_3').removeClass("current");
					$('#stepBar_3').addClass("next");
				}
				else if(step_index == 3){
					$('.setting_dialog_content.avatar_setting').css('display','none');
					
					$('#step3Desc').css('display','block');
					$(".js_btn[data-index=0]").parent().css('display','none');
					$(".js_btn[data-index=2]").parent().css('display','inline-block');
					$(".js_btn[data-index=3]").parent().css('display','none');
					$(".js_btn[data-index=4]").parent().css('display','inline-block');

					$('#stepBar_1').removeClass("prev");
					$('#stepBar_1').addClass("pprev");
					$('#stepBar_2').removeClass("current");
					$('#stepBar_2').addClass("prev");
					$('#stepBar_3').removeClass("next");
					$('#stepBar_3').addClass("current");
				}
				else if(step_index == 4){
					popClosed();
				}
				//修改APP
				else if(step_index == 5){
					var params = $("form[id=edit_wx_app]").serialize();
					$.ajax({
						async : false,
						cache : false,
						type : 'POST',
						data : params,
						url : 'tokenEditAction.action', //请求的action路径
						error : function() {//请求失败处理函数);
							isStepValid = false;
						},
						success : function(data) { //请求成功后处理函数
							var josnStr = eval('(' + data + ')');
							var status = josnStr["status"];
							if(status == 'success'){
								popClosed();
								$.scojs_message('修改成功', $.scojs_message.TYPE_OK);
							}
							else{
								var error_wx_name = josnStr["error_wx_name"];
								var error_wx_id = josnStr["error_wx_id"];
								var error_wx_upload_file = josnStr["error_wx_upload_file"];
								var error_wx_account = josnStr["error_wx_account"];	
								
								$('.error_wx_name').html(error_wx_name);
								$('.error_wx_id').html(error_wx_id);
								$('.error_wx_upload_file').html(error_wx_upload_file);
								$('.error_wx_account').html(error_wx_account);							
							}
						}
					});					
				}
			});
			
		});
		
		
		 KindEditor.ready(function(K) {
			var editor = K.editor({
				allowFileManager : true,
				uploadJson : '<%=path%>/jsp/upload_json.jsp',
	            fileManagerJson : '<%=path%>/jsp/file_manager_json.jsp',
	            //上传后的回调函数
	            afterUpload : function(data) {
	        	}
			});
			
			K('#wx_upload_file_btn').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#wx_upload_file').val(url);
						$("#thumb_img").attr("src",url);
						editor.hideDialog();
					}
				});
			});
			});

			K('#edit_wx_upload_file_btn').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#edit_wx_upload_file').val(url);
						$("#edit_thumb_img").attr("src",url);
						editor.hideDialog();
					}
				});
			});
			});
		});
	</script>
</html>
