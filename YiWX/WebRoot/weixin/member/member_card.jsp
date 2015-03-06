<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport"
			content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=no,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="<%=path %>/weixin/member/css/mc.css">
		<style>
abbr,article,aside,audio,canvas,datalist,details,dialog,eventsource,figure,figcaption,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,small,time,video
	{
	display: block;
}
</style>

		<title>花儿精品店</title>
	</head>
	<body id="" class="" style="padding-bottom: 0px;">
		<script>
var sid, ticket, qrcode, originQrcode, wxid, user_wxid, wticket;
window.from = '';

var linkArgs = (new MURLHash).get("args");
var ticket1 = (new MURLHash).get("ticket");
var officalQrid = [13264351456081,13373091167772,13484743293134];
var ftuanQrid = [13373091173762];
var newlinkArgs = /^(c\d{6})?[a-z]*(\d+)$/.exec(linkArgs);
if (newlinkArgs != undefined && newlinkArgs != null && newlinkArgs != '') {
    var isOffical = isFtuan = false;
    for (i in officalQrid) {
        if (newlinkArgs[2] == officalQrid[i]){
            isOffical = true;
        }
    }
    if (isOffical) {
        window.location.href="/qr/"+linkArgs+'?ticket='+ticket1;
    }
    for (i in ftuanQrid) {
        if (newlinkArgs[2] == ftuanQrid[i]){
            isFtuan = true;
        }
    }
    if (isFtuan) {
        window.location.href = "/weixin/r/1g9p?ticket=" + ticket1;
    }
}
window.shareData = [];
var _isMM43 = /MicroMessenger\/[4-9]\.[3-9]/.test(navigator.userAgent);

function _hideLoading(){ //关闭loading
	setTimeout(function(){
		var div = document.getElementById('loading');
		if (div)
			div.style.display = 'none';
	},50);
}
function _showLoading(){ //显示loading效果时
//    if (_isAndroid) return true;
	var div = document.getElementById('loading');
	if (!div){
		div = document.createElement('div');
		div.id = 'loading';
		div.innerHTML = '<div class="bk"></div><div class="cont"><img src="http://wxj.weixinjia.net/image/mobile/mc/loading.gif" alt="loading..."/>正在加载...</div>';
		document.querySelector('body').appendChild(div);
		div.style.top = (window.innerHeight-div.offsetHeight)/2+window.scrollY+"px";
		div.style.left = (window.innerWidth-div.offsetWidth)/2+"px";
    }else{
        div.style.display = '';
        div.style.top = (window.innerHeight-div.offsetHeight)/2+window.scrollY+"px";
		div.style.left = (window.innerWidth-div.offsetWidth)/2+"px";
    }
}

window.addEventListener('DOMContentLoaded', function(){
    // 去掉android下的loading
    if (_isAndroid) {
        try{
            setTimeout(function(){
                        WeixinJSBridge.finishLoading();
                        },200);
        }catch(e){
        }
    }else{
        _showLoading();
    }

	//配置app
    WAPP.config({
        ajax_getCard: new WAPP.facade.modals.ReqObject( //请求1，扫描二维码后取得卡类型并返回数据
            'shoper.jsp',
            'POST',
            {
                clientType: 'webapp',
                sign:'==QTy80cQJHU0w2UHN0SzkTZvF0V2JzZqlDUkp3bjQzI5gzM'
            },
            function mycallback(result){ //可自定义的一个回调
            }
        ),
		ajax_getPower: new WAPP.facade.modals.ReqObject( //请求2，获得特权详情
			'detail.jsp',
			'POST',
			{
                clientType: 'webapp',
			},
			function mycallback(result){ //可自定义的一个回调
                if(_q("#applyBtn")){
                	document.body.removeChild(_q("#applyBtn"));
                }
			}
		),
		callback_becomeMember: function(params){ //点击了“关注并获得会员卡”
		},
        //页面切换后会触发
		onPageChange: function(state){
			if(state == 4 && _q("#backIndexBtn")){
				_hide(_q("#codeBtn"));
        		_hide(_q("#backIndexBtn"));
			}
		},
        callback_loadingOn: _showLoading,
        callback_loadingOff: _hideLoading
	}); WAPP.facade.startup(); });
	
