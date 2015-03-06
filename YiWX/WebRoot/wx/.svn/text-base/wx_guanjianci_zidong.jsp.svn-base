<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="true"%>
<%@page import="com.zhike.sql.beans.KeywordsBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%@page import="weibo4j.org.json.JSONObject"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/jquery.sinaEmotion.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/msg_sender.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base193425.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base1a003d.css" media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/advanced_reply_common19e425.css"
			media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/advanced_reply_keywords19e550.css"
			media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/emoji.css"
			media="all">
		<link type="text/css" href="<%=path%>/css/basic.css" rel="stylesheet" />
		<link type="text/css" href="<%=path%>/css/loading-animation.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />
		
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/kindeditor.js"></script>
		<script type="text/javascript" src="<%=path%>/lang/zh_CN.js"></script>
		<script src="<%=path%>/js/jquery.sinaEmotion.js"></script>
		<script src="<%=path%>/js/weiboTextLen.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.tmpl.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
	</head>
	<body class="page_advanced_reply">
		<%
			List<KeywordsBean> keywordsBeans = (List<KeywordsBean>) request.getAttribute("L_GZ_BEAN");
		%>
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a
								href="/cgi-bin/appmsg?begin=0&amp;count=10&amp;t=media/appmsg_list&amp;type=10&amp;action=list&amp;token=56811467&amp;lang=zh_CN">关键词自动回复</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="main_bd">
				<div class="inner_container_box split side_r" >
					<table>
						<tr>
							<td>
								<div class="inner_main" style="width: 600px;">
									<div class="bd">
										<div class="sub_title_bar no_extra">
											<div class="info">
												<h3>
													关键词自动回复
													<span class="reply_title_tips"> <a
														href="http://kf.qq.com/info/80939.html" target="_blank">公众平台如何设置关键词自动回复？</a>
													</span>
												</h3>
											</div>
											<div class="opr">
												<a href="javascript:void(0);" class="btn btn_default"
													id="Js_rule_add" data-status="not">添加规则</a>
											</div>
										</div>
										<ul id="Js_ruleList" class="keywords_rule_list">
											<%
												if(keywordsBeans != null){
													for(int j = keywordsBeans.size()-1; j >= 0; j--){
													KeywordsBean bean = keywordsBeans.get(j);
													MaterialBean materialBean = (bean != null ? bean.getMaterialBean() : null);
											%>
											<li class="keywords_rule_item" id="Js_ruleItem_<%=bean.getId() %>">
	
												<div class="keywords_rule_hd no_extra Js_detail_switch"
													data-id="<%=bean.getId() %>" data-reply="empty"
													style="-webkit-transition: all, 1s;">
													<div class="info">
														<em class="keywords_rule_num">规则<%=j+1 %>:</em>
														<strong class="keywords_rule_name"><%=bean.getWx_keyword_rulename() %></strong>
													</div>
													<div class="opr">
														<a href="javascript:void(0);">展开</a>
													</div>
												</div>
	
	
												<div class="keywords_rule_bd keywords_rule_overview">
													<div class="keywords_info keywords">
														<strong class="keywords_info_title">关键词</strong>
														<div class="keywords_info_detail">
															<ul class="overview_keywords_list"
																id="Js_keywordsOverview_<%=bean.getId() %>">
															<%
																String keywordNames = bean.getWx_keyword_content();
																if(keywordNames != null) {
																JSONArray array = new JSONArray(keywordNames);
																for(int i = 0 ; i < array.length(); i++){
																	JSONObject keywordObject = array.getJSONObject(i);
																	if(keywordObject.has("keywordName")){
															%>
																<li>
																	<em class="keywords_name"><%=keywordObject.getString("keywordName") %></em>
																</li>
															<%
																}
																}
																}
															%>
															</ul>
														</div>
													</div>
													<div class="keywords_info reply">
														<strong class="keywords_info_title">回复</strong>
														<div class="keywords_info_detail">
															<p class="reply_info">
															（<em data-type="1" class="num Js_reply_cnt2">0</em>条文字，<em data-type="5" class="num Js_reply_cnt2">0</em>条图文）
															</p>
														</div>
													</div>
												</div>
	
	
												<div class="keywords_rule_bd keywords_rule_detail">
	
													<div class="rule_name_area">
														<div class="frm_control_group">
															<label for="" class="frm_label">
																规则名
															</label>
															<div class="frm_controls">
																<span class="frm_input_box"><input type="text"
																		class="frm_input" id="Js_ruleName_<%=bean.getId() %>" value="<%=bean.getWx_keyword_rulename() %>">
																</span>
																<p class="frm_tips">
																	规则名最多60个字
																</p>
															</div>
														</div>
													</div>
	
	
													<div class="keywords_tap keywords">
														<div class="keywords_tap_hd">
															<div class="info">
																<h4>
																	关键字
																</h4>
															</div>
															<div class="opr">
																<a href="javascript:;" data-id="<%=bean.getId() %>"
																	class="Js_keyword_add">添加关键字</a>
															</div>
														</div>
														<div class="keywords_tap_bd">
															<ul class="keywords_list" id="Js_keywordList_<%=bean.getId() %>">
															<%
																if(keywordNames != null) {
																JSONArray array = new JSONArray(keywordNames);
																for(int i = 0 ; i < array.length(); i++){
																	JSONObject keywordObject = array.getJSONObject(i);
																	if(keywordObject.has("keywordName")){
															%>
																<li data-index="0" data-id="<%=bean.getId() %>">
																	<div class="desc">
																		<strong class="title Js_keyword_val" data-content="<%=keywordObject.getString("keywordName") %>"><%=keywordObject.getString("keywordName") %></strong>
																	</div>
																	<div class="opr">
																		<a href="javascript:;"
																			class="icon14_common edit_gray Js_keyword_edit">编辑</a>
																		<a href="javascript:;" data-id="<%=bean.getId() %>"
																			class="icon14_common del_gray Js_keyword_del">删除</a>
																	</div>
																</li>
															<%
																}
																}
																}
															%>
															</ul>
														</div>
													</div>
	
	
													<div class="keywords_tap reply">
														<div class="keywords_tap_hd">
															<div class="info">
																<h4>
																	回复
																</h4>
															</div>
														</div>
														<div class="keywords_tap_bd">
	
															<ul class="media_type_list">
																<li class="tab_text">
																	<a href="javascript:;" data-type="1" data-id="<%=bean.getId() %>"
																		class="Js_reply_add"><i class="icon_msg_sender"></i>文字</a>
																</li>
																<li class="tab_appmsg">
																	<a href="javascript:;" data-type="5" data-id="<%=bean.getId() %>"
																		class="Js_reply_add"><i class="icon_msg_sender"></i>图文</a>
																</li>
															</ul>
	
	
															<ul class="keywords_list" id="Js_replyList_<%=bean.getId() %>">
																<li data-index="1" data-id="<%=bean.getId() %>" data-type="1" data-appid="" data-fileid="" data-content="123">
															        <div class="desc">
															            <div class="media_content Js_media_content" id="Js_mediaContent_<%=bean.getId() %>" data-index="1" data-type="1" reply-type="<%=(bean.getWx_msg_reply_type() ==0 ?"text":"media") %>">
															            	<%if(bean.getWx_msg_reply_type() == 0){
															            	%>
															            		<%=bean.getWx_msg_reply_text() != null ? bean.getWx_msg_reply_text() : "" %>
															            	<%}
															            	else{%>
															            	
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
																							for (int m = 0; m < titleArray.length(); m++) {
																								String title = titleArray.getJSONObject(m).getString("title");
																								String img = imgsArray.getJSONObject(m).getString("img");
																								if (title == null)
																									continue;
																						%>
																						<%
																							if (m == 0) {
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
																				}
																			%>
															            </div>
															            
															            <%
															            	if(bean.getWx_msg_reply_type() == 0){
															            %>
															            	 <div class="opr">
																	            <a href="javascript:;" class="icon14_common edit_gray  Js_reply_edit">编辑</a>
																	            <a href="javascript:;" class="icon14_common del_gray Js_reply_del">删除</a>
																	        </div>
															            <%}%>
															        </div>
															    </li>
															</ul>
														</div>
													</div>
												</div>
	
	
												<div class="keywords_rule_ft">
	
													<p class="media_stat info">
														文字(<em data-type="1" class="num Js_reply_cnt">0</em>)、
														图文(<em data-type="5" class="num Js_reply_cnt">0</em>)
													</p>
	
													<div class="opr">
														<a href="javascript:;" data-id="<%=bean.getId() %>" class="btn btn_primary Js_rule_save">保存</a>
														<a href="javascript:;" data-id="<%=bean.getId() %>" class="btn btn_default Js_rule_del">删除</a>
													</div>
												</div>
											</li>
											<%
													}
												}
											%>
										</ul>
									</div>
								</div>
							</td>
							<td style="vertical-align: top;">
								<div class="inner_side">
									<div class="bd">
										<div class="inner_menu_box">
											<ul class="inner_menu" id="Js_innerMenu">
												<li class="inner_menu_item">
													<a
														href="<%=path %>/keywords.action"
														class="inner_menu_link"> <strong>被添加自动回复</strong> </a>
												</li>
												<li class="inner_menu_item">
													<a
														href="<%=path %>/keywords.action?action=mr"
														class="inner_menu_link"> <strong>消息自动回复</strong> </a>
												</li>
												<li class="inner_menu_item selected">
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

<!-- 编辑关键词 -->
		<div id="keywords">
			<div class="dialog_wrp keywords_edit"
				style="width: 726px; margin-left: -363px; margin-top: -249px;display: none;">
				<div class="dialog">
					<div class="dialog_hd">
						<h3>
							添加关键字
						</h3>
						<a href="javascript:;" onclick="return false"
							class="icon16_opr closed pop_closed">关闭</a>
					</div>
					<div class="dialog_bd">
						<div class="emotion_editor_wrp" id="Js_textEditor">
							<div class="emotion_editor">
								<div class="edit_area js_editorArea" style="display: none;"></div>
								<div class="edit_area js_editorArea" contenteditable="true"
									style="overflow-y: auto; overflow-x: hidden;" id="wx_edit_area"></div>
								<div class="editor_toolbar">
									<a href="javascript:void(0);"
										class="icon_emotion emotion_switch js_switch" id="wx_face">表情</a>
									<p class="editor_tip js_editorTip" id="wx_edit_area_tip">
										还可以输入
										<em><font color='red'>&nbsp;300&nbsp;</font></em>字
									</p>
								</div>
							</div>
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
<!-- 编辑关键词 -->
	<div class="dialog_wrp simple" style="width: 726px; margin-left: -363px; margin-top: -225.5px;display: none;">
		<div class="dialog">
			<div class="dialog_hd">
				<h3>输入提示框</h3>
				<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>
			</div>
			<div class="dialog_bd"><div class="simple_dialog_content">
	    <form id="popupForm_" method="post" class="form" onsubmit="return false;" novalidate="novalidate">
	         <div class="frm_control_group">
	            <label class="frm_label">关键字名字不多于8个汉字或16个字母:</label>
	            <span class="frm_input_box">
	                <input type="text" class="frm_input" name="popInput" value="" id="keyword_input">
	                <input style="display:none">
	            </span>
	            
	        </div>       
	        <div class="js_verifycode"></div>
	    </form>
	</div>
</div>
		
		<div class="dialog_ft">
			
            <span class="btn btn_primary btn_input js_btn_ok"><button class="js_btn" data-index="0">确认</button></span>
	        
            <span class="btn btn_default btn_input js_btn_cancel"><button class="js_btn" data-index="1">取消</button></span>
	        
		</div>
		
	</div>
</div>
<!-- 遮蔽罩 -->
<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>
<div style="display: block;">
	<form id="keywords_form"><input type="hidden" name="keywordsRule" value="" id="keywords_input"></form>
</div>
</body>

<script type="text/x-jquery-tmpl" id="keyword_new">
	<li data-index="${id}" data-id="${id}">
        <div class="desc">
            <strong class="title Js_keyword_val" data-content="${name}">${name}</strong>
        </div>
        <div class="opr">
            <a href="javascript:;" class="icon14_common edit_gray Js_keyword_edit">编辑</a>
            <a href="javascript:;" data-id="${id}" class="icon14_common del_gray Js_keyword_del">删除</a>
        </div>
    </li>
</script>

<script type="text/x-jquery-tmpl" id="keyword_text_reply">
<li data-index="1" data-id="${id}" data-type="1" data-appid="" data-fileid="" data-content="12">
	<div class="desc">
		<div class="media_content Js_media_content"id="Js_mediaContent_${id}" data-index="1" data-type="1"></div>
	</div>
	<div class="opr">
		<a href="javascript:;" class="icon14_common edit_gray  Js_reply_edit">编辑</a>
		<a href="javascript:;" data-id="" class="icon14_common del_gray Js_reply_del">删除</a>
	</div>
</li>
</script>

<script type="text/x-jquery-tmpl" id="keyword_media_reply">
<li data-index="1" data-id="${id}" data-type="1" data-appid="" data-fileid="" data-content="12">
	<div class="desc">
		<div class="media_content Js_media_content"id="Js_mediaContent_${id}" data-index="1" data-type="1"></div>
	</div>
	<div class="opr">
		<a href="javascript:;" data-id="" class="icon14_common del_gray Js_reply_del">删除</a>
	</div>
</li>
</script>

<script type="text/x-jquery-tmpl" id="keyword_new_rule">
<li class="keywords_rule_item open" id="Js_ruleItem_${id}">
	<div class="keywords_rule_hd no_extra Js_detail_switch" data-id="${id}" data-reply="loaded" style="-webkit-transition: all, 1s;">
		<div class="info">
			<em class="keywords_rule_num">${ruleNumber}</em>
			<strong class="keywords_rule_name">${ruleTitle}</strong>
		</div>
		<div class="opr">
			<a href="javascript:void(0);">展开</a>
		</div>
	</div>
	
	
	<div class="keywords_rule_bd keywords_rule_overview">
		<div class="keywords_info keywords">
			<strong class="keywords_info_title">关键词</strong>
			<div class="keywords_info_detail">
				<ul class="overview_keywords_list" id="Js_keywordsOverview_${id}"></ul>
			</div>
		</div>
		<div class="keywords_info reply">
			<strong class="keywords_info_title">回复</strong>
				<div class="keywords_info_detail">
					<p class="reply_info">
						<em class="num">0</em>条（
						<em data-type="1" class="num Js_reply_cnt2">1</em>条文字，
						<em data-type="2" class="num Js_reply_cnt2">0</em>条图片，
						<em data-type="3" class="num Js_reply_cnt2">0</em>条语音，
						<em data-type="4" class="num Js_reply_cnt2">0</em>条视频，
						<em data-type="5" class="num Js_reply_cnt2">0</em>条图文）
					</p>
				</div>
		</div>
	</div>
	
	<div class="keywords_rule_bd keywords_rule_detail">
		<div class="rule_name_area">
			<div class="frm_control_group">
				<label for="" class="frm_label">规则名</label>
				<div class="frm_controls">
					<span class="frm_input_box"><input type="text" class="frm_input" id="Js_ruleName_${id}" value="${ruleName}"></span>
					<p class="frm_tips">规则名最多60个字</p>
				</div>
			</div>
		</div>
	
	<div class="keywords_tap keywords">
		<div class="keywords_tap_hd">
			<div class="info">
				<h4>关键字</h4>
			</div>
			<div class="opr">
				<a href="javascript:;" data-id="${id}" class="Js_keyword_add">添加关键字</a>
			</div>
		</div>
		<div class="keywords_tap_bd">
			<ul class="keywords_list" id="Js_keywordList_${id}"></ul>
		</div>
	</div>
	
		<div class="keywords_tap reply">
			<div class="keywords_tap_hd">
				<div class="info">
					<h4>回复</h4>
				</div>
			</div>
			<div class="keywords_tap_bd">
				<ul class="media_type_list">
					<li class="tab_text">
						<a href="javascript:;" data-type="1" data-id="0" class="Js_reply_add"><i class="icon_msg_sender"></i>文字</a>
					</li>
					<li class="tab_appmsg">
						<a href="javascript:;" data-type="5" data-id="0" class="Js_reply_add"><i class="icon_msg_sender"></i>图文</a>
					</li>
				</ul>
	
				<ul class="keywords_list" id="Js_replyList_${id}">
					<li data-index="1" data-id="0" data-type="1" data-appid="" data-fileid="" data-content="12">
																	<!--<div class="desc">
																		<div class="media_content Js_media_content"
																			id="Js_mediaContent_${id}" data-index="${id}" data-type="1">
																		</div>
																	</div>
																	<div class="opr">
																		<a href="javascript:;"
																			class="icon14_common edit_gray Js_reply_edit">编辑</a>
																		<a href="javascript:;" data-id=""
																			class="icon14_common del_gray Js_reply_del">删除</a>
																	</div>-->
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="keywords_rule_ft">
		<p class="media_stat info">
			文字(<em data-type="1" class="num Js_reply_cnt">1</em>)、
			图片(<em data-type="2" class="num Js_reply_cnt">0</em>)、
			语音(<em data-type="3" class="num Js_reply_cnt">0</em>)、
			视频(<em data-type="4" class="num Js_reply_cnt">0</em>)、 
			图文(<em data-type="5" class="num Js_reply_cnt">0</em>)
		</p>
	
		<div class="opr">
			<a href="javascript:;" data-id="${id}" class="btn btn_primary Js_rule_save">保存</a>
			<a href="javascript:;" data-id="${id}" class="btn btn_default Js_rule_del">删除</a>
		</div>
	</div>
</li>
</script>
	<script type="text/javascript">
	
$(function(){

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
	
	/*$('.js_btn_cancel').bind('click',function(){
		hideMaterial(true);
		hideKeywords(true);
		//hideSimple(true);
	});*/
	
	$('.pop_closed').bind('click',function(){
		hideMaterial(true);
		hideKeywords(true);
		hideSimple(true);
	});
	
	
	function hideKeywords(b){
		if(b == true){
			$('.keywords_edit').css('display','none');
			$('.mask').css('display','none');
		}
		else{
			$('.keywords_edit').css('display','');
			$('.mask').css('display','');
		}
	}
	
	function hideSimple(b){
		if(b == true){
			$('.simple').css('display','none');
			$('.mask').css('display','none');
		}
		else{
			$('.simple').css('display','');
			$('.mask').css('display','');
		}	
	}

	
	$("#wx_face").SinaEmotion($('#wx_edit_area'));
		
	$("#wx_edit_area").bind('input propertychange', function(){
		var length = weiboTextLen($("#wx_edit_area").html(),'');
		$('#wx_edit_area_tip').html("您还可以输入<em><font color='red'>&nbsp;"+(300-length)+"&nbsp;</font></em>字");
	});
		
	/*$('.tab_text').bind('click',function(){
		$('#wx_text').css("display","block");
		$('#wx_img').css("display","none");
		
		$('.tab_img').removeClass('selected');
		$('.tab_text').addClass('selected');
	});*/

	function bindEvents(){
		
		$('.Js_detail_switch').find('a').unbind("click"); 
		
		$('.Js_detail_switch').find('a').bind('click',function(){
			var target = $(this).parents('.keywords_rule_item');
			if(target.hasClass('open')){
				target.removeClass('open');
				$(this).text('展开');
			}
			else{
				target.addClass('open');
				$(this).text('收起');
			}
		});

		
		$('.Js_keyword_add').unbind("click"); 
		
		$('.Js_keyword_add').bind('click',function(){
			$('.simple').attr('edit-type','add');
			$('.js_btn').attr('data-id',$(this).attr('data-id'));
			$('#keyword_input').val('');
			hideSimple(false);
		});
		
		$('.tab_appmsg').unbind("click"); 
		$('.tab_appmsg').bind('click',function(){
			$('.js_btn').attr('data-id',$(this).children('a').attr('data-id'));
			hideMaterial(false);
		});
		
		$('.tab_text').unbind("click"); 
		$('.tab_text').bind('click',function(){
			$('#wx_edit_area').html('');
			$('.js_btn').attr('data-id',$(this).children('a').attr('data-id'));
			hideKeywords(false);
		});
		
		function removeHtmlTag(htmlVal){
			var str = htmlVal;
			var re = /<(?!(\/?div|\/?b|\/?a))[^>]+>/ig; //要保留其他标签修改这里
			str=str.replace(re,"");
			//str=str.replace(new RegExp(/<(br)>/ig),'\n');
			return str;
		}
		function getKeywordsForm(id){
			var replyType = $('#Js_mediaContent_'+id).attr('reply-type');
			var reply_Value;
			if(replyType == 'text'){
				reply_Value = removeHtmlTag($('#Js_mediaContent_'+id).html());
			}
			else if(replyType == 'media'){
				reply_Value = $('#Js_mediaContent_'+id).children("div[id*=appmsg]").attr('data-id');
			}
			var _date = {ruleType:id,ruleName:$('#Js_ruleName_'+id).val(),replyType:$('#Js_mediaContent_'+id).attr('reply-type'),replyValue:reply_Value};
			var keywordList = [];
			$('#Js_keywordList_'+id).children('li').each(function(){
				var keyword = {keywordName : $(this).children('.desc').children('strong').attr('data-content')};
				keywordList.push(keyword);
				_date.keywordList = keywordList;
			});
			
			return JSON.stringify(_date);
		}
		
		//保存规则
		$('.btn.btn_primary.Js_rule_save').unbind("click");
		$('.btn.btn_primary.Js_rule_save').bind('click',function(){
			var rule_add_id = $(this).attr('data-id');
			var replyType = $('#Js_mediaContent_'+$(this).attr('data-id')).attr('reply-type');
			if(replyType == null){
				$.scojs_message('请指定上传的多媒体素材类型', $.scojs_message.TYPE_OK);
				return;
			}
			$('#keywords_input').val(getKeywordsForm($(this).attr('data-id')));
			var params = $("form[id=keywords_form]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : '<%=path %>/saveOrUpdateKeywordsAuto.action', //请求的action路径
				error : function() {//请求失败处理函数);
					$.scojs_message('访问服务器失败', $.scojs_message.TYPE_OK);
				},
				success : function(data) {
					reqStatus = eval('(' + data+ ')');
					if(reqStatus["status"] == 'ok'){
						if(rule_add_id == 0){
							$.scojs_message('增加关键词成功', $.scojs_message.TYPE_OK);
							var roleId = reqStatus["id"];
							var rule_template = {id:roleId,ruleName:$('#Js_ruleName_0').val(),ruleNumber:'规则'+($('.keywords_rule_item').length+':'),ruleTitle:($('#Js_ruleName_0').val())};
							$('#Js_ruleList').prepend($('#keyword_new_rule').tmpl(rule_template));
							
							$('#Js_keywordList_0').children('li').each(function(){
								var keyword_val_tmpl = {name:$('#Js_keywordList_0').children('li').children('.desc').children('strong').attr('data-content'),id:roleId};
								$('#Js_keywordList_'+roleId).append($('#keyword_new').tmpl(keyword_val_tmpl));
								$('#Js_keywordsOverview_'+roleId).append("<li><em class='keywords_name'>"+$('#keyword_input').val()+"</em></li>");
							});
							$('#Js_ruleItem_'+roleId).removeClass('open');
							bindKeywordsEditor();
							bindEvents();
							$("#Js_ruleItem_0").slideUp(1000,function (){
							    $(this).remove();
							});
							//$("#Js_ruleItem_0").remove();
						}
						else{
							$('#Js_ruleItem_'+rule_add_id).removeClass('open');
							$.scojs_message('更新关键词成功', $.scojs_message.TYPE_OK);
						}
					}
					else{
						$.scojs_message('增加关键词失败,请重试.', $.scojs_message.TYPE_OK);
					}
				}
			});
		});

		
		//删除规则
		$('.btn.btn_default.Js_rule_del').unbind("click");
		$('.btn.btn_default.Js_rule_del').bind('click',function(){
			if($(this).attr('data-id') == 0){
				$('#Js_ruleItem_'+$(this).attr('data-id')).remove();
			}
			else{
				var rule_id = $(this).attr('data-id');
				var rule_del = {id:rule_id};
				$('#keywords_input').val(JSON.stringify(rule_del));
				var params = $("form[id=keywords_form]").serialize();
				$.ajax({
					async : true,
					cache : false,
					type : 'POST',
					data : params,
					url : '<%=path %>/deleteKeywordByIdAndAppId.action', //请求的action路径
					error : function() {//请求失败处理函数);
						$.scojs_message('访问服务器失败', $.scojs_message.TYPE_OK);
					},
					success : function(data) {
						reqStatus = eval('(' + data+ ')');
						if(reqStatus["status"] == 'ok'){
							$.scojs_message('删除关键词成功', $.scojs_message.TYPE_OK);
							$("#Js_ruleItem_"+rule_id).remove();
						}
						else{
							$.scojs_message('删除关键词失败,请重试.', $.scojs_message.TYPE_OK);
						}
					}
				});
			}
		});
	}
	
	function bindKeywordsEditor(){
		$('.Js_keyword_del').unbind("click");
		$('.Js_keyword_del').bind('click',function(){
			$(this).parent().parent().remove();
		});
		
		$('.Js_keyword_edit').unbind("click");
		$('.Js_keyword_edit').bind('click',function(){
			$('.simple').attr('edit-type','edit');
			$('.js_btn').attr('data-id',$(this).parent().parent().attr('data-id'));
			$('.js_btn').attr('data-index',$(this).parent().parent().attr('data-index'));
			$('#keyword_input').val($(this).parent().parent().children('.desc').children('strong').text());
			$("#Js_keywordList_"+$(this).parent().parent().attr('data-id')).children('li').each(function(){
				$(this).removeClass('selected');
			});
			$(this).parent().parent().addClass('selected');
			hideSimple(false);
		});
	}
	
	function bindReply(){
		$('.Js_reply_del').unbind("click");
		$('.Js_reply_del').bind('click',function(){
			$(this).parent().parent().remove();
		});
		
		$('.Js_reply_edit').unbind("click");
		$('.Js_reply_edit').bind('click',function(){
			//$('.keywords_edit').attr('edit-type','edit');
			$('#wx_edit_area').html($(this).parent().parent().children('.desc').children('div').html());
			$('.js_btn').attr('data-id',$(this).parent().parent().attr('data-id'));
			hideKeywords(false);
			//	$(this).parent().parent().remove();
		});
	}

	bindKeywordsEditor();
	bindEvents();
	bindReply();
	
	//添加关键字规则
	$('.simple').children('.dialog').children('.dialog_ft').children('.btn.btn_primary.btn_input.js_btn_ok').bind('click',function(){
		if($('.simple').attr('edit-type') == 'add'){
			var keyword_val = {name:$('#keyword_input').val(),id:$(this).children('button').attr('data-id')};
			$('#Js_keywordList_'+$(this).children('button').attr('data-id')).append($('#keyword_new').tmpl(keyword_val));
			$('#Js_keywordsOverview_'+$(this).children('button').attr('data-id')).append("<li><em class='keywords_name'>"+$('#keyword_input').val()+"</em></li>");
			bindKeywordsEditor();
		}
		else if($('.simple').attr('edit-type') == 'edit'){
			$('#Js_keywordList_'+$(this).children('button').attr('data-id')).children('li.selected').children('.desc').children('strong').attr('data-content',$('#keyword_input').val());
			$('#Js_keywordList_'+$(this).children('button').attr('data-id')).children('li.selected').children('.desc').children('strong').text($('#keyword_input').val());
			$('#Js_keywordsOverview_'+$(this).children('button').attr('data-id')).html('');
			
			id = $(this).children('button').attr('data-id');
			$('#Js_keywordList_'+id).children('li').each(function(){
				$('#Js_keywordsOverview_'+id).append(
					"<li><em class='keywords_name'>"+$(this).children('.desc').children('strong').attr('data-content')+"</em></li>");
			});
		}
		hideSimple(true);
	});
	
	$('.simple').children('.dialog').children('.dialog_ft').children('.btn.btn_default.btn_input.js_btn_cancel').bind('click',function(){
		hideSimple(true);
	});
	
	//添加关键词
	$('.keywords_edit').children('.dialog').children('.dialog_ft').children('.btn.btn_primary.btn_input.js_btn_p').bind('click',function(){
		//$(this).children('button').attr('data-id')
		//$('#wx_edit_area').html()
		var reply_text = {id:$(this).children('button').attr('data-id')};
		$('#Js_replyList_'+$(this).children('button').attr('data-id')).children().remove();
		$('#Js_replyList_'+$(this).children('button').attr('data-id')).append($('#keyword_text_reply').tmpl(reply_text));
		$('#Js_replyList_'+$(this).children('button').attr('data-id')).children('li').children('.desc').children('.media_content.Js_media_content').html($('#wx_edit_area').html());
		$('#Js_mediaContent_'+$(this).children('button').attr('data-id')).attr('reply-type','text');
		bindReply();
		hideKeywords(true);
	});
	
	$('.keywords_edit').children('.dialog').children('.dialog_ft').children('.btn.btn_default.btn_input.js_btn_p').bind('click',function(){
		hideKeywords(true);
	});
	
	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_default.btn_input.js_btn_p').bind('click',function(){
		hideMaterial(true);
	});
	
	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_primary.btn_input.js_btn_p').bind('click',function(){
		var reply_media = {id:$(this).children('button').attr('data-id')};
		$('#Js_replyList_'+$(this).children('button').attr('data-id')).children().remove();
		$('#Js_replyList_'+$(this).children('button').attr('data-id')).append($('#keyword_media_reply').tmpl(reply_media));
		$('#Js_replyList_'+$(this).children('button').attr('data-id')).children('li').children('.desc').children('.media_content.Js_media_content').html($("div[class*='selected']").parent());
		$('.appmsg_mask').remove();
		$('#Js_mediaContent_'+$(this).children('button').attr('data-id')).attr('reply-type','media');
		bindReply();
		hideMaterial(true);
	});
	//添加新规则
	
	
	$('#Js_rule_add').bind('click',function(){
		var menu = {name:'',id:0,ruleTitle:'新规则'};
		if($('#Js_ruleList').children('#Js_ruleItem_0').length == 0){
			$('#Js_ruleList').prepend($('#keyword_new_rule').tmpl(menu));
			bindEvents();
		}
		else{
			$('#Js_ruleItem_0').remove();
		}
	});
	
	$('#Js_rule_add').trigger('click');
});
</script>
</html>