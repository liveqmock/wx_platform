define("tpl/tab.html.js", [], function(e, t, n) {
return '<div class="tab">\n	<ul class="tab_navs">\n	    {each tabs as tab}\n        <li class="tab_nav {tab.className}" data-type="{tab.type}" data-tab=".{tab.selector}">\n		    <a href="javascript:void(0);"><i class="icon_msg_sender"></i>{tab.text}</a>\n	    </li>\n	    {/each}\n	</ul>\n	<div class="tab_panel">\n	    {each tabs as tab}\n	    <div class="tab_content">\n	    	<div class="{tab.selector} inner {tab.innerClassName}">\n	    	</div>\n	    </div>\n	    {/each}\n	</div>\n</div>\n';
});define("tpl/popup.html.js", [], function(e, t, n) {
return '<div class="dialog_wrp {className}" style="{if width}width:{width}px;{/if}{if height}height:{height}px;{/if}">\n	<div class="dialog">\n		<div class="dialog_hd">\n			<h3>{title}</h3>\n			<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>\n		</div>\n		<div class="dialog_bd">{=content}</div>\n		{if buttons && buttons.length}\n		<div class="dialog_ft">\n			{each buttons as bt index}\n            <span class="btn {bt.type} btn_input js_btn_p"><button class="js_btn" data-index="{index}">{bt.text}</button></span>\n	        {/each}\n		</div>\n		{/if}\n	</div>\n</div>{if mask}<div class="mask"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>{/if}\n';
});define("common/wx/widgetBridge.js", [], function(e, t, n) {
try {
"use strict", $.widgetBridge || ($.widgetBridge = function(e, t) {
var n = e, r = n.split("."), e = r.length > 1 ? r[1] : r[0];
$.fn[e] = function(r) {
var i = typeof r == "string", s = [].slice.call(arguments, 1), o = this;
r = r || {};
if (i) {
var u;
return r.indexOf("_") !== 0 && this.each(function() {
var t = $.data(this, n);
if (!t) return $.error("cannot call methods on " + e + " prior to initialization; " + "attempted to call method '" + r + "'");
if (r === "instance") return u = t, !1;
if (r === "option") return u = t.options, !1;
u || (u = (t[r] || jQuery.noop).apply(t, s)), r === "destroy" && (t.elements = null);
}), u;
}
var a = this;
return this.each(function() {
var e = this, i = $.data(this, n);
if (!i) {
i = $.extend(!0, {}, t), i.destroy || (i.destroy = function() {
$.removeData(e, n);
}), i.options = $.extend(!0, i.options || {}, r), i.element = $(this), i.elements = a, i._create && (o = i._create.call(i, r));
var s = o && o.length && o.get(0) || this;
$.data(s, n, i);
}
}), o;
};
});
} catch (r) {
wx.jslog({
src: "common/wx/widgetBridge.js"
}, r);
}
});define("common/qq/mask.js", [ "common/lib/spin.js" ], function(e, t, n) {
try {
"use strict", e("common/lib/spin.js");
var r = 0, i = '<div class="mask"></div>';
function s(e) {
if (this.mask) this.mask.show(); else {
var t = "body";
e && !!e.parent && (t = $(e.parent)), this.mask = $(i).appendTo(t), this.mask.id = "wxMask_" + ++r;
}
if (e) {
if (e.spin === !1) return this;
this.mask.spin(e.spin || "flower");
}
return this;
}
s.prototype = {
show: function() {
this.mask.show();
},
hide: function() {
this.mask.hide();
},
remove: function() {
this.mask.remove();
}
}, t.show = function(e) {
return new s(e);
}, t.hide = function() {
$(".mask").hide();
}, t.remove = function() {
$(".mask").remove();
};
} catch (o) {
wx.jslog({
src: "common/qq/mask.js"
}, o);
}
});define("common/wx/media/appmsg.js", [ "xss/ui/media.css", "common/wx/time.js", "tpl/media/appmsg.html.js", "common/qq/Class.js" ], function(e, t, n) {
try {
"use strict", e("xss/ui/media.css");
var r = wx.T, i = e("common/wx/time.js"), s = e("tpl/media/appmsg.html.js"), o = e("common/qq/Class.js"), u = o.declare({
init: function(e) {
if (!e || !e.container) return;
e.data = e.data || $.extend({}, e);
var t = e.data, n = t.multi_item || [], r = n.length, o = null, u = [];
if (r <= 0) return;
o = n[0];
for (var a = 1; a < r; ++a) u.push(n[a]);
var f = {
id: t.app_id,
type: e.type,
file_id: t.file_id,
time: t.create_time ? i.timeFormat(t.create_time) : "",
isMul: r > 1,
first: o,
list: u,
token: wx.data.t,
showEdit: e.showEdit || !1,
showMask: e.showMask || !1
};
$(e.container).html(wx.T(s, f)).data("opt", e), this.renderData = f;
},
getData: function() {
return this.renderData;
}
});
return u;
} catch (a) {
wx.jslog({
src: "common/wx/media/appmsg.js"
}, a);
}
});define("common/wx/media/video.js", [ "xss/ui/media/richvideo.css", "xss/ui/media.css", "common/lib/video.js", "common/wx/Cgi.js", "common/wx/time.js", "common/qq/Class.js", "common/lib/swfobject.js", "tpl/media/video.html.js", "tpl/media/videomsg.html.js" ], function(e, t, n) {
try {
"use strict", e("xss/ui/media/richvideo.css"), e("xss/ui/media.css");
var r = e("common/lib/video.js"), i = e("common/wx/Cgi.js"), s = e("common/wx/time.js"), o = e("common/qq/Class.js"), u = e("common/lib/swfobject.js"), a = e("tpl/media/video.html.js"), f = e("tpl/media/videomsg.html.js"), l = wx.T, c = wx.data.t, h = document, p = !!u.ua.pv[0], d = h.createElement("video"), v = "#wxVideoBoxFold", m = "#wxVideoPlayer", g = "wxVideo", y = {}, b = /msie/.test(navigator.userAgent.toLowerCase());
r.options.flash.swf = wx.path.video;
var w = {
id: "",
source: "",
type: "",
file_id: ""
}, E = 5e3, S = function(e) {
if (e.video_url) {
var t = "tmp" + (Math.random() * 1e5 | 0), n = $('<video id="%s"></video>'.sprintf(t)).appendTo("body");
r("#" + t).ready(function() {
$("#" + t).hide();
var n = this;
this.on("error", function(t) {
n.dispose(), e.dom.find(".loading_tips").show(), e.video_url = "", setTimeout(function() {
S(e);
}, E);
}), this.on("loadedmetadata", function() {
n.dispose(), $(e.selector).children().remove(), e.for_transfer = !1, e.digest = e.digest ? e.digest.html(!1) : "", new x(e);
});
var r = e.video_url;
d.canPlayType ? n.src(r) : n.src([ {
type: "video/x-flv",
src: r + "&trans=1"
} ]), n.play();
});
} else i.get({
url: wx.url("/cgi-bin/appmsg?action=get_video_url&videoid=%s".sprintf(e.video_id)),
error: function() {
setTimeout(function() {
S(e);
}, E);
}
}, function(t) {
e.video_url = t.video_url || "", setTimeout(function() {
S(e);
}, E);
});
}, x = o.declare({
init: function(e) {
var t = this;
$(e.selector).data("opt", e), e = $.extend(!0, {}, w, e), t.id = e.id, t.source = e.source, t.file_id = e.file_id, t.type = e.type, t.video_url = e.video_url, t.tpl = e.tpl, e.src = t.getVideoURL(), e.token = c || wx.data.t, e.time = e.create_time ? s.timeFormat(e.create_time) : "", e.digest = e.digest ? e.digest.replace(/<br.*>/g, "\n").html() : "", e.for_network = typeof e.video_url == "string" ? !e.video_url : !e.content;
var n = e.tpl == "videomsg" ? $(l(f, e)) : $(l(a, e));
t.dom = e.dom = $(e.selector).append(n), e.tpl == "videomsg" && e.for_transfer && S(e, t.dom), t.dom.find(".video_desc").length && t.dom.find(".video_desc").html(t.dom.find(".video_desc").attr("data-digest").replace(/\n/g, "<br>")), t.dom.find(".wxVideoScreenshot").on("click", function() {
t.play(e.play);
}), t.dom.find(".wxNetworkVideo").on("click", function() {
window.open($(this).attr("data-contenturl"));
}), t.dom.find(".video_switch").click(function() {
t.pause(e.pause);
});
},
getVideoURL: function() {
var e = this.source, t = this.id, n = this.file_id;
return !e || (e = "&source=" + e), this.video_url || "/cgi-bin/getvideodata?msgid={msgid}&fileid={fileid}&token={token}{source}".format({
msgid: t,
fileid: n,
source: e,
token: wx.data.t
});
},
canPlayType: function() {
var e = this.type;
return !d.canPlayType && !p;
},
play: function(e) {
var t = this;
if (t.canPlayType()) {
alert("您当前浏览器无法播放视频，请安装Flash插件/更换Chrome浏览器");
return;
}
var n = this.id, i = this.player;
if (!!i) return $("#wxVideoBox" + n).addClass("wxVideoPlaying").find(".wxVideoPlayContent").show(), i.play(), e && e(this);
var s = t.getVideoURL();
$("#wxVideoBox" + n).addClass("wxVideoPlaying").find(".wxVideoPlayContent").show();
var o = t.tpl == "videomsg" ? {
width: "100%",
height: "100%"
} : {};
r("#wxVideo" + n, o).ready(function() {
i = this;
var r = 0;
return i.on("fullscreenchange", function() {
r ? ($("#wxVideoPlayer" + n).css({
overflow: "hidden",
zoom: "1"
}), $("#wxVideoBox" + n).css({
"z-index": "0"
})) : ($("#wxVideoPlayer" + n).css({
overflow: "visible",
zoom: "normal"
}), $("#wxVideoBox" + n).css({
"z-index": "1"
})), r = ~r;
}), i.on("ended", function() {
this.currentTime(0);
}), b || !d.canPlayType ? i.src([ {
type: "video/x-flv",
src: s + "&trans=1"
} ]) : i.src(s), i.play(), t.player = i, e && e(this);
});
},
pause: function(e) {
var t = this.player;
t && t.pause(), $("#wxVideoBox" + this.id).removeClass("wxVideoPlaying").find(".wxVideoPlayContent").hide(), e && e(this);
}
});
return x;
} catch (T) {
wx.jslog({
src: "common/wx/media/video.js"
}, T);
}
});define("common/wx/media/img.js", [ "xss/ui/media.css", "tpl/media/img.html.js", "common/qq/Class.js" ], function(e, t, n) {
try {
"use strict";
var r = wx.T, i = e("xss/ui/media.css"), s = e("tpl/media/img.html.js"), o = e("common/qq/Class.js"), u = o.declare({
init: function(e) {
if (!e || !e.container) return;
var t = e;
$(e.container).html(s.format({
token: wx.data.t,
id: e.file_id,
msgid: e.msgid,
source: e.source,
ow: ~e.fakeid
})).data("opt", e), this.data = t;
},
getData: function() {
return this.data;
}
});
return u;
} catch (a) {
wx.jslog({
src: "common/wx/media/img.js"
}, a);
}
});define("common/wx/media/audio.js", [ "common/lib/soundmanager2.js", "tpl/media/audio.html.js", "xss/ui/media.css", "common/qq/Class.js" ], function(e, t, n) {
try {
"use strict";
var r = wx.T, i = e("common/lib/soundmanager2.js"), s = e("tpl/media/audio.html.js"), o = e("xss/ui/media.css"), u = e("common/qq/Class.js"), a = null, f = null, l = null, c = "wxAudioPlaying", h = function() {
l = i, l.setup({
url: "/mpres/zh_CN/htmledition/plprecorder/",
preferFlash: !1,
debugMode: !1
});
};
$(window).load(function() {
h();
});
var p = {
id: "",
source: "",
file_id: ""
}, d = u.declare({
init: function(e) {
var t = this;
$.extend(!0, t, p, e), this.soundId = this.id || this.file_id, t.play_length = Math.ceil(t.play_length * 1 / 1e3);
var n = $(r(s, t));
t.dom = $(e.selector).append(n).data("opt", e), n.click(function() {
t.toggle();
});
},
getAudioURL: function() {
var e = this.source, t = this.id, n = this.file_id;
return !e || (e = "&source=" + e), wx.url("/cgi-bin/getvoicedata?msgid={id}&fileid={fileid}{source}".format({
id: t,
fileid: n,
source: e
}));
},
isPlaying: function() {
return a != null && this == a;
},
toggle: function() {
this.isPlaying() ? this.stop() : (a && a.stop(), this.play());
},
play: function(e) {
var t = this;
if (this.isPlaying()) return;
this.dom.addClass(c), !!a && a.dom.removeClass(c), a = this, this.sound || (!l && h(), this.sound = l.createSound({
id: t.soundId,
url: t.getAudioURL(),
onfinish: function() {
a && (a.dom.removeClass(c), a = null);
}
})), l.play(this.soundId), e && e(this);
},
stop: function(e) {
if (!this.isPlaying()) return;
a = null, this.dom.removeClass(c), l.stop(this.soundId), e && e(this);
}
});
n.exports = d;
} catch (v) {
wx.jslog({
src: "common/wx/media/audio.js"
}, v);
}
});define("common/wx/media/factory.js", [ "common/wx/media/img.js", "common/wx/media/audio.js", "common/wx/media/video.js", "common/wx/media/appmsg.js", "common/qq/emoji.js" ], function(e, t, n) {
try {
"use strict";
var r = e("common/wx/media/img.js"), i = e("common/wx/media/audio.js"), s = e("common/wx/media/video.js"), o = e("common/wx/media/appmsg.js");
e("common/qq/emoji.js");
var u = {
"1": function(e, t) {
return $(e).html(t.content.emoji());
},
"2": function(e, t) {
return t.container = $(e), new r(t);
},
"3": function(e, t) {
return t.selector = $(e), t.source = "file", new i(t);
},
"4": function(e, t) {
return t.selector = $(e), t.id = t.file_id, t.source = "file", new s(t);
},
"10": function(e, t) {
return t.container = $(e), t.showMask = !1, new o(t);
},
"11": function(e, t) {
return t.container = $(e), t.showMask = !1, new o(t);
},
"15": function(e, t) {
return t.multi_item && t.multi_item[0] && (t.title = t.multi_item[0].title, t.digest = t.multi_item[0].digest), t.selector = $(e), t.id = Math.random() * 1e6 | 0, t.tpl = "videomsg", t.for_selection = !1, t.for_operation = !1, new s(t);
}
}, a = {
render: function(e, t) {
u[t.type] && $(e).length > 0 && u[t.type]($(e).html(""), t);
},
itemRender: u
};
n.exports = a;
} catch (f) {
wx.jslog({
src: "common/wx/media/factory.js"
}, f);
}
});define("media/media_dialog.js", [ "xss/ui/media/media_dialog.css", "xss/ui/media/richvideo.css", "common/wx/popup.js", "common/wx/Tips.js", "media/media_cgi.js", "common/wx/upload.js", "common/wx/checkbox.js", "common/wx/pagebar.js", "common/wx/media/audio.js", "common/wx/media/img.js", "common/wx/media/video.js", "common/wx/media/appmsg.js", "common/wx/time.js", "tpl/media/dialog/file_layout.html.js", "tpl/media/dialog/appmsg_layout.html.js", "tpl/media/dialog/videomsg_layout.html.js", "tpl/media/dialog/file.html.js" ], function(e, t, n) {
try {
"use strict", e("xss/ui/media/media_dialog.css"), e("xss/ui/media/richvideo.css"), e("common/wx/popup.js");
var r = wx.T, i = null, s = null, o = "media", u = e("common/wx/Tips.js"), a = e("media/media_cgi.js"), f = e("common/wx/upload.js"), l = e("common/wx/checkbox.js"), c = e("common/wx/pagebar.js"), h = f.uploadBizFile, p = template.render, d = e("common/wx/media/audio.js"), v = e("common/wx/media/img.js"), m = e("common/wx/media/video.js"), g = e("common/wx/media/appmsg.js"), y = e("common/wx/time.js"), b = y.timeFormat, w = e("tpl/media/dialog/file_layout.html.js"), E = e("tpl/media/dialog/appmsg_layout.html.js"), S = e("tpl/media/dialog/videomsg_layout.html.js"), x = e("tpl/media/dialog/file.html.js"), T = 1, N = {}, C = {
appmsg: E,
videomsg: S,
file: w
};
template.helper("mediaDialogtimeFormat", function(e) {
return b(e);
}), template.helper("mediaDialogInit", function(e) {
return e.file_id ? (N[e.file_id] = e, "") : "";
});
var k = {
"2": function(e, t) {
return new v({
container: $("#" + e.attr("id")),
file_id: t.file_id,
source: "file",
fakeid: t.fakeid
});
},
"3": function(e, t) {
var n = t;
return n.selector = "#" + e.attr("id"), n.source = "file", new d(n);
},
"4": function(e, t) {
var n = t;
return n.selector = "#" + e.attr("id"), n.id = n.file_id, n.source = "file", new m(n);
},
"15": function(e, t) {
var n = t;
return n.selector = e, n.id = n.app_id, n.tpl = "videomsg", n.for_selection = !0, n.for_transfer = !!n.content, n.hide_transfer = !!n.content, new m(n);
}
};
function L(e, t, n, r, s) {
var o = e / t + 1, u = new c({
container: $(".pageNavigator", i.popup("get")),
perPage: t,
first: !1,
last: !1,
isSimple: !0,
initShowPage: o,
totalItemsNum: n,
callback: function(e) {
var n = e.currentPage;
if (n == o) return;
n--, s.begin = t * n, r(s);
}
});
}
function A(e, t, n, a, f, l) {
i && i.popup("remove"), n == 15 && (e = "videomsg");
var c = T++;
i = $(r(C[e], {
tpl: t,
upload_id: c,
type: n,
token: wx.data.t
}).trim()).popup({
title: "选择素材",
className: o,
width: 960,
onOK: function() {
if (f && !f()) return !0;
this.remove(), i = null;
},
onCancel: function() {
this.remove(), i = null;
}
}), s = i.popup("get"), h({
container: "#js_media_dialog_upload" + c,
type: n,
onAllComplete: function() {
u.suc("上传成功"), l.begin = 0, O(l);
}
});
if (!!a) {
e == "file" && ($(".js_media_list", s).html(r(x, {
list: a
})), $(".frm_radio[type=radio]", s).checkbox(!1), $(".media_content", s).each(function() {
var e = $(this), t = e.data("id"), n = e.data("type"), r = N[t];
if (!r) return;
n && k[n] && k[n](e, r);
}));
if (e == "appmsg") {
var p = a.length, d = $(".js_appmsg_list .inner", s);
for (var v = 0; v < p; ++v) {
var m = a[v], y = d.eq(v % 2), b = m.app_id, w = $('<div id="appmsg%s"></div>'.sprintf(b), y).appendTo(y);
new g({
container: w,
data: m,
showMask: !0
});
}
}
if (e == "videomsg") {
var E = s.find("#js_videomsg_list").find(".inner");
a.each(function(e, t) {
var r = E.eq(t % 2), i = $('<div id="appmsg%s"></div>'.sprintf(e.app_id), r).appendTo(r);
k[n] && k[n](i, e);
});
}
i.popup("resetPosition");
}
}
function O(e) {
var t = e.type, n = e.onSelect, r = e.count || 10, o = e.begin || 0;
A("file", "loading"), a.getList(t, o, r, function(u) {
if (!i) return;
var a = {
"2": "img_cnt",
"3": "voice_cnt",
"4": "video_cnt"
}, f = u.file_item, l = u.file_cnt[a[t]];
f.length <= 0 ? A("file", "no-media", t, f, null, e) : (A("file", "files", t, f, function() {
var e = s.find('[name="media"]:checked').val(), r = $("#fileItem" + e).data("opt");
return r ? (n(t, r), !0) : !1;
}, e), L(o, r, l, O, e));
});
}
function M(e) {
return e.find(".appmsg.selected,.Js_videomsg.selected");
}
function _(e) {
var t = e.type, n = e.onSelect, r = e.count || 10, o = e.begin || 0;
A("appmsg", "loading"), a.appmsg.getList(t, o, r, function(a) {
if (!i) return;
var f = {
"10": "app_msg_cnt",
"11": "commondity_msg_cnt",
"15": "video_msg_cnt"
}, l = a.item, c = a.file_cnt[f[t]];
l.length <= 0 ? A("appmsg", "no-media", t, l, null, e) : (A("appmsg", "files", t, l, function() {
var e = M(s).parent().data("opt");
return e ? (n(t, e), !0) : !1;
}), L(o, r, c, _, e), t == 15 ? (s.on("click", ".Js_videomsg", function() {
$(this).find(".loading_tips").length ? u.err("视频在转码中，不能选择") : $(this).find(".title").text().trim() != "" && (s.find(".Js_videomsg").removeClass("selected"), $(this).addClass("selected"));
}), s.on("mouseenter", ".Js_videomsg", function() {
$(this).find(".title").text().trim() == "" && $(this).addClass("no_title");
}), s.on("mouseleave", ".Js_videomsg", function() {
$(this).removeClass("no_title");
})) : s.on("click", ".appmsg", function() {
M(s).removeClass("selected"), $(this).addClass("selected");
}));
});
}
return {
getFile: O,
getAppmsg: _
};
} catch (D) {
wx.jslog({
src: "media/media_dialog.js"
}, D);
}
});define("common/wx/richEditor/emotionEditor.js", [ "xss/ui/emotion_editor.css", "tpl/richEditor/emotionEditor.html.js", "common/wx/richEditor/wysiwyg.js", "common/wx/richEditor/emotion.js", "common/wx/upload.js", "common/wx/Tips.js", "common/qq/Class.js" ], function(e, t, n) {
try {
"use strict";
var r = wx.T, i = e("xss/ui/emotion_editor.css"), s = e("tpl/richEditor/emotionEditor.html.js"), o = e("common/wx/richEditor/wysiwyg.js"), u = e("common/wx/richEditor/emotion.js"), a = e("common/wx/upload.js"), f = e("common/wx/Tips.js"), l = a.uploadCdnFile, c = e("common/qq/Class.js"), h = {
isHTML: !0,
wordlimit: 500,
hideUpload: !0
}, p = 1, d = c.declare({
init: function(e, t) {
var n = this;
t = this.opt = $.extend(!0, {}, h, t), n.selector$ = e, t.gid = p++, n.selector$.html(r(s, t)), n.emotion = new u(e.find(".js_emotionArea")), n.wysiwyg = new o(e.find(".js_editorArea"), {
init: function() {
e.find(".js_editorTip").html("还可以输入<em>{l}</em>字".format({
l: t.wordlimit
}));
},
textFilter: function(e) {
return e = n.emotion.getEmotionText(e).replace(/<br.*?>/ig, "\n").replace(/<.*?>/g, ""), e = e.html(!1), t.isHTML ? e : e.replace(/<br.*?>/ig, "\n").replace(/<.*?>/g, "");
},
nodeFilter: function(e) {
var t = "";
return e.nodeName.toUpperCase() === "IMG" && (t = e), t;
},
change: function() {
var r = n.getContent(), i = t.wordlimit - r.length, s = e.find(".js_editorTip");
i < 0 ? s.html("已超出<em{cls}>{l}</em>字".format({
l: -i,
cls: ' class="warn"'
})) : s.html("还可以输入<em>{l}</em>字".format({
l: i
}));
}
}), n.upload = l({
container: e.find(".js_upload"),
type: 2,
multi: !1,
onComplete: function(e, t, r, i, s) {
if (!i || !i.base_resp || i.base_resp.ret != 0) return;
var o = i.content;
f.suc("上传成功"), n.wysiwyg.insertHTML(o);
}
}), n._initEvent(), n.insertHTML(t.text);
},
_initEvent: function() {
var e = $(".js_switch", this.selector$), t = this.emotion, n = this.wysiwyg;
t.click(function(e) {
return n.insertHTML(t.getEmotionHTML(e)), !1;
}), t.hide(), e.click(function() {
t.show();
}), $(document).on("click", "*", function(e) {
var n = $(e.target), r = n.filter(".js_switch"), i = n.filter(".js_emotion_i"), s = n.filter(".emotions_item");
!r.length && !i.length && !s.length && t.hide();
});
},
setContent: function(e) {
var t = e || "";
t = this.opt.linebreak ? t.replace(/\n/g, "<br>") : t, e = u.emoji(t), this.wysiwyg.setContent(e, t.html(!1));
},
insertHTML: function(e) {
e = e || "", this.wysiwyg.insertHTML(e);
},
getContent: function() {
var e = this.wysiwyg.getContent();
return e = typeof e == "string" ? e.trim() : "", this.opt.linebreak ? e.replace(/<br[^>]*>/ig, "\n") : e;
},
getHTML: function() {
var e = this.wysiwyg.getHTML().html(!1);
return typeof e == "string" ? e.trim() : "";
}
});
n.exports = d;
} catch (v) {
wx.jslog({
src: "common/wx/richEditor/emotionEditor.js"
}, v);
}
});define("common/qq/jquery.plugin/tab.js", [ "tpl/tab.html.js", "xss/ui/tab.css" ], function(e, t, n) {
try {
"use strict";
var r = {
index: 0
}, i = e("tpl/tab.html.js"), s = e("xss/ui/tab.css");
$.fn.tab = function(e) {
if (!e || !e.tabs) return;
this.html(wx.T(i, {
tabs: e.tabs
}));
var t = this, n = t.find(".tab_navs"), s = n.find(".tab_nav"), o = s.length, u = null, a = null, f = function(n) {
var r = n.data("tab"), i = n.data("type");
!r || (u != n && (u && u.removeClass("selected"), a && a.hide(), u = n, a = t.find(r).parent(), a.show(), u.addClass("selected")), !!e.select && e.select(n, a, r, i));
}, l = function(n) {
var r = n.data("tab"), i = n.data("type");
return e.click ? e.click(n, t.find(r), r, i) : !0;
};
return e = $.extend(!0, {}, r, e), s.each(function(n) {
var r = e.index, i = $(this).addClass("width" + o), s = i.data("tab");
n == r ? f(i) : t.find(s).parent().hide(), n == o - 1 && i.addClass("no_extra");
}), n.on("click", ".tab_nav", function() {
var e = l($(this));
return e != 0 && f($(this));
}), {
getLen: function() {
return o;
},
getTabs: function() {
return s;
},
select: function(e) {
return f(s.eq(e));
}
};
};
} catch (o) {
wx.jslog({
src: "common/qq/jquery.plugin/tab.js"
}, o);
}
});define("tpl/top.html.js", [], function(e, t, n) {
return '<ul class="title_tab_navs">\n    {each data as o index}\n    {if (typeof o.acl == "undefined" || o.acl == 1)}\n    <li class="title_tab_nav js_top {o.className}" data-id="{o.id}"><a href="{o.url}">{o.name}</a></li>\n    {/if}\n    {/each}\n</ul>\n';
});define("common/wx/richEditor/msgSender.js", [ "common/wx/popup.js", "xss/ui/msg_sender.css", "common/qq/jquery.plugin/tab.js", "common/wx/richEditor/emotionEditor.js", "media/media_dialog.js", "common/wx/media/factory.js", "common/qq/Class.js", "common/wx/Tips.js", "common/wx/media/audio.js", "common/wx/media/img.js", "common/wx/media/video.js", "common/wx/media/appmsg.js" ], function(e, t, n) {
try {
"use strict", e("common/wx/popup.js"), e("xss/ui/msg_sender.css");
var r = e("common/qq/jquery.plugin/tab.js"), i = e("common/wx/richEditor/emotionEditor.js"), s = e("media/media_dialog.js"), o = e("common/wx/media/factory.js"), u = e("common/qq/Class.js"), a = e("common/wx/Tips.js"), f = e("common/wx/media/audio.js"), l = e("common/wx/media/img.js"), c = e("common/wx/media/video.js"), h = e("common/wx/media/appmsg.js"), p = 1, d = {}, v = [ {
text: "文字",
acl: "can_text_msg",
className: "tab_text",
selector: "js_textArea",
innerClassName: "no_extra",
type: 1
}, {
text: "图片",
acl: "can_image_msg",
className: "tab_img",
selector: "js_imgArea",
type: 2
}, {
text: "语音",
acl: "can_voice_msg",
className: "tab_audio",
selector: "js_audioArea",
type: 3
}, {
text: "视频",
acl: "can_video_msg",
className: "tab_video",
selector: "js_videoArea",
type: 15
}, {
text: "图文消息",
acl: "can_app_msg",
className: "tab_appmsg",
selector: "js_appmsgArea",
type: 10
}, {
text: "商品消息",
acl: "can_commodity_app_msg",
className: "tab_commondity_appmsg",
selector: "js_commondityAppmsgArea",
type: 11
} ];
function m(e, t) {
var n = [];
for (var r = 0; r < e.length; ++r) {
var i = e[r];
!!t && !!t[i.acl] && n.push(i);
}
return n;
}
function g(e) {
var t = {}, n = e.slice();
n.push({
acl: "can_video_msg",
className: "tab_video",
selector: "js_videoArea",
text: "视频",
type: 4,
index: 3
});
for (var r = 0; r < n.length; ++r) {
var i = n[r];
i.index = i.index || r, t[i.type] = i;
}
return t;
}
var y = o.itemRender, b = u.declare({
select: function() {
this.msgSender.type = this.type;
},
fillData: function(e) {},
getData: function() {},
click: function() {
this.msgSender.type = this.type;
}
}), w = b.Inherit({
init: function(e) {
this.msgSender = e, this.type = 1, this.info = e.infos[this.type], this.wordlimit = e.opt.wordlimit, this.index = this.info && this.info.index;
},
fillData: function(e) {
var t = this.msgSender;
t.type = this.type, t.select(this.index), t.emotionEditor.setContent(e.content);
},
getData: function() {
var e = this.msgSender.emotionEditor.getContent();
return {
type: this.type,
content: e
};
},
clear: function() {
return this.fillData({
content: ""
});
},
isValidate: function(e) {
var t = e && e.type == 1 && e.content != "" && e.content.length <= this.wordlimit;
return t || a.err("文字必须为1到%s个字".sprintf(this.wordlimit)), t;
}
}), E = b.Inherit({
init: function(e, t) {
this.type = t, this.msgSender = e, this.info = e.infos[t], this.index = this.info && this.info.index;
},
click: function() {
var e = null, t = this;
return t.type == 10 || t.type == 11 || t.type == 15 ? e = s.getAppmsg : e = s.getFile, e({
type: t.type,
begin: 0,
count: 10,
onSelect: function(e, n) {
var r = t.msgSender;
t.msgSender.type = e, r.select(t.index);
var i = "msgSender_media_%s_%s".sprintf(r.gid, e);
$("." + t.info.selector).html('<div id="%s"></div>'.sprintf(i)), y[e] && y[e]("#" + i, n);
}
}), !1;
},
fillData: function(e) {
var t = this.msgSender, n = this.type, r = "msgSender_media_%s_%s".sprintf(t.gid, n);
$("." + this.info.selector).html('<div id="%s"></div>'.sprintf(r)), t.select(this.index), this.msgSender.type = n, y[n] && y[n]("#" + r, e);
},
clear: function() {
var e = this.type;
return $("." + this.info.selector).html("");
},
getData: function(e) {
var t = this.type, n = "msgSender_media_%s_%s".sprintf(this.msgSender.gid, t), r = $("#" + n).data("opt");
if (!r) return !1;
if (!e) return t == 10 || t == 11 ? {
type: t,
app_id: r.data.app_id
} : t == 15 ? {
type: t,
app_id: r.app_id
} : {
type: t,
file_id: r.file_id
};
r.type = t;
var i = r.data || {};
return $.extend(r, i);
},
isValidate: function(e) {
var t = !!e;
if (!!e) {
var n = e.type;
n == 10 || n == 11 || n == 15 ? t = !!e.type && !!e.app_id : t = !!e.type && !!e.file_id;
}
return t || a.err("请选择素材"), t;
}
}), S = {
wordlimit: 600
}, x = u.declare({
init: function(e, t) {
var n = this, r = 0;
e = $(e).show(), n.gid = p++, n.opt = $.extend(!0, {}, S, t);
var i = v, s = t && t.acl || {};
i = m(i, s), n.infos = g(i), n.op = {
"1": new w(n),
"2": new E(n, 2),
"3": new E(n, 3),
"4": new E(n, 4),
"7": new E(n, 15),
"10": new E(n, 10),
"11": new E(n, 11),
"15": new E(n, 15)
}, n.tab = e.tab({
index: r,
tabs: i,
select: function(e, t, n, r) {},
click: function(e, t, r, i) {
return n.op[i] && n.op[i].click();
}
}), n._init(e);
var o = t.data;
o ? n.setData(o) : n.type = 1;
},
setData: function(e) {
e = e || {
type: 1
};
var t = this, n = null, r = e.type;
t.type = r || 1, !(n = t.op[r]) || n.fillData(e);
},
_init: function(e) {
this.dom = e, this.emotionEditor = new i($(".js_textArea", e), {
wordlimit: this.opt.wordlimit
});
},
getData: function(e) {
if (this.type) {
var t = this.op[this.type].getData(e);
return {
error: !this.isValidate(),
data: t
};
}
return {
error: !0
};
},
getArea: function(e) {
return this.dom.find("." + this.infos[e].selector);
},
getTabs: function() {
return this.tab.getTabs();
},
isValidate: function() {
var e = this.type && this.op[this.type].getData();
return this.type && this.op[this.type].isValidate(e);
},
clear: function() {
return this.type && this.op[this.type].clear();
},
select: function(e) {
return this.tab.select(e);
}
});
return x;
} catch (T) {
wx.jslog({
src: "common/wx/richEditor/msgSender.js"
}, T);
}
});define("common/wx/top.js", [ "tpl/top.html.js" ], function(e, t, n) {
try {
"use strict";
var r = e("tpl/top.html.js"), i = wx.acl;
function s(e, t, n) {
var i = this;
return this.dom = $(e), this.dom.addClass("title_tab"), t && typeof t == "string" && (t = [ {
name: "",
url: "javasript:;",
className: "selected"
} ]), $.each(t, function(e, t) {
t.url = t.url && [ t.url, wx.data.param ].join("") || "javasript:;";
}), this.dom.html(template.compile(r)({
data: t
})), n && n.render && typeof n.render == "function" ? $.each(this.dom.find("li"), function(e, r) {
n.render.apply($(r), [ t[e], n && n.data ]);
}) : this.dom.html(template.compile(r)({
data: t
})), this.dom.on("click", ".top_item", function() {
$(this).addClass("selected").siblings().removeClass("selected");
}), this;
}
s.prototype.selected = function(e) {
typeof e == "number" ? this.dom.find(".js_top:eq(" + e + ")").addClass("selected") : this.dom.find(".js_top[data-id=" + e + "]").addClass("selected");
}, s.DATA = {
setting: [ {
id: "info",
name: "账号信息",
url: "/cgi-bin/userinfopage?t=wxm-setting"
}, {
id: "assistant",
name: "公众号手机助手",
url: "/cgi-bin/userinfopage?t=wxm_setting_bindaccount"
}, {
id: "meeting",
name: "会议号设置",
url: "/cgi-bin/userinfopage?t=wxm-meeting-setting"
} ],
mass: [ {
id: "send",
name: "新建群发消息",
url: "/cgi-bin/masssendpage?t=mass/send"
}, {
id: "list",
name: "已发送",
url: "/cgi-bin/masssendpage?t=mass/list&action=history&begin=0&count=10"
} ],
message: [ {
id: "total",
name: "全部消息",
url: "/cgi-bin/message?t=message/list&count=20&day=7"
}, {
id: "today",
name: "今天",
url: "/cgi-bin/message?t=message/list&count=20&day=0",
className: "sub"
}, {
id: "yesterday",
name: "昨天",
url: "/cgi-bin/message?t=message/list&count=20&day=1",
className: "sub"
}, {
id: "beforeYesterday",
name: "前天",
url: "/cgi-bin/message?t=message/list&count=20&day=2",
className: "sub"
}, {
id: "fivedays",
name: "更早",
url: "/cgi-bin/message?t=message/list&count=20&day=3",
className: "sub"
}, {
id: "star",
name: "星标消息",
url: "/cgi-bin/message?t=message/list&count=20&action=star"
}, {
id: "search",
name: "搜索结果"
} ],
media: [ {
id: "media11",
name: "商品消息",
acl: i.msg_acl.can_commodity_app_msg,
url: "/cgi-bin/appmsg?begin=0&count=10&t=media/appmsg_list&type=11&action=list"
}, {
id: "media10",
name: "图文消息",
acl: i.msg_acl.can_app_msg,
url: "/cgi-bin/appmsg?begin=0&count=10&t=media/appmsg_list&type=10&action=list"
}, {
id: "media2",
name: "图片",
acl: i.msg_acl.can_image_msg,
url: "/cgi-bin/filepage?type=2&begin=0&count=10&t=media/list"
}, {
id: "media3",
name: "语音",
acl: i.msg_acl.can_voice_msg,
url: "/cgi-bin/filepage?type=3&begin=0&count=10&t=media/list"
}, {
id: "media15",
name: "视频",
acl: i.msg_acl.can_video_msg,
url: "/cgi-bin/appmsg?begin=0&count=10&t=media/appmsg_list&type=15&action=list"
} ],
advanced: [ {
id: "edit",
name: "编辑模式",
url: "/cgi-bin/advanced?action=edit&t=advanced/edit"
}, {
id: "dev",
name: "开发模式",
url: "/cgi-bin/advanced?action=dev&t=advanced/dev"
} ],
business: [ {
id: "overview",
name: "数据概览",
url: "/cgi-bin/business?t=business/overview&action=overview"
}, {
id: "source",
name: "流量来源",
url: "/cgi-bin/business?t=business/source&action=source"
}, {
id: "rank",
name: "流量排名",
url: "/cgi-bin/business?t=business/rank&action=rank"
}, {
id: "order",
name: "订单流水",
url: "/cgi-bin/business?t=business/order&action=order"
}, {
id: "info",
name: "商户信息",
url: "/cgi-bin/business?t=business/info&action=info"
}, {
id: "test",
name: "支付测试",
url: "/cgi-bin/business?t=business/whitelist&action=whitelist"
}, {
id: "course",
name: "使用教程",
url: "/cgi-bin/business?t=business/course&action=course"
} ],
user: [ {
id: "useradmin",
name: "用户管理",
url: "/cgi-bin/contactmanage?t=user/index&pagesize=10&pageidx=0&type=0&groupid=0"
} ],
statistics: {
user: [ {
id: "summary",
name: "用户增长",
url: "/cgi-bin/pluginloginpage?action=stat_user_summary&pluginid=luopan&t=statistics/index"
}, {
id: "attr",
name: "用户属性",
url: "/cgi-bin/pluginloginpage?action=stat_user_attr&pluginid=luopan&t=statistics/index"
} ],
article: [ {
id: "detail",
name: "图文群发",
url: "/cgi-bin/pluginloginpage?action=stat_article_detail&pluginid=luopan&t=statistics/index"
}, {
id: "analyse",
name: "图文统计",
url: "/cgi-bin/pluginloginpage?action=stat_article_analyse&pluginid=luopan&t=statistics/index"
} ],
message: [ {
id: "message",
name: "消息分析",
url: "/cgi-bin/pluginloginpage?action=stat_message&pluginid=luopan&t=statistics/index"
} ],
"interface": [ {
id: "interface",
name: "接口分析",
url: "/cgi-bin/pluginloginpage?action=stat_interface&pluginid=luopan&t=statistics/index"
} ]
},
notification: [ {
id: "notification",
name: "通知中心",
url: "/cgi-bin/frame?t=notification/index_frame"
} ],
templateMessage: [ {
id: "my_template",
name: "我的模板",
url: "/cgi-bin/tmplmsg?action=list&t=tmplmsg/list"
}, {
id: "template_message",
name: "模板库",
url: "/cgi-bin/tmplmsg?action=tmpl_store&t=tmplmsg/store"
} ],
assistant: [ {
id: "mphelper",
name: "公众号助手",
url: "/cgi-bin/assistant?t=setting/mphelper&action=mphelper"
}, {
id: "warning",
name: "接口告警",
url: "/cgi-bin/assistant?t=setting/warning&action=warning"
} ]
}, s.RENDER = {
setting: function(e, t) {
e.id == "meeting" && t.role != 15 && this.remove();
},
message: function(e, t) {
e.id == "search" && (!t || t.action != "search") && this.remove();
},
assistant: function(e, t) {
e.id == "warning" && (!t || t.have_service_package == 0) && this.remove();
}
}, n.exports = s;
} catch (o) {
wx.jslog({
src: "common/wx/top.js"
}, o);
}
});