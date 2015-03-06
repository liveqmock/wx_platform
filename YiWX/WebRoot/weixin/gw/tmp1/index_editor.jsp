<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MaterialBean"%>
<%@ page isELIgnored="true"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.viewmodels.WebsiteViewModel"%>
<%@page import="com.zhike.viewmodels.ImgViewModel"%>
<%@page import="java.awt.event.ActionEvent"%>
<%@page import="com.zhike.viewmodels.ActionViewModel"%>
<%@page import="com.zhike.sql.beans.ActionLinkBean"%>
<%@page import="com.zhike.actions.LinkAction"%>
<%@page import="com.zhike.utils.BgAnimationManager"%>
<%@page import="com.zhike.utils.BgAnimationModel"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<title>微信封-微信营销系统</title>
		<link href="<%=path %>/img/logo_icon.png" rel="Shortcut Icon">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/appmsg_edit19e425.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/appmsg_editor.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/themes/default/default.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/sco/sco.message.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/pagination.css" media="all">	
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/common.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/menu-3.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/site.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css_editor/color3.css" media="all"/>

		<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/inside.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/resource.css" media="all"/>
	
		<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="<%=path%>/kindeditor.js"></script>
		<script type="text/javascript" src="<%=path%>/lang/zh_CN.js"></script>
		<script type="text/javascript" src="<%=path%>/js/sco.message.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.tmpl.js"></script>
		<script type="text/javascript" src="<%=path%>/js/swipe.js"></script>
		<script type="text/javascript" src="<%=path%>/js/inside.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery-ui-1.9.2.custom.min.js"></script>

	<style type="text/css">
		.appmsg_item_phone {
			position: relative;
			padding: 12px 14px;
			border-top: 1px solid #d3d3d3;
		}
		
		.appmsg_item_phone:hover .appmsg_edit_mask {
			display: block;
		}
		
		.appmsg_item_phone .appmsg_edit_mask {
			line-height: 70px;
		}
		
		.appmsg_item_nav {
			position: relative;
			padding: 12px 14px;
			border-top: 1px solid #d3d3d3;
		}
		
		.appmsg_item_nav:hover .appmsg_edit_mask {
			display: block;
		}
		
		.appmsg_item_nav .appmsg_edit_mask {
			line-height: 73px;
		}
		
		.appmsg_item_main {
			position: relative;
			padding: 12px 14px;
			border-top: 1px solid #d3d3d3;
		}
		
		.appmsg_item_main:hover .appmsg_edit_mask {
			display: block;
		}
		
		.appmsg_item_main .appmsg_edit_mask {
			line-height: 240px;
		}
		.appmsg_phone_item .appmsg_event_item {
			padding-bottom: 1em;
			
		}
		
		.appmsg_event_item{
			margin-top: 1em;
		}
		
		.js_edit_area{
			display: none;
		}
		
		.appmsg_editor .inner {
			min-height: 0;
		}
		
		.appmsg_item .appmsg_thumb {
			float: left;
			width: 78px;
			height: 78px;
			margin-left: 0px;
		}
		.js_edit_area{max-width: 387px;}
		.js_edit_sub_area{width: 380px;max-width: 387px;}
		.tile-themed {background-color: #b8b8b8;}
		tr.editing{background-color: #b8b8b8;}
		span.label {word-wrap: break-word;word-break: break-all;display: block;width: auto;overflow: hidden;}
		.thumb_link{display: none;}
		.main_link{display: none;}
		.cover-bd {
border-top: 1px solid #ccc;
font-size: 0;
overflow: hidden;
padding: 8px;
}
.cover-bd img {
width: 100px;
}
img {
max-width: 100%;
width: auto\9;
height: auto;
vertical-align: middle;
border: 0;
-ms-interpolation-mode: bicubic;
}
.cover-del {
font-size: 14px;
margin-left: 5px;
}
.cover-area {
width: 300px;
}
.cover-area {
background-color: #fff;
border: 1px solid #d3d3d3;
color: #666;
max-width: 480px;
padding: 2px 8px;
width: 365px;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
position: relative;
}
	</style>
	</head>
	<body class="page_appmsg_edit">
		<%
			WebsiteViewModel websiteViewModel = (WebsiteViewModel) request.getAttribute(Constat.WEBSITES);
			boolean isNew = (websiteViewModel == null);
			if(websiteViewModel == null) websiteViewModel = new WebsiteViewModel();
		%>
		<input type="hidden" value="<%=websiteViewModel.getRefkid() %>" id="refkid"/>
		<input type="hidden" value="<%=websiteViewModel.getBgimg() %>" id="input_bgimg"/>
		<input type="hidden" value="<%=websiteViewModel.getBgani() %>" id="input_bgani"/>
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top selected">
							<a>页面编辑</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- 关键词编辑 -->
			<div class="main_bd">
				<div class="media_preview_area">
					<div class="appmsg editing">
						<div id="js_appmsg_preview" class="appmsg_content">
							<div id="appmsgItem1" class="js_appmsg_item ">
								<h4 class="appmsg_title">
									<a onclick="return false;" href="javascript:void(0);"
										target="_blank">标题</a>
								</h4>
								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="appmsg_thumb_wrp">
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=path%>/weixin/gw/img/gw.jpg">
									<i class="appmsg_thumb default">封面图片</i>
								</div>
								<p class="appmsg_desc"></p>
							</div>
						</div>
					</div>
				</div>
				<div id="js_appmsg_editor" class="media_edit_area">
					<div class="appmsg_editor" style="margin-top: 0px;">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									触发关键字
								</label>
								<span >
									<input type="text" class="frm_input" id="wxkeyword" value="<%=(websiteViewModel.getKeyword() != null? websiteViewModel.getKeyword() : "微官网") %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" id="wxtitle" value="<%=(websiteViewModel.getTitle() != null? websiteViewModel.getTitle() : "微官网标题") %>">
								</span>
							</div>							
							<div class="appmsg_edit_item">
								<label  class="frm_label">
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
									</div>
									&nbsp;
									<p class="js_cover upload_preview" style="display: block;">
										<img src="<%=path%>/weixin/gw/img/gw.jpg" id="upload_preview_img" style="margin-bottom: 10px;">
										<input type="hidden" class="frm_input js_title frm_input_hidden" id="wximg">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
							<div class="js_desc_area dn appmsg_edit_item">
								<label  class="frm_label">
									摘要
								</label>
								<textarea style="height: 45px;background-color: white;padding-left: 8px;padding-right: 8px;" maxlength="120" class="js_desc frm_textarea textarea" id="wxdescs" ><%=(websiteViewModel.getDescs() != null? websiteViewModel.getDescs() : "请点击进入微官网页面，祝您好运！") %></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 高级设置 -->
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						高级设置
					</h3>
				</div>
			</div>
			<div class="main_bd">
				<div class="appmsg_edit_item cover-area" style="width: 300px; float:left; margin-right: 5px; min-height: 300px; ">
					<label class="frm_label"><strong>-模板编辑</strong></label>
					<span class="btn-group">
						<span class="btn btn_default btn_input" id="tmp_select"><button style="min-height: 37px;">选择预设模板</button></span>
					</span>
					<div >
						<p class="img-area cover-bd" style="margin-top: 8px;"><%=websiteViewModel.getTempnum() %>
							<input type="hidden" id="tempNum" value="<%=websiteViewModel.getTempnum() %>" />
							<img src="<%=path + "/weixin/gw/images/tempimg/tmp_img_"+websiteViewModel.getTempnum()+"b.jpg" %>" id="tempImg">
						</p>
					</div>
				</div>
				
				<div class="appmsg_edit_item cover-area" style="width: 300px; float:left; margin-right: 5px; min-height: 300px;">
					<label class="frm_label"><strong>-背景图编辑</strong></label>
					<div class="js_selectArea dropdown_menu">
						<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
						<label class="jsBtLabel">请选择</label><i class="arrow"></i></a>
						<!-- block; -->
						<ul class="dropdown_data_list jsDropdownList" style="display: none;">
							<li class="dropdown_data_item">
								<a href="javascript:;" class="jsDropdownItem" data-name='请选择系统图片' style="min-height: 37px;">请选择系统图片</a>
							</li>
							<%
								for(int imgLoop=1;imgLoop<=18;imgLoop++){
							%>
							<li class="dropdown_data_item">
								<a href="javascript:;" class="jsDropdownItem jsBgImg" data-name='<%=imgLoop %>' data-value='<%=path+"/weixin/gw/img/bg/"+imgLoop+".jpg" %>'><%=imgLoop %></a>
							</li>
							<%
								}
							%>
							
						</ul>
						
					</div>
					<span class="btn-group">
						<span class="btn btn_default btn_input" id="bg_upload"><button style="min-height: 37px;">选择其他图片</button></span>
						<span class="help-inline">建议尺寸：宽320像素，高480像素</span>
					</span>
					<div>
						<p class="img-area cover-bd" style="margin-top: 3px;">
							<img src="<%=(websiteViewModel.getBgimg() == null || "null".compareTo(websiteViewModel.getBgimg()) == 0)? (path + "/weixin/gw/img/bg/1.jpg"):websiteViewModel.getBgimg() %>" class="img" id="bgImg">
							<a href="javascript:;" class="vb cover-del" id="bgImgDel">删除</a>
						</p>
					</div>
				</div>
				<div class="appmsg_edit_item  cover-area" style="width: 300px; float:left; margin-right: 5px; min-height: 300px;">
					<label class="frm_label"><strong>-背景动画</strong></label>
					<div class="js_selectArea dropdown_menu">
						<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
						<label class="jsBtLabel"><%=BgAnimationManager.getBgAnimationName(websiteViewModel.getBgani()) %></label><i class="arrow"></i></a>
						<!-- block; -->
						<ul class="dropdown_data_list jsDropdownList" style="display: none;">
							<%
							List<BgAnimationModel> animationModels = BgAnimationManager.getAnimationModels();
							for(BgAnimationModel bgAnimationModel : animationModels){
							%>
							<li class="dropdown_data_item">
								<a href="javascript:;" class="jsDropdownItem jsAni" data-name="<%=bgAnimationModel.getName() %>" data-value="<%=path + bgAnimationModel.getValue() %>"><%=bgAnimationModel.getName() %></a>
							</li>
							<%
							}
							%>
						</ul>
					</div>
					<p class="img-area cover-bd" style="margin-top: 3px;">
					</p>
				</div>
			</div>
			


			<div class="main_bd">
				<div class="parent_title_bar" style="clear:both;">
					<h3>
						官网编辑(图片模板的预览不呈现在当前编辑页面)
					</h3>
				</div>
			</div>
			<div class="main_bd">
				<div class="media_preview_area">
					<div class="appmsg multi editing">
						<div id="js_appmsg_preview" class="appmsg_content">
							<div id="appmsgItem" class="js_appmsg_item">

								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="cover_appmsg_item">
		
									<div class="appmsg_thumb_wrp">
										<div style="-webkit-transform:translate3d(0,0,0);">
											<div id="banner_box" class="box_swipe">
												<ul>
													<%
														List<ImgViewModel> imgViewModels = websiteViewModel.getThumbs();
														if(imgViewModels == null) imgViewModels = new ArrayList<ImgViewModel>();
														if(imgViewModels.size() == 0){
															ImgViewModel ivm = new ImgViewModel();
															ivm.setImg(path+"/weixin/gw/img/gw.jpg");
															imgViewModels.add(ivm);
														}
													%>
													<%
														for(ImgViewModel imgViewModel : imgViewModels){
													%>
													<li>
														<a onclick="return false;">
															<img src="<%=imgViewModel.getImg() %>" alt="<%=imgViewModel.getTitle() != null? imgViewModel.getTitle():"" %>" style="width:100%;" />
														</a>
													</li>
													<%
														}
													%>
												</ul>
												<ol>
													<%
														for(int i = 0 ; i < imgViewModels.size() ; i++){
													%>
													<li class="<%=(i == 0 ? "on" : "") %>"></li>
													<%
														}
													%>
												</ol>
											</div>
										</div>
										<script>
											$(function(){
												new Swipe(document.getElementById('banner_box'), {
													speed:500,
													auto:2000,
													callback: function(){
														var lis = $(this.element).next("ol").children();
														lis.removeClass("on").eq(this.index).addClass("on");
													}
												});
											});
										</script>
									</div>
								
									<div class="appmsg_edit_mask">
										<a onclick="return false;" class="icon18_common edit_gray js_edit" data-ref="js_appmsg_edit_ads" href="javascript:;">编辑</a>
									</div>
								</div>
							</div>
						</div>
						
						<div class="appmsg_item_phone js_appmsg_item">
								<div class="box-btn bgcolor">
							        <a href="tel:<%=websiteViewModel.getPhoneNumber() %>" id="js_phone_href"><i class="icon icon-phone" style="margin-top: 9PX;"></i><%=websiteViewModel.getPhoneNumber() != null? websiteViewModel.getPhoneNumber() : "请输入联系电话" %></a>
							    </div>
						        
							    <div class="appmsg_edit_mask">
									<a onclick="return false;" class="icon18_common edit_gray js_edit" data-ref="js_appmsg_edit_phone" href="javascript:;">编辑</a>
								</div>
						</div>
						
						<div class="appmsg_item appmsg_item_main js_appmsg_item" style="min-height: 229px;">
						
							<section>
								<ul class="list_font list_main">
									<li style="background-color:#d3d3d3;">
										<a>
											<div><span class="icon-plus-sign-alt main_icon"></span></div>
							                <div><p>增加栏目</p></div>
						                </a>
						            </li>
									<%
										List<ActionViewModel> mainActionEvents = websiteViewModel.getMains();
										if(mainActionEvents == null) mainActionEvents = new ArrayList<ActionViewModel>();
									%>
									
									<%
										for(ActionViewModel mainActionEvent : mainActionEvents){
									%>
										<li style="background-color:#d3d3d3;">
										<a>
											<div><span class="<%=mainActionEvent.getIcon() %>"></span></div>
							                <div><p><%=mainActionEvent.getTitle() %></p></div>
						                </a>
						            	</li>
									<%
										}
									%>
						        </ul>
						    </section>
						    
						    <div class="appmsg_edit_mask">
								<a onclick="return false;" class="icon18_common edit_gray js_edit" data-ref="js_appmsg_edit_main" href="javascript:;">编辑</a>
							</div>
						</div>
						
						<div class="appmsg_item_nav js_appmsg_item">
							<!--<section>
								<div class="plug-div model1">
									<div id="plug-phone" class="plug-phone">
										<div>
											<a href="http://api.map.baidu.com/marker?location=29.86946,121.571274&title=铂菲婚礼顾问&name=铂菲婚礼顾问&content=121.571274&output=html&src=weiba|weiweb" class="icon-map-marker">
												<label>导航</label>
											</a>
										</div>
										<div>
											<a href="http://www.bofee.com/" class="icon-globe ">
												<label>官网</label>
											</a>
										</div>
										<div>
											<a href="/userinfo/index?id=1780&pid=10145&bid=19532&wechatid=oev3IjlWHirgl1s_UUl4spQRBLqc&wxref=mp.weixin.qq.com" class="icon-heart">
												<label>会员卡</label>
											</a>
										</div>
										<div>
											<a href="javascript:$('#shareCover').toggleClass('on');" class="icon-share"><label>分享</label></a>
										</div>
									</div>
								</div>
							</section>-->
							 

							<section>
								<div class="plug-div">
									<div id="plug-phone" class="plug-phone">
										<input type="checkbox" id="plug-btn" class="plug-menu" style="background-color:#B70000;">
										<%
										List<ActionViewModel> navActionEvents = websiteViewModel.getNavs();
										if(navActionEvents == null) navActionEvents = new ArrayList<ActionViewModel>();
										%>
										<%
										for(ActionViewModel navActionEvent : navActionEvents){
										%>
										<div style="background-color:#B70000; " class="">
											<a class="<%=navActionEvent.getIcon() %> "></a>
										</div>
										<%
										}
										%>
									</div>
								</div>
							</section>
							<script>
								window.addEventListener("DOMContentLoaded", function(){
									btn = document.getElementById("plug-btn");
									btn.onclick = function(){
										var divs = document.getElementById("plug-phone").querySelectorAll("div");
										var className = className=this.checked?"on":"";
										for(i = 0;i<divs.length; i++){
											divs[i].className = className;
										}
										document.getElementById("plug-wrap").style.display = "on" == className? "block":"none";
									}
								}, false);
							</script>
							<div class="appmsg_info">
								<div class="box-btn">导航栏编辑</div>
							</div>
							<div class="appmsg_edit_mask">
								<a onclick="return false;" class="icon18_common edit_gray js_edit" data-ref="js_appmsg_edit_nav" href="javascript:;">编辑</a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 轮播图 -->
				<div class="media_edit_area js_edit_area" id="js_appmsg_edit_ads" style="display: table-cell;">
					<div class="appmsg_editor" style="margin-top: 0px;" data-id="1">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<strong>-轮播图编辑</strong>
								</label>
							</div>
							
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<p class="js_cover_tip tips r">-仅支持上传JPG、PNG格式(200K以下)</p>
									<p class="js_cover_tip tips r">-最多可上传5张图片,为了图片效果最佳,建议尺寸为320x150</p>
								</label>
							</div>

							<div class="appmsg_edit_item">
								
								<div>
									<table id="listTable" class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
	                                    <thead>
	                                        <tr>
	                                            <th>展示</th>
	                                            <th>事件类型</th>
	                                            <th>是否显示</th>
	                                            <th style="width:80px;">操作</th>
	                                        </tr>
	                                    </thead>
                                   		<tbody id="appmsg_thumb_wrp_items">
                                   			<%
                                   			for(ImgViewModel imgViewModel : imgViewModels){
                                   			%>
	                                    	<tr>
		                                        <td>
		                                        	<img class="thumb_img" src="<%=imgViewModel.getImg() %>" style="max-height:50px;max-width: 50px;">
		                                        </td>
		                                        <td><span class="thumb_href"><%=imgViewModel.getEvent() %></span><span class="thumb_link"><%=imgViewModel.getLink() %></span></td>
		                                        <td>
		                                            <span class="label-satgreen thumb_show"><%=imgViewModel.isShow()?"是":"否" %></span>
		                                        </td>
		                                        <td>
													<div class="btn-group">
         												<button type="button" class="btn btn-default btn_ads_edit" style="padding: 0 12px" title="编辑" data-ref="js_appmsg_edit_ads_detail"><span class="icon-edit"></span></button>
          												<button type="button" class="btn btn-default btn_ads_delete" style="padding: 0 12px" title="删除"><span class="icon-remove"></span></button>
      												</div>
    	                                        </td>
	                                        </tr>
	                                        <%
	                                        	}
	                                        %>
                                        </tbody>
                                    </table>
								</div>
								
								<div class="appmsg_add" id="js_add_thumb">
									<a onclick="return false;" href="javascript:void(0);"><i class="icon24_common add_gray">增加一条</i></a>
								</div>
							</div>
							
							<i class="arrow arrow_out" style="margin-top: 0px;"></i>
							<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
						</div>
					</div>
				</div>
				
				<!--轮播图编辑-->
				<div class="media_edit_area js_edit_area" id="js_appmsg_edit_ads_detail" display="none">
					<div class="appmsg_editor" style="margin-top: 0px;" data-id="1">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<strong>-轮播图编辑</strong>
								</label>
							</div>
							
							<div class="appmsg_ads_item">
								<div>
									<label  class="frm_label">显示/隐藏</label>
								</div>
								<div class="js_selectArea dropdown_menu">
						        	<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
						        	<label class="jsBtLabel" data-ref="thumb_show">是</label><i class="arrow"></i></a>
									<!-- block; -->
									<ul class="dropdown_data_list jsDropdownList" style="display: none;">
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="0" data-index="0" data-name="否">否</a>
									    </li>
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="1" data-index="1" data-name="是">是</a>
									    </li>
									</ul>
								</div>
							</div>

							<div class="appmsg_event_item">
								<div><label>事件</label></div>
								<div class="appmsg_event_item_detail">
									<div class="wx_action_type appmsg_main_item">
										<div class="js_selectArea dropdown_menu">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel" data-ref="thumb_href">素材</label><i class="arrow"></i></a>
											<!-- block; -->
											<ul class="dropdown_data_list jsDropdownList" style="display: none;">
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="素材" data-value="素材">素材</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="网址" data-value="网址">网址</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="应用" data-value="应用">应用</a>
												</li>
											</ul>
										</div>
									
										<div class="js_selectArea dropdown_menu appmsg_main_item ref_select" style="display:inline-block">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel">请选择</label><i class="arrow"></i></a>
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
									
									<div class="wx_action_detail appmsg_main_item" style=" padding-top: 10px; "></div>
										<div style="display: none;">
											<%
												Map<Integer,List<ActionLinkBean>> map = (HashMap<Integer,List<ActionLinkBean>>) request.getAttribute("L_ACTIONS");
												for(int i = 0 ; i<=10 ; i++){
													List<ActionLinkBean> beans = map.get(i);
											%>
											<div class="<%=LinkAction.getReflectDIV(i) %>" class="ref_action">
											<%if(beans != null){%>
												<div class="appmsg_edit_item">
													<label  class="frm_label">链接地址</label>
													<span>
														<input type="text" class="frm_input js_action_link" readonly="readonly"/>
													</span>
												</div>
												<table class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
													<thead><tr><th>选择</th><th>活动标题</th><th>关键词</th><th style="width:80px;">创建时间</th></tr></thead>
													<tbody>
													<%for(ActionLinkBean actionBean : beans){%>
														<tr><td><div class="radio"><label><input type="radio" name="rd_selected" value="<%=actionBean.getUrl() %>">选中</label></div></td>
														<td><%=actionBean.getTitle() %></td><td><%=actionBean.getKeyword() %></td><td><%=actionBean.getCreatetime() %></td></tr>
													<%}%>
													</tbody>
												</table>
													<%}else{%>
												<label class="no_data"><%=LinkAction.getReflectName(i) %>没有添加对应的活动页面。</label>
													<%}%>
											</div>
											<%}%>
										</div>
								</div>
							</div>
							
							<i class="arrow arrow_out" style="margin-top: 0px;"></i>
							<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
						</div>
					</div>
				</div>
				
				<!-- 电话编辑 -->
				<div class="media_edit_area js_edit_area" id="js_appmsg_edit_phone">
					<div class="appmsg_editor" style="margin-top: 0px;" data-id="1">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<strong>-电话编辑</strong>
								</label>
							</div>
							
							<div class="appmsg_phone_item">
								<div>
									<label  class="frm_label">显示/隐藏</label>
								</div>
								<div class="js_selectArea dropdown_menu">
						        	<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
						        	<label class="jsBtLabel" id="phone_is_show">是</label><i class="arrow"></i></a>
									<!-- block; -->
									<ul class="dropdown_data_list jsDropdownList" style="display: none;">
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="0" data-index="0" data-name="否">否</a>
									    </li>
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="1" data-index="1" data-name="是">是</a>
									    </li>
									</ul>
								</div>
							</div>

							<div class="appmsg_edit_item">
								<label  class="frm_label"><strong class="title">电话号码</strong><p class="js_cover_tip tips r">(手机、座机或者400电话*)</p></label>
							
								<span>
									<input type="text" class="frm_input js_phone" id="phone_value" value="010-88888888">
								</span>
							</div>
							
							<i class="arrow arrow_out" style="margin-top: 0px;"></i>
							<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
						</div>
					</div>
				</div>
				
				
				<!-- 主页面导航 -->
				<div class="media_edit_area js_edit_area" id="js_appmsg_edit_main">
					<div class="appmsg_editor" style="margin-top: 0px;" data-id="1">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<strong>-主页面编辑</strong>
								</label>
							</div>
							
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<p class="js_cover_tip tips r">-最多可添加10个主页面栏目</p>
								</label>
							</div>
							
							<div class="appmsg_edit_item">
								
								<div>
									<table id="listTable" class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
	                                    <thead>
	                                        <tr>
	                                            <th>标题</th>
	                                            <th>图标</th>
	                                            <th>图片</th>
	                                            <th>事件类型</th>
	                                            <th>是否显示</th>
	                                            <th style="width:80px;">操作</th>
	                                        </tr>
	                                    </thead>
                                   		<tbody id="appmsg_main_wrp_items">
                                   		<%
										for(ActionViewModel mainActionEvent : mainActionEvents){
										%>
	                                    	<tr>
		                                        <td>
		                                        	<span class="main_title"><%=mainActionEvent.getTitle() %></span>
		                                        </td>
		                                        <td>
													<div class="i-cont tile-themed" style="width:auto;">
	    												<i class="<%=mainActionEvent.getIcon() %>"></i>
													</div>
												</td>
												<td>
													<span><img class="main_img" style="width:42px;height:42px;" src="<%=(mainActionEvent.getImg() == null? "weixin/gw/images/temp_img/cover1.jpg" : mainActionEvent.getImg() )%>"></span>
												</td>
		                                        <td><span class="main_href"><%=mainActionEvent.getEvent() %></span><span class="main_link"><%=mainActionEvent.getLink() %></span></td>
		                                        <td>
		                                            <span class="main_show"><%=mainActionEvent.isShow()?"是":"否" %></span>
		                                        </td>
		                                        <td>
													<div class="btn-group">
         												<button type="button" class="btn btn-default btn_nav_edit" style="padding: 0 12px" title="编辑" data-ref="js_appmsg_edit_main_detail"><span class="icon-edit"></span></button>
          												<button type="button" class="btn btn-default btn_nav_delete" style="padding: 0 12px" title="删除"><span class="icon-remove"></span></button>
      												</div>
		                                        </td>
	                                        </tr>
	                                    <%
											}
                                   		%>
                                        </tbody>
                                    </table>
								</div>
								
								<div class="appmsg_add" id="js_add_main">
									<a onclick="return false;" href="javascript:void(0);"><i class="icon24_common add_gray">增加一条</i></a>
								</div>
							</div>
							
							<i class="arrow arrow_out" style="margin-top: 0px;"></i>
							<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
						</div>
					</div>
				</div>
				
				<!-- 导航  -->
				<div class="media_edit_area js_edit_area" id="js_appmsg_edit_nav">
					<div class="appmsg_editor" style="margin-top: 0px;" data-id="1">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<strong>-导航栏编辑</strong>
								</label>
							</div>
							
							<div class="appmsg_event_item">
								<div>
									<label  class="frm_label">显示/隐藏</label>
								</div>
								<div class="js_selectArea dropdown_menu">
						        	<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
						        	<label class="jsBtLabel" id="nav_show">是</label><i class="arrow"></i></a>
									<!-- block; -->
									<ul class="dropdown_data_list jsDropdownList" style="display: none;">
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="0" data-index="0" data-name="否">否</a>
									    </li>
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="1" data-index="1" data-name="是">是</a>
									    </li>
									</ul>
								</div>
							</div>
							
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<p class="js_cover_tip tips r">-最多可添加4个导航栏目</p>
								</label>
							</div>
							
							<div class="appmsg_edit_item">
								
								<div>
									<table id="listTable" class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
	                                    <thead>
	                                        <tr>
	                                            <th>标题</th>
	                                            <th>图标</th>
	                                            <th>事件类型</th>
	                                            <th>是否显示</th>
	                                            <th style="width:80px;">操作</th>
	                                        </tr>
	                                    </thead>
                                   		<tbody id="appmsg_nav_wrp_items">
                                   		<%
										for(ActionViewModel navActionEvent : navActionEvents){
										%>
	                                    	<tr>
		                                        <td>
		                                        	<span class="main_title"><%=navActionEvent.getTitle() %></span>
		                                        </td>
		                                        <td>
		                                        	<div class="i-cont tile-themed" style="width:auto;">
	                                            		<i class="<%=navActionEvent.getIcon() %>"></i>
	                                           		</div>
		                                        </td>
		                                        <td><span class="main_href"><%=navActionEvent.getEvent() %></span><span class="main_link"><%=navActionEvent.getLink() %></span></td>
		                                        <td>
		                                            <span class="main_show"><%=navActionEvent.isShow()?"是":"否" %></span>
		                                        </td>
		                                        <td>
													<div class="btn-group">
         												<button type="button" class="btn btn-default btn_nav_edit" style="padding: 0 12px" title="编辑" data-ref="js_appmsg_edit_main_detail"><span class="icon-edit"></span></button>
          												<button type="button" class="btn btn-default btn_nav_delete" style="padding: 0 12px" title="删除"><span class="icon-remove"></span></button>
      												</div>
    											</td>
	                                        </tr>
	                                    <%
	                                    	}
	                                    %>
                                        </tbody>
                                    </table>
								</div>
								
								<div class="appmsg_add" id="js_add_nav">
									<a onclick="return false;" href="javascript:void(0);"><i class="icon24_common add_gray">增加一条</i></a>
								</div>
							</div>
							
							<i class="arrow arrow_out" style="margin-top: 0px;"></i>
							<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
						</div>
					</div>
				</div>
				
				<div class="media_edit_area js_edit_area" id="js_appmsg_edit_main_detail" style="display:none;">
					<div class="appmsg_editor js_edit_sub_area_panel" style="margin-top: 0px;">
						<div class="inner">
							<div class="appmsg_edit_item">
								<label  class="frm_label">
									<strong>-编辑详细</strong>
								</label>
							</div>
							
							<div class="appmsg_edit_item">
								<div class="appmsg_edit_item">
									<label  class="frm_label">标题</label>
									<span>
										<input type="text" class="frm_input js_title" value="" data-ref="main_title" id="main_title">
									</span>
								</div>
							</div>
							
							<div class="appmsg_edit_item">
									<label  class="frm_label">图标</label>
									<span>
										<div class="controls">
	                                        <div class="i-cont tile-themed" >
	                                            <i class="icon-smile" id="icon_i" data-ref="main_icon"></i>
	                                            <input type="hidden" id="icon" name="icon" value="icon-smile">
	                                            <a class="sel-icon" href="javascript:void(0);">换一个</a>
	                                            <div class="icons-cont">
													<div class="tab-content">
														<ul class="nav nav-tabs">
															<li class="icon-nav active" data-ref='#ico_hot'><a data-toggle="tab">热门</a></li>
															<li class="icon-nav" data-ref='#ico_all'><a data-toggle="tab">全部</a></li>
															<li class="icon-nav-close" style='float:right;'><a data-toggle="tab">关闭</a></li>
														</ul>
														<div class="icon-panel tab-pane fade active in" id="ico_hot"><ul class="icon_list"><li class="tile-themed"> <i class="icon-file-text"></i></li><li class="tile-themed"> <i class="icon-globe "></i></li><li class="tile-themed"> <i class="icon-credit-card"></i></li><li class="tile-themed"> <i class="icon-hand-up"></i></li><li class="tile-themed"> <i class="icon-dashboard "></i></li><li class="tile-themed"> <i class="icon-money "></i></li><li class="tile-themed"> <i class="icon-reorder"></i></li><li class="tile-themed"> <i class="icon-comments-alt "></i></li><li class="tile-themed"> <i class="icon-smile"></i></li><li class="tile-themed"> <i class="icon-thumbs-up"></i></li><li class="tile-themed"> <i class="icon-truck"></i></li><li class="tile-themed"> <i class="icon-shopping-cart"></i></li><li class="tile-themed"> <i class="icon-group"></i></li><li class="tile-themed"> <i class="icon-user-md"></i></li><li class="tile-themed"> <i class="icon-home"></i></li><li class="tile-themed"> <i class="icon-plane"></i></li><li class="tile-themed"> <i class="icon-gift"></i></li><li class="tile-themed"> <i class="icon-food"></i></li><li class="tile-themed"> <i class="icon-phone"></i></li><li class="tile-themed"> <i class="icon-tags"></i></li><li class="tile-themed"> <i class="icon-rocket"></i></li><li class="tile-themed"> <i class="icon-cloud"></i></li><li class="tile-themed"> <i class="icon-map-marker"></i></li><li class="tile-themed"> <i class="icon-music"></i></li><li class="tile-themed"> <i class="icon-trophy"></i></li><li class="tile-themed"> <i class="icon-android"></i></li><li class="tile-themed"> <i class="icon-apple"></i></li><li class="tile-themed"> <i class="icon-star"></i></li><li class="tile-themed"> <i class="icon-rss-sign"></i></li><li class="tile-themed"> <i class="icon-heart"></i></li><li class="tile-themed"> <i class="icon-envelope"></i></li><li class="tile-themed"> <i class="icon-bar-chart"></i></li><li class="tile-themed"> <i class="icon-picture"></i></li><li class="tile-themed"> <i class="icon-download"></i></li><li class="tile-themed"> <i class="icon-gamepad"></i></li><li class="tile-themed"> <i class="icon-comment"></i></li><li class="tile-themed"> <i class="icon-check"></i></li><li class="tile-themed"> <i class="icon-cog"></i></li><li class="tile-themed"> <i class="icon-camera"></i></li><li class="tile-themed"> <i class="icon-cloud"></i></li><li class="tile-themed"> <i class="icon-facetime-video"></i></li><li class="tile-themed"> <i class="icon-spinner"></i></li><li class="tile-themed"> <i class="icon-bullhorn"></i></li><li class="tile-themed"> <i class="icon-location-arrow"></i></li><li class="tile-themed"> <i class="icon-list-ul"></i></li><li class="tile-themed"> <i class="icon-weibo"></i></li><li class="tile-themed"> <i class="icon-windows"></i></li><li class="tile-themed"> <i class="icon-time"></i></li><li class="tile-themed"> <i class="icon-th"></i></li><li class="tile-themed"> <i class="icon-user"></i></li><li class="tile-themed"> <i class="icon-microphone"></i></li><li class="tile-themed"> <i class="icon-bookmark"></i></li><li class="tile-themed"> <i class="icon-flag-checkered"></i></li><li class="tile-themed"> <i class="icon-qrcode"></i></li><li class="tile-themed"> <i class="icon-glass"></i></li><li class="tile-themed"> <i class="icon-stethoscope"></i></li><li class="tile-themed"> <i class="icon-medkit"></i></li><li class="tile-themed"> <i class="icon-ambulance"></i></li><li class="tile-themed"> <i class="icon-hospital"></i></li><li class="tile-themed"> <i class="icon-foursquare"></i></li><li class="tile-themed"> <i class="icon-download-alt"></i></li><li class="tile-themed"> <i class="icon-coffee"></i></li><li class="tile-themed"> <i class="icon-building"></i></li><li class="tile-themed"> <i class="icon-edit"></i></li><li class="tile-themed"> <i class="icon-book"></i></li><li class="tile-themed"> <i class="icon-question-sign"></i></li><li class="tile-themed"> <i class="icon-legal"></i></li><li class="tile-themed"> <i class="icon-calendar-empty"></i></li><li class="tile-themed"> <i class="icon-ellipsis-horizontal"></i></li><li class="tile-themed"> <i class="icon-pencil"></i></li><li class="tile-themed"> <i class="icon-suitcase"></i></li><li class="tile-themed"> <i class="icon-warning-sign"></i></li><li class="tile-themed"> <i class="icon-jpy"></i></li><li class="tile-themed"> <i class="icon-list-alt"></i></li><li class="tile-themed"> <i class="icon-html5"></i></li><li class="tile-themed"> <i class="icon-gittip"></i></li><li class="tile-themed"> <i class="icon-search"></i></li><li class="tile-themed"> <i class="icon-wrench"></i></li><li class="tile-themed"> <i class="icon-lemon"></i></li><li class="tile-themed"> <i class="icon-indent-right"></i></li><li class="tile-themed"> <i class="icon-paste"></i></li><li class="tile-themed"> <i class="icon-archive"></i></li><li class="tile-themed"> <i class="icon-sun"></i></li><li class="tile-themed"> <i class="icon-bitbucket"></i></li></ul></div>
														<div class="icon-panel tab-pane fade" id="ico_all"><ul class="icon_list"><li class="tile-themed"> <i class="icon-compass"></i></li><li class="tile-themed"> <i class="icon-collapse"></i></li><li class="tile-themed"> <i class="icon-collapse-top"></i></li><li class="tile-themed"> <i class="icon-expand"></i></li><li class="tile-themed"> <i class="icon-file"></i></li><li class="tile-themed"> <i class="icon-file-text"></i></li><li class="tile-themed"> <i class="icon-thumbs-up"></i></li><li class="tile-themed"> <i class="icon-thumbs-down"></i></li><li class="tile-themed"> <i class="icon-xing"></i></li><li class="tile-themed"> <i class="icon-xing-sign"></i></li><li class="tile-themed"> <i class="icon-youtube-play"></i></li><li class="tile-themed"> <i class="icon-dropbox"></i></li><li class="tile-themed"> <i class="icon-stackexchange"></i></li><li class="tile-themed"> <i class="icon-instagram"></i></li><li class="tile-themed"> <i class="icon-flickr"></i></li><li class="tile-themed"> <i class="icon-adn"></i></li><li class="tile-themed"> <i class="icon-bitbucket-sign"></i></li><li class="tile-themed"> <i class="icon-tumblr"></i></li><li class="tile-themed"> <i class="icon-tumblr-sign"></i></li><li class="tile-themed"> <i class="icon-long-arrow-down"></i></li><li class="tile-themed"> <i class="icon-long-arrow-up"></i></li><li class="tile-themed"> <i class="icon-long-arrow-left"></i></li><li class="tile-themed"> <i class="icon-long-arrow-right"></i></li><li class="tile-themed"> <i class="icon-apple"></i></li><li class="tile-themed"> <i class="icon-android"></i></li><li class="tile-themed"> <i class="icon-skype"></i></li><li class="tile-themed"> <i class="icon-foursquare"></i></li><li class="tile-themed"> <i class="icon-trello"></i></li><li class="tile-themed"> <i class="icon-female"></i></li><li class="tile-themed"> <i class="icon-gittip"></i></li><li class="tile-themed"> <i class="icon-sun"></i></li><li class="tile-themed"> <i class="icon-moon"></i></li><li class="tile-themed"> <i class="icon-archive"></i></li><li class="tile-themed"> <i class="icon-vk"></i></li><li class="tile-themed"> <i class="icon-weibo"></i></li><li class="tile-themed"> <i class="icon-renren"></i></li><li class="tile-themed"> <i class="icon-adjust"></i></li><li class="tile-themed"> <i class="icon-anchor"></i></li><li class="tile-themed"> <i class="icon-archive"></i></li><li class="tile-themed"> <i class="icon-asterisk"></i></li><li class="tile-themed"> <i class="icon-ban-circle"></i></li><li class="tile-themed"> <i class="icon-bar-chart"></i></li><li class="tile-themed"> <i class="icon-barcode"></i></li><li class="tile-themed"> <i class="icon-beaker"></i></li><li class="tile-themed"> <i class="icon-beer"></i></li><li class="tile-themed"> <i class="icon-bell"></i></li><li class="tile-themed"> <i class="icon-bell-alt"></i></li><li class="tile-themed"> <i class="icon-bolt"></i></li><li class="tile-themed"> <i class="icon-book"></i></li><li class="tile-themed"> <i class="icon-bookmark"></i></li><li class="tile-themed"> <i class="icon-bookmark-empty"></i></li><li class="tile-themed"> <i class="icon-briefcase"></i></li><li class="tile-themed"> <i class="icon-bug"></i></li><li class="tile-themed"> <i class="icon-building"></i></li><li class="tile-themed"> <i class="icon-bullhorn"></i></li><li class="tile-themed"> <i class="icon-bullseye"></i></li><li class="tile-themed"> <i class="icon-calendar"></i></li><li class="tile-themed"> <i class="icon-calendar-empty"></i></li><li class="tile-themed"> <i class="icon-camera"></i></li><li class="tile-themed"> <i class="icon-camera-retro"></i></li><li class="tile-themed"> <i class="icon-certificate"></i></li><li class="tile-themed"> <i class="icon-check"></i></li><li class="tile-themed"> <i class="icon-check-empty"></i></li><li class="tile-themed"> <i class="icon-check-minus"></i></li><li class="tile-themed"> <i class="icon-check-sign"></i></li><li class="tile-themed"> <i class="icon-circle"></i></li><li class="tile-themed"> <i class="icon-circle-blank"></i></li><li class="tile-themed"> <i class="icon-cloud"></i></li><li class="tile-themed"> <i class="icon-cloud-download"></i></li><li class="tile-themed"> <i class="icon-cloud-upload"></i></li><li class="tile-themed"> <i class="icon-code"></i></li><li class="tile-themed"> <i class="icon-code-fork"></i></li><li class="tile-themed"> <i class="icon-coffee"></i></li><li class="tile-themed"> <i class="icon-cog"></i></li><li class="tile-themed"> <i class="icon-cogs"></i></li><li class="tile-themed"> <i class="icon-collapse"></i></li><li class="tile-themed"> <i class="icon-collapse-alt"></i></li><li class="tile-themed"> <i class="icon-collapse-top"></i></li><li class="tile-themed"> <i class="icon-comment"></i></li><li class="tile-themed"> <i class="icon-comment-alt"></i></li><li class="tile-themed"> <i class="icon-comments"></i></li><li class="tile-themed"> <i class="icon-comments-alt"></i></li><li class="tile-themed"> <i class="icon-compass"></i></li><li class="tile-themed"> <i class="icon-credit-card"></i></li><li class="tile-themed"> <i class="icon-crop"></i></li><li class="tile-themed"> <i class="icon-dashboard"></i></li><li class="tile-themed"> <i class="icon-desktop"></i></li><li class="tile-themed"> <i class="icon-download"></i></li><li class="tile-themed"> <i class="icon-download-alt"></i></li><li class="tile-themed"> <i class="icon-edit"></i></li><li class="tile-themed"> <i class="icon-edit-sign"></i></li><li class="tile-themed"> <i class="icon-ellipsis-horizontal"></i></li><li class="tile-themed"> <i class="icon-ellipsis-vertical"></i></li><li class="tile-themed"> <i class="icon-envelope"></i></li><li class="tile-themed"> <i class="icon-envelope-alt"></i></li><li class="tile-themed"> <i class="icon-eraser"></i></li><li class="tile-themed"> <i class="icon-exchange"></i></li><li class="tile-themed"> <i class="icon-exclamation"></i></li><li class="tile-themed"> <i class="icon-exclamation-sign"></i></li><li class="tile-themed"> <i class="icon-expand"></i></li><li class="tile-themed"> <i class="icon-expand-alt"></i></li><li class="tile-themed"> <i class="icon-external-link"></i></li><li class="tile-themed"> <i class="icon-external-link-sign"></i></li><li class="tile-themed"> <i class="icon-eye-close"></i></li><li class="tile-themed"> <i class="icon-eye-open"></i></li><li class="tile-themed"> <i class="icon-facetime-video"></i></li><li class="tile-themed"> <i class="icon-female"></i></li><li class="tile-themed"> <i class="icon-fighter-jet"></i></li><li class="tile-themed"> <i class="icon-film"></i></li><li class="tile-themed"> <i class="icon-filter"></i></li><li class="tile-themed"> <i class="icon-fire"></i></li><li class="tile-themed"> <i class="icon-fire-extinguisher"></i></li><li class="tile-themed"> <i class="icon-flag"></i></li><li class="tile-themed"> <i class="icon-flag-alt"></i></li><li class="tile-themed"> <i class="icon-flag-checkered"></i></li><li class="tile-themed"> <i class="icon-folder-close"></i></li><li class="tile-themed"> <i class="icon-folder-close-alt"></i></li><li class="tile-themed"> <i class="icon-folder-open"></i></li><li class="tile-themed"> <i class="icon-folder-open-alt"></i></li><li class="tile-themed"> <i class="icon-food"></i></li><li class="tile-themed"> <i class="icon-frown"></i></li><li class="tile-themed"> <i class="icon-gamepad"></i></li><li class="tile-themed"> <i class="icon-gear"></i></li><li class="tile-themed"> <i class="icon-gears"></i></li><li class="tile-themed"> <i class="icon-gift"></i></li><li class="tile-themed"> <i class="icon-glass"></i></li><li class="tile-themed"> <i class="icon-globe"></i></li><li class="tile-themed"> <i class="icon-group"></i></li><li class="tile-themed"> <i class="icon-hdd"></i></li><li class="tile-themed"> <i class="icon-headphones"></i></li><li class="tile-themed"> <i class="icon-heart"></i></li><li class="tile-themed"> <i class="icon-heart-empty"></i></li><li class="tile-themed"> <i class="icon-home"></i></li><li class="tile-themed"> <i class="icon-inbox"></i></li><li class="tile-themed"> <i class="icon-info"></i></li><li class="tile-themed"> <i class="icon-info-sign"></i></li><li class="tile-themed"> <i class="icon-key"></i></li><li class="tile-themed"> <i class="icon-keyboard"></i></li><li class="tile-themed"> <i class="icon-laptop"></i></li><li class="tile-themed"> <i class="icon-leaf"></i></li><li class="tile-themed"> <i class="icon-legal"></i></li><li class="tile-themed"> <i class="icon-lemon"></i></li><li class="tile-themed"> <i class="icon-level-down"></i></li><li class="tile-themed"> <i class="icon-level-up"></i></li><li class="tile-themed"> <i class="icon-lightbulb"></i></li><li class="tile-themed"> <i class="icon-location-arrow"></i></li><li class="tile-themed"> <i class="icon-lock"></i></li><li class="tile-themed"> <i class="icon-magic"></i></li><li class="tile-themed"> <i class="icon-magnet"></i></li><li class="tile-themed"> <i class="icon-mail-forward"></i></li><li class="tile-themed"> <i class="icon-mail-reply"></i></li><li class="tile-themed"> <i class="icon-mail-reply-all"></i></li><li class="tile-themed"> <i class="icon-male"></i></li><li class="tile-themed"> <i class="icon-map-marker"></i></li><li class="tile-themed"> <i class="icon-meh"></i></li><li class="tile-themed"> <i class="icon-microphone"></i></li><li class="tile-themed"> <i class="icon-microphone-off"></i></li><li class="tile-themed"> <i class="icon-minus"></i></li><li class="tile-themed"> <i class="icon-minus-sign"></i></li><li class="tile-themed"> <i class="icon-minus-sign-alt"></i></li><li class="tile-themed"> <i class="icon-mobile-phone"></i></li><li class="tile-themed"> <i class="icon-money"></i></li><li class="tile-themed"> <i class="icon-moon"></i></li><li class="tile-themed"> <i class="icon-move"></i></li><li class="tile-themed"> <i class="icon-music"></i></li><li class="tile-themed"> <i class="icon-off"></i></li><li class="tile-themed"> <i class="icon-ok"></i></li><li class="tile-themed"> <i class="icon-ok-circle"></i></li><li class="tile-themed"> <i class="icon-ok-sign"></i></li><li class="tile-themed"> <i class="icon-pencil"></i></li><li class="tile-themed"> <i class="icon-phone"></i></li><li class="tile-themed"> <i class="icon-phone-sign"></i></li><li class="tile-themed"> <i class="icon-picture"></i></li><li class="tile-themed"> <i class="icon-plane"></i></li><li class="tile-themed"> <i class="icon-plus"></i></li><li class="tile-themed"> <i class="icon-plus-sign"></i></li><li class="tile-themed"> <i class="icon-plus-sign-alt"></i></li><li class="tile-themed"> <i class="icon-power-off"></i></li><li class="tile-themed"> <i class="icon-print"></i></li><li class="tile-themed"> <i class="icon-pushpin"></i></li><li class="tile-themed"> <i class="icon-puzzle-piece"></i></li><li class="tile-themed"> <i class="icon-qrcode"></i></li><li class="tile-themed"> <i class="icon-question"></i></li><li class="tile-themed"> <i class="icon-question-sign"></i></li><li class="tile-themed"> <i class="icon-quote-left"></i></li><li class="tile-themed"> <i class="icon-quote-right"></i></li><li class="tile-themed"> <i class="icon-random"></i></li><li class="tile-themed"> <i class="icon-refresh"></i></li><li class="tile-themed"> <i class="icon-remove"></i></li><li class="tile-themed"> <i class="icon-remove-circle"></i></li><li class="tile-themed"> <i class="icon-remove-sign"></i></li><li class="tile-themed"> <i class="icon-reorder"></i></li><li class="tile-themed"> <i class="icon-reply"></i></li><li class="tile-themed"> <i class="icon-reply-all"></i></li><li class="tile-themed"> <i class="icon-resize-horizontal"></i></li><li class="tile-themed"> <i class="icon-resize-vertical"></i></li><li class="tile-themed"> <i class="icon-retweet"></i></li><li class="tile-themed"> <i class="icon-road"></i></li><li class="tile-themed"> <i class="icon-rocket"></i></li><li class="tile-themed"> <i class="icon-rss"></i></li><li class="tile-themed"> <i class="icon-rss-sign"></i></li><li class="tile-themed"> <i class="icon-screenshot"></i></li><li class="tile-themed"> <i class="icon-search"></i></li><li class="tile-themed"> <i class="icon-share"></i></li><li class="tile-themed"> <i class="icon-share-alt"></i></li><li class="tile-themed"> <i class="icon-share-sign"></i></li><li class="tile-themed"> <i class="icon-shield"></i></li><li class="tile-themed"> <i class="icon-shopping-cart"></i></li><li class="tile-themed"> <i class="icon-sign-blank"></i></li><li class="tile-themed"> <i class="icon-signal"></i></li><li class="tile-themed"> <i class="icon-signin"></i></li><li class="tile-themed"> <i class="icon-signout"></i></li><li class="tile-themed"> <i class="icon-sitemap"></i></li><li class="tile-themed"> <i class="icon-smile"></i></li><li class="tile-themed"> <i class="icon-sort"></i></li><li class="tile-themed"> <i class="icon-sort-by-alphabet"></i></li><li class="tile-themed"> <i class="icon-sort-by-alphabet-alt"></i></li><li class="tile-themed"> <i class="icon-sort-by-attributes"></i></li><li class="tile-themed"> <i class="icon-sort-by-attributes-alt"></i></li><li class="tile-themed"> <i class="icon-sort-by-order"></i></li><li class="tile-themed"> <i class="icon-sort-by-order-alt"></i></li><li class="tile-themed"> <i class="icon-sort-down"></i></li><li class="tile-themed"> <i class="icon-sort-up"></i></li><li class="tile-themed"> <i class="icon-spinner"></i></li><li class="tile-themed"> <i class="icon-star"></i></li><li class="tile-themed"> <i class="icon-star-empty"></i></li><li class="tile-themed"> <i class="icon-star-half"></i></li><li class="tile-themed"> <i class="icon-star-half-empty"></i></li><li class="tile-themed"> <i class="icon-star-half-full"></i></li><li class="tile-themed"> <i class="icon-subscript"></i></li><li class="tile-themed"> <i class="icon-suitcase"></i></li><li class="tile-themed"> <i class="icon-sun"></i></li><li class="tile-themed"> <i class="icon-superscript"></i></li><li class="tile-themed"> <i class="icon-tablet"></i></li><li class="tile-themed"> <i class="icon-tag"></i></li><li class="tile-themed"> <i class="icon-tags"></i></li><li class="tile-themed"> <i class="icon-tasks"></i></li><li class="tile-themed"> <i class="icon-terminal"></i></li><li class="tile-themed"> <i class="icon-thumbs-down"></i></li><li class="tile-themed"> <i class="icon-thumbs-down-alt"></i></li><li class="tile-themed"> <i class="icon-thumbs-up"></i></li><li class="tile-themed"> <i class="icon-thumbs-up-alt"></i></li><li class="tile-themed"> <i class="icon-ticket"></i></li><li class="tile-themed"> <i class="icon-time"></i></li><li class="tile-themed"> <i class="icon-tint"></i></li><li class="tile-themed"> <i class="icon-trash"></i></li><li class="tile-themed"> <i class="icon-trophy"></i></li><li class="tile-themed"> <i class="icon-truck"></i></li><li class="tile-themed"> <i class="icon-umbrella"></i></li><li class="tile-themed"> <i class="icon-unchecked"></i></li><li class="tile-themed"> <i class="icon-unlock"></i></li><li class="tile-themed"> <i class="icon-unlock-alt"></i></li><li class="tile-themed"> <i class="icon-upload"></i></li><li class="tile-themed"> <i class="icon-upload-alt"></i></li><li class="tile-themed"> <i class="icon-user"></i></li><li class="tile-themed"> <i class="icon-volume-down"></i></li><li class="tile-themed"> <i class="icon-volume-off"></i></li><li class="tile-themed"> <i class="icon-volume-up"></i></li><li class="tile-themed"> <i class="icon-warning-sign"></i></li><li class="tile-themed"> <i class="icon-wrench"></i></li><li class="tile-themed"> <i class="icon-zoom-in"></i></li><li class="tile-themed"> <i class="icon-zoom-out"></i></li><li class="tile-themed"> <i class="icon-eur"></i></li><li class="tile-themed"> <i class="icon-gbp"></i></li><li class="tile-themed"> <i class="icon-krw"></i></li><li class="tile-themed"> <i class="icon-renminbi"></i></li><li class="tile-themed"> <i class="icon-rupee"></i></li><li class="tile-themed"> <i class="icon-usd"></i></li><li class="tile-themed"> <i class="icon-yen"></i></li><li class="tile-themed"> <i class="icon-align-center"></i></li><li class="tile-themed"> <i class="icon-align-justify"></i></li><li class="tile-themed"> <i class="icon-align-left"></i></li><li class="tile-themed"> <i class="icon-align-right"></i></li><li class="tile-themed"> <i class="icon-bold"></i></li><li class="tile-themed"> <i class="icon-columns"></i></li><li class="tile-themed"> <i class="icon-copy"></i></li><li class="tile-themed"> <i class="icon-cut"></i></li><li class="tile-themed"> <i class="icon-eraser"></i></li><li class="tile-themed"> <i class="icon-file"></i></li><li class="tile-themed"> <i class="icon-file-alt"></i></li><li class="tile-themed"> <i class="icon-file-text"></i></li><li class="tile-themed"> <i class="icon-file-text-alt"></i></li><li class="tile-themed"> <i class="icon-font"></i></li><li class="tile-themed"> <i class="icon-indent-left"></i></li><li class="tile-themed"> <i class="icon-indent-right"></i></li><li class="tile-themed"> <i class="icon-italic"></i></li><li class="tile-themed"> <i class="icon-link"></i></li><li class="tile-themed"> <i class="icon-list"></i></li><li class="tile-themed"> <i class="icon-list-alt"></i></li><li class="tile-themed"> <i class="icon-list-ol"></i></li><li class="tile-themed"> <i class="icon-list-ul"></i></li><li class="tile-themed"> <i class="icon-paper-clip"></i></li><li class="tile-themed"> <i class="icon-paste"></i></li><li class="tile-themed"> <i class="icon-rotate-left"></i></li><li class="tile-themed"> <i class="icon-rotate-right"></i></li><li class="tile-themed"> <i class="icon-save"></i></li><li class="tile-themed"> <i class="icon-strikethrough"></i></li><li class="tile-themed"> <i class="icon-table"></i></li><li class="tile-themed"> <i class="icon-text-height"></i></li><li class="tile-themed"> <i class="icon-text-width"></i></li><li class="tile-themed"> <i class="icon-th"></i></li><li class="tile-themed"> <i class="icon-th-large"></i></li><li class="tile-themed"> <i class="icon-th-list"></i></li><li class="tile-themed"> <i class="icon-underline"></i></li><li class="tile-themed"> <i class="icon-unlink"></i></li><li class="tile-themed"> <i class="icon-angle-down"></i></li><li class="tile-themed"> <i class="icon-angle-left"></i></li><li class="tile-themed"> <i class="icon-angle-right"></i></li><li class="tile-themed"> <i class="icon-angle-up"></i></li><li class="tile-themed"> <i class="icon-arrow-down"></i></li><li class="tile-themed"> <i class="icon-arrow-left"></i></li><li class="tile-themed"> <i class="icon-arrow-right"></i></li><li class="tile-themed"> <i class="icon-arrow-up"></i></li><li class="tile-themed"> <i class="icon-caret-down"></i></li><li class="tile-themed"> <i class="icon-caret-left"></i></li><li class="tile-themed"> <i class="icon-caret-right"></i></li><li class="tile-themed"> <i class="icon-caret-up"></i></li><li class="tile-themed"> <i class="icon-chevron-down"></i></li><li class="tile-themed"> <i class="icon-chevron-left"></i></li><li class="tile-themed"> <i class="icon-chevron-right"></i></li><li class="tile-themed"> <i class="icon-chevron-sign-down"></i></li><li class="tile-themed"> <i class="icon-chevron-sign-left"></i></li><li class="tile-themed"> <i class="icon-chevron-sign-right"></i></li><li class="tile-themed"> <i class="icon-chevron-sign-up"></i></li><li class="tile-themed"> <i class="icon-chevron-up"></i></li><li class="tile-themed"> <i class="icon-circle-arrow-down"></i></li><li class="tile-themed"> <i class="icon-circle-arrow-left"></i></li><li class="tile-themed"> <i class="icon-circle-arrow-right"></i></li><li class="tile-themed"> <i class="icon-circle-arrow-up"></i></li><li class="tile-themed"> <i class="icon-double-angle-down"></i></li><li class="tile-themed"> <i class="icon-double-angle-left"></i></li><li class="tile-themed"> <i class="icon-double-angle-right"></i></li><li class="tile-themed"> <i class="icon-double-angle-up"></i></li><li class="tile-themed"> <i class="icon-hand-down"></i></li><li class="tile-themed"> <i class="icon-hand-left"></i></li><li class="tile-themed"> <i class="icon-hand-right"></i></li><li class="tile-themed"> <i class="icon-hand-up"></i></li><li class="tile-themed"> <i class="icon-backward"></i></li><li class="tile-themed"> <i class="icon-eject"></i></li><li class="tile-themed"> <i class="icon-fast-backward"></i></li><li class="tile-themed"> <i class="icon-fast-forward"></i></li><li class="tile-themed"> <i class="icon-forward"></i></li><li class="tile-themed"> <i class="icon-fullscreen"></i></li><li class="tile-themed"> <i class="icon-pause"></i></li><li class="tile-themed"> <i class="icon-play"></i></li><li class="tile-themed"> <i class="icon-play-circle"></i></li><li class="tile-themed"> <i class="icon-play-sign"></i></li><li class="tile-themed"> <i class="icon-resize-full"></i></li><li class="tile-themed"> <i class="icon-resize-small"></i></li><li class="tile-themed"> <i class="icon-step-backward"></i></li><li class="tile-themed"> <i class="icon-step-forward"></i></li><li class="tile-themed"> <i class="icon-stop"></i></li><li class="tile-themed"> <i class="icon-youtube-play"></i></li><li class="tile-themed"> <i class="icon-bitbucket"></i></li><li class="tile-themed"> <i class="icon-bitcoin"></i></li><li class="tile-themed"> <i class="icon-css3"></i></li><li class="tile-themed"> <i class="icon-dribbble"></i></li><li class="tile-themed"> <i class="icon-facebook"></i></li><li class="tile-themed"> <i class="icon-facebook-sign"></i></li><li class="tile-themed"> <i class="icon-flickr"></i></li><li class="tile-themed"> <i class="icon-foursquare"></i></li><li class="tile-themed"> <i class="icon-github"></i></li><li class="tile-themed"> <i class="icon-github-alt"></i></li><li class="tile-themed"> <i class="icon-github-sign"></i></li><li class="tile-themed"> <i class="icon-gittip"></i></li><li class="tile-themed"> <i class="icon-google-plus"></i></li><li class="tile-themed"> <i class="icon-google-plus-sign"></i></li><li class="tile-themed"> <i class="icon-html5"></i></li><li class="tile-themed"> <i class="icon-instagram"></i></li><li class="tile-themed"> <i class="icon-linkedin"></i></li><li class="tile-themed"> <i class="icon-linkedin-sign"></i></li><li class="tile-themed"> <i class="icon-linux"></i></li><li class="tile-themed"> <i class="icon-maxcdn"></i></li><li class="tile-themed"> <i class="icon-pinterest"></i></li><li class="tile-themed"> <i class="icon-pinterest-sign"></i></li><li class="tile-themed"> <i class="icon-trello"></i></li><li class="tile-themed"> <i class="icon-twitter"></i></li><li class="tile-themed"> <i class="icon-twitter-sign"></i></li><li class="tile-themed"> <i class="icon-windows"></i></li><li class="tile-themed"> <i class="icon-youtube"></i></li><li class="tile-themed"> <i class="icon-youtube-sign"></i></li><li class="tile-themed"> <i class="icon-ambulance"></i></li><li class="tile-themed"> <i class="icon-h-sign"></i></li><li class="tile-themed"> <i class="icon-hospital"></i></li><li class="tile-themed"> <i class="icon-medkit"></i></li><li class="tile-themed"> <i class="icon-plus-sign-alt"></i></li><li class="tile-themed"> <i class="icon-stethoscope"></i></li><li class="tile-themed"> <i class="icon-user-md"></i></li></ul></div>
													</div>
												</div>
	                                        </div>
	                                    </div>
									</span>
							</div>
							
							<div class="appmsg_edit_item">
								 <label class="frm_label">图片</label>
								 <span>
								 	 <div class="i-cont tile-themed" style="width: 140px;" >
	                                            <img class="icon-smile" id="icon_img" data-ref="main_img" style="width: 96px;height: 96px;" />
	                                            <input type="hidden" id="icon" name="icon" value="icon-smile">
	                                            <a class="sel-img" href="javascript:void(0);">换一个</a>
	                                 </div>
								 </span>
							</div>
							
							<div class="appmsg_main_item">
								<div>
									<label  class="frm_label">显示/隐藏</label>
								</div>
								<div class="js_selectArea dropdown_menu">
						        	<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
						        	<label class="jsBtLabel" data-ref="main_show">是</label><i class="arrow"></i></a>
									<!-- block; -->
									<ul class="dropdown_data_list jsDropdownList" style="display: none;">
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="0" data-index="0" data-name="否">否</a>
									    </li>
									    <li class="dropdown_data_item">
									        <a href="javascript:;" class="jsDropdownItem" data-value="1" data-index="1" data-name="是">是</a>
									    </li>
									</ul>
								</div>
							</div>
							
							<div class="appmsg_event_item">
								<div><label>事件</label></div>
								<div class="appmsg_event_item_detail">
									<div class="wx_action_type appmsg_main_item">
										<div class="js_selectArea dropdown_menu">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel" data-ref="main_href">素材</label><i class="arrow"></i></a>
											<!-- block; -->
											<ul class="dropdown_data_list jsDropdownList" style="display: none;">
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="素材" data-value="素材">素材</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="网址" data-value="网址">网址</a>
												</li>
												<li class="dropdown_data_item">
													<a href="javascript:;" class="jsDropdownItem jsAction" data-name="应用" data-value="应用">应用</a>
												</li>
											</ul>
										</div>
									
										<div class="js_selectArea dropdown_menu appmsg_main_item ref_select" style="display:inline-block">
											<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
											<label class="jsBtLabel">请选择</label><i class="arrow"></i></a>
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
									
									<div class="wx_action_detail appmsg_main_item" style=" padding-top: 10px; "></div>
										<div style="display: none;">
											<%
												for(int i = 0 ; i<=10 ; i++){
													List<ActionLinkBean> beans = map.get(i);
											%>
											<div class="<%=LinkAction.getReflectDIV(i) %>" class="ref_action">
											<%if(beans != null){%>
												<div class="appmsg_edit_item">
													<label  class="frm_label">链接地址</label>
													<span>
														<input type="text" class="frm_input js_action_link" readonly="readonly"/>
													</span>
												</div>
												<table class="table table-bordered table-hover dataTable" style="table-layout:fixed;">
													<thead><tr><th>选择</th><th>活动标题</th><th>关键词</th><th style="width:80px;">创建时间</th></tr></thead>
													<tbody>
													<%for(ActionLinkBean actionBean : beans){%>
														<tr><td><div class="radio"><label><input type="radio" name="rd_selected" value="<%=actionBean.getUrl() %>">选中</label></div></td>
														<td><%=actionBean.getTitle() %></td><td><%=actionBean.getKeyword() %></td><td><%=actionBean.getCreatetime() %></td></tr>
													<%}%>
													</tbody>
												</table>
													<%}else{%>
														<label class="no_data"><%=LinkAction.getReflectName(i) %>没有添加对应的活动页面。</label>
													<%}%>
											</div>
											<%}%>
										</div>
								</div>
							</div>
						</div>
						<i class="arrow arrow_out" style="margin-top: 0px;"></i>
						<i class="arrow arrow_in"  style="margin-top: 0px;"></i>
					</div>
				</div>
				<!-- 保存和预览 -->
				<div class="tool_area">
					<div class="tool_bar">
						<span id="js_preview" class="btn btn_input btn_primary preview" style="background:#56a447;display:<%=isNew?"none":"inline-block" %>;"><button>预览</button></span>
						<script type="text/javascript">
							$("#js_preview").click(function () {
								if ($.browser.msie) {
									alert("不支持在IE浏览器下预览，建议使用谷歌浏览器或者360极速浏览器或者直接在微信上预览。");
									return;
								}
								var left = ($(window.parent.parent).width() - 450) / 2;
								var temp = $("#tempNum").val();
								var bg = $("#bgImg").attr("src");
								var bgani = $('#input_bgani').val();
							//	window.open("<%=path %>/previewWebSite.action", "我的微官网", "height=650,width=450,top=0,left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
								window.open("<%=path %>/preview_NewWebSite.action?tmpflag="+temp+"&bg="+bg+"&bgani="+bgani, "我的微官网", "height=650,width=450,top=0,left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
							});
						</script>
						
						<span id="js_submit"  class="btn btn_input btn_primary" style="background:#56a447;"><button>保存</button></span>
					</div>
				</div>
			</div>
		</div>
<form id="website">
	<input type="hidden" id='webSites_inputs' name='webSites'/>
</form>

<!-- dialog素材 -->
<div id="matercial">
	<div class="dialog_wrp media" style="width: 960px; margin-left: -480px; margin-top: -314.5px;display: none;">
		<div class="dialog">
			<div class="dialog_hd">
				<label class="frm_label">选择素材</label>
				<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>
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

			<!--<div class="dialog_ft">
				<span  class="btn btn_input btn_media_ok" style="background:#56a447;"><button style="color: white;">确定</button></span>
				<span  class="btn btn_input btn_media_cancel pop_closed" style="background:#56a447;"><button style="color: white;">取消</button></span>
			</div>
		-->
		</div>
	</div>
</div>
<!-- 遮蔽罩 -->
<div class="mask" style="display: none;"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>
</body>
<script type="text/html" id="div_net">
	<div class="appmsg_edit_item">
		<label  class="frm_label">链接地址</label>
		<span><input type="text" class="frm_input" placeholder="如 http://www.vxinfeng.com" id="net_address"></span>
	</div>
</script>
<script id="appmsg_thumb_wrp_item" type="text/x-jquery-tmpl">
<div class="appmsg_thumb_wrp"><img src="${src}" style="width:100%;" /></div>
</script>

<script id="sub_item_thumb" type="text/x-jquery-tmpl">
<tr>
<td><img class="thumb_img" src="${src}" style="max-height:50px;max-width:50px;"></td>
<td><span class="thumb_href">网址</span><span class="thumb_link"></span></td>
<td><span class="label-satgreen thumb_show">是</span></td>
<td>
	<div class="btn-group">
		<button type="button" class="btn btn-default btn_ads_edit" style="padding: 0 12px" title="编辑" data-ref="js_appmsg_edit_ads_detail"><span class="icon-edit"></span></button>
		<button type="button" class="btn btn-default btn_ads_delete" style="padding: 0 12px" title="删除"><span class="icon-remove"></span></button>
    </div>
</td>
</tr>
</script>

<script id="sub_item_main" type="text/x-jquery-tmpl">
<tr>
<td>
	<span class="main_title">标题</span>
</td>
<td>
	<div class="i-cont tile-themed" style="width:auto;">
	    <i class="icon-smile main_icon"></i>
	</div>
</td>
<td>
	<img style="width:42px;height:42px;" src="weixin/gw/images/temp_img/cover1.jpg" class="main_icon"/>
</td>
<td><span class="main_href">网址</span><span class="main_link"></span></td>
<td>
    <span class="main_show">是</span>
</td>
<td>
	<div class="btn-group">
		<button type="button" class="btn btn-default btn_nav_edit" style="padding: 0 12px" title="编辑" data-ref="js_appmsg_edit_main_detail"><span class="icon-edit"></span></button>
		<button type="button" class="btn btn-default btn_nav_delete" style="padding: 0 12px" title="删除" ><span class="icon-remove"></span></button>
    </div>
</td>
</tr>
</script>

<script id="sub_item_nav" type="text/x-jquery-tmpl">
<tr>
<td>
	<span class="main_title">标题</span>
</td>
<td>
	<div class="i-cont tile-themed" style="width:auto;">
	    <i class="icon-smile main_icon"></i>
	</div>
</td>
<td><span class="main_href">网址</span><span class="main_link"></span></td>
<td>
    <span class="main_show">是</span>
</td>
<td>
	<div class="btn-group">
		<button type="button" class="btn btn-default btn_nav_edit" style="padding: 0 12px" title="编辑" data-ref="js_appmsg_edit_main_detail"><span class="icon-edit"></span></button>
		<button type="button" class="btn btn-default btn_nav_delete" style="padding: 0 12px" title="删除"><span class="icon-remove"></span></button>
    </div>
</td>
</tr>
</script>

<script type="text/javascript">
function refSelectOption(bshow,refTarget){
	var ref_select;
	if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
		ref_select = $('#js_appmsg_edit_ads_detail').find('.ref_select');
	}
	else {
		ref_select = $('#js_appmsg_edit_main_detail').find('.ref_select');
	}
	
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
	if(actype == '网址'){
		$('.wx_action_detail').html('');
		if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
			$('#js_appmsg_edit_ads_detail').find('.wx_action_detail').html($("#div_net").html());
		}
		else {
			$('#js_appmsg_edit_main_detail').find('.wx_action_detail').html($("#div_net").html());
		}
		bindNetAddressEvents();
		refSelectOption(false);
	}
	else if(actype == '素材'){
		$('.wx_action_detail').html('');
		refSelectOption(false);
		hideMaterial(false);
	}
	else if(actype == '应用'){
		$('.wx_action_detail').html('');
		refSelectOption(true);
	}
	else{
		if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
			var js_appmsg_edit_ads_detail = $('#js_appmsg_edit_ads_detail');
			$(js_appmsg_edit_ads_detail).find('.wx_action_detail').html($(js_appmsg_edit_ads_detail).find('.'+$(target).attr('data-ref')).html());
		}
		else {
			var js_appmsg_edit_main_detail = $('#js_appmsg_edit_main_detail');
			$(js_appmsg_edit_main_detail).find('.wx_action_detail').html($(js_appmsg_edit_main_detail).find('.'+$(target).attr('data-ref')).html());
		}
		bindRadioEvents();
	}
}

