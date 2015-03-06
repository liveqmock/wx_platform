<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.zhike.viewmodels.LoginViewModel"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.utils.RequestScopeFactory"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link href="<%=path %>/css/common_style.css" rel="stylesheet" type="text/css">
		<link type="text/css" href="<%=path %>/css/basic.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src='<%=path%>/js/jquery.simplemodal.js'></script>
	</head>

	<body>
		<div id="wp" class="wp">
			<div class="contentmanage">
				<div class="developer">
					<div class="appTitle normalTitle" style="padding: 20px;">
						<h2>
							管理平台
						</h2>
						<div class="accountInfo">
						</div>
						<div class="clr"></div>
					</div>
					<div class="tableContent">
						<!--左侧功能菜单-->
						<div class="sideBar">
							<div class="catalogList">
								<ul>
									<li class="pmenu selected">
										<a onclick="loadContent('href_personal','dispatch.action?action=gerenxinxi','content');" id="href_personal">帐号信息</a>
									</li>
									<li class="pmenu">
										<a onclick="loadContent('href_manager','showAppKeys.action','content');" id="href_manager">管理公众号</a>
									</li>
									<li class="pmenu">
										<a onclick="loadContent('href_vip','dispatch.action?action=chongzhi','content');" id="href_vip">会员充值</a>
									</li>
								</ul>
							</div>
						</div>

						<div id="content" class="content" name="content" width="100%"
							scrolling="no" frameborder="0" >
						</div>

						<div class="clr"></div>
					</div>
				</div>
			</div>
		</div>
		<!--底部-->

<!-- modal content -->
		<!-- modal content -->
<div id="basic-modal-content">
	<h3>Basic Modal Dialog</h3>
			<p>For this demo, SimpleModal is using this "hidden" data for its content. You can also populate the modal dialog with an AJAX response, standard HTML or DOM element(s).</p>
			<p>Examples:</p>
			<p><code>$('#basicModalContent').modal(); // jQuery object - this demo</code></p>
			<p><code>$.modal(document.getElementById('basicModalContent')); // DOM</code></p>
			<p><code>$.modal('&lt;p&gt;&lt;b&gt;HTML&lt;/b&gt; elements&lt;/p&gt;'); // HTML</code></p>
			<p><code>$('&lt;div&gt;&lt;/div&gt;').load('page.html').modal(); // AJAX</code></p>
		
			<p><a href='http://www.ericmmartin.com/projects/simplemodal/'>More details...</a></p>
</div>
	</body>
	
	
	<script type="text/javascript">
function loadContent(call,action,target){
	var arrow = $("#"+call);
	$(".pmenu").removeClass("selected");
	arrow.parent().addClass("selected");
	//window.open(action,target);
	
	$.ajax({
		async : true,
		cache : false,
		type : 'POST',
		url : action, //请求的action路径
		success : function(data) { //请求成功后处理函数
			$("#"+target).html(data);
		}
	});
}

$(document).ready(function(){
	loadContent('href_personal','dispatch.action?action=gerenxinxi','content');
	
	
	/*var OSX = {
		container: null,
		init: function () {
			$("input.osx, a.osx").click(function (e) {
				e.preventDefault();	

				$("#osx-modal-content").modal({
					overlayId: 'osx-overlay',
					containerId: 'osx-container',
					closeHTML: null,
					minHeight: 80,
					opacity: 65, 
					position: ['0',],
					overlayClose: true,
					onOpen: OSX.open,
					onClose: OSX.close
				});
			});
		},
		open: function (d) {
			var self = this;
			self.container = d.container[0];
			d.overlay.fadeIn('slow', function () {
				$("#osx-modal-content", self.container).show();
				var title = $("#osx-modal-title", self.container);
				title.show();
				d.container.slideDown('slow', function () {
					setTimeout(function () {
						var h = $("#osx-modal-data", self.container).height()
							+ title.height()
							+ 20; // padding
						d.container.animate(
							{height: h}, 
							200,
							function () {
								$("div.close", self.container).show();
								$("#osx-modal-data", self.container).show();
							}
						);
					}, 300);
				});
			})
		},
		close: function (d) {
			var self = this; // this = SimpleModal object
			d.container.animate(
				{top:"-" + (d.container.height() + 20)},
				500,
				function () {
					self.close(); // or $.modal.close();
				}
			);
		}
	};

	OSX.init();*/
	$('#basic-modal-content').modal({
		position: [10],
		onOpen: function (dialog) {
			dialog.overlay.fadeIn('slow', function () {
				dialog.container.slideDown('slow', function () {
					dialog.data.fadeIn('slow');})
		});},
		onClose: function (dialog) {
			dialog.data.fadeOut('slow', function () {
				dialog.container.slideUp('slow', function () {
					dialog.overlay.fadeOut('slow', function () {
						$.modal.close(); // must call this!
					});
				});
			});
		},
		overlayClose:true,
		opacity:80,
		//overlayCss: {backgroundColor:"#fff"}
	});

});

</script>
</html>