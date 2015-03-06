<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html >
	<head>
		<meta charset="utf-8">
		<title>微信公众平台</title>
		<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link
			href="https://res.wx.qq.com/mpres/htmledition/images/favicon19fb55.ico"
			rel="Shortcut Icon">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base1a003d.css" />
		<link rel="stylesheet"
			href="<%=path%>/css/qq/css/appmsg_edit19e425.css">
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_editor.css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/advanced_reply_common19e425.css"
			media="all">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/pagination.css"
			media="all">
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=path%>/weixin/member/js/jquery.colorpicker.js"></script> 
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>

		<style>
		.fontRed{
			color: red;
		}
		
		.textarea{
			background-color: #fff;
			border: 1px solid #ccc;
			-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
			-moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
			box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
			-webkit-transition: border linear .2s,box-shadow linear .2s;
			-moz-transition: border linear .2s,box-shadow linear .2s;
			-o-transition: border linear .2s,box-shadow linear .2s;
			transition: border linear .2s,box-shadow linear .2s;
		}	
		
		.warning{
			position: fixed;
			color:white;
			background-color:#eaa000;
			border:1px solid #b98710;
			text-align:center;
			width:100%;
			z-index:3;
			display: none;
			
		}	
		.card{
			background-size: cover;
			width: 267px;
			height: 159px;
			-webkit-border-radius: 8px;
			border-radius: 8px;
			-webkit-background-size: 267px 159px;
			background-size: 267px 159px;
			text-align: left;		
		}
		.card_bk{
			width: 130px;
			margin: 2px 1px 2px 1px;
		}
		.card_logo{
			max-height: 70px;
			margin: 8px 0 0 8px;
		}
		.card_h1{
			
			text-shadow: 0 1px rgba(255, 255, 255, .5);
			color: #926a44;
			font-size: 11px;
			line-height: 25px;
			text-align: right;
			margin-right: 5px;
			margin-top: -35px;
		}
		.card_em{
			width: 50px;
			display: block;
			line-height: 13px;
			font-size: 10px;
			font-weight: normal;
			font-style: normal;
		}
		.card_span{
			margin-left: 45px;
			display: inline-block;
			text-align: left;
			margin-top: 40px;
		}
		

	</style>
	</head>