function bindRadioEvents(){
	$('input[name="rd_selected"]').click(function(){
		if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
			$('#js_appmsg_edit_ads_detail').find('.js_action_link').val($(this).val());
			$('#appmsg_thumb_wrp_items').children('.editing').children('td').children('.thumb_link').html($(this).val());
		}else{
			$('#js_appmsg_edit_main_detail').find('.js_action_link').val($(this).val());
			$('#appmsg_main_wrp_items').children('.editing').children('td').children('.main_link').html($(this).val());
			$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.main_link').html($(this).val());
		}
	});
}

function bindNetAddressEvents(){
	$('#net_address').bind('input propertychange',function(){
		if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
			$('#appmsg_thumb_wrp_items').children('.editing').children('td').children('.thumb_link').html($(this).val());
		}
		else{
			$('#appmsg_main_wrp_items').children('.editing').children('td').children('.main_link').html($(this).val());
			$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.main_link').html($(this).val());
		}
	});
}

function resetEditItemValues(target){
	var reObj;
	var href_val;
	var thumb_link;
	if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
		reObj = $('#js_appmsg_edit_ads_detail');
		$(reObj).find('[data-ref=thumb_show]').html($(target).find('.thumb_show').html());
		href_val = $(target).find('.thumb_href').html();
		$(reObj).find('[data-ref=thumb_href]').html(href_val);
		thumb_link = $(target).find('.thumb_link').html();
	}
	else{
		reObj = $('#js_appmsg_edit_main_detail');
		$(reObj).find('[data-ref=main_show]').html($(target).find('.main_show').html());
		href_val = $(target).find('.main_href').html();
		$(reObj).find('[data-ref=main_href]').html(href_val);
		thumb_link = $(target).find('.main_link').html();
		$(reObj).find('[data-ref=main_title]').val($(target).find('.main_title').html());
		$(reObj).find('[data-ref=main_icon]').attr('class',$(target).find('.main_icon').attr('class'));
		$(reObj).find('[data-ref=main_img]').attr('src',$(target).find('.main_img').attr('src'));
	}
	
	if(href_val == '素材'){
		$(reObj).find('.wx_action_detail').html('<label class="frm_label">链接地址</label><span><input type="text" class="frm_input js_action_link" readonly="readonly" value="'+thumb_link+'"></span>');
		refSelectOption(false);
	}
	else if(href_val == '网址'){
		$(reObj).find('.wx_action_detail').html('<label class="frm_label">链接地址</label><span><input type="text" class="frm_input" placeholder="如 http://www.vxinfeng.com" id="net_address" value="'+thumb_link+'"></span>');
		bindNetAddressEvents();
		refSelectOption(false);
	}
	else if(href_val == '应用'){
		$(reObj).find('.wx_action_detail').html('<label class="frm_label">链接地址</label><span><input type="text" class="frm_input js_action_link" readonly="readonly" value="'+thumb_link+'"></span>');
		refSelectOption(true);
	}
}

