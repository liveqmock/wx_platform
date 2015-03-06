define("ivr/ivr_cgi.js", [ "common/wx/Cgi.js", "common/wx/Tips.js" ], function(e, t, n) {
try {
"use strict";
var r = {
replySave: "/cgi-bin/setreplyrule?cgi=setreplyrule&fun=save&t=ajax-response",
replyDel: "/cgi-bin/setreplyrule?cgi=setreplyrule&fun=del&t=ajax-response",
replyList: "/cgi-bin/replyrulepage?t=ajax-ivrsetting-detail&replytype=smartreply&sec=reply&s=smartreply&lang=zh_CN&action=showrule"
}, i = e("common/wx/Cgi.js"), s = e("common/wx/Tips.js");
return {
replySave: function(e, t, n) {
i.post({
url: wx.url(r.replySave),
data: e,
mask: !1,
error: function() {
s.err("保存失败");
},
complete: function() {
n && n();
}
}, function(e) {
switch (+e.ret) {
case 0:
s.suc("保存成功"), t && t(e);
break;
case -1103:
s.err("关键字不能为空");
break;
case -1110:
s.err("规则数超过限制");
break;
case -1111:
s.err("消息中可能含有具备安全风险的链接，请检查");
break;
default:
s.err("保存失败");
}
});
},
replyDel: function(e, t, n) {
i.post({
url: wx.url(r.replyDel),
data: {
ruleid: e,
replytype: t
},
mask: !1,
error: function() {
s.err("删除失败");
}
}, function(e) {
s.suc("删除成功"), n && n(e);
});
},
getReplyList: function(e, t, n) {
i.post({
url: wx.url(r.replyList),
data: {
ruleid: e
},
error: function() {
n && n();
}
}, function(e) {
t && t(e);
});
}
};
} catch (o) {
wx.jslog({
src: "ivr/ivr_cgi.js"
}, o);
}
});define("ivr/reply.js", [ "ivr/ivr_cgi.js", "common/wx/top.js", "common/wx/richEditor/msgSender.js" ], function(e, t, n) {
try {
"use strict";
var r = wx.cgiData, i = template.render, s = e("ivr/ivr_cgi.js"), o = e("common/wx/top.js"), u = e("common/wx/richEditor/msgSender.js"), a = r.rule_id, f = r.iswork, l = r.replytype, c = r.data, h = new o("#topTab", o.DATA.advanced);
h.selected(0);
var p = new u($("#js_msgSender"), {
data: c,
acl: {
can_text_msg: 1,
can_image_msg: 1,
can_voice_msg: 1,
can_video_msg: 1
}
});
$("#js_save").click(function() {
var e = $(this);
if (e.hasClass("btn_disabled")) return;
var t = p.getData(), n = {};
if (t.error) return;
t = t.data, n.type = t.type == 15 ? 7 : t.type, n.appmsgid = t.app_id, n.fileid = t.file_id, n.content = t.content, n.ruleid = a, n.iswork = f, n.replytype = l, e.disable("btn_disabled").removeClass("btn_primary"), s.replySave(n, function(t) {
e.enable("btn_disabled").addClass("btn_primary"), $("#js_del").enable("btn_disabled").addClass("btn_default");
});
}), a || $("#js_del").disable("btn_disabled"), $("#js_del").click(function() {
if ($(this).hasClass("btn_disabled")) return;
s.replyDel(a, l, function(e) {
p.clear(), a = f = "", $("#js_del").disable("btn_disabled");
});
});
} catch (d) {
wx.jslog({
src: "ivr/reply.js"
}, d);
}
});