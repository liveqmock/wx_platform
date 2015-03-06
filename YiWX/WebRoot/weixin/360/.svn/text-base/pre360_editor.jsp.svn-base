<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
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
	</style>
	</head>
<body class="page_appmsg_edit"  >
	<div class="alert warning" id="warning-alert" >
	</div>
	<form id="guaguaka">
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>360全景</a>
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
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=path%>/img/service/guaguaka01.jpg">
									<i  class="appmsg_thumb default">封面图片</i>
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
									<input type="text" class="frm_input" name="guaguakaBean.keywords" value="微全景">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="guaguakaBean.title" value="幸运刮刮卡">
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
										<img src="<%=path%>/img/service/guaguaka01.jpg" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="guaguakaBean.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">
									摘要
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="guaguakaBean.desc_service" >请点击进入刮奖活动页面，祝您好运！</textarea>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						全景图片设置
					</h3>
				</div>
			</div>	
				<div class="main_bd">
					<div class="appmsg_edit_item">
						<label for="" class="frm_label" >左边的图</label>
						<span >
							<img src="<%=path %>/img/service/guaguaka01.jpg" id="prew_img_1" style="margin-bottom: 10px;">
							<span class="btn btn_default" date-ref="prew_img_1"><span class="icon-plus" style="margin-top: 3px;"></span>
								选择图片
							</span>
						</span>
					</div>
					
					<div class="appmsg_edit_item">
						<label for="" class="frm_label" >左边的图</label>
						<span >
							<img src="<%=path %>/img/service/guaguaka01.jpg" id="prew_img_2" style="margin-bottom: 10px;">
							<span class="btn btn_default" date-ref="prew_img_2"><span class="icon-plus" style="margin-top: 3px;"></span>
								选择图片
							</span>
						</span>
					</div>
					
					<div class="appmsg_edit_item">
						<label for="" class="frm_label" >左边的图</label>
						<span >
							<img src="<%=path %>/img/service/guaguaka01.jpg" id="prew_img_3" style="margin-bottom: 10px;">
							<span class="btn btn_default" date-ref="prew_img_3"><span class="icon-plus" style="margin-top: 3px;"></span>
								选择图片
							</span>
						</span>
					</div>
					
					<div class="appmsg_edit_item">
						<label for="" class="frm_label" >左边的图</label>
						<span >
							<img src="<%=path %>/img/service/guaguaka01.jpg" id="prew_img_4" style="margin-bottom: 10px;">
							<span class="btn btn_default" date-ref="prew_img_4"><span class="icon-plus" style="margin-top: 3px;"></span>
								选择图片
							</span>
						</span>
					</div>
					
					<div class="appmsg_edit_item">
						<label for="" class="frm_label" >左边的图</label>
						<span >
							<img src="<%=path %>/img/service/guaguaka01.jpg" id="prew_img_5" style="margin-bottom: 10px;">
							<span class="btn btn_default" date-ref="prew_img_5"><span class="icon-plus" style="margin-top: 3px;"></span>
								选择图片
							</span>
						</span>
					</div>
					
					<div class="appmsg_edit_item">
						<label for="" class="frm_label" >左边的图</label>
						<span >
							<img src="<%=path %>/img/service/guaguaka01.jpg" id="prew_img_6" style="margin-bottom: 10px;">
							<span class="btn btn_default" date-ref="prew_img_6"><span class="icon-plus" style="margin-top: 3px;"></span>
								选择图片
							</span>
						</span>
					</div>
				</div>
							
																																																									
				<div class="tool_area">
					<div class="tool_bar">
						<span class="btn  btn_default" onclick="history.go(-1);">
								返回
						</span>					
						<span class="btn  btn_primary" onclick="addSave();">
								保存
						</span>		
					</div>
				</div>			
			</div>		
			<form>
			<input type="hidden" id="shang" name="shang">
			</form>		
			
		</div>
		
</form>
</body>

<script>
	function addSave() {
	   $("#shang").val($("#prew_img_1").attr("src"));
		alert("------dsadsa>"+$("#shang").val());
	}

	$(document).ready(function(){
		//初始化
		//标题
		$('.appmsg_title > a').text($('.js_title').val());
		//图像
		$('.js_appmsg_thumb').attr('src','<%=path%>/img/service/guaguaka01.jpg');
		$('.js_appmsg_thumb').css('display','block');
		$('.frm_input_hidden').val('<%=path%>/img/service/guaguaka01.jpg');
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
		//活动时间
		var now = new Date(); 
		var startStr = returnTransDate(now,0);
		var endStr = returnTransDate(now,7);
		$('#datetimepicker_start').attr('value',startStr);
		$('#datetimepicker_end').attr('value',endStr);
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
		               
		                   alert("---->"+data.url);
		                } else {
		                   alert("dsadsa--->"+data.message);
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
			K(".btn.btn_default").click(function() {
				var ref_id = $(this).attr('date-ref');
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						$('#'+ref_id).attr('src',url);
						editor.hideDialog();
					}
				});
			});
		});
    });


    
</script>

</html>