function bindAdsEvents(){
	$('.btn_ads_edit').unbind('click');
	$('.btn_ads_edit').bind('click',function(){
		<!--取消编辑状态-->
		$('.btn_ads_edit').parent().parent().parent().removeClass('editing');
		<!--增加编辑状态-->
		var editingObj = $(this).parent().parent().parent();
		$(editingObj).addClass('editing');
		$('#'+$(this).attr('data-ref')).css('display','table-cell');
		//bindDropDownMenu();
		resetEditItemValues(editingObj);
	});

	$('.btn_ads_delete').unbind('click');
	$('.btn_ads_delete').bind('click',function(){
		var editingObj = $(this).parent().parent().parent();
		if($(editingObj).hasClass('editing')){
			$('#js_appmsg_edit_ads_detail').css('display','none');
		}
		$(editingObj).remove();
	});
}


function bindNavEvents(){
	$('.btn_nav_edit').unbind('click');
	$('.btn_nav_edit').bind('click',function(){
		<!--取消编辑状态-->
		$('.btn_nav_edit').parent().parent().parent().removeClass('editing');
		<!--增加编辑状态-->
		var editingObj = $(this).parent().parent().parent();
		$(editingObj).addClass('editing');
		$('#'+$(this).attr('data-ref')).css('display','table-cell');
		resetEditItemValues(editingObj);
	});
	
	$('.btn_nav_delete').unbind('click');
	$('.btn_nav_delete').bind('click',function(){
		var editingObj = $(this).parent().parent().parent();
		if($(editingObj).hasClass('editing')){
			$('#js_appmsg_edit_main_detail').css('display','none');
			$('#js_appmsg_edit_nav_detail').css('display','none');
		}
		$(editingObj).remove();
	});
}

	<!--下拉-->
	function bindDropDownMenu(){
		$('.dropdown_menu').unbind('click');
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

		$('.jsDropdownItem').unbind('click');
		$('.jsDropdownItem').bind('click',function(){
			$(this).parents('.dropdown_menu').children('.jsDropdownBt').children('.jsBtLabel').html($(this).attr('data-name'));
			rebindItemValue($(this).parents('.js_edit_area').attr('id'),
							$(this).parents('.dropdown_menu').children('.jsDropdownBt').children('.jsBtLabel').attr('data-ref'),$(this).attr('data-name'));

			if($(this).hasClass('jsAction')){
				reflectJsDropdownItemAction(this,$(this).attr('data-name'));
			}
			else if($(this).hasClass('jsBgImg')){
				$('#bgImg').attr('src',$(this).attr('data-value'));
				$('#input_bgimg').val($(this).attr('data-value'));
			}
			else if($(this).hasClass('jsAni')){
				$('#input_bgani').val($(this).attr('data-value'));
			}
		});
	}
	
	$('#bgImgDel').bind('click',function(){
		$('#bgImg').attr('src','');
		$('#input_bgimg').val('');
	});
	bindDropDownMenu();
	function rebindItemValue(obj,ref,val){
		if(obj == 'js_appmsg_edit_ads_detail'){
			$('#appmsg_thumb_wrp_items').children('.editing').children('td').children('.'+ref).html(val);
		}
		else if(obj == 'js_appmsg_edit_main_detail'){
			$('#appmsg_main_wrp_items').children('.editing').children('td').children('.'+ref).html(val);
			$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.'+ref).html(val);
		}
	}

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
	
	function loadTemplates(){
		$('#template').find('.dialog_media_container').html("<div class='circle'></div><div class='circle1'></div>");
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			url : '<%=path %>/template_WebSite.action', 
			error : function() {
				alert('error');
			},
			success : function(data) { 
				$('#template').find('.dialog_media_container').html(data);
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
	
	function hideTemplate(b){
		if(b == true){
			$('.template').css('display','none');
			$('.mask').css('display','none');
		} else{
			$('.template').css('display','');
			$('.mask').css('display','');
			//loadTemplates();
		}
	}

	$('.pop_closed').bind('click',function(){
		hideMaterial(true);
		hideTemplate(true);
	});

	$('.media').children('.dialog').children('.dialog_ft').children('.btn.btn_input.btn_media_ok').bind('click',function(){
		var media_id = $("div[class*='selected']").parent().attr('data-id');
		$('.appmsg_mask').remove();
		$('.icon_appmsg_selected').remove();
		if($('#js_appmsg_edit_ads').css('display') == 'table-cell'){
			$('#js_appmsg_edit_ads_detail').find('.wx_action_detail').html(
						'<label class="frm_label">链接地址</label><span><input type="text" class="frm_input js_action_link" readonly="readonly" value="http://www.vxinfeng.com/prewArticleById.action?maid='+media_id+'"></span>');
			$('#js_appmsg_edit_ads_detail').find('.wx_action_detail').append($("div[class*='selected']").parent());
			$('#appmsg_thumb_wrp_items').children('.editing').children('td').children('.thumb_link').html("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
		}
		else {
			$('#js_appmsg_edit_main_detail').find('.wx_action_detail').html(
						'<label class="frm_label">链接地址</label><span><input type="text" class="frm_input js_action_link" readonly="readonly" value="http://www.vxinfeng.com/prewArticleById.action?maid='+media_id+'"></span>');
			$('#js_appmsg_edit_main_detail').find('.wx_action_detail').append($("div[class*='selected']").parent());
			$('#appmsg_main_wrp_items').children('.editing').children('td').children('.main_link').html("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
			$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.main_link').html("http://www.vxinfeng.com/prewArticleById.action?maid="+media_id);
		}
		hideMaterial(true);
	});
	
	$('#main_title').bind('input propertychange',function(){
		$('#appmsg_main_wrp_items').children('.editing').children('td').children('.'+$(this).attr('data-ref')).html($(this).val());
		$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.'+$(this).attr('data-ref')).html($(this).val());
	});
	
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
				}
			});
		
		window.editor = K.create('.js_html',editor);
		
		K('#bg_upload').click(function() {
			editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						$('#bgImg').attr('src',url);
						$('#input_bgimg').val(url);
						editor.hideDialog();
					}
				});
			});
		});
		
		K('#tmp_select').click(function() {
			hideTemplate(false);
			return;
			//var left = ($(window.parent.parent).width() - 800) /2;
			//var url = "<%=path %>/template_WebSite.action";
			//window.open(url, "微官网模板编辑", "width=820,height=750,top=88,left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
		});
		
		//上传官网主要部分图片
		K('.sel-img').click(function() {
			editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						$("#icon_img").attr("src",url);
						$('#appmsg_main_wrp_items').children('.editing').find('.main_img').attr('src',url);
						editor.hideDialog();
					}
				});
			});
		});
		
		K('#js_add_thumb').click(function() {
			if($('#appmsg_thumb_wrp_items').children('tr').length >= 6){
				$.scojs_message("最多可以上传6张轮播图", $.scojs_message.TYPE_OK);
			}
			else{
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						var thumbitem = {src:url};
						$('#sub_item_thumb').tmpl(thumbitem).appendTo('#appmsg_thumb_wrp_items'); 
						bindAdsEvents();
						editor.hideDialog();
					}
				});
			});
		}
	});
});