document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
	WeixinJSBridge.call('hideOptionMenu');
	WeixinJSBridge.call('hideToolbar');
});
</script>

		<div id="loading" style="top: 211px; left: 87px; display: none;">
			<div class="bk"></div>
			<div class="cont">
				<img src="<%=path %>/weixin/member/image/loading.gif"
					alt="loading...">
				正在加载...
			</div>
		</div>
		<div id="mappContainer">
			<section class="cc_shop2" id="card_ctn">
			<div class="bk1"></div>
			<div class="cont">
				<div class="card">
					<div class="front">
						<figure class="fg"
							style="background-image:url(<%=path %>/weixin/member/image/mc_bg.jpg);">
						<img id="cardlogoimg"
							src="<%=path %>/weixin/member/image/45d4a89d-a47b-415c-8880-ddcba5b4ca06.png"
							style="margin-top: 39px;">
						<img data-src="{###barcodeimg###}" style="display: none;">
						<figcaption class="fc">
						<span class="cname" style="color: #957426;">花儿精品店-会员卡（演示）</span>
						<span class="t" style="color: #aaa; text-shadow: #000 0 -1px;">花儿精品店</span><span
							class="n"
							style="color: rgb(170, 170, 170); text-shadow: rgb(0, 0, 0) 0px -1px;">281255</span>
						</figcaption>
						</figure>
					</div>
					<div class="back">
						<figure class="fg"
							style="background-image:url(<%=path %>/weixin/member/image/card_back.jpg);">
						<div class="backtag">
							<canvas data-bgcolor="#d90001" width="54" height="30"></canvas>
							<p style="color: #ffffff">
								返回
							</p>
						</div>
						<div class="info">
							<p class="addr">
								深圳福田本元大厦
							</p>
							<p class="tel">
								<a class="autotel" href="javascript:void(0)"
									data-telnum="tel:0755-88308939">0755-88308939</a>
							</p>
						</div>
						<p class="keywords">
							花儿精品店
						</p>
						</figure>
					</div>
				</div>
				<div class="vs1" style="display: none;">
					<span class="c">{###cardcount###}</span>
					<h1>
						{###desc1###}
					</h1>
				</div>
				<div class="vs2" style="">
					<h1 style="display: none;">
						{###desc2###}
					</h1>
				</div>
			</div>
			</section>
			<div class="vs1" style="display: none;">
				<ul id="shop_icons">
				</ul>
				<div class="footFix" id="footBtn">
					<a href="javascript:void(0)">{###getcardBtn###}</a>
				</div>
			</div>
			<div class="signarea signed">
				<div class="signwrapper">
					<div class="total-point">
						<span>我的积分</span>
						<br>
						<span class="total">10</span>
					</div>
					<div class="sign-date">
						<span>连续签到</span>
						<br>
						<span>1天</span>
					</div>
					<div class="last-point">
						<span>签到奖励</span>
						<br>
						<span>10</span>
					</div>
				</div>
			</div>
			<div class="vs2" id="shop_lst" style="">
				<article class="shoptype" id="type0">
				<h1>
					尊享会员，实惠多多
				</h1>
				<div class="lst">
					<ul id="lstname0">
						<li
							data-ajax-params="{&quot;is&quot;:true,&quot;sign&quot;:&quot;NJzTzBlcQRDbTd0QLNTOl9WQXZnMnpWOQRmevNyMzIDNjQzI5gzM&quot;}"
							data-ajax-act="5">
							<a><em>微信封平台7天试用特权</em>
							</a>
						</li>
						<li
							data-ajax-params="{&quot;is&quot;:true,&quot;sign&quot;:&quot;NJzTzBlcQRDbTd0QLNTOl9WQXZnMnpWOQRmevNCNzIDNjQzI5gzM&quot;}"
							data-ajax-act="5">
							<a><em>新功能上线优先体验权</em>
							</a>
						</li>
						<li
							data-ajax-params="{&quot;is&quot;:true,&quot;sign&quot;:&quot;NJzTzBlcQRDbTd0QLNTOl9WQXZnMnpWOQRmevNSNzIDNjQzI5gzM&quot;}"
							data-ajax-act="5" class="r">
							<a><em>渠道代理高额返点</em>
							</a>
						</li>
					</ul>
				</div>
				<!--  <h1 style="color: red; margin-top: 22px; margin-bottom: 0px;">
					您已经成为【花儿精品店】的尊享会员
				</h1>
				</article>
				<article class="shoptype" id="type1">
				<h1>
					会员卡消费
				</h1>
				<div class="lst">
					<ul id="lstname1">
						<li>
							<a
								href="point.jsp?sign===QTy80cQJHU0w2UHN0SzkTZvF0V2JzZqlDUkp3bjQzI5gzM"
								data-link="1"><em>积分记录</em>
							</a>
						</li>
						<li>
							<a
								href="purchase-record.jsp?sign===QTy80cQJHU0w2UHN0SzkTZvF0V2JzZqlDUkp3bjQzI5gzM"
								data-link="1"><em>消费清单</em>
							</a>
						</li>
					</ul>
				</div>
				</article>-->
			</div>
			<footer style="height:20px;"></footer>
		</div>
		<div id="applyBtn" class="footFix"><a href="javascript:void(0)">立即获取</a></div>
		<article id="footer">
		<p class="page-url">
			<a href="http://www.weijuju.com" target="_blank"
				class="page-url-link">此功能由微信封(vxinfeng)平台提供</a>
		</p>
		</article>
	</body>
	<script type="text/javascript">
	_q = function(b) {
    	return document.querySelector(b)
	}
	_q("#card_ctn .backtag canvas")
	</script>
</html>