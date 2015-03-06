<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
	<!--<![endif]-->
	<head>

		<!-- Google Analytics Content Experiment code -->

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>微信封-微信营销系统</title>
		<meta name="description"
			content="Painlessly plan, org	anise, and collaborate on website content.">
		<meta name="viewport" content="width=device-width">
			<link href="<%=path%>/css/index/bootstrap.css" rel="stylesheet">
		<script src="<%=path%>/js/index/340790086.js"></script>
		<script src="<%=path%>/js/index/modernizr-2.5.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/index/wechat_index.css"/>
		<link href="<%=path%>/css/index/indexa.css" rel="stylesheet"
			media="screen" />
		<link href="<%=path%>/css/index/indexb.css" rel="stylesheet"
			media="screen" />
		<link href="<%=path%>/css/index/featuresb.css" rel="stylesheet" media="screen" />
		<script type="text/javascript">
		function regNewUser()
		{
			var params = $("form[id=regNewUser]").serialize();
				$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'regNewUser.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert("访问服务器失败");
				},
				success : function(data) { //请求成功后处理函数
					//alert(data);
					dealRegResult(data);
				}
			});
		}	

		function dealRegResult(data){
			var josnStr = eval('(' + data + ')');
			var status = josnStr["status"];
			var content = josnStr["content"];
			if(status=='success'){
				window.location="<%=path%>/"+content+"";
			}else{
				var errorId = josnStr["errorId"];
				$(".errorMsg").html("");
				$("#"+errorId).html(content);
			}
		}
		</script>
		<style type="text/css">
		.controls input{
			height: auto;
		}
		.errorMsg{
			color: red;
			margin: 20px;
		}
		</style>
	</head>
	<body>
		<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
		<div class="page-content-wrapper">
			<header class="header">
			<div class="row">
				<div class="span3">
					<h1 class="logo">
						<a href="<%=path%>"><img
								src="<%=path%>/images/index/logo.png" alt="Gather Content" /> </a>
					</h1>
				</div>

				<div class="menu span9 pull-right">
					<ul class="menu-list">
						<li class="menu-item">
							<a href="<%=path%>/index.jsp">首页</a>
						</li>						
						<!-- <li class="menu-item">
							<a href="<%=path%>/anli.jsp">客户案例</a>
						</li>
						<li class="menu-item">
							<a href="<%=path%>/gongneng.jsp">功能介绍</a>
						</li> -->
						<li class="menu-item">
							<a href="<%=path%>/proxy.jsp">渠道代理</a>
						</li>
								
						<li class="menu-item login-item">
							<button id="login" class="btn btn-small btn-primary" >登录</button>
						</li>
					</ul>
				</div>
			</div>
			</header>

		<div class="container">
				<div class="page-heading">
					<h1>
						注册
					</h1>
				</div>

				<div class="row">
					<div class="span12 white-panel no-padding">


						<div class="feature-list" style="float: left;width: 65%">
							
							 <form id="regNewUser" class="form-horizontal">
							  <div class="control-group">
							    <label class="control-label" for="inputTel">手机号码</label>
							    <div class="controls">
							      <input name="loginViewModel.username" type="text" id="inputTel" placeholder="11位手机号码，用作用户名"><span id="errorUsername" class="errorMsg"></span>
							    </div>
							  </div>
							  <div class="control-group">
							    <label class="control-label" for="inputPassword">设置密码</label>
							    <div class="controls" >
							      <input name="loginViewModel.password" type="password" id="inputPassword" placeholder="请输入密码,长度6-18位"><span id="errorPassword" class="errorMsg"></span>
							    </div>
							  </div>
							  <div class="control-group">
							    <label class="control-label" for="inputPassword">确认密码</label>
							    <div class="controls">
							      <input name="loginViewModel.repassword" type="password" id="inputPassword" placeholder="请输入确认密码"><span id="errorRepassword" class="errorMsg"></span>
							    </div>
							  </div>			  
							  <div class="control-group">
							    <label class="control-label" for="inputTel">联系人</label>
							    <div class="controls">
							      <input name="loginViewModel.contact" type="text" id="inputTel" placeholder="选填,中文"><span id="errorContact" class="errorMsg"></span>
							    </div>
							  </div>
							  <div class="control-group">
							    <label class="control-label" for="inputTel">QQ</label>
							    <div class="controls">
							      <input name="loginViewModel.qq" type="text" id="inputTel" placeholder="选填"><span id="errorQq" class="errorMsg"></span>
							    </div>
							  </div>	
							  <div class="control-group">
							    <label class="control-label" for="inputTel">EMAIL</label>
							    <div class="controls">
							      <input name="loginViewModel.email" type="text" id="inputTel" placeholder="选填"><span id="errorEmail" class="errorMsg"></span>
							    </div>
							  </div>			  
							  
							  <div class="control-group">
							    <div class="controls">
							      <button onclick="regNewUser();" type="button" class="btn btn-primary ">注册</button> <span id="errorReg" class="errorMsg"></span>
							    </div>
							  </div>			  		  
							</form>  
								
						</div>	
						<div class="feature-list" style="float: left;">
						已有帐号？<span style="color: blue;"><a href="<%=path%>/index.jsp">立即登录</a></span>
						</div>

					</div>
				</div>

			</div>




			<div class="push">
				<!--//-->
			</div>
			
			
			
		</div>

		<!-- page-content-wrapper -->
		<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="span12">
					<a href="<%=path %>">
					<img
							src="<%=path%>/images/index/logo_white.png" alt="Gather Content" />
					</a>
					<p>
						为更精准、高效、便捷的微信运营而生!
					</p>
				</div>
			</div>
			<div class="row links-horizontal">
				<div class="span12">
					<ul>
						<li>
							Product
						</li>
						<li>
							<a href="<%=path%>">首页</a>
						</li>
						<!-- <li>
							<a href="<%=path%>/anli.jsp">客户案例</a>
						</li>
						<li>
							<a href="<%=path%>/gongneng.jsp">功能介绍</a>
						</li>-->
						<li>
							<a href="<%=path%>/proxy.jsp">渠道代理</a>
						</li>
					</ul>
				</div>

				<div class="span12">
					<ul>
						<li>
							Company
						</li>
						<li>
							<a href="#">联系我们</a>
						</li>						
						<li>
							<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=115313937&amp;site=qq&amp;menu=yes" target="_blank" class="qq-link"></a>
							<a href="http://weibo.com/2190350812" class="twitter-link"></a>
							<a id="openlayer" class="wechat-link qrcode_down"></a>
						</li>									
					</ul>
				</div>

			</div>

			<p>
				Copyright © 2012-2014 北京热点联盟科技有限公司-微信封. All Rights Reserved. Thank you to
				<a href="http://www.vxinfeng.com">微信封</a>.
			</p>

		</div>
		</footer>