$('#js_add_main').bind('click',function(){
	if($('#appmsg_main_wrp_items').children('tr').length >= 10){
		$.scojs_message("最多可添加10个栏目", $.scojs_message.TYPE_OK);
	}
	else{
		var mainitem = {};
		$('#sub_item_main').tmpl(mainitem).appendTo('#appmsg_main_wrp_items');
		bindNavEvents();
	}
});

$('#js_add_nav').bind('click',function(){
	if($('#appmsg_nav_wrp_items').children('tr').length >= 4){
		$.scojs_message("最多可添加4个导航", $.scojs_message.TYPE_OK);
	}
	else{
		var navitem = {};
		$('#sub_item_nav').tmpl(navitem).appendTo('#appmsg_nav_wrp_items');
		bindNavEvents();
	}
});


$('.js_edit').bind('click',function(){
	$('.js_edit_area').css('display','none');
	$('#'+$(this).attr('data-ref')).css('display','table-cell');
	
	if($('.jsDropdownBt').parent().hasClass('open')){
		$('.jsDropdownBt').parent().removeClass('open');
		$('.jsDropdownList').css('display','none');
	}
});

$('.js_phone').bind('input propertychange',function(){
	$('#js_phone_href').html("<i class='icon icon-phone'></i>"+$(this).val());
	$('#js_phone_href').attr('href','tel:'+$(this).val());
});

