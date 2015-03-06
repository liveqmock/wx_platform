<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.zhike.sql.beans.CheckLoginBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="<%=path%>/css/wx.css" rel="stylesheet" type="text/css">
		<link href="<%=path%>/styles/smart_wizard.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base19e425.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/setting_index19e425.css">
		<!--    <link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/page_service_package_intro19e425.css">-->
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/leanModal.css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript"
			src="<%=path%>/js/jquery.smartWizard-2.0.min.js"></script>
		<script type="text/javascript"
			src="<%=path%>/js/jquery.leanModal.min.js"></script>
		<script src="<%=path%>/js/jquery.hashchange.min.js"
			type="text/javascript"></script>
		<script src="<%=path%>/js/jquery.easytabs.min.js"
			type="text/javascript"></script>
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>
		<script src="<%=path%>/js/validate.js"></script>
		
		<style type="text/css">
body {
	overflow-x: hidden;
	/*overflow-y : hidden;   去掉竖条*/
}

#lean_overlay {
	position: fixed;
	z-index: 100;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 100%;
	background: #000;
	display: none;
}

#signup,#gz_upload_file {
	width: 500px;
	padding-bottom: 2px;
	display: none;
	background: #FFF;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.7);
	-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.7);
	-moz-box-shadow: 0 0px 4px rgba(0, 0, 0, 0.7);
	position: fixed;
}

/* Example Styles for Demo */
.etabs {
	margin: 0;
	padding: 0;
}

.tab {
	display: inline-block;
	zoom: 1; *
	display: inline;
	background: #eee;
	border: solid 1px #999;
	border-bottom: none;
	-moz-border-radius: 4px 4px 0 0;
	-webkit-border-radius: 4px 4px 0 0;
}

.tab a {
	font-size: 14px;
	line-height: 2em;
	display: block;
	padding: 0 10px;
	outline: none;
}

.tab a:hover {
	text-decoration: underline;
}

.tab.active {
	background: #fff;
	padding-top: 6px;
	position: relative;
	top: 1px;
	border-color: #666;
}

.tab a.active {
	font-weight: bold;
}

