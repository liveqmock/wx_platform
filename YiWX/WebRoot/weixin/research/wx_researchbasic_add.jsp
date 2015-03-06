<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" />
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_edit19e425.css">
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_editor.css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/pagination.css" media="all">
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
	<form id="researchbasic">
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>微调研</a>
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
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=path%>/weixin/photo/image/cover.jpg">
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
									<input type="text" class="frm_input" name="researchbasicViewModel.keywords" required="required" value="微调研">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="researchbasicViewModel.title" required="required" value="微调研">
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
										<img src="<%=path%>/weixin/photo/image/cover.jpg" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="researchbasicViewModel.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
						
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									活动时间
								</label>
								<span  >
								<input id="datetimepicker_start" type="text" readonly="readonly" class="datetimepicker" name="researchbasicViewModel.begintime" required="required">
									至
								<input id="datetimepicker_end" type="text" readonly="readonly" class="datetimepicker" name="researchbasicViewModel.endtime" required="required">
								</span>
								<span class="help-block">活动开始时间早于结束时间，活动持续时间最多三个月。</span>
							</div>
							
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">活动说明（不能超过200字）
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="researchbasicViewModel.descs" required="required">请为调研填写描述</textarea>
							</div>
							
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">调研结束语（不能超过200字）
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="researchbasicViewModel.enddescs" required="required">请为调研结束语填写描述</textarea>
							</div>
						</div>
					</div>
				</div>

			</div>
			
			<div>
				<ul style="list-style: none;margin-left: 20px;" id="J_imageView"></ul>
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
</form>
</body>
<script>
	var  urlNum = 0; 
	$(document).ready(function(){
		//初始化
		//标题
		$('.appmsg_title > a').text($('.js_title').val());
		//图像
		$('.js_appmsg_thumb').attr('src','<%=path%>/weixin/photo/image/cover.jpg');
		$('.js_appmsg_thumb').css('display','block');
		$('.frm_input_hidden').val('<%=path%>/weixin/photo/image/cover.jpg');
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
		//活动时间
		var now = new Date(); 
		var startStr = returnTransDate(now,0);
		var endStr = returnTransDate(now,90);
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

    function addSave() {
    	var cansv= true;
		$('#researchbasic').find('input[type="text"],select,textarea').filter('[required="required"]').each(function(){
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
	    	var params = $("form[id=researchbasic]").serialize();
			$.ajax({
				async : false,
				cache : false,
				type : 'POST',
				data : params,
				url : 'researchbasic!addNewResearchbasic.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert("访问服务器失败");
				},
				success : function(data) { //请求成功后处理函数
					dealLoginResult(data)
				}
			});	
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
	//打开警告 
	function openAlert(data){
		$('#warning-alert').html(data);
		$('#warning-alert').show();
		var t= setTimeout("closeAlert()",2000);
	}
	//关闭警告 
	function closeAlert(){
		$('#warning-alert').hide();
	}
</script>
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=path%>/js/date/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path%>/js/date/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<link href="<%=path%>/css/date/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<script type="text/javascript">

    $('.datetimepicker').datetimepicker({
    	 language:  'zh-CN',
       	 format: 'yyyy-mm-dd hh:ii:ss',
         weekStart: 1,
         todayBtn:  1,
    	 autoclose: 1,
    	 todayHighlight: 1,
    	 startView: 2,
    	 forceParse: 0,
    	 startDate:new Date(),
         showMeridian: 1
    });
	//格式化日期
    Date.prototype.format = function(format){ 
    	var o = { 
    	"M+" : this.getMonth()+1, //month 
    	"d+" : this.getDate(), //day 
    	"h+" : this.getHours(), //hour 
    	"m+" : this.getMinutes(), //minute 
    	"s+" : this.getSeconds(), //second 
    	"q+" : Math.floor((this.getMonth()+3)/3), //quarter 
    	"S" : this.getMilliseconds() //millisecond 
    	} 
    	if(/(y+)/.test(format)) { 
    		format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
    		} 

    	for(var k in o) { 
    		if(new RegExp("("+ k +")").test(format)) { 
    		format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length)); 
    		} 
    		} 
    	return format; 
    	} 
	//前后天,日期,天数
    function returnTransDate(date,num){    
    	 var returnDate_milliseconds=date.getTime()+(num*1000*60*60*24);     
    	 var returnDate = new Date();     
    		 returnDate.setTime(returnDate_milliseconds);     
    	 return returnDate.format("yyyy-MM-dd hh:mm:ss"); 

    }
</script>
</html>