<div class="D_lay" id="wechat_artdialog" style="display: none; position: fixed;"  >
    <div class="D_bg"></div>
    <div class="D_wrap">
        <div class="D_title clear">
            <a id="closelayer" hidefocus="true"  class="close"></a>
        </div>
        <div class="D_cont clear">
            <div class="c1">
                <div class="t clear">
                    <div class="pic">
                        <div class="ico_lay_wechat"></div>
                    </div>
                    <div class="detail">
                        <div class="tx_16 c_tx6 tx_yh"><h2>中投互动</h2></div>
                        <div class="tx_yh"><h2>vxinfeng</h2></div>
                    </div>
                </div>
                <div class="c_tx6">产品的完善和成长，离不开小伙伴们的关注与支持。<br/>快扫描二维码，通过微信与我们零距离交流吧~</div>
            </div>
            <div class="c2">
                <div class="qrcode">
                    <img src="<%=path %>/images/index/erweima.jpg"/>
                </div>
                <div class="tx_c"><span class="txt">扫描二维码添加微信帐号</span></div>
            </div>
        </div>
    </div>
</div>


<div class="D_lay" id="login_artdialog" style="display: none;" >
    <div class="D_bg"></div>
    <div class="D_wrap" style="width:360px;height:340px ;margin:-210px 0 0 290px;">
        <div class="D_title clear">
            <a class="closelogin close" hidefocus="true" href="#" ></a>
        </div>
        <div class="D_cont clear">
	  <form id="login"  class="form-signin" role="form">        
        <h2 class="form-signin-heading">登录</h2>
        <span id="errorMsg" style="color: red;"></span>
        <input type="text" name="loginViewModel.username" class="form-control" placeholder="11位手机号" required="" autofocus="">
        <input type="password" name="loginViewModel.password" class="form-control" placeholder="请输入密码" required="">
        <label class="checkbox">
        <input type="checkbox" value="remember-me">记住账号
        </label>
        <button onclick="login();" class="btn btn-lg btn-primary btn-block" type="button" style="padding: 10px 16px;font-size: 18px;line-height: 1.33;">登录</button>
     	<span>第一次使用?</span><span style="color: blue;"><a href="<%=path %>/regist.jsp" >立即注册!</a></span>
      </form>

        </div>
    </div>
</div>



		<script src="<%=path%>/js/index/jquery-1.7.1.min.js"></script>
		<script src="<%=path%>/js/index/selectivizr.js"></script>

		<script src="<%=path%>/js/index/jsa.js"></script>
		<script src="<%=path%>/js/index/jsb.js"></script>
		<link href="<%=path%>/css/index/weishi.css" rel="stylesheet" media="screen" />
		<script type="text/javascript" src="<%=path%>/js/index/weishi.js"></script>
		<link href="<%=path%>/css/index/signin.css" rel="stylesheet" media="screen" />
		<script type="text/javascript">
		$(document).ready(function (){
			var random = Math.round(Math.random()*6);
			$('.hero-unit').css('background-image',"url(<%=path%>/images/index/backimg/"+random+".jpg)");
		})
		
		//打开弹窗
		$("#openlayer").on("click",function(){
			$("#wechat_artdialog").css('display','block');
		});
		//关闭弹窗
		$("#closelayer").on("click",function(){
			$("#wechat_artdialog").css('display','none');
		});

		//打开登录弹窗
		$("#login").on("click",function(){
			$("#login_artdialog").css('display','block');
		});	
		//关闭登录弹窗
		$(".closelogin").on("click",function(){
			$("#login_artdialog").css('display','none');
		});	


		
		function login()
		{
			var params = $("form[id=login]").serialize();
				$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'login.action', //请求的action路径
				error : function() {//请求失败处理函数);
					alert("访问服务器失败");
				},
				success : function(data) { //请求成功后处理函数
					dealLoginResult(data);
				}
			});
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
			
		</script>
	</body>
</html>

