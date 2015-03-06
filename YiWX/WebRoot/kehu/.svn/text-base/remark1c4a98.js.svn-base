define("common/wx/checkbox.js", [ "tpl/checkbox.html.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = {
container: null,
label: "",
name: "",
type: "checkbox"
}, s = e("tpl/checkbox.html.js"), o = wx.T, u = 1, a = 1;
function f(e) {
var t = $(e);
t.each(function() {
var e = $(this).prop("checked"), t = $(this).parent();
e ? t.addClass("selected") : t.removeClass("selected");
});
}
function l(e) {
var t = $(e);
t.each(function() {
var e = $(this).prop("disabled"), t = $(this).parent();
e ? t.addClass("disabled") : t.removeClass("disabled");
});
}
function c() {
return "checkbox" + u++;
}
var h = function(e) {
this.options = $.extend(!0, {}, i, e), this.options.index = a++, this.$container = $(this.options.container), this.$dom = $(o(s, this.options)).appendTo(this.$container), this.$input = this.$dom.find("input"), this.$input.checkbox();
};
h.prototype = {
checked: function(e) {
return typeof e != "undefined" && (this.$input.prop("checked", e), f(this.$input)), this.$input.prop("checked");
},
disabled: function(e) {
return typeof e != "undefined" && (this.$input.prop("disabled", e), l(this.$input)), this.$input.prop("disabled");
}
}, $.fn.checkbox = function(e) {
var t, n, r = !1, i, s;
typeof e == "boolean" ? t = e : $.isPlainObject(e) ? (t = e.multi, n = e.onChanged) : typeof e == "string" && (r = !0, i = e, s = [].slice.call(arguments, 1)), typeof t == "undefined" && (t = this.is("input[type=checkbox]"));
var o = this, u = t ? "checkbox" : "radio", a = {
checked: function(e) {
return o.attr("checked", e), o.prop("checked", e), f(o), o;
},
disabled: function(e) {
return o.attr("disabled", e), o.prop("disabled", e), l(o), o;
},
value: function() {
var e = o.eq(0);
return e.prop("checked") ? e.val() : "";
},
values: function() {
var e = [];
return o.each(function() {
$(this).prop("checked") && e.push($(this).val());
}), e;
},
adjust: function(e) {
e = "" + e;
if (e) {
var t = e.split(",");
o.each(function() {
var e = $(this);
t.indexOf(e.val()) >= 0 && (e.attr("checked", !0), f(e));
});
}
return this;
},
label: function(e) {
return e && (o.parent().find(".lbl_content").text(e), o.attr("data-label", e)), o;
}
};
return r && typeof a[i] == "function" ? a[i].apply(a, s) : (this.addClass("frm_" + u).each(function() {
var e = $(this), t = e.parent();
if (!t.is("label")) {
var n = e.attr("data-label");
t = $('<label class="frm_{type}_label"><i class="icon_{type}"></i></label>'.format({
type: u
})).append("<span class='lbl_content'>{content}</span>".format({
content: n
})), t.insertBefore(e).prepend(e);
}
if (!this.id) {
var r = c();
this.id = r;
}
t.attr("for", this.id);
}), f(this), l(this), this.parent().delegate("input[type=checkbox],input[type=radio]", "click", function(e) {
var r = $(this), i = r.prop("checked");
t ? (r.attr("checked", i), f(r)) : (o.attr("checked", !1), r.attr("checked", !0).prop("checked", !0), f(o)), typeof n == "function" && n(r);
}).addClass("frm_" + u + "_label"), a);
}, n.exports = h;
} catch (p) {
wx.jslog({
src: "common/wx/checkbox.js"
}, p);
}
});define("media/media_cgi.js", [ "common/wx/Tips.js", "common/wx/Cgi.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = e("common/wx/Tips.js"), s = e("common/wx/Cgi.js"), o = {
del: function(e, t) {
s.post({
mask: !1,
url: wx.url("/cgi-bin/operate_appmsg?sub=del&t=ajax-response"),
data: {
AppMsgId: e
},
error: function() {
i.err("删除失败");
}
}, function(e) {
e.ret == "0" ? (i.suc("删除成功"), t && t(e)) : i.err("删除失败");
});
},
save: function(e, t, n, r, o, u) {
var a = n.AppMsgId ? wx.url("/cgi-bin/operate_appmsg?t=ajax-response&sub=update&type=%s".sprintf(t)) : wx.url("/cgi-bin/operate_appmsg?t=ajax-response&sub=create&type=%s".sprintf(t));
n.ajax = 1, s.post({
url: a,
data: n,
dataType: "html",
error: function() {
i.err("保存失败"), o && o();
},
complete: u
}, function(t) {
t = $.parseJSON(t);
if (t.ret == "0") i.suc("保存成功"), r && r(t); else {
var n = !1;
switch (t.ret) {
case "64506":
i.err("保存失败,链接不合法");
break;
case "64507":
i.err("内容不能包含链接，请调整");
break;
case "64508":
i.err("查看原文链接可能具备安全风险，请检查");
break;
case "-99":
i.err("内容超出字数，请调整");
break;
case "10801":
i.err("标题不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), n = t.msg;
break;
case "10802":
i.err("作者不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), n = t.msg;
break;
case "10803":
i.err("敏感链接，请重新添加。"), n = t.msg;
break;
case "10804":
e ? i.err("正文不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。") : i.err("摘要不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), n = t.msg;
break;
case "10806":
i.err("正文不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), n = t.msg;
break;
case "-20000":
i.err("登录态超时，请重新登录。");
break;
default:
i.err("保存失败");
}
o && o(n);
}
});
},
preview: function(e, t, n, r, o) {
s.post({
url: wx.url("/cgi-bin/operate_appmsg?sub=preview&t=ajax-appmsg-preview&type=%s".sprintf(t)),
data: n,
dataType: "html",
error: function() {
i.err("发送失败，请稍后重试"), o && o();
}
}, function(t) {
t = $.parseJSON(t);
if (t.ret == "0") i.suc("发送预览成功，请留意你的手机微信"), r && r(t); else {
switch (t.ret) {
case "64501":
i.err("你输入是非法的微信号，请重新输入");
break;
case "64502":
i.err("你输入的微信号不存在，请重新输入");
break;
case "10700":
case "64503":
i.err("你输入的微信号不是你的好友");
break;
case "10703":
i.err("对方关闭了接收消息");
break;
case "10701":
i.err("用户已被加入黑名单，无法向其发送消息");
break;
case "10704":
case "10705":
i.err("该素材已被删除");
break;
case "64504":
i.err("保存图文消息发送错误，请稍后再试");
break;
case "64505":
i.err("发送预览失败，请稍后再试");
break;
case "64507":
i.err("内容不能包含链接，请调整");
break;
case "-99":
i.err("内容超出字数，请调整");
break;
case "62752":
i.err("可能含有具备安全风险的链接，请检查");
break;
case "10801":
i.err("标题不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), t.antispam = !0;
break;
case "10802":
i.err("作者不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), t.antispam = !0;
break;
case "10803":
i.err("敏感链接，请重新添加。"), t.antispam = !0;
break;
case "10804":
e ? i.err("正文不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。") : i.err("摘要不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), t.antispam = !0;
break;
case "10806":
i.err("正文不能有违反公众平台协议、相关法律法规和政策的内容，请重新编辑。"), t.antispam = !0;
break;
case "-8":
case "-6":
t.ret = "-6", i.err("请输入验证码");
break;
default:
i.err("系统繁忙，请稍后重试");
}
o && o(t);
}
});
},
getList: function(e, t, n, r) {
s.get({
mask: !1,
url: wx.url("/cgi-bin/appmsg?type=%s&action=list&begin=%s&count=%s&f=json".sprintf(e, t, n)),
error: function() {
i.err("获取列表失败");
}
}, function(e) {
e && e.base_resp && e.base_resp.ret == 0 ? r && r(e.app_msg_info) : i.err("获取列表失败");
});
}
};
return {
rename: function(e, t, n) {
s.post({
mask: !1,
url: wx.url("/cgi-bin/modifyfile?oper=rename&t=ajax-response"),
data: {
fileid: e,
fileName: t
},
error: function() {
i.err("重命名失败");
}
}, function(e) {
if (e.ret == "0") i.suc("重命名成功"), n && n(e); else switch (e.ret) {
case "-2":
i.err("素材名不能包含空格");
break;
default:
i.err("重命名失败");
}
});
},
del: function(e, t) {
s.post({
mask: !1,
url: wx.url("/cgi-bin/modifyfile?oper=del&t=ajax-response"),
data: {
fileid: e
},
error: function() {
i.err("删除失败");
}
}, function(e) {
e.ret == "0" ? (i.suc("删除成功"), t && t(e)) : i.err("删除失败");
});
},
getList: function(e, t, n, r) {
s.get({
mask: !1,
url: wx.url("/cgi-bin/filepage?type=%s&begin=%s&count=%s&f=json".sprintf(e, t, n)),
error: function() {
i.err("获取列表失败");
}
}, function(e) {
e && e.base_resp && e.base_resp.ret == 0 ? r && r(e.page_info) : i.err("获取列表失败");
});
},
appmsg: o
};
} catch (u) {
wx.jslog({
src: "media/media_cgi.js"
}, u);
}
});define("common/wx/upload.js", [ "common/lib/uploadify.js", "xss/ui/upload.css", "common/wx/Tips.js", "tpl/uploader.html.js", "common/lib/swfobject.js", "common/wx/dialog.js", "common/wx/Cgi.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict", e("common/lib/uploadify.js"), e("xss/ui/upload.css");
var i = wx.T, s = e("common/wx/Tips.js"), o = e("tpl/uploader.html.js"), u = e("common/lib/swfobject.js"), a = e("common/wx/dialog.js"), f = e("common/wx/Cgi.js"), l = wx.path.uploadify, c = wx.data.t, h = 0, p = 2, d = 3, v = 4, m = 5, g = 6, y = {
"0": {
type: h,
tip: "格式错误",
msg: "图片格式必须为以下格式：bmp, png, jpeg, jpg, gif<br/>语音格式必须为以下格式：mp3, wma, wav, amr<br/>视频格式必须为以下格式：rm, rmvb, wmv, avi, mpg, mpeg, mp4<br/>文档格式必须为以下格式：pdf"
},
"2": {
type: p,
tip: "格式错误",
msg: "图片格式必须为以下格式：bmp, png, jpeg, jpg, gif",
ext: "bmp|png|jpeg|jpg|gif",
bizfile: {
limit: 2e3,
msg: "上传的%s过%sM".sprintf("图片", 2),
tip: "大小超过%sM".sprintf(2)
},
tmpfile: {
limit: 2e3,
msg: "上传的%s过%sM".sprintf("图片", 2),
tip: "大小超过%sM".sprintf(2)
}
},
"3": {
type: d,
tip: "格式错误",
msg: "语音格式必须为以下格式：mp3, wma, wav, amr",
ext: "mp3|wma|wav|amr",
bizfile: {
limit: 5e3,
msg: "上传的%s过%sM".sprintf("语音", 5),
tip: "大小超过%sM".sprintf(5)
},
tmpfile: {
limit: 5e3,
msg: "上传的%s过%sM".sprintf("语音", 5),
tip: "大小超过%sM".sprintf(5)
}
},
"4": {
type: v,
tip: "格式错误",
msg: "视频格式必须为以下格式：rm, rmvb, wmv, avi, mpg, mpeg, mp4",
ext: "rm|rmvb|wmv|avi|mpg|mpeg|mp4",
bizfile: {
limit: 2e4,
msg: "上传的%s过%sM".sprintf("视频", 20),
tip: "大小超过%sM".sprintf(20)
},
tmpfile: {
limit: 2e4,
msg: "上传的%s过%sM".sprintf("视频", 20),
tip: "大小超过%sM".sprintf(20)
}
},
"5": {
type: m,
tip: "格式错误",
msg: "文档格式必须为以下格式：pdf",
ext: "pdf",
bizfile: {
limit: 1e4,
msg: "上传的%s过%sM".sprintf("文档", 10),
tip: "大小超过%sM".sprintf(20)
},
tmpfile: {
limit: 1e4,
msg: "上传的%s过%sM".sprintf("文档", 10),
tip: "大小超过%sM".sprintf(10)
}
},
"6": {
type: g,
tip: "格式错误",
msg: "图片格式必须为以下格式：bmp, png, jpeg, jpg, gif<br/>文档格式必须为以下格式：pdf",
ext: "bmp|png|jpeg|jpg|gif|pdf"
},
"7": {
type: p,
tip: "格式错误",
msg: "图片格式必须为以下格式：bmp, jpeg, jpg, gif",
ext: "bmp|jpeg|jpg|gif",
bizfile: {
limit: 2e3,
msg: "上传的%s过%sM".sprintf("图片", 2),
tip: "大小超过%sM".sprintf(2)
},
tmpfile: {
limit: 2e3,
msg: "上传的%s过%sM".sprintf("图片", 2),
tip: "大小超过%sM".sprintf(2)
}
}
};
y[15] = y[4];
var b = function(e) {
var t = [ p, d, v, m ];
e = e.substr(1).toLowerCase();
for (var n = 0; n < t.length; ++n) {
var r = y[t[n]];
if (r && r.ext && r.ext.indexOf(e) != -1) return t[n];
}
return !1;
};
function w(e, t) {
if (t == 0) return w(e, p) || w(e, d) || w(e, v) || w(e, m);
var e = e.substr(1).toLowerCase(), n = y[t];
return n && n.ext.indexOf(e) != -1;
}
function E(e, t, n) {
var r = b(e);
return t <= y[r][n].limit;
}
var S = {
uploader: l,
queueID: "fileQueue",
cancelImg: "cancel.png",
folder: "uploads",
fileDataName: "file",
auto: !0,
multi: !0,
hideButton: !0
}, x = function(e, t) {
return e = e + "&ticket_id=" + wx.data.user_name + "&ticket=" + wx.data.ticket, function(n) {
function r(e) {
f.show().append(i(o, e));
}
var f = $('<ul class="upload_file_box"></ul>'), l = $(n.container);
n.type = n.type || 0;
if (!u.ua.pv[0]) return l.click(function() {
a.show({
type: "warn",
msg: "警告|<p>未安装或未正确配置flash插件，请检查后重试。<br><a href='http://get.adobe.com/cn/flashplayer/' target='_blank'>到adobe去下载flash插件</a></p>",
mask: !0,
buttons: [ {
text: "确定",
click: function() {
this.remove();
}
} ]
});
}), !1;
n = $.extend(!0, {}, S, n);
var c = n.uploadlist$ ? $(n.uploadlist$) : l.parent(), h = {};
c.append(f.hide());
var p = $.extend(!0, {}, n, {
script: wx.url(e),
onSelectOnce: function() {
$.isEmptyObject(h) ? f.hide() : f.show();
},
onQueueFull: function(e, t) {
return h = {}, f.html(""), a.show({
type: "warn",
msg: "警告|一次上传最多只能上传%s个文件".sprintf(t),
mask: !0,
buttons: [ {
text: "确定",
click: function() {
this.remove();
}
} ]
}), h = {}, !1;
},
onSelect: function(e, i, o) {
var u = o.type, a = b(u), f = a && y[a].type || n.type, l = "KB", c = Math.round(o.size / 1024 * 100) * .01, p = c;
p > 1e3 && (p = Math.round(p * .001 * 100) * .01, l = "MB");
var d = {
id: i,
fileName: o.name,
size: p + l
};
if (!w(u, n.type)) return s.err(y[n.type + ""].msg), d.status = y[n.type + ""].tip, d.className = "error", !1;
if (c <= 0) return s.err("上传的文件不能为空"), !1;
if (!E(u, c, t)) return s.err(y[a + ""][t].msg), d.status = y[a + ""][t].tip, d.className = "error", !1;
if (n.canContinueUpload && !n.canContinueUpload()) return !1;
d.status = "正在上传", h[i] = !0, r(d), n.onSelect && n.onSelect(e, i, o);
},
onProgress: function(e, t, r, i) {
var s = f.find("#uploadItem" + t).find(".progress_bar_thumb");
if (s.data("status") == "error") return;
s.css("width", i.percentage + "%"), n.onProgress && n.onProgress(e, t, r, i);
},
onComplete: function(e, t, r, i, o) {
var u = f.find("#uploadItem" + t).find(".upload_file_status");
if (u.data("status") == "error") return;
i = $.parseJSON(i);
if (i && i.base_resp) {
var a = i.base_resp.ret;
a == 0 ? (delete h[t], f.find("#uploadItem" + t).find(".upload_file_status").addClass("success").html("上传成功")) : a == -18 ? s.err("页面停留时间过久，请刷新页面后重试！") : a == -20 ? s.err("无法解释该图片，请使用另一图片或截图另存") : a == -13 ? s.err("上传文件过于频繁，请稍后再试") : a == -10 ? s.err("上传文件过大") : a == -22 ? s.err("上传音频文件不能超过60秒") : s.err("上传文件发送出错，请刷新页面后重试！");
}
n.onComplete && n.onComplete(e, t, r, i, o);
},
onAllComplete: function(e, t) {
setTimeout(function() {
f.fadeOut().html("");
}, 3e3), $.isEmptyObject(h) && n.onAllComplete && n.onAllComplete(e, t), h = {};
}
});
l.uploadify(p);
};
}, T = function(e) {
return function(t) {
return wx.url(e + "&ticket_id=" + wx.data.user_name + "&ticket=" + wx.data.ticket + "&id=" + t);
};
}, N = ~location.hostname.search(/^mp/) ? "https://mp.weixin.qq.com" : "";
return {
uploadBizFile: x(N + "/cgi-bin/filetransfer?action=upload_material&f=json", "bizfile"),
uploadTmpFile: x(N + "/cgi-bin/filetransfer?action=preview&f=json", "tmpfile"),
uploadCdnFile: x(N + "/cgi-bin/filetransfer?action=upload_cdn&f=json", "tmpfile"),
uploadVideoCdnFile: x(N + "/cgi-bin/filetransfer?action=upload_video_cdn&f=json", "tmpfile"),
uploadRegisterFile: x(N + "/cgi-bin/realnamesubmit?type=2&action=file_set", "tmpfile"),
uploadUpgradeFile: x(N + "/cgi-bin/servicetypeupgrade?type=2&action=file_set", "tmpfile"),
tmpFileUrl: T(N + "/cgi-bin/filetransfer?action=preview"),
mediaFileUrl: T(N + "/cgi-bin/filetransfer?action=bizmedia"),
multimediaFileUrl: T(N + "/cgi-bin/filetransfer?action=multimedia")
};
} catch (C) {
wx.jslog({
src: "common/wx/upload.js"
}, C);
}
});define("common/wx/richEditor/emotion.js", [ "tpl/richEditor/emotion.html.js", "common/qq/Class.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = wx.T, s = {
url: wx.resPath + "/mpres/htmledition/images/icon/emotion/",
data: {
"0": "微笑",
"1": "撇嘴",
"2": "色",
"3": "发呆",
"4": "得意",
"5": "流泪",
"6": "害羞",
"7": "闭嘴",
"8": "睡",
"9": "大哭",
"10": "尴尬",
"11": "发怒",
"12": "调皮",
"13": "呲牙",
"14": "惊讶",
"15": "难过",
"16": "酷",
"17": "冷汗",
"18": "抓狂",
"19": "吐",
"20": "偷笑",
"21": "可爱",
"22": "白眼",
"23": "傲慢",
"24": "饥饿",
"25": "困",
"26": "惊恐",
"27": "流汗",
"28": "憨笑",
"29": "大兵",
"30": "奋斗",
"31": "咒骂",
"32": "疑问",
"33": "嘘",
"34": "晕",
"35": "折磨",
"36": "衰",
"37": "骷髅",
"38": "敲打",
"39": "再见",
"40": "擦汗",
"41": "抠鼻",
"42": "鼓掌",
"43": "糗大了",
"44": "坏笑",
"45": "左哼哼",
"46": "右哼哼",
"47": "哈欠",
"48": "鄙视",
"49": "委屈",
"50": "快哭了",
"51": "阴险",
"52": "亲亲",
"53": "吓",
"54": "可怜",
"55": "菜刀",
"56": "西瓜",
"57": "啤酒",
"58": "篮球",
"59": "乒乓",
"60": "咖啡",
"61": "饭",
"62": "猪头",
"63": "玫瑰",
"64": "凋谢",
"65": "示爱",
"66": "爱心",
"67": "心碎",
"68": "蛋糕",
"69": "闪电",
"70": "炸弹",
"71": "刀",
"72": "足球",
"73": "瓢虫",
"74": "便便",
"75": "月亮",
"76": "太阳",
"77": "礼物",
"78": "拥抱",
"79": "强",
"80": "弱",
"81": "握手",
"82": "胜利",
"83": "抱拳",
"84": "勾引",
"85": "拳头",
"86": "差劲",
"87": "爱你",
"88": "NO",
"89": "OK",
"90": "爱情",
"91": "飞吻",
"92": "跳跳",
"93": "发抖",
"94": "怄火",
"95": "转圈",
"96": "磕头",
"97": "回头",
"98": "跳绳",
"99": "挥手",
"100": "激动",
"101": "街舞",
"102": "献吻",
"103": "左太极",
"104": "右太极"
},
ext: ".gif",
replaceEmoji: function(e) {
var t, n, r = s.url, i = s.ext, o = s.data;
for (t in o) n = new RegExp("/" + o[t], "g"), e = e.replace(n, '<img src="{src}" alt="mo-{alt}"/>'.format({
src: r + t + i,
alt: o[t]
}));
return e;
}
}, o = e("tpl/richEditor/emotion.html.js"), u = e("common/qq/Class.js"), a = 24, f = 24, l = 15, c = 7, h = u.declare({
init: function(e) {
this.selector$ = e;
var t = [], n = s.url + "{k}" + s.ext, r = a, u = f, h = l, p = c;
for (var d = 0; d < p; ++d) for (var v = 0; v < h; ++v) {
var m = d * h + v;
t.push({
gifurl: n.format({
k: m
}),
title: s.data[m + ""],
bp: "background-position:" + -m * r + "px 0;"
});
}
this.selector$.html(i(o, {
edata: t
})), this._previewArea$ = this.selector$.find(".js_emotionPreviewArea"), this._initEvent();
},
getEmotionText: function(e) {
return e.replace(/<img.*?alt=["]{0,1}mo-([^"\s]*).*?>/ig, "/$1");
},
getEmotionHTML: function(e) {
var t = e.title;
return '<img src="{src}" alt="{alt}"/>'.format({
src: e.gifurl,
alt: t ? "mo-" + t : ""
});
},
_getData: function(e) {
return {
title: e.data("title"),
gifurl: e.data("gifurl")
};
},
_initEvent: function() {
var e = this;
e.selector$.click(function(t) {
var n = e._getData($(t.target));
!n.gifurl || e.clickCB && e.clickCB(n);
}).mouseover(function(t) {
var n = e._getData($(t.target));
!n.gifurl || e._previewArea$.html(e.getEmotionHTML({
title: "",
gifurl: n.gifurl
})), e.mouseoverCB && e.mouseoverCB();
}).mouseleave(function(t) {
e._previewArea$.html(""), e.mouseleaveCB && e.mouseleaveCB();
});
},
click: function(e) {
this.clickCB = e;
},
mouseleave: function(e) {
return this.mouseleaveCB = e, this;
},
mouseover: function(e) {
return this.mouseoverCB = e, this;
},
show: function() {
this.selector$.fadeIn();
},
hide: function() {
this.selector$.fadeOut();
}
});
h.emoji = s.replaceEmoji, n.exports = h;
} catch (p) {
wx.jslog({
src: "common/wx/richEditor/emotion.js"
}, p);
}
});define("common/wx/richEditor/wysiwyg.js", [ "common/wx/richEditor/editorRange.js", "common/qq/Class.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = /msie/.test(navigator.userAgent.toLowerCase()), s = "Wysiwyg", o = e("common/wx/richEditor/editorRange.js"), u = e("common/qq/Class.js"), a = u.declare({
init: function(e, t) {
var n = e, r = $('<div class="edit_area"></div>');
this._dom$ = n, this._val = "", this._lastRange = null, this._editArea$ = r, $.extend(this, t), this._initEditArea(), this._initEvent();
},
_initEvent: function() {
var e = this, t = function() {
e.__tid && clearTimeout(e.__tid), e.__tid = setTimeout(function() {
e._filterNode();
}, 10);
};
e._editArea$.bind({
keydown: function(t) {
e._keydown(t);
},
keyup: function(t) {
e._keyup(t);
},
mouseup: function(t) {
e._mouseup(t);
},
drop: t,
paste: t
});
},
_keydown: function(e) {
var t = this, n = wx.isHotkey;
if (n(e, "backspace")) {
var r = o.getSelection();
r.type && r.type.toLowerCase() === "control" && (e.preventDefault(), r.clear());
}
n(e, "enter") && (e.preventDefault(), t.insertHTML("<br/>")._saveRang()), t.keydown && t.keydown(e);
},
_keyup: function(e) {
var t = this;
t._saveRang(), t.keyup && t.keyup(e), t.save();
},
_mouseup: function(e) {
var t = this;
t._saveRang(), t.mouseup && t.mouseup(e);
return;
},
focus: function(e) {
this._editArea$.focus(), this._resotreRange();
},
_setCursorToEnd: function(e) {
if (!i || !e) return;
var t = o.getSelection();
t.extend && (t.extend(e, e.length), t.collapseToEnd && t.collapseToEnd());
},
insertHTML: function(e) {
var t = this;
t.focus();
var n = o.getRange();
if (!n) return t;
if (n.createContextualFragment) {
e += '<img style="width:1px;height:1px;">';
var r = n.createContextualFragment(e), s = r.lastChild;
n.deleteContents(), n.insertNode(r), n.setEndAfter(s), n.setStartAfter(s);
var u = o.getSelection();
u.removeAllRanges(), u.addRange(n), document.execCommand("Delete", !1, null);
} else i && />$/.test(e), n.pasteHTML && n.pasteHTML(e), n.collapse && n.collapse(!1), n.select();
return t._saveRang().save(), t;
},
save: function(e) {
var t = this, e = e || this.textFilter, n = t._editArea$.html();
return t.val = typeof e == "function" ? e(n) : n, t.change && t.change(), t;
},
_filterNode: function(e) {
var t = this, n, e = e || this.nodeFilter, r = t._editArea$.get(0), i = r.childNodes;
for (var s = i.length - 1; s >= 0; s--) {
var o = i[s];
switch (o.nodeType) {
case 1:
if (o.nodeName.toUpperCase() !== "BR") {
var u, a = !1;
(u = e && e(o)) || (u = o.textContent || o.innerText || "", a = !0);
if (u) {
var f = a ? document.createTextNode(u) : u;
!n && (n = f), r.replaceChild(f, o);
} else r.removeChild(o);
}
break;
case 3:
break;
default:
r.removeChild(o);
}
}
return t._setCursorToEnd(n), t._saveRang().save();
},
getHTML: function() {
return this._editArea$.html();
},
getText: function() {
return this.getHTML().text();
},
getContent: function() {
return this.val;
},
setContent: function(e, t) {
this.clear(), this._editArea$.html(e), this.val = t || e, this.change && this.change();
},
clear: function() {
this.val = "", this._editArea$.html("");
},
_initEditArea: function() {
var e = this;
e._editArea$.attr("class", e._dom$.attr("class")).attr("contentEditable", !0).css({
"overflow-y": "auto",
"overflow-x": "hidden"
}), e._dom$.after(e._editArea$).hide().data(s, e), e.init && e.init();
},
_saveRang: function() {
return this._lastRange = o.getRange(), this;
},
_resotreRange: function() {
var e = this._lastRange;
if (e) {
var t = o.getSelection();
if (t.addRange) t.removeAllRanges(), t.addRange(e); else {
var n = o.getRange();
n.setEndPoint && (n.setEndPoint("EndToEnd", e), n.setEndPoint("StartToStart", e)), n.select();
}
}
return this;
}
}), f = function(e, t) {
return e.data(s) || new a(e, t);
};
n.exports = f;
} catch (l) {
wx.jslog({
src: "common/wx/richEditor/wysiwyg.js"
}, l);
}
});define("tpl/richEditor/emotionEditor.html.js", [], function(e, t, n) {
return '<div class="emotion_editor">\n    <div class="edit_area js_editorArea"></div>\n    <div class="editor_toolbar">\n        {if !hideEmotion}\n        <a href="javascript:void(0);" class="icon_emotion emotion_switch js_switch">表情</a>\n        {/if}\n        {if !hideUpload}\n        <div class="upload_box">\n            <div class="upload_area">\n                <a id="emotionEditor_{gid}_" href="javascript:void(0);" class="js_upload upload_access">\n                    <i class="icon18_common upload_gray"></i>\n                    上传图片                </a>\n            </div>\n        </div>\n        {/if}\n        <p class="editor_tip js_editorTip"></p>\n        <div class="emotion_wrp js_emotionArea"></div>\n    </div>\n</div>\n\n';
});define("tpl/tab.html.js", [], function(e, t, n) {
return '<div class="msg_tab">\n	<ul class="tab_navs">\n	    {each tabs as tab}\n        <li class="tab_nav {tab.className}" data-type="{tab.type}" data-tab=".{tab.selector}">\n		    <a href="javascript:void(0);"><i class="icon_msg_sender"></i>{tab.text}</a>\n	    </li>\n	    {/each}\n	</ul>\n	<div class="tab_panel">\n	    {each tabs as tab}\n	    <div class="tab_content">\n	    	<div class="{tab.selector} inner {tab.innerClassName}">\n	    	</div>\n	    </div>\n	    {/each}\n	</div>\n</div>\n';
});define("tpl/popup.html.js", [], function(e, t, n) {
return '<div class="dialog_wrp {className}" style="{if width}width:{width}px;{/if}{if height}height:{height}px;{/if}">\n	<div class="dialog">\n		<div class="dialog_hd">\n			<h3>{title}</h3>\n			<a href="javascript:;" onclick="return false" class="icon16_opr closed pop_closed">关闭</a>\n		</div>\n		<div class="dialog_bd">{=content}</div>\n		{if buttons && buttons.length}\n		<div class="dialog_ft">\n			{each buttons as bt index}\n            <span class="btn {bt.type} btn_input js_btn_p"><button class="js_btn" data-index="{index}">{bt.text}</button></span>\n	        {/each}\n		</div>\n		{/if}\n	</div>\n</div>{if mask}<div class="mask"><iframe frameborder="0" style="filter:progid:DXImageTransform.Microsoft.Alpha(opacity:0);position:absolute;top:0px;left:0px;width:100%;height:100%;" src="about:blank"></iframe></div>{/if}\n';
});define("common/wx/widgetBridge.js", [], function(e, t, n) {
try {
var r = +(new Date);
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
} catch (i) {
wx.jslog({
src: "common/wx/widgetBridge.js"
}, i);
}
});define("tpl/verifycode.html.js", [], function(e, t, n) {
return '<div class="verifycode">\n	<span class="frm_input_box"><input id="imgcode" name="imgcode" type="text" value="" class="frm_input"></span>\n	<img src="">\n	<a href="javascript:;" class="changeVerifyCode">换一张</a>\n</div>\n';
});define("tpl/message/video_popup.html.js", [], function(e, t, n) {
return '<div>\n   <div class="frm_control_group">\n       <label for="" class="frm_label">标题</label>\n       <div class="frm_controls">\n           <span class="frm_input_box"><input type="text" class="frm_input title"></span>\n       </div>\n   </div>\n   <div class="frm_control_group">\n       <label for="" class="frm_label">摘要<span class="tips">（选填）</span></label>\n       <div class="frm_controls">\n           <span class="frm_textarea_box"><textarea class="frm_textarea digest"></textarea></span>\n       </div>\n   </div>\n</div>\n \n';
});define("common/wx/time.js", [], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = function(e) {
return e += "", e.length >= 2 ? e : "0" + e;
}, s = [ "日", "一", "二", "三", "四", "五", "六" ];
function o(e) {
var t = new Date(e * 1e3), n = new Date, r = t.getTime(), o = n.getTime(), u = 864e5;
return o - r < u && n.getDate() == t.getDate() ? "%s:%s".sprintf(i(t.getHours()), i(t.getMinutes())) : o - r < 2 * u && (new Date(t * 1 + u)).getDate() == n.getDate() ? "昨天 %s:%s".sprintf(i(t.getHours()), i(t.getMinutes())) : o - r <= 6 * u ? "星期%s %s:%s".sprintf(s[t.getDay()], i(t.getHours()), i(t.getMinutes())) : t.getFullYear() == n.getFullYear() ? "%s月%s日".sprintf(i(t.getMonth() + 1), i(t.getDate())) : "%s年%s月%s日".sprintf(t.getFullYear(), i(t.getMonth() + 1), i(t.getDate()));
}
function u(e) {
var t = new Date(e * 1e3);
return "%s-%s-%s %s:%s:%s".sprintf(t.getFullYear(), i(t.getMonth() + 1), i(t.getDate()), i(t.getHours()), i(t.getMinutes()), i(t.getSeconds()));
}
return {
timeFormat: o,
getFullTime: u
};
} catch (a) {
wx.jslog({
src: "common/wx/time.js"
}, a);
}
});define("common/qq/events.js", [], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
function i(e) {
e === !0 ? this.data = window.wx.events || {} : this.data = {};
}
i.prototype = {
on: function(e, t) {
return this.data[e] = this.data[e] || [], this.data[e].push(t), this;
},
off: function(e, t) {
this.data[e] && this.data[e].length > 0 && (t && typeof t == "function" ? $.each(this.data[e], function(n, r) {
r === t && this.data[e].splice(n, 1);
}) : this.data[e] = []);
},
trigger: function(e) {
var t = arguments;
this.data[e] && this.data[e].length > 0 && $.each(this.data[e], function(e, n) {
var r = n.apply(this, Array.prototype.slice.call(t, 1));
if (r === !1) return !1;
});
}
}, n.exports = function(e) {
return new i(e);
};
} catch (s) {
wx.jslog({
src: "common/qq/events.js"
}, s);
}
});define("common/wx/media/simpleAppmsg.js", [ "tpl/media/simple_appmsg.html.js", "xss/ui/media.css", "common/qq/Class.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = wx.T, s = e("tpl/media/simple_appmsg.html.js"), o = e("xss/ui/media.css"), u = e("common/qq/Class.js"), a = wx.url("/cgi-bin/getimgdata?"), f = {
"9": {
"1": "图文消息",
"2": "图文消息",
"3": "图文消息",
"4": "图文消息"
},
"10": {
"1": "图文消息",
"2": "图文消息",
"3": "图文消息",
"4": "图文消息"
},
"11": {
"1": "活动消息",
"2": "第三方应用消息",
"3": "商品消息",
"4": "单条商品消息"
}
}, l = function(e, t) {
var n = f[e];
return (n ? n[t] : "") || "未知类型";
}, c = u.declare({
init: function(e) {
if (!e || !e.container) return;
e.appmsg_cover = a + "&mode=small&source=%s&msgid=%s&fileId=%s".sprintf(e.source, e.id, e.file_id), e.type_msg = l(e.type, e.app_sub_type), $(e.container).html(wx.T(s, e)).data(e), this.opt = e;
},
getData: function() {
return this.opt;
}
});
return c;
} catch (h) {
wx.jslog({
src: "common/wx/media/simpleAppmsg.js"
}, h);
}
});define("common/wx/remark.js", [ "common/wx/Tips.js", "common/qq/events.js", "user/user_cgi.js", "common/wx/simplePopup.js" ], function(e, t, n) {
try {
var r = +(new Date);
"use strict";
var i = e("common/wx/Tips.js"), s = e("common/qq/events.js"), o = s(!0), u = e("user/user_cgi.js"), a = e("common/wx/simplePopup.js"), f = function() {
this.id = null, this.remarkName = null, this._init();
};
f.prototype = {
_init: function() {
var e = this;
o.on("Remark:change", function(t, n) {
e.show(t, n);
});
},
show: function(e, t) {
this.id = e, this.remarkName = t;
var n = this;
new a({
title: "添加备注",
callback: function(e) {
u.changeRemark(n.id, e, function(t) {
i.suc("修改成功"), o.trigger("Remark:changed", n.id, (e + "").html(!0));
});
},
rule: function(e, t, n) {
return e.length <= 30;
},
value: (t + "").html(!1),
msg: "备注不能超过30个字"
});
},
hide: function() {}
}, n.exports = new f;
} catch (l) {
wx.jslog({
src: "common/wx/remark.js"
}, l);
}
});