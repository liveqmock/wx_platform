<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.KeywordsBean"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
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
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
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
	<%
		KeywordsBean keywordsBean = (KeywordsBean) request.getAttribute("L_GZ_BEAN");
		String type = (String) request.getAttribute("L_GZ_TYPE");

		MaterialBean materialBean = (keywordsBean != null ? keywordsBean
				.getMaterialBean() : null);
	%>
	<div class="main_hd">
		<div class="title_tab" id="topTab">
			<ul class="title_tab_navs">
				<li class="title_tab_nav js_top  selected">
					<a><%=(type != null ? "被关注回复" : "消息自动回复")%></a>
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
											<%=(type != null ? "被关注回复" : "消息自动回复")%>
											<span class="reply_title_tips">
												<%
													if (type != null) {
												%>
													<a href="http://kf.qq.com/info/80935.html" target="_blank">公众平台如何设置被添加自动回复？</a>
												<%
													} else {
												%>
													<a href="http://kf.qq.com/info/80937.html" target="_blank">公众平台如何设置消息自动回复？</a>
												<%
													}
												%>
											</span>
										</h3>
									</div>
									<div class="msg_sender small" style="width: 600px;">
										<div class="tab">
											<ul class="tab_navs">
												<li class="tab_nav tab_text width4 <%=keywordsBean == null || keywordsBean.getWx_msg_reply_type() == 0 ?"selected":"" %>" data-type="1"
													data-tab=".js_textArea">
													<a href="javascript:void(0);"><i
														class="icon_msg_sender"></i>文字</a>
												</li>
												<li class="tab_nav tab_appmsg width4 <%=keywordsBean != null && keywordsBean.getWx_msg_reply_type() == 1 ?"selected":"" %>" data-type="2"
													data-tab=".js_imgArea">
													<a href="javascript:void(0);"><i
														class="icon_msg_sender"></i>图文</a>
												</li>
											</ul>
											<div class="tab_panel">
												<div class="tab_content" style="display: <%=keywordsBean == null || keywordsBean.getWx_msg_reply_type() == 0 ?"block":"none" %>;"
													id="wx_text">
													<div class="js_textArea inner no_extra">
														<div class="emotion_editor">
															<div class="edit_area js_editorArea"
																contenteditable="true"
																style="overflow-y: auto; overflow-x: hidden;"
																id="wx_edit_area"><%=(keywordsBean == null ? "" : keywordsBean.getWx_msg_reply_text())%></div>
														</div>
													</div>
												</div>
												<div class="tab_content" style="display: <%=keywordsBean != null && keywordsBean.getWx_msg_reply_type() == 1 ?"block":"none" %>;" id="wx_img">
													<div class="js_imgArea inner" contenteditable="false" style="overflow-y: auto; overflow-x: hidden;" id="wx_edit_img">
														<%
															if (materialBean != null) {
																if (materialBean.getWx_type() == 0) {
														%>
														<div id="appmsg<%=materialBean.getId()%>" data-id="<%=materialBean.getId()%>" data-fileid="<%=materialBean.getId()%>">
															<div class="appmsg">
																<div class="appmsg_content">
																	<h4 class="appmsg_title">
																		<a href="" target="_blank"><%=materialBean.getWx_title()%></a>
																	</h4>
																	<div class="appmsg_info">
																		<em class="appmsg_date"><%=materialBean.getWx_createtime()%></em>
																	</div>
																	<div class="appmsg_thumb_wrp">
																		<img src="<%=materialBean.getWx_img()%>" alt=""
																			class="appmsg_thumb">
																	</div>
																	<p class="appmsg_desc">
																		<%=materialBean.getWx_desc()%>
																	</p>
																</div>
															</div>
														</div>
														<%
															} else {
														%>
														<div id="appmsg<%=materialBean.getId()%>" data-id="<%=materialBean.getId()%>" data-fileid="<%=materialBean.getId()%>">
															<div class="appmsg multi">
																<div class="appmsg_content">
																	<div class="appmsg_info">
																		<em class="appmsg_date"><%=materialBean.getWx_createtime()%></em>
																	</div>

																	<%
																		String titles = materialBean.getWx_title();
																				JSONArray titleArray = new JSONArray(titles);
																				String imgs = materialBean.getWx_img();
																				JSONArray imgsArray = new JSONArray(imgs);
																				for (int j = 0; j < titleArray.length(); j++) {
																					String title = titleArray.getJSONObject(j).getString(
																							"title");
																					String img = imgsArray.getJSONObject(j)
																							.getString("img");
																					if (title == null)
																						continue;
																	%>
																	<%
																		if (j == 0) {
																	%>
																	<div class="cover_appmsg_item">
																		<h4 class="appmsg_title">
																			<a href="" target="_blank"><%=title%></a>
																		</h4>
																		<div class="appmsg_thumb_wrp">
																			<img src="<%=img%>" alt="" class="appmsg_thumb">
																		</div>
																	</div>
																	<%
																		} else {
																	%>
																	<div class="appmsg_item">
																		<img src="<%=img%>" alt="" class="appmsg_thumb">
																		<h4 class="appmsg_title">
																			<a href="" target="_blank"><%=title%></a>
																		</h4>
																	</div>
																	<%
																		}
																	%>
																	<%
																		}
																	%>
																</div>
															</div>
														</div>
														<%
															}
															}
														%>
													</div>
												</div>
											</div>

											<div id="tool_bar" style="display: <%=keywordsBean != null && keywordsBean.getWx_msg_reply_type() == 1 ?"none":"block" %>;">
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
										<span id="js_del" class='btn btn_default btn_input <%=(keywordsBean != null ? "" : "btn_disabled")%>'><button>删除</button></span>
										<span id="js_save" class="btn btn_primary btn_input"><button>保存</button></span>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="inner_side">
								<div class="bd">
									<div class="inner_menu_box">
										<ul class="inner_menu" id="Js_innerMenu">
											<li class='inner_menu_item <%=(type != null ? "selected" : "")%>'>
												<a
													href="<%=path%>/keywords.action"
													class="inner_menu_link"> <strong>被添加自动回复</strong> </a>
											</li>
											<li class='inner_menu_item <%=(type == null ? "selected" : "")%>'>
												<a
													href="<%=path%>/keywords.action?action=mr"
													class="inner_menu_link"> <strong>消息自动回复</strong> </a>
											</li>
											<li class="inner_menu_item">
												<a
													href="<%=path%>/keywords.action?action=zd"
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
<!-- dialog素材 -->
<div id="matercial">
			<div class="dialog_wrp media"
				style="width: 960px; margin-left: -480px; margin-top: -314.5px;display: none;">
				<div class="dialog">
					<div class="dialog_hd">
						<h3>
							选择素材
						</h3>
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

						<span class="btn btn_primary btn_input js_btn_p"><button
								class="js_btn js_btn_ok" data-index="0">
								确定
							</button>
						</span>

						<span class="btn btn_default btn_input js_btn_p"><button
								class="js_btn js_btn_cancel" data-index="1">
								取消
							</button>
						</span>

					</div>

				</div>
			</div>
