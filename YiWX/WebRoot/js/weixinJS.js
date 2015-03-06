/**
 * 更改分享到朋友圈等的URL参数
 */
//from=message 复制当前连接
    	var currentUrl = window.location.href;
		document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
			window.shareData = {
				"imgUrl": "http://tp1.sinaimg.cn/2190350812/180/5646445894/1",
				"timeLineLink": currentUrl+"&vxfref=timeline",
				"sendFriendLink": currentUrl+"&vxfref=frinedlink",
				"imgWidth": "640",
				"imgHeight": "640",
				"tTitle": document.title,
				"fTitle": document.title,
				"fContent": "我给你分享了一个链接,快来看看吧!",
				"wContent": "我正在使用微信封：http://t.cn/8szUhph"
			};

			// 发送给好友
			WeixinJSBridge.on('menu:share:appmessage', function (argv) {
				WeixinJSBridge.invoke('sendAppMessage', {
					"img_url": window.shareData.imgUrl,
					"img_width": window.shareData.imgWidth,
					"img_height": window.shareData.imgHeight,
					"desc": window.shareData.fContent,
					"link": window.shareData.sendFriendLink,
					"title": window.shareData.fTitle
				}, function (res) {
					_report('send_msg', res.err_msg);
				})
			});

			// 分享到朋友圈
			WeixinJSBridge.on('menu:share:timeline', function (argv) {
				WeixinJSBridge.invoke('shareTimeline', {
					"img_url": window.shareData.imgUrl,
					"img_width": window.shareData.imgWidth,
					"img_height": window.shareData.imgHeight,
					"link": window.shareData.timeLineLink,
					"desc": window.shareData.tContent,
					"title": window.shareData.tTitle
				}, function (res) {
					_report('timeline', res.err_msg);
				});
			});

			// 分享到微博
			WeixinJSBridge.on('menu:share:weibo', function (argv) {
				WeixinJSBridge.invoke('shareWeibo', {
					"img_url": window.shareData.imgUrl,
					"img_width": window.shareData.imgWidth,
					"img_height": window.shareData.imgHeight,					
					"content": window.shareData.wContent,
					"url": window.shareData.weiboLink
				}, function (res) {
					_report('weibo', res.err_msg);
				});
			});
		}, false)