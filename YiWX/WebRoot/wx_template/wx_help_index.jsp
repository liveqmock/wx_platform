<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta content="微信封、微信营销、微信代运营、微信定制开发、微信托管、微网站、微商城、微营销" name="Keywords">
		<meta
			content="微信封，国内最大的微信公众智能服务平台，微信封八大微体系：微菜单、微官网、微会员、微活动、微商城、微推送、微服务、微统计，企业微营销必备。"
			name="Description">
		<script src="<%=path%>/js/html5.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/bootstrap.min.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/wx_help/index.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/wx_help/help.css" media="all" />
		<script type="text/javascript" src="<%=path%>/js/jquery.1.8.3.js"></script>
		<script type="text/javascript"
			src="<%=path%>/js/weimob-index.js"></script>
		<title>微信封-微信营销系统</title>
		<link rel="shortcut icon" href="<%=path%>/img/logo_icon.png" />
	</head>
	<body>

		<!--595 850-->
		<script language="javascript">
       $(function () {
            $("a").click(function () {
                var rel = $(this).attr("rel");
                if (rel) {
                    var pos = $(rel).offset().top-60;
                    $("html,body").animate({ scrollTop: pos }, 800);
                }
               
            })
        })            
</script>
		<script>
	$().ready(function(){
	
		window.onscroll = window.onresize = function(){
			showSideBar();
		}
	});
	function showSideBar(){
		if(!window.sideMenu){
			window.sideMenu = $("#sideToolbar");	
		}
		if((document.body.scrollTop||document.documentElement.scrollTop)>500){
			sideMenu.addClass("on");
		}else{
			sideMenu.removeClass("on");
		}
	}
	


</script>
		<!--[if lte IE 8]>  <script language="javascript">$(function (){$.browser.msie&&$("#ie9-tips").show().find("#stopSuggestA").click(function(){$("#ie9-tips").hide()})})</script><![endif]-->
		<div class="nav clearfix">
			<div class="nav-content">
				<h1 class="left" onclick="location.herf='/site/city1'">
					微信封·微信营销，如此简单！
				</h1>
				<div class="left city">
					<h2>
						上海
					</h2>
				</div>
				<div class="right line-li">
					<ul>
						<li>
							<a href="/">首页</a>
						</li>
						<li>
							<a href="/site/case1">经典案例</a>
						</li>
						<li>
							<a href="/site/proxy1">渠道代理</a>
						</li>
						<li>
							<a href="/site/guide1">功能介绍</a>
						</li>
						<li>
							<a href="javascript:;" class="navtwo"
								onclick="loginBox.toggle(this, event);">登录</a>
						</li>
						<li>
							<a href="/site/reg1" class="navtwo" target="_black">注册</a>
						</li>
						<li>
							<a href="/site/help" class="hover navtwo" target="_black">帮助</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="loginBox">
			<div class="login-panel">
				<h3>
					登录
				</h3>
				<div class="login-mod">
					<div class="login-err-panel dn" id="err_area">
						<span class="icon-wrapper"><i class="icon24-login err"
							style="margin-top: -.2em; * margin-top: 0;"></i>
						</span>
						<span id="err_tips"></span>
					</div>
					<form class="login-form" id="login-form">
						<div class="login-un">
							<span class="icon-wrapper"><i class="icon24-login un"></i>
							</span>
							<input type="text" id="username" placeholder="微信封号">
						</div>
						<div class="login-pwd">
							<span class="icon-wrapper"><i class="icon24-login pwd"></i>
							</span>
							<input type="password" id="password" placeholder="密码">
						</div>
					</form>
					<div class="login-help-panel">
						<a id="rememberPwd" class="login-remember-pwd" href="javascript:;">
							<input type="checkbox" id="rememberPwdIcon">记住帐号 </a>
						<a class="login-forget-pwd" href="/site/reg1">我是新用户!<strong>申请入驻</strong>
						</a>
					</div>
					<div class="login-btn-panel">
						<a class="login-btn" title="点击登录" href="javascript:;"
							id="login_button" onclick="login();">登录</a>
					</div>
				</div>
			</div>
			<div class="login-cover" onclick="loginBox.toggle(this, event);"></div>
		</div>
		<div id="ie9-tips" class="clearfix">
			<div id="tipsPanel">
				<div id="tipsDesc">
					系统检测到您所使用的浏览器版本较低，推荐使用
					<a href="http://www.firefox.com.cn/download/" target="_blank">Firefox</a>或
					<a href="http://www.google.cn/intl/zh-CN/chrome/browser/index.html"
						target="_blank">Chrome</a>浏览器打开，否则将无法体验完整产品功能。
				</div>
				<a id="stopSuggestA" href="javascript:;">×</a>
			</div>
		</div>

		<script>
	var $do_submit = false;

	// 绑定回车键
	$('#loginBox').keydown(function(e) {
		if (13 == event.keyCode) {
			login();
		}
	});

	function login() {
		if (true == $do_submit) {
			return false;
		}

		var $pre_submit = '登录', $do_submit = '登录中...';
		var $username = $('#username').val(), $password = $('#password').val(), $keepalive = $(
				'#rememberPwdIcon').val();
		$('#login_button').text($do_submit);
		$do_submit = true;

		// check
		if ('' == $username || '' == $password) {
			$('#err_tips').text('您输入的微信封号或密码错误，请重新输入！');
			$('#err_area').show();
			$('#login_button').text($pre_submit);
			$do_submit = false;
			return false;
		}

		var $login_data = {
			username : $username,
			password : $password,
			keepalive : $keepalive
		};
		$.post('/login', $login_data, function(rs) {
			if (rs.errno == 200) {
				location.href = rs.url_route;
			} else {
				$('#err_tips').text(rs.error);
				$('#err_area').show();
				$('#login_button').text($pre_submit);
			}
			$do_submit = false;
		}, 'json');
	}
