<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/msg_sender.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/advanced_reply_common19e425.css"
			media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/jquery.sinaEmotion.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
		<script src="<%=path%>/js/weiboTextLen.js"></script>
		<style type="text/css">
.tool_bar {
	text-align: left;
	margin: 0;
	padding-top: 0;
	border-top-width: 0;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
}

.page_advanced_reply .msg_sender {
	margin-bottom: 20px;
}

.tool_bar .btn {
	margin-left: 0em;
	margin-right: 1em;
}

.msg_sender {
	margin-bottom: 20px;
}
</style>

	</head>
	<body class="page_advanced_reply">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="/cgi-bin/appmsg?begin=0&amp;count=10&amp;t=media/appmsg_list&amp;type=10&amp;action=list&amp;token=56811467&amp;lang=zh_CN">消息自动回复</a>
						</li>
					</ul>
				</div>
			</div>
		<div class="main_bd">
			<div class="inner_container_box split side_r">
				<table>
					<tr>
						<td>
							<div class="inner_main">
								<div class="bd">
									<div class="sub_title_bar no_extra">
										<h3>
											消息自动回复
											<span class="reply_title_tips">
												<a href="http://kf.qq.com/info/80937.html" target="_blank">公众平台如何设置消息自动回复？</a>
											</span>
										</h3>
									</div>
									<div class="msg_sender small" style="width: 600px;">
										<div class="tab">
											<ul class="tab_navs">
												<li class="tab_nav tab_text width4 selected" data-type="1"
													data-tab=".js_textArea">
													<a href="javascript:void(0);"><i
														class="icon_msg_sender"></i>文字</a>
												</li>
												<li class="tab_nav tab_appmsg width4" data-type="2"
													data-tab=".js_imgArea">
													<a href="javascript:void(0);"><i
														class="icon_msg_sender"></i>图文</a>
												</li>
											</ul>
											<div class="tab_panel">
												<div class="tab_content" style="display: block;"
													id="wx_text">
													<div class="js_textArea inner no_extra">
														<div class="emotion_editor">
															<div class="edit_area js_editorArea"
																contenteditable="true"
																style="overflow-y: auto; overflow-x: hidden;"
																id="wx_edit_area"></div>
														</div>
													</div>
												</div>
												<div class="tab_content" style="display: none;" id="wx_img">
													<div class="js_imgArea inner" contenteditable="false"
														style="overflow-y: auto; overflow-x: hidden;"
														id="wx_edit_img">
														<div id="msgSender_media_1_2">
															<a target="_blank" class="media_img"> <img
																	class="wxmImg Zoomin" style="max-height: 100px;">
															</a>
														</div>
													</div>
												</div>

											</div>

											<div id="tool_bar">
												<div class="editor_toolbar">
													<a href="javascript:void(0);"
														class="icon_emotion emotion_switch js_switch" id="wx_face">表情</a>
													<p class="editor_tip js_editorTip" id="wx_edit_area_tip">
														还还可以输入&nbsp;
														<em><font color='red'>600</font> </em>&nbsp;字
													</p>
													<div class="emotion_wrp js_emotionArea"
														style="display: none;">
														<span class="emotions_preview js_emotionPreviewArea"></span>
													</div>
												</div>
											</div>
										</div>


									</div>
									<div class="tool_bar">
										<span id="js_del" class="btn btn_default btn_input"><button>
												删除
											</button> </span>
										<span id="js_save" class="btn btn_primary btn_input"><button>
												保存
											</button> </span>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="inner_side">
								<div class="bd">
									<div class="inner_menu_box">
										<ul class="inner_menu" id="Js_innerMenu">
											<li class="inner_menu_item">
												<a
													href="<%=path %>/keywords.action"
													class="inner_menu_link"> <strong>被添加自动回复</strong> </a>
											</li>
											<li class="inner_menu_item selected">
												<a
													href="<%=path %>/keywords.action?action=mr"
													class="inner_menu_link"> <strong>消息自动回复</strong> </a>
											</li>
											<li class="inner_menu_item">
												<a
													href="<%=path %>/keywords.action?action=zd"
													class="inner_menu_link"> <strong>关键词自动回复</strong> </a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
<script type="text/javascript">
$(function(){

	$("#wx_face").SinaEmotion($('#wx_edit_area'));
	
	$("#wx_edit_area").bind('input propertychange', function(){
		var length = weiboTextLen($("#wx_edit_area").html(),'');
		$('#wx_edit_area_tip').html("您还可以输入<em><font color='red'>&nbsp;"+(600-length)+"&nbsp;</font></em>字");
	});
	
	$('.tab_text').bind('click',function(){
		$('#wx_text').css("display","block");
		$('#wx_img').css("display","none");
		
		$('.tab_appmsg').removeClass('selected');
		$('.tab_text').addClass('selected');
	});
	
	
	$('.tab_appmsg').bind('click',function(){
		$('#wx_text').css("display","none");
		$('#wx_img').css("display","block");
		
		$('.tab_text').removeClass('selected');
		$('.tab_appmsg').addClass('selected');
	});
});
</script>
</html>