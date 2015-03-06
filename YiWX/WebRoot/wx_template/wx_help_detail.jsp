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
	<meta content="微信封，国内最大的微信公众智能服务平台，微信封八大微体系：微菜单、微官网、微会员、微活动、微商城、微推送、微服务、微统计，企业微营销必备。" name="Description">
    <script src="<%=path %>/js/html5.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.min.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/wx_help/index.css" media="all" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/wx_help/help.css" media="all" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path %>/js/weimob-index.js"></script>
<title>微信封-微信营销系统</title>
	<link rel="shortcut icon" href="<%=path %>/img/logo_icon.png" />
</head>

<body>
	
 <!--[if lte IE 8]>  <script language="javascript">$(function (){$.browser.msie&&$("#ie9-tips").show().find("#stopSuggestA").click(function(){$("#ie9-tips").hide()})})</script><![endif]-->
<div class="nav clearfix">
	<div class="nav-content">
		<h1 class="left" onclick="location.herf='/site/city1'">微信封·微信营销，如此简单！</h1>
		<div class="left city">
			<h2>上海</h2>
					</div>
		<div class="right line-li">
			<ul>
				<li>
					<a href="/" >首页</a>
				</li>
				<li>
					<a href="/site/case1" >经典案例</a>
				</li>
				<li>
					<a href="/site/proxy1" >渠道代理</a>
				</li>
				<li>
					<a href="/site/guide1" >功能介绍</a>
				</li>
									<li>
						<a href="javascript:;" class="navtwo"  onclick="loginBox.toggle(this, event);">登录</a>
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
			<h3>登录</h3>
			<div class="login-mod">
				<div class="login-err-panel dn" id="err_area">
					<span class="icon-wrapper"><i class="icon24-login err" style="margin-top:-.2em;*margin-top:0;"></i></span>
					<span id="err_tips"></span>
				</div>
				<form class="login-form" id="login-form">
					<div class="login-un">
						<span class="icon-wrapper"><i class="icon24-login un"></i></span>
						<input type="text" id="username" placeholder="微信封号">
					</div>
					<div class="login-pwd">
						<span class="icon-wrapper"><i class="icon24-login pwd"></i></span>
						<input type="password" id="password" placeholder="密码">
					</div>
				</form>
				<div class="login-help-panel">
					<a id="rememberPwd" class="login-remember-pwd" href="javascript:;">
						<input type="checkbox" id="rememberPwdIcon">记住帐号
					</a>
					<a class="login-forget-pwd" href="/site/reg1">我是新用户!<strong>申请入驻</strong></a>
				</div>
				<div class="login-btn-panel">
					<a class="login-btn" title="点击登录" href="javascript:;" id="login_button" onclick="login();">登录</a>
				</div>
			</div>
		</div>
		<div class="login-cover" onclick="loginBox.toggle(this, event);"></div>
	</div>
<div id="ie9-tips" class="clearfix">
	<div id="tipsPanel">
		<div id="tipsDesc">系统检测到您所使用的浏览器版本较低，推荐使用<a href="http://www.firefox.com.cn/download/" target="_blank">Firefox</a>或<a href="http://www.google.cn/intl/zh-CN/chrome/browser/index.html" target="_blank">Chrome</a>浏览器打开，否则将无法体验完整产品功能。</div>
		<a id="stopSuggestA" href="javascript:;">×</a>
	</div>
</div>

<script>
var $do_submit = false;

