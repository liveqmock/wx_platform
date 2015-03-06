
window.initShareInfo = function (h, e, f) {
	var d = e;
	var f = f;
	var a = window.location.href;
	var g = {img_url:f, img_width:"64", img_height:"64", link:a, desc:d, title:h, content:d, url:a};
	function c() {
		var j = g.title;
		if (j.indexOf(g.desc) == -1) {
			j += ":" + g.desc;
		}
		WeixinJSBridge.invoke("shareTimeline", {img_url:g.img_url, img_width:g.img_width, img_height:g.img_height, link:g.link, desc:g.desc, title:j}, function (k) {
		});
	}
	function b() {
		WeixinJSBridge.invoke("sendAppMessage", {img_url:g.img_url, img_width:g.img_width, img_height:g.img_height, link:g.link, desc:g.desc, title:g.title}, function (j) {
		});
	}
	document.addEventListener("WeixinJSBridgeReady", function i() {
		WeixinJSBridge.on("menu:share:appmessage", function (j) {
			b();
		});
		WeixinJSBridge.on("menu:share:timeline", function (j) {
			c();
		});
	}, false);
};

