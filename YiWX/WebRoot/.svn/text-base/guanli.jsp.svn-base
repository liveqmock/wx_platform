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
		<meta charset="utf-8">
		<title>微信封-微信营销系统</title>
		<link
			href="https://res.wx.qq.com/mpres/htmledition/images/favicon19d8e4.ico"
			rel="Shortcut Icon">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/base19e425.css">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/qq/css/lib19e425.css">
		<link rel="stylesheet"
			href="<%=path%>/css/qq/css/page_index19e425.css">
		<script type="text/javascript">
            var mp = {time:{begin:(+new Date())}};
        </script>
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
	</head>
	<body>
		<div id="body" class="body page_index">
			<div id="js_container_box" class="container_box side_l">
				<div class="col_side">
					<div class="menu_box" id="menuBar">
						<dl id="menu_function" class="menu  no_extra">
							<dt class="menu_title">
								<i class="icon_menu function"></i><i class="icon_menu_switch"></i>功能
							</dt>
							<dd id="menu_masssend" class="menu_item ">
								<a
									>群发功能</a>
							</dd>
							<dd id="menu_advanced" class="menu_item ">
								<a
									href="/cgi-bin/advanced?action=index&amp;t=advanced/index&amp;token=1912733955&amp;lang=zh_CN">高级功能</a>
							</dd>
						</dl>
						<dl id="menu_manage" class="menu">
							<dt class="menu_title">
								<i class="icon_menu manage"></i><i class="icon_menu_switch"></i>管理
							</dt>
							<dd id="menu_message" class="menu_item ">
								<a
									href="/cgi-bin/message?t=message/list&amp;count=20&amp;day=7&amp;token=1912733955&amp;lang=zh_CN">消息管理</a>
							</dd>
							<dd id="menu_contact" class="menu_item ">
								<a
									href="/cgi-bin/contactmanage?t=user/index&amp;pagesize=10&amp;pageidx=0&amp;type=0&amp;token=1912733955&amp;lang=zh_CN">用户管理</a>
							</dd>
							<dd id="menu_material" class="menu_item  no_extra ">
								<a
									href="/cgi-bin/appmsg?begin=0&amp;count=10&amp;t=media/appmsg_list&amp;type=10&amp;action=list&amp;token=1912733955&amp;lang=zh_CN">素材管理</a>
							</dd>
						</dl>
						<dl id="menu_service" class="menu  ">
							<dt class="menu_title">
								<i class="icon_menu service"></i><i class="icon_menu_switch"></i>服务
								<i class="icon_common new"></i>
							</dt>
							<dd id="menu_shop" class="menu_item ">
								<a
									href="/cgi-bin/store?action=index&amp;t=service/index&amp;token=1912733955&amp;lang=zh_CN">服务中心</a>
							</dd>
							<dd id="menu_myservice" class="menu_item ">
								<a
									href="/cgi-bin/myservice?action=index&amp;t=service/my_service&amp;token=1912733955&amp;lang=zh_CN">我的服务</a>
							</dd>
						</dl>
						<dl id="menu_statistics" class="menu  ">
							<dt class="menu_title">
								<i class="icon_menu statistics"></i><i class="icon_menu_switch"></i>统计
							</dt>
							<dd id="menu_user" class="menu_item ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_user_summary&amp;pluginid=luopan&amp;t=statistics/index&amp;token=1912733955&amp;lang=zh_CN">用户分析</a>
							</dd>
							<dd id="menu_appmsg" class="menu_item ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_article_detail&amp;pluginid=luopan&amp;t=statistics/index&amp;token=1912733955&amp;lang=zh_CN">图文分析</a>
							</dd>
							<dd id="menu_message" class="menu_item ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_message&amp;pluginid=luopan&amp;t=statistics/index&amp;token=1912733955&amp;lang=zh_CN">消息分析</a>
							</dd>
							<dd id="menu_interface" class="menu_item  no_extra ">
								<a
									href="/cgi-bin/pluginloginpage?action=stat_interface&amp;pluginid=luopan&amp;t=statistics/index&amp;token=1912733955&amp;lang=zh_CN">接口分析</a>
							</dd>
						</dl>
						<dl id="menu_setting" class="menu extra ">
							<dt class="menu_title">
								<i class="icon_menu setting"></i><i class="icon_menu_switch"></i>设置
							</dt>
							<dd id="menu_account" class="menu_item ">
								<a
									href="settingpage?t=setting/index&amp;action=index&amp;token=1912733955&amp;lang=zh_CN">帐号信息</a>
							</dd>
							<dd id="menu_assistant" class="menu_item ">
								<a
									href="assistant?t=setting/mphelper&amp;action=mphelper&amp;token=1912733955&amp;lang=zh_CN">公众号助手</a>
							</dd>
						</dl>
					</div>
					<script type="text/javascript">
	(function() {
		var cookies = {};

		cookies.stringify = function(obj) {
			var res = [];
			for ( var key in obj) {
				res.push(key + "=" + obj[key]);
			}
			return res.join(",");
		};
		cookies.parse = function(str) {
			var arr = str.split('|'), obj = {};

			for ( var i = 0; i < arr.length; ++i) {
				var val = arr[i], kv = val.split(":"), k = kv[0], v = kv[1]
						.split(",");
				obj[k] = obj[k] || {};
				for ( var j = 0; j < v.length; ++j) {
					var tmp = v[j].split("=");
					obj[k][tmp[0]] = tmp[1];
				}

			}
			return obj;
		};
		cookies.set = function(key, value, days, param) {
			days = days || 30;
			var exp = new Date();

			exp.setTime(exp.getTime() + days * 24 * 60 * 60 * 1000);
			if (!!param) {
				var res = [];
				$.each(param, function(key, value) {
					res.push(";" + key + "=" + value);
				});
				param = res.join("");
			} else {
				param = "";
			}
			document.cookie = key + "=" + escape(value) + ";expires="
					+ exp.toGMTString() + param;
		};

		cookies.get = function(_asName) {
			var _oRegExp = (new RegExp(
					[
							"(^|;|\\s+)",
							(_asName).replace(/([\^\.\[\$\(\)\|\*\+\?\{\\])/ig,
									"\\$1"), "=([^;]*);?" ].join("")));

			if (_oRegExp.test(document.cookie)) {
				//某些畸形浏览器，decode可能会出错
				try {
					return decodeURIComponent(RegExp["$2"]);
				} catch (e) {
					return RegExp["$2"];
				}
			}
		};

		window.Cookies = cookies;
	})();

	(function() {
var menuData = {
			"function" : {
				"name" : '功能',
"sub" : {
					"masssend" : {
						name : "群发功能",
						url : [ "/cgi-bin/masssendpage?t=mass/send",
								"/cgi-bin/frame?t=mass/statement_frame" ]
					},
					"tmplmsg" : {
						name : "模板消息",
						url : "/cgi-bin/tmplmsg?action=list&t=tmplmsg/list"
					},
					"advanced" : {
						name : "高级功能",
						url : "/cgi-bin/advanced?action=index&t=advanced/index"
					},
					"business" : {
						name : "商户功能",
						url : [
								"/cgi-bin/business?t=business/overview&action=overview",
								"/cgi-bin/business?t=business/index&action=index" ]
					}
				}
			},
			"manage" : {
				"name" : '管理',
"sub" : {
					"message" : {
						name : "消息管理",
						url : "/cgi-bin/message?t=message/list&count=20&day=7"
					},
					"contact" : {
						name : "用户管理",
						url : "/cgi-bin/contactmanage?t=user/index&pagesize=10&pageidx=0&type=0"
					},
					"material" : {
						name : "素材管理",
						url : [
								"/cgi-bin/appmsg?begin=0&count=10&t=media/appmsg_list&type=10&action=list",
								"/cgi-bin/appmsg?begin=0&count=10&t=media/appmsg_list&type=11&action=list" ]
					}
				}
			},
			"service" : {
				"name" : '服务',
"sub" : {
					"shop" : {
						name : "服务中心",
						url : "/cgi-bin/store?action=index&t=service/index"
					},
					"order" : {
						name : "我的订单",
						url : "/cgi-bin/order?action=index&t=service/order"
					},
					"myservice" : {
						name : "我的服务",
						url : "/cgi-bin/myservice?action=index&t=service/my_service"
					}
				},
				"isNew" : true
			},
			"statistics" : {
				"name" : '统计',
"sub" : {
					"user" : {
						name : "用户分析",
						url : "/cgi-bin/pluginloginpage?action=stat_user_summary&pluginid=luopan&t=statistics/index"
					},
					"appmsg" : {
						name : "图文分析",
						url : "/cgi-bin/pluginloginpage?action=stat_article_detail&pluginid=luopan&t=statistics/index"
					},
					"message" : {
						name : "消息分析",
						url : "/cgi-bin/pluginloginpage?action=stat_message&pluginid=luopan&t=statistics/index"
					},
					"interface" : {
						name : "接口分析",
						url : "/cgi-bin/pluginloginpage?action=stat_interface&pluginid=luopan&t=statistics/index"
					}
				}
			},
			"setting" : {
				"name" : '设置',
				"sub" : {
					"account" : {
						name : "帐号信息",
						url : "settingpage?t=setting/index&action=index"
					},
					"assistant" : {
						name : "公众号助手",
						url : "assistant?t=setting/mphelper&action=mphelper"
					},
					"development" : {
						name : "开发配置",
						url : "development?t=setting/dev"
					}
				}
			}
		};

		var menuJson = {}, uin = "2396404301";
		var primary_nav = "function";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["masssend"] = {
			primary : "function",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "function";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["tmplmsg"] = {
			primary : "function",
			selected : "" === "1",
			nav_flag : 0
		};
		var primary_nav = "function";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["advanced"] = {
			primary : "function",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "function";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["business"] = {
			primary : "function",
			selected : "" === "1",
			nav_flag : 0
		};
		var primary_nav = "manage";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["message"] = {
			primary : "manage",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "manage";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["contact"] = {
			primary : "manage",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "manage";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["material"] = {
			primary : "manage",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "service";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["shop"] = {
			primary : "service",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "service";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["myservice"] = {
			primary : "service",
			selected : "" === "1",
			nav_flag : 0
		};
		var primary_nav = "service";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["myservice"] = {
			primary : "service",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "statistics";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["user"] = {
			primary : "statistics",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "statistics";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["appmsg"] = {
			primary : "statistics",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "statistics";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["message"] = {
			primary : "statistics",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "statistics";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["interface"] = {
			primary : "statistics",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "setting";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["account"] = {
			primary : "setting",
			selected : "" === "1",
			nav_flag : 1
		};
		var primary_nav = "setting";
		menuJson[primary_nav] = menuJson[primary_nav] || {};
		menuJson[primary_nav]["assistant"] = {
			primary : "setting",
			selected : "" === "1",
			nav_flag : 1
		};
		;

		function getObjLength(obj) {
			var c = 0;
			for ( var j in obj) {
				c++;
			}
			return c;
		}
		function formatMenuData(menuJson, menuData) {
			var status = window.Cookies.get("menu_status");

			status = !status ? {} : Cookies.parse(status);
			status = status[uin] || {};

			for ( var primary_id in menuJson) {
				var menuSubJson = menuJson[primary_id];
				for ( var nav_id in menuSubJson) {
					var item = menuSubJson[nav_id];
					if (!!item.primary) {
						var primary = item.primary, menu = menuData[primary], sub = menu.sub[nav_id];

						if (!!status[primary]) {
							menu.isOpen = true;
						}
						if (!!sub && item.nav_flag > 0) {
							sub.isShow = true;
							sub.isSelected = item.selected;
							sub.url = ( [].concat(sub.url))[item.nav_flag - 1] + '&token=1912733955&lang=zh_CN';
						}
					}
				}
			}

			return menuData;
		}

		function render(data) {
			var d_len = getObjLength(data), d_c = 0, html = [];

			for ( var key in data) {
				var menu = data[key], sub = menu.sub, sub_html = [], c = 0, len = getObjLength(sub), isSelected = false;

				for ( var j in sub) {
					var item = sub[j];
					if (item.isShow) {
						c++;
						isSelected = isSelected || item.isSelected;
						sub_html.push( [ '<dd id="menu_', j,
								'" class="menu_item ',
								(c == len ? " no_extra " : ""),
								(item.isSelected ? " selected " : ""),
								'">__tag_306$146_', item.name,
								"__tag_306$186_</dd>" ].join(""));
					}
				}
				if (c > 0) {
					d_c++;
					html
							.push( [
									'<dl id="menu_',
									key,
									'" class="menu ',
									(d_c == 1 ? " no_extra "
											: (d_c == d_len ? "extra" : "")),
									(isSelected ? " selected " : ""),
									' ',
									(isSelected || menu.isOpen ? "" : "closed"),
									'">',
									'__tag_313$25_<i class="icon_menu ',
									key,
									'">__tag_313$79_<i class="icon_menu_switch">__tag_313$111_',
									menu.name,
									menu.isNew ? '__tag_313$140_</i>' : "",
									'__tag_313$178_', sub_html.join(''),
									'__tag_315$25_' ].join(""));
				} else {
					d_len--;
				}
			}
			document.getElementById('menuBar').innerHTML = html.join('');
		}

		render(formatMenuData(menuJson, menuData
</script>
				</div>
				<div class="col_main">
					<div class="index_show_area">
						<div class="index_tap added">
							<ul class="inner">
								<li class="index_tap_item added_message">
									<a
										href="/cgi-bin/message?t=message/list&amp;count=20&amp;day=7&amp;token=1912733955&amp;lang=zh_CN">
										<span class="tap_inner"> <i class="icon_index_tap"></i>
											<em class="number">928</em> <strong class="title">新消息</strong>
									</span> </a>
								</li>
								<li class="index_tap_item added_fans">
									<a
										href="/cgi-bin/contactmanage?t=user/index&amp;pagesize=10&amp;pageidx=0&amp;type=0&amp;groupid=0&amp;token=1912733955&amp;lang=zh_CN">
										<span class="tap_inner no_extra"> <i
											class="icon_index_tap"></i> <em class="number">189</em> <strong
											class="title">新增人数</strong> </span> </a>
								</li>
							</ul>
						</div>
						&nbsp;
						<div class="index_tap total">
							<ul class="inner">
								<li class="index_tap_item total_fans extra">
									<a
										href="/cgi-bin/contactmanage?t=user/index&amp;pagesize=10&amp;pageidx=0&amp;type=0&amp;groupid=0&amp;token=1912733955&amp;lang=zh_CN">
										<span class="tap_inner"> <i class="icon_index_tap"></i>
											<em class="number">1177</em> <strong class="title">总用户数</strong>
									</span> </a>
								</li>
							</ul>
						</div>
					</div>
					<div class="mp_news_area notices_box">
						<div class="title_bar">
							<h3>
								系统公告
							</h3>
						</div>
						<ul class="mp_news_list">
							<li class="mp_news_item">
								<a
									href="/cgi-bin/readtemplate?t=news/note-20131029_tmpl&amp;lang=zh_CN"
									target="_blank"> <strong>微信公众平台新版公测更新说明<i
										class="icon_common new"></i> </strong> <span class="read_more">2013-10-29</span>
								</a>
							</li>
							<li class="mp_news_item">
								<a
									href="/cgi-bin/readtemplate?t=news/note-20130829_tmpl&amp;lang=zh_CN"
									target="_blank"> <strong>微信公众平台增加数据统计功能</strong> <span
									class="read_more">2013-08-29</span> </a>
							</li>
							<li class="mp_news_item">
								<a
									href="/cgi-bin/readtemplate?t=news/mpupdate-sysi-33_tmpl&amp;lang=zh_CN"
									target="_blank"> <strong>微信公众平台2013.08.05更新说明</strong> <span
									class="read_more">2013-08-05</span> </a>
							</li>
							<li class="mp_news_item">
								<a
									href="/cgi-bin/frame?token=1912733955&amp;t=setting/upgrade_notes_frame&amp;lang=zh_CN"
									target="_blank"> <strong>将公众号升级成服务号</strong> <span
									class="read_more">2013-08-05</span> </a>
							</li>
							<li class="mp_news_item">
								<a
									href="/cgi-bin/readtemplate?t=news/note-api_tmpl&amp;lang=zh_CN"
									target="_blank"> <strong>公众平台接口更新通知</strong> <span
									class="read_more">2013-03-19</span> </a>
							</li>
							<li class="mp_news_item no_extra">
								<a href="http://kf.qq.com/product/weixinmp.html" target="_blank">
									<strong>微信公众平台客服专区</strong> <span class="read_more">2013-03-19</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="faq">
				<ul class="links">
					<li class="links_item no_extra">
						<a
							href="http://crm2.qq.com/page/portalpage/wpa.php?uin=40012345&amp;f=1&amp;ty=1&amp;ap=000011:400792:|m:12|f:400792:m:12"
							target="_blank">在线客服</a>
					</li>
					<li class="links_item">
						<a href="http://kf.qq.com/product/weixinmp.html" target="_blank">客服中心</a>
					</li>
				</ul>
				<p class="tail">
					反馈官号：weixingongzhong
				</p>
			</div>
		</div>

<script type="text/javascript">
$(document).ready(function(){
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
});
</script>
	</body>
</html>