// 绑定回车键
$('#loginBox').keydown(function(e){
	if(13 == event.keyCode){
		login();
	}
});

	function login()
	{
		if (true == $do_submit)
		{
			return false;
		}

		var $pre_submit = '登录', $do_submit = '登录中...';
		var $username = $('#username').val(), $password = $('#password').val(), $keepalive = $('#rememberPwdIcon').val();
		$('#login_button').text($do_submit);
		$do_submit = true;

		// check
		if ('' == $username || '' == $password)
		{
			$('#err_tips').text('您输入的微信封号或密码错误，请重新输入！');
			$('#err_area').show();
			$('#login_button').text($pre_submit);
			$do_submit = false;
			return false;
		}

		var $login_data = {
			username:$username,
			password:$password,
			keepalive:$keepalive
		};
		$.post('/login', $login_data, function(rs){
			if(rs.errno == 200)
			{
				location.href = rs.url_route;
			}
			else
			{
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
   
        <div class="title">微信封产品(微信封简介)使用指南</div>
   		<h3 id="1_1">1什么是微信封？</h3>
        <p>微信封是打造的一个专门针对微信公众账号提供营销推广服务的第三方平台。主要功能是针对微信商家公众号提供与众不同的、有针对性的营销推广服务。通过微信封平台，用户可以轻松管理自己的微信各类信息，对微信公众账号进行维护、开展智能机器人、在线发优惠劵、抽奖、刮奖、派发会员卡、打造微官网、开启微团购等多种活动，对微信营销实现有效监控，极大扩展潜在客户群和实现企业的运营目标。微信封平台很好的弥补了微信公众平台本身功能不足、针对性不强、交互不便利的问题，为商家公众账号提供更为贴心的、且是核心需求的功能和服务。在线优惠劵、转盘抽奖、微信会员卡等推广服务更是让微信成为商家推广的利器。智能客服的可调教功能让用户真正从微信繁琐的日常客服工作中解脱出来，真正成为商家便利的新营销渠道。</p>
        <h3 id="1_2">2 企业为什么开通微信公众号</h3>
        <h4>移动互联网的趋势</h4>
        <p>平台化电子商务最缺的不是商家是消费者。</p>
        <p>哪里有人哪里就有商业，哪里就有盈利空间。据第三方统计70%的手机用户开通了个人微信，其年龄涵盖了小学生至老年人，各年龄阶层的人群。截止目前腾讯已拥有4亿的微信用户，7亿的qq用户。消费者才是企业追逐的目标，人的数量决定了财富的数量。</p>
        <h4>微信营销的趋势与巨大利润空间</h4>
        <p>微信营销是继微博后的最大营销机遇！</p>
        <p>淘宝的第一批用户是一批什么都敢尝试的大学生，如今他们已经大多成为千万、亿万的商务人群。微信营销时代已经到来，其势不可挡的趋势，已严重冲击着传统的销售渠道。错过了淘宝时代，错过了微博时代，不要错过微信营销时代。基于微信营销的第一批企业必然成为未来的微信首批富豪。</p>
        <h4>微信的粘性和使用惯性</h4>
        <p>没有人会天天上淘宝，也没有人会天天刷微博——但微信可以。</p>
        <p>首先微信是一款沟通工具，实时通讯的特性决定了其使用价值，朋友圈的分享让社会化关系代替了点对点的交互，这不仅是一种关系，更是影响力！更是控制力！基于关系网的微信，平民也有明星的感觉。其用户黏度没有任何一个产品可以比拟。微信用其巨大的威力吸引、稳定着消费者，消费者已经准备好了，企业还不来吗？</p>
        <h4>企业微信公众账号的作用与开通意义</h4>
        <p>企业微信公众账号是企业媒体发布平台、销售信息发布平台、危机公关平台、消费者互动平台、促销活动开展平台、新品展示平台、产品在线销售平台、网上支付平台、调研平台、公司企业文化传播平台、人才招聘平台等，一切企业关注的，企业需要的在企业微信公众账号都可以实现！！</p>
       <h4>企业为什么要开通、运营企业微信公众账号</h4>
     

        <P>重点的关键点——品牌、产品销售、人才、客户</P>
        <p>1) 企业微信公众账号的媒体属性:10万个粉丝等于地方性报纸;100万个粉丝等于全国性的报纸头条新闻。</p> 
        <p>2) 产品销售平台:在线购买、在线支付、促销活动。最活跃的、反应速度最快、互动最强的电子商务平台</p> 
        <p>3) 人才招聘的平台：免费的人才招聘渠道，未来人才招聘的主流渠道</p> 
        <p>4) 客户：客户在线互动、客户体验、新品试用、消费者意见调研、有奖活动、在线咨询甚至网上订餐、送货服务、钟点服务、上门维修等。</p> 
        <h4>企业微信公众平台的现状</h4>
        <p>功能单一、操作复杂、用户体验差、没有差异化功能。</p>
        <h5>TIPS1:什么是微信公众平台？</h5>
        <p>微信公众平台是腾讯公司在微信的基础上新增的功能模块，通过这一平台，个人和企业都可以打造一个微信的公众号，并实现和特定群体的文字、图片、语音的全方位沟通、互动。微信公众平台注册地址：https://mp.weixin.qq.com/</p>
        <h5>TIPS2:微信封主要用来做什么？</h5>
        <p>微信封平台主要是为企业公众号提供个性化服务，他是一个第三方平台，企业只需要把公众平台接口地址和Token换成微信封的接口，即可以实现微信封平台上所有的功能，利用微信封平台可以很快的定制一个电子会员卡，也可以通过模板5分种内打造一个超炫3G网站，不需要服务器和域名，统一由微信封提供。详细阅读：www.weimob.com</p>  
          <table id="listTable" class="table table-bordered table-hover dataTable table-striped">
                              <tr>
                                <th scope="col">当前企业遇到的困境</th>
                                <th scope="col">解决方案</th>
                              </tr>
                              <tr>
                                <td>传统网络营销遭遇瓶颈</td>
                                <td><strong>微营销成为企业营销新渠道</strong> 微信封为企业微信营销提供智能的服务平台和完整的解决方案</td>
                              </tr>
                              <tr>
                                <td>微信营销有理论、无方法，想法无法落地</td>
                                <td><strong>微信封——理论加实践的产物</strong> 微信封平台根据市场行业需求，制定行业标准解决方案。</td>
                              </tr>
                              <tr>
                                <td>腾讯对企业开发要求门槛过高</td>
                                <td><strong>微信封平台解决企业开发烦恼</strong> 微信封大部分技术研发人员来自百度、腾讯，强大的技术后盾企业微信开发提供有力的保障。</td>
                              </tr>
                              <tr>
                                <td>腾讯公众平台无法满足企业需求</td>
                                <td><strong>行业需求，定制开发</strong> 根据市场上目前行业的需求，设定相应的功能，从而满足了企业微信营销的需求。</td>
                              </tr>
                              <tr>
                                <td>企业定制开发成本高、周期长</td>
                                <td><strong>微信封——微信智能服务平台</strong> 微信封在定制开发的基础上，抽取大部分行业定制需求，对产品进行标准化，企业无需开发即可实现强大的功能。</td>
                              </tr>
                              <tr>
                                <td>微信5.0群发功能限制，个性化服务凸现</td>
                                <td><strong>微信封——功能强大，满足个性需求</strong> 针对微信商家公众号提供与众不同的、有针对性的、更为贴心的、核心需求的功能和服务</td>
                              </tr>
                            </table>
        

    <h3 id="1_3">3、微信封平台优势</h3>
        <h5>操作简洁</h5>
        <p>微信封平台的管理界面简单易用、操作方便，大量人性化设计，一分钟开启微信营销，无需安装任何软件，全自动“云”平台，多账号管理，只需要简单的设置即可完成复杂的微信营销推广功能。</p>
        <h5>功能强大</h5>
        <p>通过微信封平台，用户可以轻松管理自己的微信各类信息，对微信公众账号进行维护、开展智能机器人、在线发优惠劵、抽奖、刮奖、派发会员卡、打造微官网、开启微团购等多种活动，对微信营销实现有效监控，在线优惠劵、转盘抽奖、微信会员卡等推广服务更是让微信成为商家推广的利器，智能客服的可调教功能让用户真正从微信繁琐的日常客服工作中解脱出来，真正成为商家便利的新营销渠道，极大扩展潜在客户群和实现企业的运营目标。</p>
        <h5>专业团队</h5>
        <p>一站式管理，平台支持，拥有多年网络营销经验的管理团队，强大的技术支持，专注于社会化媒体的研究，自有全国百万订阅量公众账号、全国主要城市区域号，以及微信电商团队实际操作，运营上海本地公众账号用户过万，熟练掌握获取本地用户的方法，不做整合营销，我们只专注于微信。</p>
        <h5>资深背景</h5>
        <p>微信封已经引入国内知名风险投资，技术团队由国内知名IT公司（百度、腾讯）核心成员组成、其技术总监为原百度商务搜索部技术经理，商务总监为原腾讯IMG商务经理，运营团队有着丰富的互联网推广经验和资源，并与腾讯保持密切合作，因此可以为商家提供一个更智能、更便捷的微信公众服务平台。</p>
        <h3 id="1_4">4 微信封套餐介绍</h3>
          <table id="listTable" class="table table-bordered table-hover dataTable table-striped">                    
  <tbody><tr>
  <td rowspan="2">套餐功能</td>
  <td rowspan="2">项目内容</td>
  <td rowspan="2">试用版</td>
  <td rowspan="2">标准版</td>
  <td rowspan="2">增强版</td>
  <td colspan="9" style="text-align:center;">行业套餐</td>
  <td rowspan="2">至尊版</td>
 </tr>
 <tr>
  <td>微医疗</td>
  <td>微酒店</td>
  <td>微汽车</td>
  <td>微房产</td>
  <td>微婚庆</td>
  <td>微商城</td>
  <td>微餐饮</td>
  <td>微旅游</td>
  <td>微商场</td>
 </tr>
 <tr>
  <td>月请求数</td>
  <td>每月请求数</td>
  <td>2000</td>
  <td>50000</td>
  <td>150000</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
 </tr>
 <tr>
  <td rowspan="6">自定义关键字回复条数</td>
  <td>默认设置</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>关注时回复</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>文本回复</td>
  <td>100</td>
  <td>500</td>
  <td>2000</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
 </tr>
 <tr>
  <td>图文回复</td>
  <td>10</td>
  <td>500</td>
  <td>2000</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
 </tr>
 <tr>
  <td>语音回复</td>
  <td>0</td>
  <td>200</td>
  <td>1000</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
 </tr>
 <tr>
  <td>LBS回复</td>
  <td>0</td>
  <td>200</td>
  <td>1000</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
  <td>不限</td>
 </tr>
 <tr>
  <td>版权</td>
  <td>显示微信封版权</td>
  <td>有</td>
  <td>有</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
  <td>无</td>
 </tr>
 <tr>
  <td>公众账号数</td>
  <td>数量</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>1</td>
  <td>2</td>
 </tr>
 <tr>
  <td>自定义菜单</td>
  <td>支持多级菜单</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="5">微活动</td>
  <td>优惠券</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>刮刮卡</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>大转盘</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微投票</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>一战到底</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="15">微服务</td>
  <td>小黄鸡</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>城市天气</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>周边商家</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>百度百科</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>即时翻译</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>今日老黄历</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>看新闻</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>金银价查询</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>快递查询</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>在线听歌</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>火车查询</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>测试人品</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>成语解释</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√td&gt;
  </td><td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>看笑话</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>股票查询</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="11">微信会员卡</td>
  <td>商家设置</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>会员卡设置</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>会员管理</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>充值记录</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>积分策略</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>通知管理</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>特权管理</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>优惠券管理</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>礼品券管理</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>数据统计</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>门店管理</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微官网</td>
  <td>个性官网</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微留言</td>
  <td>粉丝留言</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微相册</td>
  <td>个性图片、相片等</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微预约</td>
  <td>预约系统</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微调研</td>
  <td>粉丝调研</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微团购</td>
  <td>在线团购</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微签到</td>
  <td>粉丝签到</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>独享空间</td>
  <td>图片、视频空间大小</td>
  <td>10M</td>
  <td>50M</td>
  <td>200M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
  <td>300M</td>
 </tr>
 <tr>
  <td>微推送</td>
  <td>附近人推送</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微喜帖</td>
  <td>喜帖</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微酒店</td>
  <td>酒店预定</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="4">微医疗</td>
  <td>挂号设置</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>内容设置</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>预约查询</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>预约统计</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="7">微汽车</td>
  <td>品牌管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>车系管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>车型管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>销售管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>预约保养</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>预约试驾</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>实用工具</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="6">微房产</td>
  <td>楼盘简介</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>子楼盘</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>楼盘户型360度全景展示</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>楼盘相册</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>房友印象</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>专家点评</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td rowspan="4">微商城</td>
  <td>商品管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>订单管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>会员管理</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>系统设置</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微餐饮</td>
  <td>订餐系统</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微旅游</td>
  <td>微旅游</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>×</td>
  <td>√</td>
 </tr>
 <tr>
  <td>微商场</td>
  <td>微商场</td>
  <td>√</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>×</td>
  <td>√</td>
  <td>√</td>
 </tr>