.tab-container .panel-container {
	background: #fff;
	border: solid #666 1px;
	padding: 10px;
	-moz-border-radius: 0 4px 4px 4px;
	-webkit-border-radius: 0 4px 4px 4px;
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


[class^="icon-"], [class*=" icon-"] {
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
</style>

	</head>
	<body>
		<div class="main_hd">
			<h2>添加微信公众帐号</h2>
		</div>
		<div class="main_bd">
		<div class="account_setting_area" id="settingArea">
		<%
			CheckLoginBean checkLoginBean = (CheckLoginBean) request.getSession().getAttribute(Constat.LOGIN_SESSION);
			String wx_base64 = (String) request.getAttribute("wx_base64");
			String wx_token = (String) request.getAttribute("wx_token");
			String wx_url = (String) request.getAttribute("wx_url");
		%>
		<form class='validate' id="wx_app">
		<table align="center" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<!-- Smart Wizard -->
					<div id="wizard" class="swMain">
						<ul>
							<li>
								<a href="#step-1"> <span class="stepNumber">1</span> <span
									class="stepDesc"> <small>Step 1</small>
									<br />微信公众号配置 </span> </a>
							</li>
							<li>
								<a href="#step-2"> <span class="stepNumber">2</span> <span
									class="stepDesc"> <small>Step 2</small>
									<br />基本信息配置</span> </a>
							</li>
							<li>
								<a href="#step-3"> <span class="stepNumber">3</span> <span
									class="stepDesc"> <small>Step 2</small>
									<br />服务器配置 </span> </a>
							</li>
							<li>
								<a href="#step-4"> <span class="stepNumber">4</span> <span
									class="stepDesc"> <small>Step 3</small>
									<br /> 公众号配置测试 </span> </a>
							</li>
						</ul>
						<div id="step-1">
							<div class="col_main" style="height: auto;">
								<div class="main_hd">
									<h2>
										配置微信公众号
									</h2>
								</div>
								<div class="main_bd">
									<div class="account_setting_area" id="settingArea">
										<ul>
											<li class="account_setting_item">
												<label class="frm_label">公众号名称</label>
												<div class="meta_content">
													<span class="frm_input_box">
														<input type="text" class="frm_input" id="wx_name" name="viewModel.wx_name" maxlength="25">
													</span><span class="maroon">*</span>
													<p class="frm_msg" style="display: block;" id="wx_name_dsp"><i>●</i><span class="frm_msg_content">请输入公众号名称</span></p>
												</div>
											</li>

											<li class="account_setting_item">
												<label class="frm_label">
													公众号原始id
												</label>
												<!-- <div class="meta_opr">
													<p>
														<a href="#signup" rel="leanModal">修改</a>
													</p>
												</div>-->
												<div class="meta_content">
													<span class="frm_input_box">
														<input type="text" name="viewModel.wx_id" class="frm_input" id="wx_id" maxlength="25">
													</span>
													<span class="maroon">*</span>
													<span class="help-inline">
														请认真填写，错了不能修改。比如：gh_423dwjkeww3
														<a href="/wechat/wxdirections"><i class="icon-question-sign"></i>不懂问我</a>
														<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=115313937&amp;site=qq&amp;menu=yes" target="_blank">
														<i class="icon-smile"></i>联系客服
														</a>
                                   					 </span>
													<p class="frm_msg" style="display: block;" id="wx_id_dsp"><i>●</i><span class="frm_msg_content">请输入微信公众号原始id</span></p>
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
													<span class="frm_input_box">
														<input type="text" name="viewModel.wx_account" class="frm_input" id="wx_account" maxlength="25">
													</span>
													<span class="maroon">*</span>
													<p class="frm_msg" style="display: block;" id="wx_account_dsp"><i>●</i><span class="frm_msg_content">请输入正确的密码</span></p>
												</div>
											</li>
											
											<li class="account_setting_item">
												<label class="frm_label">
													头像
												</label>
												<div class="meta_content">
													<img id="thumb_img" src="<%=path %>/img/20131129145018_91311.gif" style="max-height:100px;">
													<span>
													<input type="text" id="wx_upload_file" name="viewModel.wx_upload_file">
													<input type="button" id="wx_upload_file_btn" value="选择封面" class="btn_black" /></span>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						
						
						<div id="step-2">
							<div class="col_main" style="height: auto;">
								<div class="main_hd">
									<h2>
										配置微信公众号
									</h2>
								</div>
								<div class="main_bd">
									<div class="account_setting_area" id="settingArea">
										<ul>
											<li class="account_setting_item">
												<label class="frm_label">
													类型
												</label>
												<!--  <div class="meta_opr">
													<a href="#signup" rel="leanModal">修改</a>
												</div>-->
												<div class="meta_content">
				                                 	<label class="radio">
			                                        	<input type="radio" name="viewModel.wx_type" checked="checked" value="1"><span>订阅号</span>
			                                        </label>
			                                        
			                                        <label class="radio" style="margin-left: 100px;">
			                                        	<input type="radio" name="viewModel.wx_type" value="0"><span>服务号</span>
			                                        </label>
												</div>
											</li>

											<li class="account_setting_item">
												<label class="frm_label">
													认证情况
												</label>
												<div class="meta_content">
				                                 	<label class="radio">
			                                        	<input type="radio" name="viewModel.wx_verified" checked="checked" value="1"><span>已认证</span>
			                                        </label>
			                                        
			                                        <label class="radio" style="margin-left: 100px;">
			                                        	<input type="radio" name="viewModel.wx_verified" value="0"><span>未认证</span>
			                                        </label>
												</div>
											</li>

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
								</div>
							</div>
						</div>
						
						<div id="step-3">
							<div class="main_hd">
									<h2>
										服务器配置
									</h2>
								</div>
								<div class="main_bd">
									<div class="setting_dialog_content avatar_setting protocol" id="step1Desc">
											<input type="text" name="viewModel.wx_base64" value="<%=wx_base64 %>" maxlength="25">
											<input type="text" name="viewModel.wx_token" value="<%=wx_token %>" maxlength="25">
											<input type="text" name="viewModel.wx_url" value="<%=wx_url %>" maxlength="100">
									        <dl class="protocol_content">
									            <dt>服务器配置:</dt>
									            <dd>复制此处URL和Token到微信公众平台绑定</dd>
									            <dd>URL：<%=wx_url %></dd>
									            <dd>Token：<%=wx_token %></dd>
									            <dd><br>点击下一步保存应用配置。</dd>
									            <dd class="pic_area"><i class="icon_protocol"></i></dd>
									        </dl>
									</div>
								</div>
						</div>
						
						
						<div id="step-4">
							<div class="main_hd">
									<h2>
										公众号测试
									</h2>
								</div>
								<div class="main_bd">
									<div class="setting_dialog_content avatar_setting protocol" id="step1Desc">
									        <dl class="protocol_content">
									            <dt>现在可以向你的公众账号发送信息:"测试"</dt>
									            <dd>如果返回为"绑定成功"，可以使用微信公众平台的服务了。</dd>
									            <dd class="pic_area"><i class="icon_protocol_finish"></i></dd>
									        </dl>
									</div>
								</div>
						</div>
					</div>
				</td>
			</tr>
		</table>

		<!-- 修改用户名  
		<div id="signup">
			<div id="signup-ct">
				<div id="signup-header">
					<h2>
						修改
					</h2>
					<p>
					</p>
					<a class="modal_close" href="#"></a>
				</div>

				<div class="txt-fld">
					<label for="">
						联系人
					</label>
					<input id="" class="good_input" name="" type="text">
				</div>

				<div class="btn-fld">
					<span class="btn btn_input btn_primary">
						<button>保存</button>
					</span>
				</div>
			</div>
		</div>-->
		</form>
		</div>
		</div>
	</body>
	<script type="text/javascript">
			
    $(function(){
      var alreadyAdd = false;
    
      $('#tab-container').easytabs();
    	// Smart Wizard
  	  //$('#wizard').smartWizard({transitionEffect:'slideleft',enableAllSteps: false,onLeaveStep:leaveAStepCallback,
  	//								onFinish:onFinishCallback,enableFinishButton:false,labelNext:'下一步',labelPrevious:'上一步',labelFinish:'完成'});
      
      function onFinishCallback(){
        loadContent('href_manager','showAppKeys.action','content');
      }
      
      function leaveAStepCallback(obj){
     	var step_num= obj.attr('rel');
     	
        return validateSteps(step_num); 
      }
      
      function validateSteps(step){ 
		    var isStepValid = false; 
		    // validate step 1 
		    if(step == 1){ 
		        if(validateStep1() == false ){
		        	$("#wx_name_dsp").addClass("fail");
		        	$("#wx_id_dsp").addClass("fail");
		        	$("#wx_account_dsp").addClass("fail");
		        }else{
		        	$("#wx_name_dsp").removeClass("fail");
		        	$("#wx_id_dsp").removeClass("fail");
		        	$("#wx_account_dsp").removeClass("fail");
		        	isStepValid = true;
		        } 
		    } 
 			// validate step 2 
		    if(step == 2){
				return true;
		    } 		 
		    // validate step3 
		    if(step == 3){
		    	if(alreadyAdd == false){
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
							if(status == 'ok'){
								alreadyAdd = true;
							}
							else{
								alert(data);
							}
						}
					});
			        return true;
		        }
		        else{
		        	return true;
		        }
		    }
		    
		    if(step == 4){
		    	return true;
		    }
		    return isStepValid;
	}
	function validate_required(field)
	{
		return field.Trim().length <= 0 ;
	}
	function validateStep1(){ 
	    // 这里写自己的校验代码 
	    if(validate_required($("#wx_name").val())){
	    	return false;
	    }
	    if(validate_required($("#wx_id").val())){
	    	return false;
	    }
	    if(validate_required($("#wx_account").val())){
	    	return false;
	    }
	    return true;
	} 
    $("a[rel*=leanModal]").leanModal({ top : 200, overlay : 0.4, closeButton: ".modal_close" });
     
     KindEditor.ready(function(K) {
		var editor = K.editor({
			allowFileManager : true,
			uploadJson : '<%=path%>/jsp/upload_json.jsp',
            fileManagerJson : '<%=path%>/jsp/file_manager_json.jsp',
            //上传后的回调函数
            afterUpload : function(data) {
            	//alert(data);
            	//$("#thumb_img").attr("src",data);
                if (data.error === 0) {
                   alert(data.url);
                } else {
                   alert(data.message);
                }
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
	});
});
</script>
	
			
	
</html>
