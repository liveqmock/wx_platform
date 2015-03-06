<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.OrderBean"%>
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
		<title>微信封</title>
		<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="<%=path %>/img/logo_icon.png" rel="Shortcut Icon">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" />
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_edit19e425.css">
		<link rel="stylesheet" href="<%=path%>/css/qq/css/appmsg_editor.css">
		<link rel="stylesheet" href="<%=path%>/themes/default/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/advanced_reply_common19e425.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/pagination.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/sco/sco.message.css" media="all"/>
			
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/js/sco.message.js"></script>
		<script src="<%=path%>/kindeditor.js"></script>
		<script src="<%=path%>/lang/zh_CN.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery-ui-1.9.2.custom.min.js"></script>
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
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=thSqZqVjSs1kp3kmMf1pXkSZ"></script>
<body class="page_appmsg_edit">
	<%
		OrderBean orderBean = (OrderBean) request.getAttribute("L_ORDERBEAN_EDIT");
	%>
	<form id="orderForm">
		<input type="hidden" name="orderBean.id" value="<%=orderBean.getId() %>">
		
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>微预约</a>
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
									<a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a>
								</h4>
								<div class="appmsg_info">
									<em class="appmsg_date"></em>
								</div>
								<div class="appmsg_thumb_wrp">
									<img class="js_appmsg_thumb appmsg_thumb" src="<%=orderBean.getImg() %>">
									<i  class="appmsg_thumb default">封面图片</i>
								</div>
								<p class="appmsg_desc"><%=orderBean.getDescs() %></p>
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
									<input type="text" class="frm_input" name="orderBean.keywords" placeholder="微预约" required="required" value="<%=orderBean.getKeywords() %>">
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									标题
								</label>
								<span >
									<input type="text" class="frm_input js_title" name="orderBean.title" placeholder="在线预约" required="required" value="<%=orderBean.getTitle() %>">
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
										<img src="<%=orderBean.getImg() %>" id="upload_preview_img" style="margin-bottom: 10px;">
										<input  type="hidden" class="frm_input js_title frm_input_hidden" name="orderBean.img">
										<a class="js_removeCover" href="javascript:void(0);" onclick="return false;">删除</a>
						            </p>
								</div>
							</div>
							<div class="js_desc_area dn appmsg_edit_item">
								<label for="" class="frm_label">
									摘要
								</label>
								<textarea style="height: 45px" maxlength="120" class="js_desc frm_textarea textarea" name="orderBean.descs" placeholder="请点击进入在线预约页面！" required="required"><%=orderBean.getDescs() %></textarea>
							</div>
						</div>
					</div>
				</div>

			</div>
	
			<div class="main_bd">
				<div class="parent_title_bar">
					<h3>
						预约设置
					</h3>
				</div>
			</div>
			<div class="main_bd">
				<div class="appmsg_edit_item">
					<label for="" class="frm_label">预约地址</label>
					<span >
						<input id="searchlocal" style="width: 30%;" type="text" class="frm_input " name="orderBean.place"  required="required" value="<%=orderBean.getPlace() %>">
						<a onclick="searchlocal();" >
							<span  class="btn "  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
							查询</span>
						</a>						
						<span class="help-block">如北京市海淀区中关村3W咖啡。</span>
					</span>
				</div>	
							<div class="appmsg_edit_item">
									<label for="" class="frm_label">
												 经度&纬度
									</label>
									<span >
										 <input type="text" id="lngMap" name="orderBean.lng" readonly="readonly" required="required" value="<%=orderBean.getLng() %>"/>&<input type="text" id="latMap" name="orderBean.lat" readonly="readonly" required="required" value="<%=orderBean.getLat() %>"/> 
										<span class="help-block">请在地图上点击确认商铺所在位置。</span>
										<div style="width:630px;height:400px;border:#ccc solid 1px;" id="map_canvas"></div>
									</span>
							</div>					
				<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									预约电话
								</label>
								<span >
									<input  style="width: 30%;" type="text" class="frm_input " name="orderBean.tel"  required="required" value="<%=orderBean.getTel() %>">
									<span class="help-block">如010-88888888。</span>
								</span>
							</div>
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									预约简介
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="orderBean.introduce"  style="width: 50%; height: 60px;" 
								required="required"><%=orderBean.getIntroduce() %></textarea>
									<span class="help-block">对在线预约活动的说明,建议按照自己活动的应用场景自行填写，长度在200字以内。可以适用在线挂号,申请试驾,KTV订房,餐厅订桌,酒店订房,上门报修等等。</span>
							</div>
							
							<div class="appmsg_edit_item">
								<div class="control-group">
                                    <div class="appmsg_edit_item">
										<span class="btn btn_default" onclick="addbookingline()"><span class="icon-plus" style="margin-top: 3px;"></span>
												增加预约字段
										</span>
									<span class="help-block">填写你要收集的内容！订单默认选项不可以修改删除！(拖拉表格当中的选项可以进行手动排序)。</span>
							
									</div>
									<input type="hidden" value ="<%=orderBean.getConditions() %>" name="orderBean.conditions" class="bookingset"/>
                                    <div class="controls">
                                        <table class="table table-bordered table-hover dataTable" id="bookingtb" style="table-layout: fixed;">
                                            <tbody><tr>
                                                    <th>字段类型</th>
                                                    <th>字段名称</th>
                                                    <th>初始内容</th>
                                                    <th>操作</th>
                                                </tr>
                                        	</tbody>
                                        	<tbody id="sortBody"></tbody>
										</table>
                                    </div>
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
		</div>
	</form>