</tbody></table>
   	  
      <h3 id="1_5">5微信封如何购买充值</h3>
                            <p>如果是代理商开户请直接联系当地代理商，只需要点击升级按钮，会联系到对应的充值专员，目前微信封暂不支持在线充值，充值专员会发微信封相关银行账户信息，充值好后告诉充值专员即可完成充值。</p>
   
  <div id="sideToolbar" style="display: block; position: fixed; top:150px;  right: 0;" class="on">
  <div id="sideCatalog" class="sideCatalogBg" style="visibility: visible;">
    <div id="sideCatalog-sidebar"></div>
    <div id="sideCatalog-catalog">
      <dl style="width:200px;zoom:1">
        <dd><span>1</span><a href="javascript:void()" rel="#1" title="微信封简介">什么是微信封</a></dd>
        <dd><span>2</span><a href="javascript:void()" rel="#1_2" title="基础建设">开通微信公众号</a></dd>
        <dd><span>3</span><a href="javascript:void()" rel="#1_3" title="微活动">微信封平台优势</a></dd>
        <dd><span>4</span><a href="javascript:void()" rel="#1_4" title="微服务">套餐介绍</a></dd>
        <dd><span>5</span><a href="javascript:void()" rel="#1_5" title="微信会员卡">购买充值</a></dd>
      </dl>
    </div>
  </div>
  <a id="sideCatalogBtn" href="/site/help" style="visibility: visible;" title="查看帮助目录"></a>
  <a id="sideToolbar-up"  href="javascript:void()" rel="#top" title="返回顶部" style="visibility: visible;"></a></div>
     