</script>
		<div id="top"></div>
		<div id="page">
			<div class="title">
				微信封产品使用指南（目 录）
			</div>
			<div id="menuList" class="z-catalog nslog-area log-set-param">
				<dl class="holder">
					<dd class="catalog-item">
						<p>
							<span>1</span><a href="#1">微信封简介</a>
						</p>
						<ol>
							<li>
								<span>1.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=1#1_1" rel="#1_1">什么是微信封</a>
							</li>
							<li>
								<span>1.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=1#1_2" rel="#1_2">企业为什么开通微信公众号</a>
							</li>
							<li>
								<span>1.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=1#1_3" rel="#1_3">微信封平台优势</a>
							</li>
							<li>
								<span>1.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=1#1_4" rel="#1_4">微信封套餐介绍</a>
							</li>
							<li>
								<span>1.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=1#1_5" rel="#1_5">微信封如何购买充值</a>
							</li>
						</ol>
					</dd>
					<dd class="catalog-item">
						<p>
							<span>2</span><a href="#2">基础建设</a>
						</p>
						<ol>
							<li>
								<span>2.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_1" rel="#2_1">如何注册微信公众号</a>
							</li>
							<li>
								<span>2.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_2" rel="#2_2">如何注册微信封平台</a>
							</li>
							<li>
								<span>2.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_3" rel="#2_3">如何添加公众号</a>
							</li>
							<li>
								<span>2.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_4" rel="#2_4">账户信息参数详解</a>
							</li>
							<li>
								<span>2.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_5" rel="#2_5">运营图表</a>
							</li>
							<li>
								<span>2.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_6" rel="#2_6">默认设置</a>
							</li>
							<li>
								<span>2.7</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_7" rel="#2_7">关注时回复</a>
							</li>
							<li>
								<span>2.8</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_8" rel="#2_8">文本回复</a>
							</li>
							<li>
								<span>2.9</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_9" rel="#2_9">图文回复</a>
							</li>
							<li>
								<span>2.10</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_10" rel="#2_10">自定义菜单</a>
							</li>
							<li>
								<span>2.11</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=2#2_11" rel="#2_11">LBS回复</a>
							</li>
						</ol>
					</dd>
					<dd class="catalog-item">
						<p>
							<span>3</span><a href="#3">微活动</a>
						</p>
						<ol>
							<li>
								<span>3.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=3#3_1" rel="#3_1">优惠券</a>
							</li>
							<li>
								<span>3.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=3#3_2" rel="#3_2">刮刮卡</a>
							</li>
							<li>
								<span>3.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=3#3_3" rel="#3_3">大转盘</a>
							</li>
							<li>
								<span>3.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=3#3_4" rel="#3_4">微投票</a>
							</li>
							<li>
								<span>3.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=3#3_5" rel="#3_5">一战到底</a>
							</li>

						</ol>
					</dd>
					<dd class="catalog-item">
						<p>
							<span>4</span><a href="#4">微服务</a>
						</p>
						<ol>
							<li>
								<span>4.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_1" rel="#4_1">城市天气</a>
							</li>
							<li>
								<span>4.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_2" rel="#4_2">百度百科</a>
							</li>
							<li>
								<span>4.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_3" rel="#4_3">即时翻译</a>
							</li>
							<li>
								<span>4.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_4" rel="#4_4">股票查询</a>
							</li>
							<li>
								<span>4.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_5" rel="#4_5">快递查询</a>
							</li>
							<li>
								<span>4.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_6" rel="#4_6">火车查询</a>
							</li>
							<li>
								<span>4.7</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_7" rel="#4_7">航班查询</a>
							</li>
							<li>
								<span>4.8</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=4#2_8" rel="#4_8">星座密语</a>
							</li>
						</ol>

					</dd>
					<dd class="catalog-item">
						<p>
							<span>5</span><a href="#5">微会员</a>
						</p>
						<ol>
							<li>
								<span>5.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_1" rel="#5_1">会员卡设置</a>
							</li>
							<li>
								<span>5.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_2" rel="#5_2">会员卡使用</a>
							</li>
							<li>
								<span>5.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_3" rel="#5_3">会员管理</a>
							</li>
							<li>
								<span>5.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_4" rel="#5_4">充值记录</a>
							</li>
							<li>
								<span>5.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_5" rel="#5_5">积分策略</a>
							</li>
							<li>
								<span>5.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_6" rel="#5_6">通知管理</a>
							</li>
							<li>
								<span>5.7</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_7" rel="#5_7">特权管理</a>
							</li>
							<li>
								<span>5.8</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_8" rel="#5_8">优惠券管理</a>
							</li>
							<li>
								<span>5.9</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_9" rel="#5_9">礼品券管理</a>
							</li>
							<li>
								<span>5.10</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_10" rel="#5_10">数据统计</a>
							</li>
							<li>
								<span>5.11</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=5#5_11" rel="#5_11">门店管理</a>
							</li>
						</ol>


					</dd>
					<dd class="catalog-item">
						<p>
							<span>6</span><a href="#6">微官网</a>
						</p>
						<ol>
							<li>
								<span>6.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=6#6_1" rel="#6_1">微官网设置</a>
							</li>
							<li>
								<span>6.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=6#6_2" rel="#6_2">首页幻灯片设置</a>
							</li>
							<li>
								<span>6.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=6#6_3" rel="#6_3">分类管理</a>
							</li>
							<li>
								<span>6.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=6#6_4" rel="#6_4">文章添加</a>
							</li>
							<li>
								<span>6.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=6#6_5" rel="#6_5">模板管理</a>
							</li>
							<li>
								<span>6.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=6#6_6" rel="#6_6">快捷与版权</a>
							</li>
						</ol>
					</dd>
					<dd class="catalog-item">
						<p>
							<span>7</span><a href="#7">微酒店</a>
						</p>

						<ol>
							<li>
								<span>7.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=7#7_1" rel="#7_1">酒店管理</a>
							</li>
							<li>
								<span>7.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=7#7_2" rel="#7_2">订单管理</a>
							</li>
							<li>
								<span>7.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=7#7_3" rel="#7_3">房间设置</a>
							</li>
						</ol>
					</dd>
					<dd class="catalog-item">
						<p>
							<span>8</span><a href="#8">微汽车</a>
						</p>
						<ol>
							<li>
								<span>8.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#2_1" rel="#8_1">汽车设置</a>
							</li>
							<li>
								<span>8.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_2" rel="#8_2">品牌管理</a>
							</li>
							<li>
								<span>8.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_3" rel="#8_3">车系管理</a>
							</li>
							<li>
								<span>8.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_4" rel="#8_4">车型管理</a>
							</li>
							<li>
								<span>8.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_5" rel="#8_5">销售管理</a>
							</li>
							<li>
								<span>8.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_6" rel="#8_6">预约保养</a>
							</li>
							<li>
								<span>8.7</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_7" rel="#8_7">预约试驾</a>
							</li>
							<li>
								<span>8.8</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=8#8_8" rel="#8_8">实用工具</a>
							</li>
						</ol>

					</dd>

					<dd class="catalog-item">
						<p>
							<span>9</span><a href="#9">微房产</a>
						</p>
						<ol>
							<li>
								<span>9.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=9#9_1" rel="#9_1">楼盘简介</a>
							</li>
							<li>
								<span>9.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=9#9_2" rel="#9_2">子楼盘</a>
							</li>
							<li>
								<span>9.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=9#9_3" rel="#9_3">楼盘户型</a>
							</li>
							<li>
								<span>9.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=9#9_4" rel="#9_4">楼盘相册</a>
							</li>
							<li>
								<span>9.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=9#9_5" rel="#9_5">房友印象</a>
							</li>
							<li>
								<span>9.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=9#9_6" rel="#9_6">专家点评</a>
							</li>

						</ol>

					</dd>

					<dd class="catalog-item">
						<p>
							<span>10</span><a href="#10">微预约</a>
						</p>
						<ol>
							<li>
								<span>10.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=10#10_1" rel="#10_1"
									title="预约管理">预约管理</a>
							</li>
							<li>
								<span>10.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=10#10_2" rel="#10_2"
									title="预约统计">预约统计</a>
							</li>

						</ol>

					</dd>
					<dd class="catalog-item">
						<p>
							<span>11</span><a href="#11">微餐饮</a>
						</p>
						<ol>
							<li>
								<span>11.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=11#11_1" rel="#11_1"
									title="门店管理">门店管理</a>
							</li>
							<li>
								<span>11.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=11#11_2" rel="#11_2"
									title="分类管理">分类管理</a>
							</li>
							<li>
								<span>11.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=11#11_3" rel="#11_3"
									title="标签管理">标签管理</a>
							</li>
							<li>
								<span>11.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=11#11_4" rel="#11_4"
									title="菜品管理">菜品管理</a>
							</li>
							<li>
								<span>11.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=11#11_5" rel="#11_5"
									title="智能选餐">智能选餐</a>
							</li>
							<li>
								<span>11.6</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=11#11_6" rel="#11_6"
									title="餐台设置">餐台设置</a>
							</li>


						</ol>

					</dd>

					<dd class="catalog-item">
						<p>
							<span>12</span><a href="#12">微商城</a>
						</p>
						<ol>
							<li>
								<span>12.1</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=12#12_1" rel="#12_1"
									title="系统设置">系统设置</a>
							</li>
							<li>
								<span>12.2</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=12#12_2" rel="#12_2"
									title="商品管理">商品管理</a>
							</li>
							<li>
								<span>12.3</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=12#12_3" rel="#12_3"
									title="订单管理">订单管理</a>
							</li>
							<li>
								<span>12.4</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=12#12_4" rel="#12_4"
									title="会员中心">会员中心</a>
							</li>
							<li>
								<span>12.5</span><a href="<%=path%>/wx_template/wx_help_detail.jsp?help=12#12_5" rel="#12_5"
									title="管理员">管理员</a>
							</li>
						</ol>

					</dd>

				</dl>
			</div>
		</div>

		<!--QQ咨询-->
		<div class="footer">
			<div class="footer-content clearfix">
				<div class="foot-menu">
					<p>
						<a href="/site/index1" target="_blank">微信封首页</a>&nbsp;|&nbsp;
						<a href="/site/reg1" target="_blank">申请入驻</a>&nbsp;|&nbsp;
						<a href="/site/proxy1" target="_blank">渠道代理</a>&nbsp;|&nbsp;
						<a
							href="http://wpa.qq.com/msgrd?v=3&uin=115313937&site=qq&menu=yes"
							target="_blank">接口定制</a>&nbsp;|&nbsp;
						<a
							href="http://wpa.qq.com/msgrd?v=3&uin=115313937&site=qq&menu=yes"
							target="_blank">微信托管</a>&nbsp;|&nbsp;
						<a href="/site/about1" target="_blank">关于微信封</a>
					</p>
					<p>
						免费热线：115313937&nbsp;&nbsp;&nbsp;QQ：115313937&nbsp;&nbsp;&nbsp;邮箱：kefu@hsmob.com
					</p>
					<p>
						地址： 上海市市辖区杨浦区政益路28号1106-1109室
					</p>
				</div>
				<div class="copyright">
					Copyright © 2011-2013 www.weimob.com. All Rights Reserved
					上海晖硕信息科技有限公司版权所有 沪ICP备13021836号-1
				</div>
			</div>
		</div>
	</body>
</html>