<body class="page_appmsg_edit"  >
	<%
	MemberBean memberBean = (MemberBean)request.getAttribute("memberBean");
	List<LBSBean> lbsBeanList  = (List<LBSBean>)request.getAttribute("lbsBeanList");
	%>	
	<div class="alert warning" id="warning-alert" >
	</div>
	<form id="member">
	<input type="hidden" name="memberBean.id" value="<%=memberBean.getId() %>"/>
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>会员卡</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						基本设置
					</h3>
				</div>
			</div>	
			<div class="main_bd">
				<div class="media_preview_area">
					<div class="appmsg  editing">
						<div id="js_appmsg_preview" class="appmsg_content">
							<div id="appmsgItem1" data-fileid="" data-id="1"
								class="js_appmsg_item ">

								<h4 class="appmsg_title">
									<a onclick="return false;" href="javascript:void(0);"
										target="_blank">标题</a>
								</h4>
								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="appmsg_thumb_wrp">
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=path%>/weixin/member/image/menber_card.jpg">
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
								<label for="" class="frm_label">
									触发关键字
								</label>
								<span >
									<input type="text" class="frm_input" name="memberBean.keywords" value="<%=memberBean.getKeywords()%>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="memberBean.title" value="<%=memberBean.getTitle() %>">
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
									</div>
									&nbsp;
									<p class="js_cover upload_preview" style="display: block;">
										<img src="<%=memberBean.getImg()%>" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="memberBean.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">
									摘要
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="memberBean.desc_service" ><%=memberBean.getDesc_service() %></textarea>
							</div>

		

						</div>
					</div>
				</div>

			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						会员卡样式设置
					</h3>
				</div>
			</div>							
						<div class="main_bd">
						
						
						
			<table style="width:100%;">			
			<tr>
				<td  style="width: 40%;">
				
				
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									会员卡预览
								</label>
								<span >
									<div id="card_template_show"  class="card"  >
										<table  width="100%" height="100%"  >
											<tr height="70%">
												<td width="60%">
													<img src="<%=path%>/weixin/member/image/spacer.gif" class="card_logo sel_type">
												</td>
												<td width="40%">
												<h1 id="card_name_yulan" class="card_h1 sel_type" style="color: #a6a08b; text-shadow: 0 1px #e2ded2;"></h1>
												</td>
											</tr>
											<tr>
												<td>
												</td>
												<td>
												<strong class="verify">
												<span id="card_number_yulan" class="card_span" style="color: #847d64; text-shadow: 0 1px #ebe9e0;">
												<em class="card_em">会员卡号</em>10000</span> </strong>
												</td>
											</tr>
										</table>
										<!-- 
										<span style="height: 80px;"><img src="<%=path%>/weixin/member/image/spacer.gif" class="card_logo"></span>
										<span><h1 id="card_name_yulan" class="card_h1" style="color: #a6a08b; text-shadow: 0 1px #e2ded2;">
										</h1>
										<strong class="verify">
										<span id="card_number_yulan" class="card_span" style="color: #847d64; text-shadow: 0 1px #ebe9e0;">
										<em class="card_em">会员卡号</em>10000</span> </strong>
										</span>
										 -->
									</div>
								</span>
							</div>	
								<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									新会员欢迎词
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_welcome"  style="width: 80%; height: 60px;" ><%=memberBean.getCard_welcome()%></textarea>
								<span class="help-block">在用户未领取卡片时显示。</span>
							</div>							
											
				</td>
				<td style="width: 60%">
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									模板类型
								</label>
								<span>
									<select id="sel_type" onchange="changeTypeOn()" name="memberBean.card_type">
									<%
									if(memberBean.getCard_type()!=null&&memberBean.getCard_type().equals("1")){
										%>
										<option value="0" >微信封提供</option>
										<option value="1" selected="selected">自定义模板</option>
										<%
									}else{
										%>
										<option value="0" selected="selected">微信封提供</option>
										<option value="1" >自定义模板</option>
										<%										
									}
									%>
							
									</select>
								</span>
							</div>	
							
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									会员卡名称
								</label>
								<span  >
									<input id="card_name" onkeyup="cardNameOnChange()"  style="width: 30%;" type=text class="frm_input " name="memberBean.card_name" value="<%=memberBean.getCard_name() %>"  ><span style="color: red;">*</span>
									<span class="help-block">例如：微信封会员卡。最多8个字。</span>
								</span>
							</div>	
							<div class="appmsg_edit_item sel_type">
								<label for="" class="frm_label">
									会员卡LOGO
								</label>
								<span >
										<div class="meta_content">
												<img id="thumb_img"
													src="<%=path %>/img/20131129145018_91311.gif"
													style="max-width: 360px;max-height: 70px;">
												<span> <input type="hidden" id="wx_upload_file"
														name="memberBean.card_logo" value="<%=memberBean.getCard_logo() %>"> <input
														type="button" id="wx_upload_file_btn" value="选择图片"
														class="btn_black" />
												</span>
												<span style="color: red;">*</span>
										</div>
								</span>
								<span class="help-block">上传企业LOGO。建议尺寸：130*60,或者60*60的背景透明PNG格式图片。</span>
							</div>
							<div class="appmsg_edit_item sel_type_define" style="display: none;">
								<label for="" class="frm_label">
									自定义模板
								</label>
								<span >
										<div class="meta_content">
												<img id="thumb_img_type"
													src="<%=memberBean.getCard_type_img()%>"
													style="max-width: 360px;max-height: 70px;">
												<span> <input type="hidden" id="wx_upload_file_type"
														name="memberBean.card_type_img" value="<%=memberBean.getCard_type_img()%>"> <input
														type="button" id="wx_upload_file_btn_type" value="选择图片"
														class="btn_black" />
												</span>
												<span style="color: red;">*</span>
										</div>
								</span>
								<span class="help-block">上传自定义模板。建议尺寸：510*300,或者等比例的背景透明PNG格式图片(圆角矩形)。</span>
							</div>								
							<div class="appmsg_edit_item sel_type">
								<label for="" class="frm_label">
									会员卡模板
								</label>
								<span>
									<select id="sel_pitch" onchange="changePitchOn()">
									<%
									for(int i=1;i<15;i++){
										if(i==Integer.parseInt(memberBean.getCard_template())){
											%>
											<option value="<%=i%>" selected="selected">背景模板<%=i%></option>
											<%											
										}else{
											%>
											<option value="<%=i%>" >背景模板<%=i%></option>
											<%											
										}
									}
									%>									
									</select>
									<input type="hidden" id="card_template_hidden" name="memberBean.card_template" value="<%=memberBean.getCard_template() %>"/>
									<span class="help-block">选择和上传的企业LOGO颜色相匹配的会员卡模板。</span>
								</span>
							</div>								
							<div class="appmsg_edit_item sel_type">
								<label for="" class="frm_label">
									卡名颜色
								</label>
								<span  >
									<input style="width: 30%;"  type="text" id="cp1" name="memberBean.card_color_name" readonly="readonly" value="<%=memberBean.getCard_color_name() %>"/><span style="color: red;">*</span>
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									卡号颜色
								</label>
								<span  >
									<input style="width: 30%;"  type="text" id="cp2" name="memberBean.card_color_number"  readonly="readonly" value="<%=memberBean.getCard_color_number() %>"/><span style="color: red;">*</span>
								</span>
							</div>					
				</td>
			</tr>
		</table>						
						
				</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						会员卡数值设置
					</h3>
				</div>
			</div>	
			<div class="main_bd">
						<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									开卡赠送余额
								</label>
								<span  >
									<input  style="width: 15%;" type="text" class="frm_input " name="memberBean.card_new_yue" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_new_yue() %>"><span style="color: red;">*</span>
									<span class="help-block">新用户领取会员卡后赠送余额，输入0则不赠送。</span>
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									开卡赠送积分
								</label>
								<span  >
									<input  style="width: 15%;" type="text" class="frm_input " name="memberBean.card_new_jifen" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_new_jifen() %>"><span style="color: red;">*</span>
									<span class="help-block">新用户领取会员卡后赠送积分，输入0则不赠送。</span>
								</span>
							</div>														
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									每日签到赠送积分
								</label>
								<span  >
									<input  style="width: 15%;" type="text" class="frm_input " name="memberBean.card_integral" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_integral() %>"><span style="color: red;">*</span>
									<span class="help-block">赠送积分以激励用户每日打开你的微信公众号点击签到。请输入0-100以内整数。输入0则关闭每日签到功能。</span>
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									连续签到7日 每日签到赠送积分
								</label>
								<span  >
									<input  style="width: 15%;" type="text" class="frm_input " name="memberBean.card_contuine_integral" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_contuine_integral() %>"><span style="color: red;">*</span>
									<span class="help-block">用户连续签到7日后,每日用户进行签到时赠送积分,需要大于每日签到赠送积分。请输入0-100以内整数。输入0则关闭连续签到功能。</span>
								</span>
							</div>		
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									完善资料赠送积分
								</label>
								<span  >
									<input  style="width: 15%;" type="text" class="frm_input " name="memberBean.card_perfect_info" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_perfect_info() %>"><span style="color: red;">*</span>
									<span class="help-block">当用户完善自己的联系方式等资料时赠送积分。请输入0-100以内整数。输入0则关闭完善资料功能。</span>
								</span>
							</div>								
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									余额消费/现金消费 赠送积分
								</label>
								<span  >
									每消费<input  style="width: 10%;" type="text" class="frm_input " name="memberBean.card_rule_xiaofei" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_rule_xiaofei() %>">元, 赠送
									<input  style="width: 10%;" type="text" class="frm_input " name="memberBean.card_rule_zengsong" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=memberBean.getCard_rule_zengsong() %>">积分<span style="color: red;">*</span>
									<span class="help-block">在后台对用户的余额进行消费操作/使用现金消费(在店家收取现金,不扣会员卡余额时使用)时,</br>根据填写的比例(系统计算比例,不是满X赠X,例:填写100元赠送20,当消费20元即赠送4积分,积分舍掉小数取整)对用户赠送相应积分。</span>
								</span>
							</div>
							
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									是否支持绑定实体会员卡
								</label>
								<span  >
									<%
									if(memberBean.getCard_issupport()!=null&&memberBean.getCard_issupport().equals("1")){
										%>
										<input checked="checked" onclick="card_entity_clock()" name="memberBean.card_issupport" id="card_entity_issupport" type="checkbox" value="1" style="margin-top: -4px;"/>是
										<%
									}else{
										%>
										<input onclick="card_entity_clock()" name="memberBean.card_issupport" id="card_entity_issupport" type="checkbox" value="1" style="margin-top: -4px;"/>是
										<%
									}
								%>				
									<span class="help-block">用于线下实体会员卡与微信会员卡数据互通,开启后请停止使用线下实体会员卡。无历史会员数据无需开启此项。</span>
								</span>
							</div>
							<div class="appmsg_edit_item" id="card_entity_check" style="display: none;">
								<label for="" class="frm_label">
									绑定实体卡校验选项
								</label>
								<span  >
									 <input  id="check1" type="checkbox" style="margin-top: -4px;" checked="checked" disabled="disabled"/>实体卡号&nbsp;&nbsp;
									 <input  id="check2" type="checkbox" style="margin-top: -4px;"/>实体卡密码&nbsp;&nbsp;
									 <input  id="check3" type="checkbox" style="margin-top: -4px;"/>姓名&nbsp;&nbsp;
									 <input  id="check4" type="checkbox" style="margin-top: -4px;"/>手机号
									 <input  id="card_issupport_check" type="hidden" name="memberBean.card_issupport_check" value="<%=memberBean.getCard_issupport_check() %>"/>
									<span class="help-block">用户将在绑定实体卡时校验所勾选的选项,全匹配则绑定成功,删除实体卡信息。建议勾选两种来进行校验。</span>
								</span>
							</div>															
														
			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						会员卡功能说明
					</h3>
				</div>
			</div>					
				<div class="main_bd">		
		

																				
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									会员卡说明
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_explain"  style="width: 50%; height: 60px;" ><%=memberBean.getCard_explain()%></textarea>
								<span class="help-block">对会员卡使用方式的说明,建议按照自己的应用场景自行填写，长度在200字以内。</span>
							</div>		
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									预存规则
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_yue"  style="width: 50%; height: 60px;" ><%=memberBean.getCard_yue() %></textarea>
								<span class="help-block">填写后,用户可以在会员卡页面看到预存规则,可以用预存1000送200等活动来吸引用户进行预存款。</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									积分规则
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_jifen"  style="width: 50%; height: 60px;" ><%=memberBean.getCard_jifen() %></textarea>
								<span class="help-block">填写后,用户可以在会员卡页面看到积分规则,可以用有吸引力的奖品来吸引用户每日签到来换取奖品。<br>例如可以在用户分享一些消息到朋友圈并截图后,赠送积分,再进行兑换。</span>
							</div>							
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									通知1标题:<input  style="width: 30%;" type=text class="frm_input " name="memberBean.card_notice1" value="<%=memberBean.getCard_notice1() %>">
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_notice1_content"  style="width: 50%; height: 60px;"><%=memberBean.getCard_notice1_content() %></textarea>
								<span class="help-block">填写后,用户可以在会员卡页面看到通知消息,可以再次编辑来修改通知。标题不超过30字，内容不超过500字。</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									通知2标题:<input  style="width: 30%;" type=text class="frm_input " name="memberBean.card_notice2" value="<%=memberBean.getCard_notice2() %>">
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_notice2_content"  style="width: 50%; height: 60px;"><%=memberBean.getCard_notice2_content() %></textarea>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									通知3标题:<input  style="width: 30%;" type=text class="frm_input " name="memberBean.card_notice3" value="<%=memberBean.getCard_notice3() %>">
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="memberBean.card_notice3_content"  style="width: 50%; height: 60px;"><%=memberBean.getCard_notice3_content() %></textarea>
							</div>																						
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									适用门店    <span class="reply_title_tips"><a href="<%=path%>/lbs!add.action">没有适用门店?点击立刻添加适用门店!</a></span>
								</label>
								<span>
								<% 
									if(lbsBeanList!=null){
										%>
										<table class="table table-hover"  style="width: 100%;" >
								        <thead>
								          <tr>
								            <th>#</th>
								            <th>门店名称</th>
								            <th>电话</th>
								            <th>门店地址</th>
								          </tr>
								        </thead>				
								        <tbody>
								         
								      <%
								      for(int i=0;i<lbsBeanList.size();i++){
								      %>    
								          <tr>
								            <td><%=i+1%></td>
								            <td><%=lbsBeanList.get(i).getTitle()%></td>
								            <td><%=lbsBeanList.get(i).getTel()%></td>
								            <td><%=lbsBeanList.get(i).getAddress()%></td>
								          </tr>
								       	<%}
									}
								    %>
								       	  </tbody>
									</table>
								<span class="help-block">这里显示该会员卡的适用门店,调整适用门店可以在管理-门店管理中进行。</span>
								</span>
								
							</div>		
				<div class="tool_area">
					<div class="tool_bar">
						<span class="btn  btn_default" onclick="history.go(-1);">
								返回
						</span>					
						<span class="btn  btn_primary" onclick="editSave();">
								保存
						</span>		
					</div>
				</div>			
			</div>				
			
		</div>
		
