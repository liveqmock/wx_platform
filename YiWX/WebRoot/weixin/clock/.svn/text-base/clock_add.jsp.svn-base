<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LBSBean"%>
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
	<form id="clock">
		<input id="names_array" name="clockBean.names_array" type="hidden" />
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>考勤管理</a>
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
									<input type="text" class="frm_input" name="clockBean.keywords" value="打卡">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="clockBean.title" value="办公考勤">
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
										<img src="<%=path%>/weixin/clock/image/clock_card.png" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="clockBean.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">
									摘要
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="clockBean.desc_service" >需要允许公众号使用你的地理位置,在公众号详情中打开提供位置信息即可。</textarea>
							</div>

						</div>
					</div>
				</div>

			</div>
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						考勤设置
					</h3>
				</div>
			</div>	
				<div class="main_bd">
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									上、下班时间
								</label>
								<span  >
								<input id="datetimepicker_start" type="text" readonly="readonly" class="datetimepicker" name="clockBean.starttime">
									至
								<input id="datetimepicker_end" type="text" readonly="readonly" class="datetimepicker" name="clockBean.endtime">
								</span>
								<span class="help-block">用来统计每天的工作时长,不排除午间休息。</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									是否弹性工作制
								</label>
								<span>
									<input  type="checkbox"  name="clockBean.isflextime"  value="1" >是
								</span>
								<span class="help-block">勾选弹性工作制,只统计每天是否满足工作时长。</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									打卡范围
								</label>
								<span  >
									<input style="width: 30%;"  type=text class="frm_input " name="clockBean.clock_range" value="1000" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" >米
									<span class="help-block">只有在勾选的门店的打卡范围内才可以打卡,考虑到微信上报的位置的精准度,建议设置在500-1000米内。</span>
								</span>
							</div>	
							
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									发送考勤邮箱
								</label>
								<span  >
									账号:<input style="width: 15%;"  type=text class="frm_input " name="clockBean.send_mail"  >&nbsp;&nbsp;密码:<input style="width: 15%;"  type=text class="frm_input " name="clockBean.send_mail_password"  >
									<span class="help-block">使用该邮箱发送考勤记录,建议使用企业邮箱。</span>
								</span>
							</div>	
							
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									接收考勤邮箱
								</label>
								<span  >
									<input style="width: 30%;"  type=text class="frm_input " name="clockBean.receive_mail"  >
									<span class="help-block">每月在指定日期将上月的考勤记录发送到指定邮箱,建议填写HR邮箱。</span>
								</span>
							</div>																												
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									适用门店    <span class="reply_title_tips"><a href="<%=path%>/lbs!add.action">没有适用门店?点击立刻添加适用门店!</a></span>
								</label>
								<span>
								<% 
								List<LBSBean> lbsBeanList  = (List<LBSBean>)request.getAttribute("lbsBeanList");
									if(lbsBeanList!=null){
										%>
										<table class="table table-hover"  style="width: 100%;" >
								        <thead>
								          <tr>
								            <th>#</th>
								            <th>选择</th>
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
								            <td><input  type="radio" name="clockBean.lbs_id" value="<%=lbsBeanList.get(i).getId()%>"/></td>
								            <td><%=lbsBeanList.get(i).getTitle()%></td>
								            <td><%=lbsBeanList.get(i).getTel()%></td>
								            <td><%=lbsBeanList.get(i).getAddress()%></td>
								          </tr>
								       	<%}
									}
								    %>
								       	  </tbody>
									</table>
								<span class="help-block">选择适用门店后,只有在相应的门店附近才可以进行打卡。调整适用门店可以在管理-门店管理中进行。</span>
								</span>
								
							</div>					
							
				</div>
						
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						组织架构
					</h3>
				</div>
			</div>							
				<div class="main_bd">			
					<table class="table table-hover"  style="width: 100%;" >
				        <thead>
				          <tr>
				            <th>#</th>
				            <th>部门名称</th>
				            <th>操作</th>
				          </tr>
				        </thead>				
			        	<tbody id="department_table">

			        		<tr id="department_add"><td></td><td><a onclick="_showMyModal('-1')">添加部门</a></td><td></td></tr>
			        	</tbody>
			        </table>
					<div class="appmsg_edit_item">
							<span class="help-block">请尽量一次性创建好组织架构。</span>
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
			
		</div>
		