</div>

<!-- 遮蔽罩 -->
<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>
<div>
	<form id="keyword_form">
		<input type="hidden" name="keywordViewModel.id" value="<%=(keywordsBean != null ? keywordsBean.getId() : 0)%>">
		<input type="hidden" name="keywordViewModel.wx_app_keyid">
		<input type="hidden" name="keywordViewModel.wx_msg_type" value="<%=(type != null ? 0 : 1)%>">
		<input type="hidden" name="keywordViewModel.wx_msg_reply_type" id="wx_msg_reply_type" value="<%=(keywordsBean != null ? keywordsBean.getWx_msg_reply_type() : 0)%>">
		<input type="hidden" name="keywordViewModel.wx_msg_reply_text" id="wx_msg_reply_text">
		<input type="hidden" name="keywordViewModel.wx_msg_reply_template" id="wx_msg_reply_template">
		<!-- 	public String wx_msg_type;// 回复的消息值0,关注，1 默认 2 自动回复 
		wx_app_keyid
	public String wx_msg_reply_type;// 回复的消息类型 文本(0)，素材(1)
	public String wx_msg_reply_text;// 回复的消息内容
	public long wx_msg_reply_template;// 回复的消息模版 -->
	</form>
</div>
</body>
<script type="text/javascript">
$(function(){

	$("#wx_face").SinaEmotion($('#wx_edit_area'));
	
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
	
	
	function loadDatas(){
		$('.dialog_media_container').html("<div class='circle'></div><div class='circle1'></div>");
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			url : '<%=path%>/selectAllNewMaterialByUserIdForKeyword.action', 
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

	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_default.btn_input.js_btn_p').bind('click',function(){
		hideMaterial(true);
	});
	
	$('.tab_appmsg').unbind("click"); 
	$('.tab_appmsg').bind('click',function(){
		$('#wx_text').css("display","none");
		$('#wx_img').css("display","block");
		
		$('.tab_text').removeClass('selected');
		$('.tab_appmsg').addClass('selected');
		
		$('#tool_bar').css("display","none");
		hideMaterial(false);
	});
	
	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_primary.btn_input.js_btn_p').bind('click',function(){
		$('#wx_edit_img').html($("div[class*='selected']").parent());
		$('.appmsg_mask').remove();
		hideMaterial(true);
	});
	
	$('#js_del').bind('click',function(){
		if($(this).hasClass('btn_disabled') == false){
			$('#js_del').addClass("btn_disabled");
			$('.btn.btn_primary.btn_input').addClass("btn_disabled");
			var params = $("form[id=keyword_form]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : '<%=path%>/deleteKeyword.action', 
				error : function() {
					$('.btn.btn_default.btn_input').removeClass("btn_disabled");
					$('.btn.btn_primary.btn_input').removeClass("btn_disabled");
					$.scojs_message('访问服务器失败,请重新尝试', $.scojs_message.TYPE_OK);
				},
				success : function(data) {
					reqStatus = eval('(' + data+ ')');
					if(reqStatus["status"] == 'ok'){
						$.scojs_message('删除成功', $.scojs_message.TYPE_OK);
						$('#wx_edit_img').html('');
						$('#wx_edit_area').html('');
						$('.btn.btn_primary.btn_input').removeClass("btn_disabled");
					}
					else{
						$.scojs_message('删除失败', $.scojs_message.TYPE_OK);
						$('#js_del').removeClass("btn_disabled");
						$('.btn.btn_primary.btn_input').removeClass("btn_disabled");
					}
				}
			});
		}
	});
	/*$('#wx_edit_area').bind('DOMNodeInserted',function(e){
		setTimeout(function(){
			var str = $('#wx_edit_area').html();
			var re = /<(?!(\/?b|\/?a|\/?br))[^>]+>/ig; //要保留其他标签修改这里
			str=str.replace(re,"");
			$('#wx_edit_area').html(str);
		},100);
	});*/
	
	function removeHtmlTag(htmlVal){
		var str = htmlVal;
		var re = /<(?!(\/?div|\/?b|\/?a))[^>]+>/ig; //要保留其他标签修改这里
		str=str.replace(re,"");
		//str=str.replace(new RegExp(/<(div)[^>]+>/ig),'\n');
			return str;
	}

	$('#js_save').bind('click',function(){
		if($(this).hasClass('btn_disabled') == false){
			$('#js_del').addClass("btn_disabled");
			$('#js_save').addClass("btn_disabled");
			
			if($('.tab_text').hasClass('selected')){
				$('#wx_msg_reply_type').val('0');
				$('#wx_msg_reply_text').val(removeHtmlTag($('#wx_edit_area').html()));
				$('#wx_msg_reply_template').val('');
			}
			else{
				$('#wx_msg_reply_type').val('1');
				$('#wx_msg_reply_template').val($('#wx_edit_img').children('div[id*=appmsg]').attr('data-id'));
				$('#wx_msg_reply_text').val('');
			}

			var params = $("form[id=keyword_form]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : '<%=path%>/saveOrUpdateKeyword.action', 
				error : function() {
					$('#js_del').removeClass("btn_disabled");
					$('#js_save').removeClass("btn_disabled");
					$.scojs_message('访问服务器失败,请重新尝试', $.scojs_message.TYPE_OK);
				},
				success : function(data) {
					reqStatus = eval('(' + data+ ')');
					if(reqStatus["status"] == 'ok'){
						$.scojs_message('保存成功', $.scojs_message.TYPE_OK);
					}
					else{
						$.scojs_message('保存失败', $.scojs_message.TYPE_OK);
					}
					$('#js_del').removeClass("btn_disabled");
					$('#js_save').removeClass("btn_disabled");
				}
			});
		}
	});
});
</script>
</html>