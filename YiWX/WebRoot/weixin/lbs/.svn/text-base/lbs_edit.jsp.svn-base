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
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=thSqZqVjSs1kp3kmMf1pXkSZ"></script>
<body class="page_appmsg_edit"  >
	<div class="alert warning" id="warning-alert" >
	</div>

	
	<form id="lbs">
			<%
			LBSBean	lbsBean = (LBSBean)request.getAttribute("lbsBean");
			if(lbsBean!=null){
			%>
		<input type="hidden" name="lbsBean.id" value="<%=lbsBean.getId() %>"/>
		<div class="col_main">
			<div class="main_hd">
				<div class="title_tab" id="topTab">
					<ul class="title_tab_navs">	
						<li class="title_tab_nav js_top  selected" data-id="media10">
							<a>门店管理</a>
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
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									商家名称
								</label>
								<span >
									<input   style="width: 30%;" type="text" class="frm_input " name="lbsBean.title" value="<%=lbsBean.getTitle() %>" >
									<span class="help-block">如 汉堡王(XX分店)。</span>
								</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									电话
								</label>
								<span >
									<input   style="width: 30%;" type="text" class="frm_input " name="lbsBean.tel" value="<%=lbsBean.getTel() %>" >
									<span class="help-block">如 010-88888888。</span>
								</span>
							</div>		
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									地址
								</label>
								<span >
									<input  id="searchlocal" style="width: 30%;" type="text" class="frm_input " name="lbsBean.address" value="<%=lbsBean.getAddress() %>">
								<a onclick="searchlocal();" >
										<span  class="btn "  title="查询" style="margin-top: -5px"><i class="icon-search"></i>
										查询</span>
								</a>										
									<span class="help-block">如 北京市 海淀区 西大街海淀图书城籍海楼南侧 3W咖啡。</span>
								</span>
							</div>	
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									 经度&纬度
								</label>
								<span >
									 <input type="text" id="lngMap" name="lbsBean.lng" readonly="readonly" value="<%=lbsBean.getLng() %>"/>&<input type="text" id="latMap" name="lbsBean.lat" readonly="readonly" value="<%=lbsBean.getLat() %>"/> 
									<span class="help-block">请在地图上点击确认商铺所在位置。</span>
									<div style="width:630px;height:400px;border:#ccc solid 1px;" id="map_canvas"></div>
								</span>
								
								
							</div>								
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									商家简介
								</label>
								<textarea class="js_desc frm_textarea textarea"  name="lbsBean.desc_service"  style="width: 50%; height: 60px;" ><%=lbsBean.getDesc_service() %></textarea>
								<span class="help-block">对线下商铺的说明,建议按照需要的应用场景自行填写，长度在200字以内。</span>
							</div>	
																										
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									展示图片
								</label>
								<span >
										<div class="meta_content">
												<img id="thumb_img"
													src="<%=path %>/img/20131129145018_91311.gif"
													style="max-width: 360px;">
												<span> <input type="hidden" id="wx_upload_file"
														name="lbsBean.img" value="<%=lbsBean.getImg()%>"> <input
														type="button" id="wx_upload_file_btn" value="选择封面"
														class="btn_black" />
												</span>
												<span class="maroon">*</span><span class="error_wx_upload_file maroon"></span> 
										</div>
								</span>
								<span class="help-block">大图片建议尺寸：360像素 * 200像素,建议使用LOGO或者线下店铺照片</span>
							</div>
							
																												
							<div class="appmsg_edit_item">
								<label for="" class="frm_label">
									该商铺是否可以使用会员卡
								</label>
								<span>
								<%
								if(lbsBean.getIsVip().equals("1")){
									%>
									<input  type="checkbox"  name="lbsBean.isVip" checked="checked" value="1" >是
									<%
								}else{
								%>
									<input  type="checkbox"  name="lbsBean.isVip"  value="1" >是
									<%
								}%>
									
								</span>
								<span class="help-block">选择是,在会员卡页面的适用门店将出现该商铺。</span>
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
<script>
	$(document).ready(function(){
		//图像
		$('#thumb_img').attr('src',$('#wx_upload_file').val());
		//初始化地图
		initMap();
		})


	
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
		var params = $("form[id=lbs]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'lbs!editSave.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				if(data=='success'){
					loadContent('lbs!list.action');
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
		        	}
				});
			
			
			K('#wx_upload_file_btn').click(function() {
				editor.loadPlugin('image', function() {
					editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#wx_upload_file').val(url);
						$("#thumb_img").attr("src",url);
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


</html>