<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.PhotoBean"%>
<%@page import="weibo4j.org.json.JSONArray"%>
<%@ page isELIgnored="true"%>
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
		<link rel="stylesheet" href="<%=path%>/css/sco/sco.message.css" />	
		<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.tmpl.js"></script>
		<script src="<%=path%>/js/sco.message.js"></script>
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
	<%  
		PhotoBean photoBean = (PhotoBean)request.getAttribute("photoBean"); 
		String serviceid = request.getAttribute("serviceid").toString();
	%>
	<form id="photo">
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected">
							<a>相册</a>
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


								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="appmsg_thumb_wrp">
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=photoBean.getImg()%>">
									<i  class="appmsg_thumb default">封面图片</i>
								</div>
								<h4 class="appmsg_title">
									<a onclick="return false;" href="javascript:void(0);"
										target="_blank"><%=photoBean.getTitle() %></a>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<div id="js_appmsg_editor" class="media_edit_area">
					<div class="appmsg_editor" style="margin-top: 0px;">
						<div class="inner" style="min-height: 0px;">
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="photoViewModel.title" required="required" value="<%=photoBean.getTitle() %>">
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
										<img src="<%=photoBean.getImg()%>" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="photoViewModel.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
								
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						相册设置
					</h3>
				</div>
			</div>	
			<div class="main_bd">
					<div class="appmsg_edit_item">
						<a id="J_selectImage">
						<span  class="btn"  title="添加照片" ><i class="icon-plus"></i>
						添加照片</span>
						</a>	
					</div>
			</div>
			
			<div>
				<ul style="list-style: none;margin-left: 20px;" id="J_imageView">
				<%
					String url = photoBean.getUrl();
					if(url == null) url = "";
					JSONArray imgArray = new JSONArray(url);
					for(int i = 0 ; i < imgArray.length();i++){
				%>
					<li style="float: left;text-align: center;width: 318px;height: 215px;padding:10px;" id="mm_<%=i%>">
						<div class="appmsg_thumb_wrp">
							<img class="appmsg_thumb sub_photo" src="<%=imgArray.getString(i) %>" style="display: block;">
						</div>
						<div onclick="$('#mm_<%=i%>').remove();">删除<div>
					</li>
				<%
					}
					%>
				</ul>
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
			<input type="hidden" name="photoViewModel.url" id="url">
			<input type="hidden" name="photoViewModel.id" value="<%=photoBean.getId() %>">
			<input type="hidden" name="photoViewModel.serviceid" value="<%=serviceid %>">
</form>
</body>
<script id="sub_photo" type="text/x-jquery-tmpl">
<li style="float: left;text-align: center;width: 318px;height: 215px;padding:10px;" id="deli_${id}">
	<div class="appmsg_thumb_wrp">
		<img class=" appmsg_thumb sub_photo" src="${src}" style="display: block;">
	</div>
	<div onclick="$('#deli_${id}').remove();">删除<div>