</div>
<script>
	$(function () {
	   if(location.hash){
			var pos = $(location.hash).offset().top-60;
			$("html,body").animate({ scrollTop: pos }, 800);
		}
	});
</script>

<!--QQ咨询-->
<div class="footer">
	<div class="footer-content clearfix">
		<div class="foot-menu">
			<p>
				<a href="/site/index1" target="_blank">微信封首页</a>&nbsp;|&nbsp;
				<a href="/site/reg1" target="_blank">申请入驻</a>&nbsp;|&nbsp;
				<a href="/site/proxy1" target="_blank">渠道代理</a>&nbsp;|&nbsp;
				<a href="http://wpa.qq.com/msgrd?v=3&uin=115313937&site=qq&menu=yes" target="_blank">接口定制</a>&nbsp;|&nbsp;
				<a href="http://wpa.qq.com/msgrd?v=3&uin=115313937&site=qq&menu=yes" target="_blank">微信托管</a>&nbsp;|&nbsp;
				<a href="/site/about1" target="_blank">关于微信封</a>
			</p>
			<p>免费热线：115313937&nbsp;&nbsp;&nbsp;QQ：115313937&nbsp;&nbsp;&nbsp;邮箱：kefu@hsmob.com</p>
			<p>地址：
								上海市市辖区杨浦区政益路28号1106-1109室</p>
		</div>
		<div class="copyright">
			Copyright © 2011-2013 www.weimob.com. All Rights Reserved 上海晖硕信息科技有限公司版权所有 沪ICP备13021836号-1
		</div>
	</div>
</div></body>
<!--595 850-->
<script type="text/javascript">
		$("a").bind("click",function() {
			 var rel = $(this).attr("rel");
                if (rel) {
                    var pos = $(rel).offset().top-60;
                    $("html,body").animate({ scrollTop: pos }, 800);
                }
		});
		
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
</html>
