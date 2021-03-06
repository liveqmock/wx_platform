<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<!-- Apple devices fullscreen -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<!-- Apple devices fullscreen -->
		<meta name="apple-mobile-web-app-status-bar-style"
			content="black-translucent">
		<base target="mainFrame">
		<link rel="stylesheet" type="text/css"
			href="<%=path %>/css/wx_index.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-responsive.min.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/wx_style.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes.css" media="all">
		
		<script type="text/javascript"
			src="<%=path %>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript"
			src="<%=path %>/js/application.js"></script>
		<script type="text/javascript"
			src="<%=path %>/js/bootstrap.min.js"></script>
		<style type="text/css">
		.dropdown-submenu:hover>.dropdown-menu {
			display: none
		}
		</style>
		<title>微信封-微信营销系统</title>
		<!--[if IE 7]>
        <link href="<%=path %>/css/font_awesome_ie7.css" rel="stylesheet" />
    	<![endif]-->
		<link rel="shortcut icon" href="<%=path %>/img/logo_icon.png">
		<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<%=path %>/js/excanvas_min.js"></script><![endif]-->
	</head>

	<body>
		<div id="navigation">
			<div class="container-fluid" style="height: 40px;">
				<div>
					<a href="/wechat/main" target="_self" id="brand"></a>
					<a href="/wechat/main" target="_self" class="toggle-nav"
						rel="tooltip" data-placement="bottom" title="Toggle navigation"><i
						class="icon-reorder"></i>
					</a>
				</div>
				<ul class="main-nav">
					<li class="active">
						<a href="<%=path %>/test.jsp"> <span>管理平台</span> </a>
					</li>

					<li>
						<a href="<%=path %>/wx_template/wx_packageintr.jsp">套餐介绍</a>
					</li>
					<li class="">
						<a href="<%=path %>/wx_template/wx_gnjs.jsp">功能介绍</a>
					</li>
					<li class="">
						<a href="<%=path %>/wx_template/wx_guide.jsp">使用指南</a>
					</li>

					<li>
						<a href="javascript:void(0)" data-toggle="dropdown"
							class="dropdown-toggle" data-hover="dropdown"> <span>个性化服务</span>
							<span class="caret"></span> </a>

						<ul class="dropdown-menu">
							<li>
								<a href="<%=path %>/wx_template/wx_trusteeship.jsp">运营托管</a>
							</li>
							<li>
								<a href="<%=path %>/wx_template/wx_customdev.jsp">定制开发</a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="javascript:void(0)" data-toggle="dropdown"
							class="dropdown-toggle" data-hover="dropdown"> <span>帮助中心</span>
							<span class="caret"></span> </a>
						<ul class="dropdown-menu">

							<li>
								<a
									href="http://wpa.qq.com/msgrd?v=3&amp;uin=115313937&amp;site=qq&amp;menu=yes"
									target="_blank">在线客服</a>
							</li>

							<li>
								<a href="<%=path %>/wx_template/wx_about.jsp">关于我们</a>
							</li>
							<li>
								<a href="<%=path %>/wx_template/wx_help.jsp">常见问题</a>
							</li>
						</ul>
					</li>

				</ul>
				<div class="user">
					<ul class="icon-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
								title="消息" style="display: none;"><i class="icon-envelope"></i><span
								class="label label-lightred">4</span>
							</a>
						</li>
						<li class="dropdown sett" style="display: none;">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
								title="系统设置"><i class="icon-cog"></i>
							</a>
						</li>
						<li class="dropdown colo">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
								title="选择颜色"><i class="icon-tint"></i>
							</a>
							<ul class="dropdown-menu pull-right theme-colors">
								<li class="subtitle">
									Predefined colors
								</li>
								<li>
									<span class="red"></span>
									<span class="orange"></span>
									<span class="green"></span>
									<span class="brown"></span>
									<span class="blue"></span>
									<span class="lime"></span>
									<span class="teal"></span>
									<span class="purple"></span>
									<span class="pink"></span>
									<span class="magenta"></span>
									<span class="grey"></span>
									<span class="darkblue"></span>
									<span class="lightred"></span>
									<span class="lightgrey"></span>
									<span class="satblue"></span>
									<span class="satgreen"></span>
								</li>
							</ul>
						</li>
						<li>
							<a href="/login/logout" target="_self" title="系统设置"><i
								class="icon-signout"></i> 退出</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="content">
			<div id="left"
				style="overflow: hidden; outline: none; display: block;"
				tabindex="5000" class="">
				<div class="subnav">
					<div class="subnav-title ">
						<a href="javascript:void(0)" class="toggle-subnav"><i
							class="icon-angle-right"></i><span>我的微信封</span>
						</a>
					</div>
					<ul class="subnav-menu" style="display: block;">
						<li class="active">
							<a href="<%=path %>/dispatch.action?action=gerenxinxi">商户信息</a>
						</li>
						<li class="">
							<a href="/wechat/modifypwd">修改密码</a>
						</li>
						<li class="">
							<a href="<%=path %>/showAppKeys.action">公众帐号管理</a>
						</li>
						<li class="">
							<a href="<%=path %>/dispatch.action?action=chongzhi">增值服务</a>
						</li>
					</ul>
				</div>

			</div>
			<div class="right">
				<div class="main">
					<iframe frameborder="0" id="mainFrame" name="mainFrame"
						src="/wechat/account"
						style="background: url('<%=path %>/img/loading.gif') center no-repeat"></iframe>
				</div>
			</div>
		</div>


		<!-- 用户反馈 -->
		<div id="feedback" class="modal hide fade" tabindex="-1" role="dialog"
			data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							×
						</button>
						<h4 class="modal-title">
							<i class=" icon-comment-alt"></i>反馈建议
						</h4>
					</div>
					<form class="form-horizontal">
						<div class="modal-body" style="overflow: visible">
							<div class="row-fluid">
								<div id="pp">
									<p>
										亲爱的用户
									</p>
									<p class="bbottom">
										欢迎您访问微信封官方网站！您对微信封有任何意见和建议，或在使用过程中遇到问题，请在本页面反馈。我们会实时关注您的反馈不断优化，您的建议将帮助我们改进，为您提供更好的服务！
									</p>
									<p>
										<b>请留下您的宝贵意见和建议！（请填写）</b>
									</p>

									<textarea name="info" class="input-block-level"
										placeholder="输入文本..." rows="4" id="feedback-text"></textarea>
									<p>
										您常用的电子邮箱是？（请填写）
									</p>
									<p>
										*请尽量填写，以便我们尽快回复您！
									</p>
									<input type="text" placeholder="如：...@163.com" name="email"
										class="input-block-level" id="feedback-input">

								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								onclick="feedbackSubmit(); return false;" id="submit_but">
								提交
							</button>
							<button class="btn" data-dismiss="modal" aria-hidden="true"
								id="close_but">
								取消
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="feedback_btn" class="tile-themed">
			反馈建议
		</div>

		<script>
	var submitting = false;
	function feedbackSubmit(){
		if (submitting) {
			//return false;
		}
		submitting = true;
		var $data = {
			feedback: $('#feedback-text').val(),
			email: $('#feedback-input').val(),
			url: parent.document.getElementById("mainFrame").contentWindow.location.href,
			from: 'server'
		};
		$('#submit_but').text('提交中...');
		$('#submit_but').removeClass('btn-primary');
		$.post('/feedback.action', $data, function(rs){
			$("#feedback").modal('hide');
			if (200 == rs.code)
			{
				alert(rs.error);
				$('#feedback-text').val('');
				$('#feedback-input').val('');
			}
			else
			{
				alert(rs.error);
			}
			$('#submit_but').text('提交');
			$('#submit_but').addClass('btn-primary');
		}, 'json');
	}
</script>
		<div id="ascrail2000"
			style="width: 7px; z-index: 9002; position: absolute; top: 41px; left: 193px; height: 666px; display: none; opacity: 0;">
			<div
				style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgb(66, 66, 66); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px;"></div>
		</div>
		<div id="ascrail2000-hr"
			style="height: 8px; z-index: 9002; top: 699px; left: 0px; position: absolute; display: none; opacity: 0;">
			<div
				style="position: relative; top: 0px; height: 5px; width: 0px; background-color: rgb(66, 66, 66); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; left: 0px;"></div>
		</div>
	</body>
</html>