<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
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
			<%
			GuaguakaBean	guaguakaBean = (GuaguakaBean)request.getAttribute("guaguakaBean");
			if(guaguakaBean!=null){
			%>
	<input type="hidden" name="guaguakaBean.id" value="<%=guaguakaBean.getId() %>"/>
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>刮刮卡</a>
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
									<input type="text" class="frm_input" name="guaguakaBean.keywords" value="<%=guaguakaBean.getKeywords() %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="guaguakaBean.title" value="<%=guaguakaBean.getTitle() %>">
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
										<img src="<%=guaguakaBean.getImg()%>" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="guaguakaBean.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">
									摘要
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="guaguakaBean.desc_service" ><%=guaguakaBean.getDesc_service()%></textarea>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									活动时间
								</label>
								<span  >
								<input id="datetimepicker_start" type="text" readonly="readonly"  name="guaguakaBean.starttime" value="<%=guaguakaBean.getStarttime()%>">
									至
								<input id="datetimepicker_end" type="text" readonly="readonly"  name="guaguakaBean.endtime" value="<%=guaguakaBean.getEndtime()%>">
								</span>
								<span class="help-block">活动开始时间早于结束时间，活动持续时间最多一个月。</span>
							</div>

		

						</div>
					</div>
				</div>

			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						奖项设置
					</h3>
				</div>
			</div>	
				<div class="main_bd">
						<%
						if(guaguakaBean.getOne_number()!=0){
							%>
							<div class="appmsg_edit_item">
							<label for="" class="frm_label" >
								一等奖名称
							</label>
							<span >
								<input readonly="readonly" value="<%=guaguakaBean.getOne_prize() %>"  style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.one_prize" ><span >奖品名称不超过20字。</span>
							
							</span>
							<label for="" class="frm_label">
								奖品数量
							</label>
							<span  >
								<input readonly="readonly" value="<%=guaguakaBean.getOne_number() %>"  style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.one_number" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')"><span >奖品数量不超过1000,0或者不填表示该奖项无效。</span>
							</span>
						</div>								
							<%
						}
						if(guaguakaBean.getTwo_number()!=0){
							%>
							<div class="appmsg_edit_item" id="two_prize" >
								<label for="" class="frm_label" >
									二等奖名称
								</label>
								<span  >
									<input readonly="readonly" value="<%=guaguakaBean.getTwo_prize() %>"  style="width: 50%;"  type="text" class="frm_input " name="guaguakaBean.two_prize" >
								</span>
								<label for="" class="frm_label">
									奖品数量
								</label>
								<span  >
									<input readonly="readonly" value="<%=guaguakaBean.getTwo_number() %>" style="width: 50%;"  type="text" class="frm_input " name="guaguakaBean.two_number" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
								</span>
							</div>								
							<%
						}
						if(guaguakaBean.getThree_number()!=0){
							%>
							<div class="appmsg_edit_item" id="three_prize" >
								<label for="" class="frm_label" >
									三等奖名称
								</label>
								<span >
									<input readonly="readonly" value="<%=guaguakaBean.getThree_prize() %>" style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.three_prize" >
								</span>
								<label for="" class="frm_label">
									奖品数量
								</label>
								<span  >
									<input readonly="readonly" value="<%=guaguakaBean.getThree_number() %>" style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.three_number" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
								</span>
							</div>							
							<%							
						}
						if(guaguakaBean.getFour_number()!=0){
							%>
							<div class="appmsg_edit_item" id="four_prize" style="display: none;" >
								<label for="" class="frm_label" >
									四等奖名称
								</label>
								<span >
									<input readonly="readonly" value="<%=guaguakaBean.getFour_prize() %>" style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.four_prize">
								</span>
								<label for="" class="frm_label">
									奖品数量
								</label>
								<span  >
									<input readonly="readonly" value="<%=guaguakaBean.getFour_number() %>" style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.four_number" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
								</span>
							</div>								
							<%							
						}
						if(guaguakaBean.getFive_number()!=0){
							%>
							<div class="appmsg_edit_item" id="five_prize" style="display: none;">
								<label for="" class="frm_label" >
									五等奖名称
								</label>
								<span >
									<input readonly="readonly" value="<%=guaguakaBean.getFive_prize() %>" style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.five_prize" >
								</span>
								<label for="" class="frm_label">
									奖品数量
								</label>
								<span  >
									<input readonly="readonly" value="<%=guaguakaBean.getFive_number() %>" style="width: 50%;" type="text" class="frm_input " name="guaguakaBean.five_number" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
								</span>
							</div>								
							<%							
						}
							%>

	

														
						</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						参数设置
					</h3>
				</div>
			</div>							
						<div class="main_bd">								
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									中奖概率
								</label>
								<span  >
									<input  style="width: 15%;" type="text" class="frm_input " name="guaguakaBean.probability" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" value="<%=guaguakaBean.getProbability() %>">%
									<span class="help-block">即用户每次抽奖的中奖概率,请输入0-100以内正整数。例：如每次必中奖就输入100,输入0则永远不会中奖。</span>
								</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									是否显示奖品数量
								</label>
								<span>
								<%
									if(guaguakaBean.getIsdisplay().equals("1")){
										%>
										<input  type="checkbox"  name="guaguakaBean.isdisplay" checked="checked" value="1" >是
										<%
									}else{
										%>
										<input  type="checkbox"  name="guaguakaBean.isdisplay"  value="1" >是
										<%
									}
								%>
								</span>
							</div>		
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									每人可参与的总次数
								</label>
								<span  >
									<input style="width: 30%;"  type=text class="frm_input " name="guaguakaBean.totaltime" value="<%=guaguakaBean.getTotaltime() %>" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" >
									<span class="help-block">大于0小于100,推荐只可参与1次!</span>
								</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									每人每天可参与次数
								</label>
								<span  >
									<input   style="width: 30%;" type=text class="frm_input " name="guaguakaBean.everydaytime" value="<%=guaguakaBean.getEverydaytime() %>" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" >
									<span class="help-block">不为0且小于等于总参与次数。可以抽奖天数 = 总数/每天参与次数!</span>
								</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									兑奖密码
								</label>
								<span  >
									<input  style="width: 30%;" type=text class="frm_input " name="guaguakaBean.password" value="<%=guaguakaBean.getPassword() %>"><span style="color: red;">*</span>
									<span class="help-block">兑奖密码长度小于16位 ,用于线下活动时,现场兑奖使用,根据兑奖提示具有排重功能,必填。</span>
								</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									中奖者联系方式
								</label>
								<span  >
									<input  style="width: 30%;" type=text class="frm_input " name="guaguakaBean.contacttype" value="<%=guaguakaBean.getContacttype() %>" >
									<span class="help-block">例如：QQ号,微信号,手机号,邮箱地址! 不懂请默认设置手机号! 此字段主要收集用户的信息方便联系。</span>
								</span>
							</div>															
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									活动说明
								</label>
								<textarea  class="js_desc frm_textarea textarea"  name="guaguakaBean.explain_service"  style="width: 50%; height: 60px;" ><%=guaguakaBean.getExplain_service() %></textarea>
								<span class="help-block">对抽奖活动领奖方式的说明,建议按照自己活动的应用场景自行填写，长度在200字以内。</span>
								
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
			<%	
			}
			%>
		
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
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
		//活动时间
		
		//var now = new Date(); 
		//var startStr = returnTransDate(now,0);
		//var endStr = returnTransDate(now,7);
		//$('#datetimepicker_start').attr('value',startStr);
		//$('#datetimepicker_end').attr('value',endStr);
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

	
	//增加奖品
	var prizeTemp = 2;
	function addPrize(){
		if(prizeTemp==2){
			$('#two_prize').css('display','block');
			prizeTemp=3;
		}else if(prizeTemp==3){
			$('#three_prize').css('display','block');
			prizeTemp=4;
		}else if(prizeTemp==4){
			$('#four_prize').css('display','block');
			prizeTemp=5;			
		}else if(prizeTemp==5){
			$('#five_prize').css('display','block');
			prizeTemp=6;			
		}else if(prizeTemp==6){
			openAlert('目前只支持5种奖品');		
		}
	}
	
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
		var params = $("form[id=guaguaka]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'guaguaka!editSave.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				if(data=='success'){
					loadContent('guaguaka!list.action');
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
		            alert(data);
		            	//alert(data);
		            	//$("#thumb_img").attr("src",data);
		                if (data.error === 0) {
		                   alert(data.url);
		                } else {
		                   alert(data.message);
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