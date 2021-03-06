<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<!-- Apple devices fullscreen -->
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<!-- Apple devices fullscreen -->
		<meta name="apple-mobile-web-app-status-bar-style"
			content="black-translucent" />
		<base target="mainFrame" />
		<link rel="stylesheet" type="text/css"
			href="<%=path %>/css/wx_index.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-responsive.min.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/wx_style.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/themes.css" media="all">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/qq/css/base1a003d.css" />
		
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/js/application.js"></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
		<title>微信封-微信营销系统</title>
		<!--[if IE 7]>
       <link href="<%=path%>/css/font_awesome_ie7.css" rel="stylesheet" />
    <![endif]-->
		<link rel="shortcut icon" href="<%=path%>/img/logo_icon.png" />
		<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<%=path%>/src/excanvas_min.js"></script><![endif]-->
	</head>

	<body>
		<div id="navigation">
			<div class="container-fluid">
				<div>
					<a href="<%=path %>" target="_self" id="brand"></a>
					<a href="javascript:void(0);" class="toggle-nav" rel="tooltip"
						data-placement="bottom" id="menu-handle" title="隐藏菜单"><i
						class="icon-reorder"></i>
					</a>
				</div>

				<ul class='main-nav'>
					<li class="active">
						<a href="<%=path %>/showAppKeys.action"> <span>管理平台</span> </a>
					</li>
					<li>
						<a href="<%=path %>/wx_wechat/wx_index.jsp" target="_self"> <span>公众号管理</span> </a>
					</li>
					<li>
						<a href="<%=path %>/wx_template/wx_packageintr.jsp">套餐介绍</a>
					</li>
					<li>
						<a href="<%=path %>/wx_template/wx_gnjs.jsp">功能介绍</a>
					</li>
					<li>
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
									href="http://wpa.qq.com/msgrd?v=3&amp;uin=56916860&amp;site=qq&amp;menu=yes"
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
						<li class='dropdown'>
							<a href="#" class='dropdown-toggle' data-toggle="dropdown"
								title="消息" style="display: none;"><i class="icon-envelope"></i><span
								class="label label-lightred">4</span>
							</a>
						</li>
						<li class="dropdown sett" style="display: none;">
							<a href="#" class='dropdown-toggle' data-toggle="dropdown"
								title="系统设置"><i class="icon-cog"></i>
							</a>
						</li>
						<li class='dropdown colo'>
							<a href="#" class='dropdown-toggle' data-toggle="dropdown"
								title="选择颜色"><i class="icon-tint"></i>
							</a>
							<ul class="dropdown-menu pull-right theme-colors">
								<li class="subtitle">
									Predefined colors
								</li>
								<li>
									<span class='red'></span>
									<span class='orange'></span>
									<span class='green'></span>
									<span class="brown"></span>
									<span class="blue"></span>
									<span class='lime'></span>
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
					</ul>
					<div class="dropdown">
						<a href="#" class='dropdown-toggle' data-toggle="dropdown"
							style="width: 140px;"><nobr>
								<img
									src="<%=path %>/images/header.jpg"
									style="width: 27px; height: 27px" alt="">
								<span class="caret"></span>
							</nobr>
						</a>
						<ul class="dropdown-menu pull-right">
							<li>
								<a href="<%=path %>/wx_wechat/wx_index.jsp" target="_self">管理帐号</a>
							</li>
							<li>
								<a href="<%=path %>/loginOut.action" target="_self">退出</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>




		<div class="container-fluid" id="content">
			<div id="left">
				<div class="col_side">
					<div class="menu_box" id="menuBar">
						<dl id="menu_function" class="menu no_extra">
							<dt class="menu_title">
								<i class="icon_menu function"></i><i class="icon_menu_switch"></i>我的VXIN</dt>
							<dd id="menu_masssend" class="menu_item selected">
								<a href="<%=path %>/selectAppByUserIdAndAppId.action">账户信息</a>
							</dd>
						</dl>
						<dl id="menu_manage" class="menu  closed">
							<dt class="menu_title">
								<i class="icon_menu manage"></i><i class="icon_menu_switch"></i>管理
							</dt>
							<!--  <dd id="menu_message" class="menu_item ">
								<a
									href="/cgi-bin/message?t=message/list&amp;count=20&amp;day=7&amp;token=287667257&amp;lang=zh_CN">消息管理</a>
							</dd>
							<dd id="menu_contact" class="menu_item ">
								<a
									href="/cgi-bin/contactmanage?t=user/index&amp;pagesize=10&amp;pageidx=0&amp;type=0&amp;token=287667257&amp;lang=zh_CN">用户管理</a>
							</dd>
							<dd id="menu_masssend" class="menu_item ">
								<a
									href="<%=path %>/showAppKeys.action">公众号管理</a>
							</dd>-->
							<dd id="menu_masssend" class="menu_item ">
								<a href="<%=path %>/keywords.action">回复管理</a>
							</dd>
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/lbs!list.action">门店管理</a>
							</dd>		
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/clock!list.action">考勤管理</a>
							</dd>														
							<dd id="menu_material" class="menu_item no_extra">
								<a href="<%=path %>/selectAllNewMaterialByUserId.action">素材管理</a>
							</dd>
							

							<dd id="menu_material" class="menu_item no_extra">
								<a href="<%=path %>/selectAllMenusByAppKey.action">菜单管理</a>
							</dd>
						</dl>
						<dl id="menu_service" class="menu  closed">
							<dt class="menu_title">
								<i class="icon_menu service"></i><i class="icon_menu_switch"></i>营销服务
								<i class="icon_common new"></i>
							</dt>
							<dd id="menu_shop" class="menu_item ">
								<a href="<%=path %>/member!list.action">会员卡</a>
							</dd>	
							<!-- 
							<dd id="menu_shop" class="menu_item ">
								<a href="<%=path %>/member!list.action">分享有礼</a>
							</dd>	
							 -->													
							<dd id="menu_shop" class="menu_item ">
								<a href="<%=path %>/guaguaka!list.action">刮刮卡</a>
							</dd>
							<dd id="menu_shop" class="menu_item ">
								<a href="<%=path %>/dazhuanpan!list.action">大转盘</a>
							</dd>	
													
						</dl>
						<!--  <dl id="menu_statistics" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu statistics"></i><i class="icon_menu_switch"></i>统计
							</dt>
							<dd id="menu_user" class="menu_item ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_user_summary&amp;pluginid=luopan&amp;t=statistics/index&amp;token=287667257&amp;lang=zh_CN">用户分析</a>
							</dd>
							<dd id="menu_appmsg" class="menu_item">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_article_detail&amp;pluginid=luopan&amp;t=statistics/index&amp;token=287667257&amp;lang=zh_CN">图文分析</a>
							</dd>
							<dd id="menu_message" class="menu_item ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_message&amp;pluginid=luopan&amp;t=statistics/index&amp;token=287667257&amp;lang=zh_CN">消息分析</a>
							</dd>
							<dd id="menu_interface" class="menu_item  no_extra ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_interface&amp;pluginid=luopan&amp;t=statistics/index&amp;token=287667257&amp;lang=zh_CN">接口分析</a>
							</dd>
						</dl>-->
						
						<dl id="menu_gw" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>微官网
							</dt>
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/selectWebsite.action">微官网设置</a>
							</dd>
							
						</dl>
						<dl id="menu_yl" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu function"></i><i class="icon_menu_switch"></i>微官网应用
							</dt>
							<dd id="menu_user" class="menu_item">
								<a href="<%=path %>/quanjing!cogInfo.action">360度全景</a>
							</dd>
							<dd id="menu_user" class="menu_item">
								<a href="<%=path %>/photobasic!basiclist.action">微相册</a>
							</dd>		
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/order!list.action">微预约</a>
							</dd>	
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/messagebasic!list.action">微留言</a>
							</dd>	
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/researchbasic!list.action">微调研</a>
							</dd>
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/liuying!list.action">留影墙</a>
							</dd>
							<!-- 
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/researchperson.action?serviceid=12&openid=asdffdsa">微调研前台</a>
							</dd>
							 -->								
						</dl>
						<!--
						<dl id="menu_yl" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>微相册
							</dt>
							<dd id="menu_user" class="menu_item">
								<a href="<%=path %>/photo!cogInfo.action">相册基本信息管理</a>
							</dd>
							<dd id="menu_user" class="menu_item">
								<a href="<%=path %>/photobasic!basiclist.action">微相册</a>
							</dd>
						</dl>
						 -->
						 <!--
						<dl id="menu_yl" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>微预约
							</dt>
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/order!list.action">微预约</a>
							</dd>
						</dl>
						-->
						<!--
						<dl id="menu_yl" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>微留言
							</dt>
						
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/showMessages.action?serviceid=3&openid=yes">微留言模版预览</a>
							</dd>
							 
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/showAllMessages!cogInfo.action">微留言总汇</a>
							</dd>
						
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/messagebasic!list.action">微留言</a>
							</dd>
							
						</dl>
						 -->
						<!--
						<dl id="menu_yl" class="menu closed">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>微文件管理
							</dt>
							<dd id="menu_user" class="menu_item ">
								<a href="<%=path %>/file!show.action">微文件管理</a>
							</dd>
						</dl>
						<dl id="menu_setting" class="menu extra closed">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>设置
							</dt>
							 <dd id="menu_account" class="menu_item ">
								<a
									href="settingpage?t=setting/index&amp;action=index&amp;token=287667257&amp;lang=zh_CN">帐号信息</a>
							</dd>
							<dd id="menu_assistant" class="menu_item ">
								<a
									href="assistant?t=setting/mphelper&amp;action=mphelper&amp;token=287667257&amp;lang=zh_CN">公众号助手</a>
							</dd>
							
							<dd id="menu_masssend" class="menu_item ">
								<a href="<%=path %>/dispatch.action?action=gerenxinxi">帐号信息</a>
							</dd>
							
							<dd id="menu_masssend" class="menu_item ">
								<a href="<%=path %>/dispatch.action?action=gerenxinxi">修改密码</a>
							</dd>
							
							<dd id="menu_masssend" class="menu_item ">
								<a href="<%=path %>/dispatch.action?action=chongzhi">增值服务</a>
							</dd>
						</dl>-->
					</div>
				</div>				
				<!--<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>我的微信封</span>
						</a>
					</div>
					<ul class="subnav-menu" style="display: block;">
						<li>
							<a href="/wechat/home?aid=28570">账户信息</a>
						</li>
						<li>
							<a href="/wechat/stat?aid=28570">运营图表</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>功能</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="<%=path %>/wx/wx_addkeyword.jsp">被关注自动回复</a>
						</li>
						<li>
							<a href="<%=path %>/wx/wx_addkeyword.jsp">消息自动回复</a>
						</li>
						<li>
							<a href="<%=path %>/wx/wx_addkeyword_auto.jsp">关键词自动回复</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>管理</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/wechat/replyset?aid=28570">消息管理</a>
						</li>
						<li>
							<a href="/wechat/replysubscribe?aid=28570">用户管理</a>
						</li>
						<li>
							<a href="<%=path %>/wx/wx_sucai.jsp">素材管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>素材库</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/wechat/replyset?aid=28570">默认设置</a>
						</li>
						<li>
							<a href="<%=path %>/wx/wx_sucai.jsp">关注时回复</a>
						</li>
						<li>
							<a href="<%=path %>/wx/wx_sucai.jsp">文本回复</a>
						</li>
						<li>
							<a href="<%=path %>/sucai_single.action">图文回复</a>
						</li>
						<li>
							<a href="<%=path %>/sucai_mulite.action">LBS回复</a>
						</li>
					</ul>
				</div>
				 <div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>自定义菜单</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/wechat/menuset?aid=28570">授权设置</a>
						</li>
						<li>
							<a href="/wechat/menu?aid=28570">菜单设置</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微服务</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/wechat/app?aid=28570">应用管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微活动</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Weactivity/CouponsList?aid=28570">优惠券</a>
						</li>
						<li>
							<a href="/Weactivity/ScratchCard?aid=28570">刮刮卡</a>
						</li>
						<li>
							<a href="/Weactivity/Bigwheel?aid=28570">大转盘</a>
						</li>
						<li>
							<a href="/Weactivity/Vote?aid=28570">微投票</a>
						</li>
						<li>
							<a href="/Exam/Examlist?aid=28570">一战到底</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微信会员卡</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/membercard/setbusiness?aid=28570">商家设置</a>
						</li>
						<li>
							<a href="/membercard/index?aid=28570">会员卡设置</a>
						</li>
						<li>
							<a href="/membercard/GetMembers?aid=28570">会员管理</a>
						</li>
						<li>
							<a href="/membercard/MemberChargeList?aid=28570">充值记录</a>
						</li>
						<li>
							<a href="/shopcard/score?aid=28570">积分策略</a>
						</li>
						<li>
							<a href="/shopcard/announce?aid=28570">通知管理</a>
						</li>
						<li>
							<a href="/membercard/Getprivileges?aid=28570">特权管理</a>
						</li>
						<li>
							<a href="/membercard/MemberCoupon?aid=28570">优惠券管理</a>
						</li>
						<li>
							<a href="/membercard/MemberGift?aid=28570">礼品券管理</a>
						</li>
						<li>
							<a href="/membercard/Statistics?aid=28570">会员统计</a>
						</li>
						<li>
							<a href="/membercard/ConsumptionStatics?aid=28570">消费统计</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微官网</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/microsite/set?aid=28570">微官网设置</a>
						</li>
						<li>
							<a href="/microsite/slide?aid=28570">首页幻灯片</a>
						</li>
						<li>
							<a href="/microsite/class?aid=28570">分类管理</a>
						</li>
						<li>
							<a href="/microsite/template?aid=28570">模板管理</a>
						</li>
						<li>
							<a href="/microsite/plugmenu?aid=28570">快捷与版权</a>
						</li>
						<li>
							<a href="/microsite/plugin?aid=28570">实用工具</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微留言</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/message/MessageSet?aid=28570">留言板设置</a>
						</li>
						<li>
							<a href="/message/List?aid=28570">留言列表</a>
						</li>
						<li>
							<a href="/message/BackList?aid=28570">黑名单列表</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微相册</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Wealbums/AlbumsSet?aid=28570">相册设置</a>
						</li>
						<li>
							<a href="/Wealbums/AlbumsList?aid=28570">相册管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微预约</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Wereserve/ReserveInfo?aid=28570">预约管理</a>
						</li>
						<li>
							<a href="/Wereserve/Microreserve?aid=28570">预约统计</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微酒店</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/wehotel/HotelList?aid=28570">酒店管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微调研</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Survey/List?aid=28570">调研管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微喜帖</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/card/CardManager?aid=28570">功能管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微汽车</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/wecar/CarBrandList?aid=28570">品牌管理</a>
						</li>
						<li>
							<a href="/wecar/CarSeriesList?aid=28570">车系管理</a>
						</li>
						<li>
							<a href="/wecar/CarModelList?aid=28570">车型管理</a>
						</li>
						<li>
							<a href="/wecar/CarSellList?aid=28570">销售管理</a>
						</li>
						<li>
							<a href="/wecar/CarreserveInfo?aid=28570">预约保养</a>
						</li>
						<li>
							<a href="/wecar/CarreserveInfo?aid=28570&tp=2">预约试驾</a>
						</li>
						<li>
							<a href="/wecar/CarCase?aid=28570">车主关怀</a>
						</li>
						<li>
							<a href="/wecar/CarTool?aid=28570">实用工具</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微医疗</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Wemedical/microReg?aid=28570">挂号设置</a>
						</li>
						<li>
							<a href="/Wemedical/InfoCollection?aid=28570">内容设置</a>
						</li>
						<li>
							<a href="/Wemedical/ViewReservation?aid=28570">预约查询</a>
						</li>
						<li>
							<a href="/Wemedical/Micromdical?aid=28570">预约统计</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微房产</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Estate/Set?aid=28570">楼盘简介</a>
						</li>
						<li>
							<a href="/Estate/CategoryIndex?aid=28570">子楼盘</a>
						</li>
						<li>
							<a href="/Estate/HouseIndex?aid=28570">楼盘户型</a>
						</li>
						<li>
							<a href="/Estate/AlbumIndex?aid=28570">楼盘相册</a>
						</li>
						<li>
							<a href="/Estate/ImpressIndex?aid=28570">房友印象</a>
						</li>
						<li>
							<a href="/Estate/ExpertIndex?aid=28570">专家点评</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微生活</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/Market/classList?aid=28570">商户管理</a>
						</li>
						<li>
							<a href="/Market/memberList?aid=28570">会员管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微餐饮</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/spfood/outlet?aid=28570">门店管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微商城</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="http://28570.vshop.weimob.com/_admin" target="_blank">我的微商城</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>系统设置</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/System/Privilege/RoleList">权限角色管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>门店系统</span>
						</a>
					</div>
					<ul class="subnav-menu">
						<li>
							<a href="/spfood/outlet?aid=28570">门店管理</a>
						</li>
					</ul>
				</div>
				<div class="subnav">
					<div class="subnav-title">
						<a href="javascript:alert('请于客服索取微推广软件');" class='toggle-subnav'><i
							class="icon-angle-right"></i><span>微推送</span>
						</a>
					</div>
					<ul class="subnav-menu">
					</ul>
				</div> -->
				<div class="subnav bottom">
					<div class="subnav-title">
						<a href="javascript:void(0);" class='toggle-subnav'><i
							class="icon-angle-right"></i><span></span>
						</a>
					</div>
					<ul class="subnav-menu">
					</ul>
				</div>
			</div>
			<div class="right">
				<div class="main">
					<iframe frameborder="0" id="mainFrame" name="mainFrame"
						src="<%=path %>/selectAppByUserIdAndAppId.action"
						style="background:url('<%=path%>/img/loading.gif') center no-repeat;"></iframe>
				</div>
			</div>
		</div>
		<script>
		$(document).ready(function(){
			// 绑定菜单提示语切换
			$('#menu-handle').click(function(){
				switchMenu(this);
			});

			// 设置皮肤色
			P.skn();
		});

		// 切换菜单提示语
		function switchMenu(obj){
			if('隐藏菜单' == $(obj).attr('title')){
				$(obj).attr('title', '显示菜单');
			}else{
				$(obj).attr('title', '隐藏菜单');
			}
		}
	</script>
	</body>
</html>
<!-- 用户反馈 -->
<div id="feedback" class="modal hide fade" tabindex="-1" role="dialog"
	data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					&times;
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
								class="input-block-level" id="feedback-input" />

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
	function photo(){
		var left = ($(window.parent.parent).width() - 450) / 2;
		window.open("<%=path %>/photolist.action", "我的微官网", "height=650,width=450,top=0,left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
	}

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
	
	
	
	$(".menu_title").click(function(){
		var arrow = $(this);
		if(arrow.parent().hasClass("closed")){
			arrow.parent().removeClass("closed");
			//arrow.parent().children().show();
		}
		else{
			arrow.parent().addClass("closed");

			if(!$(".menu_title").hasClass("selected")){
				if(arrow.parent().children().has("selected")){
					$(".menu_title").parent().removeClass("selected");
					arrow.parent().addClass("selected");
				}
			}
		}
	});

	$(".menu_item").click(function(){
		$(".selected").removeClass("selected");
		var arrow = $(this);
		arrow.addClass("selected");
		
		var parentArrow = arrow.parent();
		if(parentArrow.hasClass("closed"))
			parentArrow.addClass("selected");
		else
			parentArrow.removeClass("selected")
	});
</script>