</form>
</body>

<script>
	$(document).ready(function(){
		//初始化
		//标题
		$('.appmsg_title > a').text($('.js_title').val());
		//图像
		$('.js_appmsg_thumb').attr('src',$('#upload_preview_img').attr('src'));
		$('.js_appmsg_thumb').css('display','block');
		$('.frm_input_hidden').val($('#upload_preview_img').attr('src'));

		$('#thumb_img').attr('src',$('#wx_upload_file').val());
		
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
		//卡片颜色
		pitchOn($('#card_template_hidden').val());
		cardNameOnChange();
		logoOnChange();
		cardColorChange();
		readyCardColor();
		changePitchOn();
		//自定义模板
		changeTypeOn();
		//显示 绑定实体卡校验选项
		if($('#card_entity_issupport').attr("checked")){
			$('#card_entity_check').css('display','');

			//具体校验值
			var check_val = $('#card_issupport_check').val();
			if(check_val!='null'&&check_val!=''){
				var check_result=check_val.split("");
				if(check_result[1]=='1'){
					$('#check2').attr('checked','checked');
					}
				if(check_result[2]=='1'){
					$('#check3').attr('checked','checked');
					}
				if(check_result[3]=='1'){
					$('#check4').attr('checked','checked');
					}						
				}
			}

		})

		
	$('.dropdown_menu').bind('click',function(){
		if($('.jsDropdownBt').parent().hasClass('open')){
			$('.jsDropdownBt').parent().removeClass('open');
			$('.jsDropdownList').css('display','none');
		}
		else{
			$('.jsDropdownBt').parent().addClass('open');
			$('.jsDropdownList').css('display','block');
		}
	});
	
	$('.jsDropdownItem').bind('click',function(){
		$('.jsBtLabel').html($(this).attr('data-name'));
		$('.js_template_url').val($(this).attr('data-name'));
	});

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

	
	
	//关闭警告 
	function closeAlert(){
		$('#warning-alert').hide();
		}
	//打开警告 
	function openAlert(data){
		$('#warning-alert').html(data);
		$('#warning-alert').show();
		var t= setTimeout("closeAlert()",2000);
		}

	//验证输入
	function editSave(){
		if($('#card_entity_issupport').attr("checked")){
			//绑定实体卡校验选项
			$('#card_entity_check').css('display','');
				var check_val = 1;
				if($('#check2').attr("checked")){
					check_val = check_val+"1";
					}else{
					check_val = check_val+"0";
					}
				if($('#check3').attr("checked")){
					check_val = check_val+"1";
					}else{
					check_val = check_val+"0";
					}
				if($('#check4').attr("checked")){
					check_val = check_val+"1";
					}else{
					check_val = check_val+"0";
					}	
				$('#card_issupport_check').val(check_val);
			}		
		var params = $("form[id=member]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'member!editSave.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				if(data=='success'){
					loadContent('member!list.action');
				}else{
					openAlert(data);
				}
			}
		});			
		}
	
      	function loadContent(action){
          	var url = '<%=path%>/'+action;
          	window.location.href = url;
      	}
	
    KindEditor.ready(function(K) {
			var editor = K.editor({
				allowFileManager : true,
				uploadJson : '<%=path%>/jsp/upload_json.jsp',
		        fileManagerJson : '<%=path%>/jsp/file_manager_json.jsp',
		            height:'320px',
		            //上传后的回调函数
		            afterUpload : function(data) {
		            	//alert(data);
		            	//$("#thumb_img").attr("src",data);
		                if (data.error === 0) {
		                   //alert(data.url);
		                } else {
		                   //alert(data.message);
		                }
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

			K('#wx_upload_file_btn').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#wx_upload_file').val(url);
						$("#thumb_img").attr("src",url);
						editor.hideDialog();
						logoOnChange();
					}
				});
			});
			});

			K('#wx_upload_file_btn_type').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#wx_upload_file_type').val(url);
						$("#thumb_img_type").attr("src",url);
						$('#card_template_show').css('background','url('+url+')');
						$('#card_template_show').css('background-size','cover');
						editor.hideDialog();
					}
				});
			});
			});
    });
	


    $(function(){
        $("#cp1").colorpicker({
            fillcolor:true,
            success:function(o,color){
            	$(o).css("background-color",color);
            	$(o).css("color",'#000000');
            	cardColorChange();
            }
        });
        $("#cp2").colorpicker({
            fillcolor:true,
            success:function(o,color){
            	$(o).css("background-color",color);
            	$(o).css("color",'#000000');
            	cardColorChange();
            }
        }); 
    });
	function pitchOn(ImgId){
		var ImgUrl = "<%=path%>/weixin/member/image/card_bk_"+ImgId+".png";
		$('#card_template_show').css('background','url('+ImgUrl+')');
		$('#card_template_hidden').attr('value',ImgId);
		}    
    function cardNameOnChange(){
    	$('#card_name_yulan').html($('#card_name').val());
        }
    function logoOnChange(){
    	$('.card_logo').attr('src',$('#wx_upload_file').val());
        }
    function cardColorChange(){
    	$('#card_name_yulan').css('color',$('#cp1').val());
    	$('#card_number_yulan').css('color',$('#cp2').val());
    	}
	function readyCardColor(){
		//修改字体北京颜色
		$("#cp1").css("background-color",$('#cp1').val());
		$("#cp2").css("background-color",$('#cp2').val());
		}

	function changePitchOn(){
		var ImgId = $('#sel_pitch').val();
		var ImgUrl = "<%=path%>/weixin/member/image/card_bk_"+ImgId+".png";
		$('#card_template_show').css('background','url('+ImgUrl+')');
		$('#card_template_show').css('background-size','cover');
		$('#card_template_hidden').attr('value',ImgId);
		}

	//实体卡相关操作
	function card_entity_clock(){
		if($('#card_entity_issupport').attr("checked")){
			$('#card_entity_check').css('display','');
			}else{
			$('#card_entity_check').css('display','none');
			}
		}

	function changeTypeOn(){
		var typeVal= $('#sel_type').val();
		if(typeVal==1){
			$('.sel_type').css('display','none');
			$('.sel_type_define').css('display','');
			
			var ImgUrl = $('#wx_upload_file_type').val();
			$('#card_template_show').css('background','url('+ImgUrl+')');
			$('#card_template_show').css('background-size','cover');
		}else{
			$('.sel_type').css('display','');
			$('.sel_type_define').css('display','none');
			changePitchOn();
		}
	}
</script>

</html>