</li>
</script>
<script>
	var  urlNum = 0; 
	$(document).ready(function(){
		//初始化
		//标题
		$('.appmsg_title > a').text($('.js_title').val());
		//图像
		$('.js_appmsg_thumb').attr('src','<%=photoBean.getImg()%>');
		$('.js_appmsg_thumb').css('display','block');
		$('.frm_input_hidden').val('<%=photoBean.getImg()%>');
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
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
		                //   alert(data.url);
		                } else {
		                //   alert(data.message);
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
						alert(ref_id);
						$('#'+ref_id).attr('src',url);
						editor.hideDialog();
					}
				});
			});
		});
		
		K('#J_selectImage').click(function() {
					editor.loadPlugin('multiimage', function() {
						editor.plugin.multiImageDialog({
							clickFn : function(urlList) {
								/*var div = K('#J_imageView');
								$('#J_imageView_table').empty();
								urlNum = urlList.length;
								var ys = urlList.length%5;
								var cs = parseInt(urlList.length/5);
								if(ys>0)
								{
									cs++;
								}
								for(var i= 0;i<cs;i++)
								{
									var tml  = "<tr>";
									    tml += "<td width=150 height=100 align=center ><div id='td_"+i+"_0' width=100 height=80 ></div></td>";
									    tml += "<td width=150 height=100 align=center ><div id='td_"+i+"_1' width=100 height=80 ></div></td>";
									    tml += "<td width=150 height=100 align=center ><div id='td_"+i+"_2' width=100 height=80 ></div></td>";
									    tml += "<td width=150 height=100 align=center ><div id='td_"+i+"_3' width=100 height=80 ></div></td>";
									    tml += "<td width=150 height=100 align=center ><div id='td_"+i+"_4' width=100 height=80 ></div></td></tr>";
									$('#J_imageView_table').append(tml);
								}*/
								K.each(urlList, function(i, data) 
								{
									/*var iys = i%5;
									var cs  =  parseInt(i/5);
									$('#td_'+cs+'_'+iys).append('<img id="imagepl'+i+'" src='+data.url+'></img>');
									$('#td_'+cs+'_'+iys).after('<div id="del_'+cs+'_'+iys+'">删除<div>');
									$('#del_'+cs+'_'+iys).bind("click",function(){$('#imagepl'+i).remove();$('#del_'+cs+'_'+iys).remove();});
									$('#imagepl'+i).attr("src",data.url);  
									$('#imagepl'+i).width(100);
									$('#imagepl'+i).height(80);*/
									
									var subPhoto ={src:data.url,id:i};
									$('#J_imageView').append($('#sub_photo').tmpl(subPhoto));
								});
								editor.hideDialog();
							}
						});
					});
				});
    });
    
    function saveyyx(){
		var bk = [];
		$('.bookingtr').each(function(){
			var msg = {};
			msg.type = $(this).find('.booking_type').find('select').val();
			msg.name = $(this).find('.booking_name').find('input').val();
			msg.holder = $(this).find('.booking_holder').find('input').val();
			msg.issys = $(this).attr('issys');
			bk[bk.length] = msg;
		});
		$('.bookingset').val(JSON.stringify(bk));
	}
    
    function addSave()
    {
    	/*var dataUrl = "";
    	for (var j = 0;j<urlNum;j++)
    	{
    		if($('#imagepl'+j).length>0)
    			dataUrl += $('#imagepl'+j).attr("src")+";";
    	}	
    	dataUrl = dataUrl.substring(0,dataUrl.length-1); */
    	var cansv= true;
		$('#photo').find('input[type="text"],select,textarea').filter('[required="required"]').each(function(){
			if($.trim($(this).val())==''){
				cansv = false;
				$(this).css('border-color','#e9322d');
				$(this).css('-webkit-box-shadow','0 0 6px #f8b9b7');
				$(this).css('border-color','#0 0 6px #f8b9b7');
				$(this).css('-moz-box-shadow','#0 0 6px #f8b9b7');
				$(this).css('box-shadow','#0 0 6px #f8b9b7;');
				$(this).one('focus',function(){
					$(this).css('backgroundColor','transparent');
				});
			}
		});
		
		saveyyx();
		if(!cansv){
			alert('请将必填信息填写完整');
		} else {
	    	var subPhoto = $('.sub_photo');
	    	if($(subPhoto).length == 0){
	    		$.scojs_message('没有上传相册图片。', $.scojs_message.TYPE_OK);
	    	}
	    	else if($(subPhoto).length>20){
	    		$.scojs_message('单相册图片不能超过20张。', $.scojs_message.TYPE_OK);
	    	}
	    	else{
		    	var photoArray = [];
		    	$('.sub_photo').each(function(){
		    		photoArray.push($(this).attr('src'));
		    	});
		    	$("#url").val(JSON.stringify(photoArray));
	    	
		    	var params = $("form[id=photo]").serialize();
				$.ajax({
					async : true,
					cache : false,
					type : 'POST',
					data : params,
					url : 'photo!updatePhoto.action', //请求的action路径
					error : function() {//请求失败处理函数);
						alert("访问服务器失败");
					},
					success : function(data) { //请求成功后处理函数
						dealLoginResult(data);
					}
				});
			}
		}
    }
    
    function dealLoginResult(data){
		var josnStr = eval('(' + data + ')');
		var status = josnStr["status"];
		var content = josnStr["content"];
		if(status=='success'){
			window.location="<%=path%>/"+content+"";
		}else{
			$("#errorMsg").html(content);
		}
	}
</script>

</html>