</body>

<script type="text/html" id="bookingoption">
<tr class="bookingtr" issys="0">
<td class="booking_type">
<select>
<option value="text" data-name="电话号码" data-holder="请输入您的电话">单行文字</option>
<option value="textarea" data-name="反馈意见" data-holder="请输入您的意见">多行文字</option>
<option value="datetime" data-name="预约日期" data-holder="请选择预约日期">日期时间选择</option>
<option value="select" data-name="入住人数" data-holder="1|2|3|4|5|6|7|8">自定义下拉选择</option>
</select>
</td>
<td class="booking_name">
    <input rname='data-name' type="text" class="wizard-ignore" required="required" value=""/>
</td>
<td class="booking_holder">
    <input rname='data-holder' type="text" class="wizard-ignore" value="" >
</td>
<td><p><a href="javascript:;" class="yydelahref" onclick="dodelit(this)">删除</a>&nbsp;<a href="javascript:;" onclick="doaddit(this)">添加</a></p></td>
</tr>
</script>

<script>
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
	
	$(document).ready(function(){
		//初始化
		//标题
		$('.appmsg_title > a').text($('.js_title').val());
		//图像
		$('.js_appmsg_thumb').attr('src','<%=orderBean.getImg() %>');
		$('.js_appmsg_thumb').css('display','block');
		$('.frm_input_hidden').val('<%=orderBean.getImg() %>');
		//摘要
		$('.appmsg_desc').html($('.js_desc').val());
	
		sort_wrp_items('sortBody');
		//初始化地图
		initMap();
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

    KindEditor.ready(function(K) {
			var editor = K.editor({
				allowFileManager : true,
				uploadJson : '<%=path%>/jsp/upload_json.jsp',
		        fileManagerJson : '<%=path%>/jsp/file_manager_json.jsp',
		            height:'320px',
		            //上传后的回调函数
		            afterUpload : function(data) {
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
    
    function addbookingline(){
		$('#sortBody').append($('#bookingoption').html());
		var tr = $('#bookingtb').find('tr:last');
		initbookingmsg(tr);
		tr.find('select').change(function(){
			tr.find('input[type="text"]').val('');
			initbookingmsg(tr);
		});
		return tr;
	}
	
	function initbookingmsg(tr){
		tr.find('input[type="text"]').each(function(){
			if($.trim($(this).val())==''){
				var hn = $(this).attr('rname');
				$(this).attr('placeholder','如：'+tr.find('option:selected').attr(hn));
			}
		});
	}

	function dodelit(o){
		$(o).parent().parent().parent().remove();
	}
	
	function doaddit(o){
		var tr = $(o).parent().parent().parent();
		var newtr = tr.clone();
		newtr.find('select').val(tr.find('select').val());
		tr.after(newtr);
		initbookingmsg(newtr);
		newtr.find('select').change(function(){
			newtr.find('input[type="text"]').val('');
			initbookingmsg(newtr);			
		});
	}
	
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
	
	function addSave(){
		var cansv= true;
		$('#orderForm').find('input[type="text"],select,textarea').filter('[required="required"]').each(function(){
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
			//tusi('请将信息填写完整');
		}
		else{
			var params = $("form[id=orderForm]").serialize();
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : '<%=path%>/order!update.action',
				error : function() {
					$.scojs_message('访问服务器失败,请重试.', $.scojs_message.TYPE_ERROR);
				},
				success : function(data) {
					
					reqStatus = eval('(' + data+ ')');
					if(reqStatus["error_code"] == '0'){
						//	$.scojs_message(reqStatus['error_text'], $.scojs_message.TYPE_OK);
						loadContent('order!list.action');
					}else{
						$.scojs_message(reqStatus['error_text'], $.scojs_message.TYPE_ERROR);
					}
				}
			});
		}
	}
  	function loadContent(action){
      	var url = '<%=path%>/'+action;
      	window.location.href = url;
  	}
	
	//预约项目设置
	$(function(){
		if($.trim($('.bookingset').val())!=''){
			var intv = <%=orderBean.getConditions() %>;
			for(var i=0;i<intv.length;i++){
				var tr = addbookingline();
				var msg = intv[i];
				tr.find('.booking_type').find('select').val(msg.type);
				tr.find('.booking_name').find('input').val(msg.name);
				tr.find('.booking_holder').find('input').val(msg.holder);
				if(msg.issys=='1'){
					tr.find('select,input').prop('disabled',true);
					tr.find('.yydelahref').parent().html('默认订单项');
					tr.attr('issys','1');
				}
				//附加
				tr.find('.booking_type').find('select').hide();
				tr.find('.booking_type').append(tr.find('.booking_type').find('option:selected').text());
			}
		}
	});
</script>

		<script >

	    //创建和初始化地图函数：
	    function initMap(){
	        createMap();//创建地图
	        setMapEvent();//设置地图事件
	        addMapControl();//向地图添加控件
	    }

		//全局MAP
		var map ;
		var marker;
	    //创建地图函数：
	    function createMap(){
		    
	        map = new BMap.Map("map_canvas");//在百度地图容器中创建一个地图
	        
	        //获取已有坐标
			var lng =  $("#lngMap").val();
			var lat =  $("#latMap").val();
			var	point = new BMap.Point(lng,lat);
	    		marker = new BMap.Marker(point);  // 创建标注
	    		//alert(e.point.lng + "," + e.point.lat);
	    		map.addOverlay(marker);// 将标注添加到地图中        
				
	        //鼠标事件监听
	        map.addEventListener("click",function(e){
	        	
	            point = new BMap.Point(e.point.lng,e.point.lat);
	            $("#lngMap").val(e.point.lng);
	            $("#latMap").val(e.point.lat);
	            //标注点 
	          	map.clearOverlays();
	          	//清除指定覆盖物
	            //map.removeOverlay(marker);
	            
	    		marker = new BMap.Marker(point);  // 创建标注
	    		//alert(e.point.lng + "," + e.point.lat);
	    		map.addOverlay(marker);// 将标注添加到地图中        
	    		//反向解析 创建地理编码实例  
	    		var myGeo = new BMap.Geocoder();  
	    		// 根据坐标得到地址描述  
	    		myGeo.getLocation(point, function(result){  
	    		 if (result){  
	    			 $("#searchlocal").val(result.address);
	    		 	//  alert(result.address);  
	    		 }  
	    		});
	    		setTimeout(function(){
	    		    map.panTo(point);   //300ms后移动
	    		}, 300);
	    		
	        });
	       map.centerAndZoom(point,12);//设定地图的中心点和坐标并将地图显示在地图容器中
	       window.map = map;//将map变量存储在全局
	          
	    }
		function searchlocal(){
			var str = $("#searchlocal").val(); 
			if(str.trim() == ""){
				alert('请输入地点');
				return false;	
				}
			
		       var local = new BMap.LocalSearch(map, {
		    	   renderOptions:{map: map, autoViewport:true,selectFirstResult:true}
		    	 });
		       	map.clearOverlays();
		    	local.search(str);
			}
	    
	    //地图事件设置函数：
	    function setMapEvent(){
	        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
	        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
	        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
	        map.enableKeyboard();//启用键盘上下左右键移动地图
	    }
	    
	    //地图控件添加函数：
	    function addMapControl(){
	        //向地图中添加缩放控件
		var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
		map.addControl(ctrl_nav);
	        //向地图中添加缩略图控件
		var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
		map.addControl(ctrl_ove);
	        //向地图中添加比例尺控件
		var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
		map.addControl(ctrl_sca);
	    }
	</script>
</html>