$('.sel-icon').bind('click',function(){
	$('.icons-cont').css('display','block');
});

$('.icon-nav').bind('click',function(){
	$('.icon-nav').removeClass('active');
	$(this).addClass('active');
	
	$('.icon-panel').removeClass('active');
	$('.icon-panel').removeClass('in');
	
	$($(this).attr('data-ref')).addClass('active in');
});

$('.icon_list').children('.tile-themed').bind('click',function(){
	$('#icon_i').attr('class',$(this).children('i').attr('class'));
	$('.icons-cont').css('display','none');
	$('#appmsg_main_wrp_items').children('.editing').children('td').children('.i-cont').children('.'+$('#icon_i').attr('data-ref')).attr('class',$(this).children('i').attr('class')+" main_icon");
	$('#appmsg_nav_wrp_items').children('.editing').children('td').children('.i-cont').children('.'+$('#icon_i').attr('data-ref')).attr('class',$(this).children('i').attr('class')+" main_icon");
});

$('.icon-nav-close').bind('click',function(){
	$('.icons-cont').css('display','none');
});


bindAdsEvents();

bindNavEvents();

$('#js_submit').bind('click',function(){
	<!--电话-->
	<!--增加关键词,title,img,desc 增加模板 tempnum-->
	var pushDatas = {refkid : $('#refkid').val(), bgimg:$('#input_bgimg').val(),bgani:$('#input_bgani').val(),keyword:$('#wxkeyword').val(),
						title:$('#wxtitle').val(),img:$('#wximg').val(),descs:$('#wxdescs').val(),phoneNumber:$('#phone_value').val(),
						phoneVisiable:$('#phone_is_show').html(),navVisiable:$('#nav_show').html(),thumbVisiable:'是', tempnum : $('#tempNum').val()};
	<!--轮播图-->
	var thumbArray = [];
	$('#appmsg_thumb_wrp_items').children('tr').each(function(){
		var thumb = {img:$(this).find('.thumb_img').attr('src'),event:$(this).find('.thumb_href').html(),
						show:$(this).find('.thumb_show').html(),link:$(this).find('.thumb_link').html()};
		thumbArray.push(thumb);
	});
	pushDatas.thumbs = thumbArray;
	<!--主页面-->
	var mainArray = [];
	$('#appmsg_main_wrp_items').children('tr').each(function(){
		var main = {title:$(this).find('.main_title').html(),icon:$(this).find('.main_icon').attr('class'),img:$(this).find('.main_img').attr('src'),event:$(this).find('.main_href').html(),
						show:$(this).find('.main_show').html(),link:$(this).find('.main_link').html()};
		mainArray.push(main);
	});
	pushDatas.mains = mainArray;
	<!--导航-->
	var navArray = [];
	$('#appmsg_nav_wrp_items').children('tr').each(function(){
		var nav = {title:$(this).find('.main_title').html(),icon:$(this).find('.main_icon').attr('class'),event:$(this).find('.main_href').html(),
					show:$(this).find('.thumb_show').html(),link:$(this).find('.main_link').html()};
		navArray.push(nav);
	});
	
	pushDatas.navs = navArray;
	$('#webSites_inputs').val(JSON.stringify(pushDatas));

	var params = $("form[id=website]").serialize();
	$.ajax({
		async : true,
		cache : false,
		type : 'POST',
		data : params,
		url : '<%=path %>/editWebsite.action',
		error : function() {
			$.scojs_message('访问服务器失败,请重试.', $.scojs_message.TYPE_ERROR);
		},
		success : function(data) {
			reqStatus = eval('(' + data+ ')');
			if(reqStatus["status"] == 'ok'){
				$.scojs_message(reqStatus['text'], $.scojs_message.TYPE_OK);
				$('#refkid').val(reqStatus['refkid']);
				$("#js_preview").css("display","inline-block");
			}
			else{
				$.scojs_message(reqStatus['text'], $.scojs_message.TYPE_ERROR);
			}
		}
	});
});


function sort_wrp_items(object_id){
	$("#"+object_id).sortable({ revert: true,opacity: 0.8,cursor: 'move',
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
}

sort_wrp_items('appmsg_thumb_wrp_items');
sort_wrp_items('appmsg_main_wrp_items');
sort_wrp_items('appmsg_nav_wrp_items');

$(document).ready(function(){
	//标题
	$('.appmsg_title > a').text($('.js_title').val());
	//图像
	$('.js_appmsg_thumb').attr('src','<%=(websiteViewModel.getImg() != null? websiteViewModel.getImg() : path+"/weixin/gw/img/gw.jpg") %>');
	$('.js_appmsg_thumb').css('display','block');
	$('#upload_preview_img').attr('src','<%=(websiteViewModel.getImg() != null? websiteViewModel.getImg() : path+"/weixin/gw/img/gw.jpg") %>');
	$('.frm_input_hidden').val('<%=(websiteViewModel.getImg() != null? websiteViewModel.getImg() : path+"/weixin/gw/img/gw.jpg") %>');
	//摘要
	$('.appmsg_desc').html($('.js_desc').val());
})

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
</script>
</html>