</form>

<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">添加部门</h3>
  </div>
  <div class="modal-body">
		<div class="appmsg_edit_item" >
			<label for="" class="frm_label" style="margin-top: 10px;">
				部门名称：
			</label>
			<span>
				<input id="department_name"  type="text" placeholder="请填写部门名称" style="margin-top: 10px"  />	
			</span>
				<input type="hidden" id="department_name_id"/>
		</div>  		 									
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
    <a class="btn btn-primary" onclick="saveMyModal()">确定</a>
  </div>
</div>

</body>

<script>
	$(document).ready(function(){
		
		//初始化
		//标题
		$('.appmsg_title > a').text($('.js_title').val());
		//图像
		$('.js_appmsg_thumb').attr('src','<%=path%>/weixin/clock/image/clock_card.png');
		$('.js_appmsg_thumb').css('display','block');
		$('.frm_input_hidden').val('<%=path%>/weixin/clock/image/clock_card.png');
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
		//活动时间
		var startStr = '09:00';
		var endStr = '18:00';
		$('#datetimepicker_start').attr('value',startStr);
		$('#datetimepicker_end').attr('value',endStr);
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

	//打开与关闭弹窗
	function _showMyModal(i){
		 $('#myModal').modal('show');
		 $('#department_name_id').val(i);
		 if(i<0){
			 $('#department_name').val('');
			 }else{
			 $('#department_name').val($('#name_'+i).html());
			}
		 
		}
	function _hideMyModal(){
		 $('#myModal').modal('hide');
		} 
	var names_array = [];
	//保存与修改部门名称 	
	function saveMyModal(){
		var name = $('#department_name').val();
		if(name.length==0){
			alert('部门名称不能为空');
			return;
			}
		var i = $('#department_name_id').val();
		if(i>=0){//修改
			names_array[i] = name;
			}else{//新增
				names_array.push(name);
			}
		re_department_table();
		_hideMyModal();
		}
	//删除部门
	function del_department(i){
		names_array.splice(i,1);
		re_department_table();
		}
	//刷新部门列表
	function re_department_table(){
		$('.department_tr').remove();
		
		for(var i=0;i<names_array.length;i++){
			var str = '';
				str+="<tr class='department_tr'  onmouseover='tr_onmouseover("+i+")' onmouseout='tr_onmouseout("+i+")' style='height: 42px;' >";
				str+="<td>"+(i+1)+"</td>";
				str+="<td id='name_"+i+"'>"+names_array[i]+"</td>";
				str+="<td>";
				str+="<span id='icon_"+i+"' style='display:none;'>";
				str+="<a  onclick='_showMyModal("+i+")' href='javascript:;'  class='icon14_common edit_gray jsEditBt' title='编辑'>编辑</a>";
				str+="<a  onclick='del_department("+i+")' style='margin-left: 14px;' href='javascript:;' class='icon14_common del_gray jsDelBt'   title='删除'>删除</a>";
				str+="</span>";
				str+="<div style='min-width: 200px;height: 0px'>&nbsp;</div>";
				str+="</td>";
				str+="</tr>";
			
			$('#department_add').before(str);
			

			
			}
		}
	//组织架构 滑动状态
	function tr_onmouseover(i){
		$('#icon_'+i).css('display','block');
	}
	function tr_onmouseout(i){
		$('#icon_'+i).css('display','none');
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
	function addSave(){
		if(names_array.length==0){
			openAlert('至少需要创建一个部门');
			return;
			}else{
				$('#names_array').val(names_array);
				}
		var params = $("form[id=clock]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clock!addSave.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				if(data=='success'){
					loadContent('clock!list.action');
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
		                if (data.error == 0) {
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
       	 format: 'hh:ii',
         weekStart: 1,
    	 autoclose: 1,
    	 todayHighlight: 1,
    	 startView: 1,
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
    	 return returnDate.format("hh:mm"); 

    }
</script>
</html>