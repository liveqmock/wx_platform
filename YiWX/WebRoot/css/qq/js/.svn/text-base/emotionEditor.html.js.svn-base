define("tpl/media/audio.html.js", [], function(e, t, n) {
return '<div id="wxAudioBox{id}" data-aid="{id}" data-fid="{file_id}" data-source="{source}" class="mediaBox audioBox">\n	<div class="mediaContent">\n		<span class="audioTxt">点击播放</span>\n        <b>{play_length}"</b>\n		<span class="iconAudio"></span>\n	</div>\n</div>\n\n';
});define("common/lib/soundmanager2.js", [], function(e, t, n) {
try {
"use strict";
var r = null, i;
function s(e, t) {
function n(e) {
return o.preferFlash && Bt && !o.ignoreFlash && o.flash[e] !== i && o.flash[e];
}
function r(e) {
return function(t) {
var n = this._s, r;
return !n || !n._a ? (n && n.id ? o._wD(n.id + ": Ignoring " + t.type) : o._wD(c + "Ignoring " + t.type), r = null) : r = e.call(this, t), r;
};
}
this.setupOptions = {
url: e || null,
flashVersion: 8,
debugMode: !1,
debugFlash: !1,
useConsole: !1,
consoleOnly: !0,
waitForWindowLoad: !1,
bgColor: "#ffffff",
useHighPerformance: !1,
flashPollingInterval: null,
html5PollingInterval: null,
flashLoadTimeout: 1e3,
wmode: null,
allowScriptAccess: "always",
useFlashBlock: !1,
useHTML5Audio: !0,
html5Test: /^(probably|maybe)$/i,
preferFlash: !0,
noSWFCache: !1,
idPrefix: "sound"
}, this.defaultOptions = {
autoLoad: !1,
autoPlay: !1,
from: null,
loops: 1,
onid3: null,
onload: null,
whileloading: null,
onplay: null,
onpause: null,
onresume: null,
whileplaying: null,
onposition: null,
onstop: null,
onfailure: null,
onfinish: null,
multiShot: !0,
multiShotEvents: !1,
position: null,
pan: 0,
stream: !0,
to: null,
type: null,
usePolicyFile: !1,
volume: 100
}, this.flash9Options = {
isMovieStar: null,
usePeakData: !1,
useWaveformData: !1,
useEQData: !1,
onbufferchange: null,
ondataerror: null
}, this.movieStarOptions = {
bufferTime: 3,
serverURL: null,
onconnect: null,
duration: null
}, this.audioFormats = {
mp3: {
type: [ 'audio/mpeg; codecs="mp3"', "audio/mpeg", "audio/mp3", "audio/MPA", "audio/mpa-robust" ],
required: !0
},
mp4: {
related: [ "aac", "m4a", "m4b" ],
type: [ 'audio/mp4; codecs="mp4a.40.2"', "audio/aac", "audio/x-m4a", "audio/MP4A-LATM", "audio/mpeg4-generic" ],
required: !1
},
ogg: {
type: [ "audio/ogg; codecs=vorbis" ],
required: !1
},
opus: {
type: [ "audio/ogg; codecs=opus", "audio/opus" ],
required: !1
},
wav: {
type: [ 'audio/wav; codecs="1"', "audio/wav", "audio/wave", "audio/x-wav" ],
required: !1
}
}, this.movieID = "sm2-container", this.id = t || "sm2movie", this.debugID = "soundmanager-debug", this.debugURLParam = /([#?&])debug=1/i, this.versionNumber = "V2.97a.20130512", this.version = null, this.movieURL = null, this.altURL = null, this.swfLoaded = !1, this.enabled = !1, this.oMC = null, this.sounds = {}, this.soundIDs = [], this.muted = !1, this.didFlashBlock = !1, this.filePattern = null, this.filePatterns = {
flash8: /\.mp3(\?.*)?$/i,
flash9: /\.mp3(\?.*)?$/i
}, this.features = {
buffering: !1,
peakData: !1,
waveformData: !1,
eqData: !1,
movieStar: !1
}, this.sandbox = {
type: null,
types: {
remote: "remote (domain-based) rules",
localWithFile: "local with file access (no internet access)",
localWithNetwork: "local with network (internet access only, no local access)",
localTrusted: "local, trusted (local+internet access)"
},
description: null,
noRemote: null,
noLocal: null
}, this.html5 = {
usingFlash: null
}, this.flash = {}, this.html5Only = !1, this.ignoreFlash = !1;
var s, o = this, u = null, a = null, f = "soundManager", l = f + ": ", c = "HTML5::", h, p = navigator.userAgent, d = window.location.href.toString(), v = document, m, g, y, b, w = [], E = !0, S, x = !1, T = !1, N = !1, C = !1, k = !1, L, A = 0, O, M, _, D, P, H, B, j, F, I, q, R, U, z, W, X, V, $, J, K, Q, G, Y = [ "log", "info", "warn", "error" ], Z = 8, et, tt, nt, rt = null, it = null, st, ot, ut, at, ft, lt, ct, ht, pt, dt = !1, vt = !1, mt, gt, yt, bt = 0, wt = null, Et, St = [], xt, Tt = null, Nt, Ct, kt, Lt, At, Ot, Mt, _t, Dt = Array.prototype.slice, Pt = !1, Ht, Bt, jt, Ft, It, qt, Rt, Ut, zt = 0, Wt = p.match(/(ipad|iphone|ipod)/i), Xt = p.match(/android/i), Vt = p.match(/msie/i), $t = p.match(/webkit/i), Jt = p.match(/safari/i) && !p.match(/chrome/i), Kt = p.match(/opera/i), Qt = p.match(/firefox/i), Gt = p.match(/(mobile|pre\/|xoom)/i) || Wt || Xt, Yt = !d.match(/usehtml5audio/i) && !d.match(/sm2\-ignorebadua/i) && Jt && !p.match(/silk/i) && p.match(/OS X 10_6_([3-7])/i), Zt = window.console !== i && console.log !== i, en = v.hasFocus !== i ? v.hasFocus() : null, tn = Jt && (v.hasFocus === i || !v.hasFocus()), nn = !tn, rn = /(mp3|mp4|mpa|m4a|m4b)/i, sn = 1e3, on = "about:blank", un = v.location ? v.location.protocol.match(/http/i) : null, an = un ? "" : "http://", fn = /^\s*audio\/(?:x-)?(?:mpeg4|aac|flv|mov|mp4||m4v|m4a|m4b|mp4v|3gp|3g2)\s*(?:$|;)/i, ln = [ "mpeg4", "aac", "flv", "mov", "mp4", "m4v", "f4v", "m4a", "m4b", "mp4v", "3gp", "3g2" ], cn = new RegExp("\\.(" + ln.join("|") + ")(\\?.*)?$", "i");
this.mimePattern = /^\s*audio\/(?:x-)?(?:mp(?:eg|3))\s*(?:$|;)/i, this.useAltURL = !un, at = {
swfBox: "sm2-object-box",
swfDefault: "movieContainer",
swfError: "swf_error",
swfTimedout: "swf_timedout",
swfLoaded: "swf_loaded",
swfUnblocked: "swf_unblocked",
sm2Debug: "sm2_debug",
highPerf: "high_performance",
flashDebug: "flash_debug"
}, this.hasHTML5 = function() {
try {
return Audio !== i && (Kt && opera !== i && opera.version() < 10 ? new Audio(null) : new Audio).canPlayType !== i;
} catch (e) {
return !1;
}
}(), this.setup = function(e) {
var t = !o.url;
return e !== i && N && Tt && o.ok() && (e.flashVersion !== i || e.url !== i || e.html5Test !== i) && ht(st("setupLate")), _(e), e && (t && V && e.url !== i && o.beginDelayedInit(), !V && e.url !== i && v.readyState === "complete" && setTimeout(W, 1)), o;
}, this.ok = function() {
return Tt ? N && !C : o.useHTML5Audio && o.hasHTML5;
}, this.supported = this.ok, this.getMovie = function(e) {
return h(e) || v[e] || window[e];
}, this.createSound = function(e, t) {
function n() {
return l = lt(l), o.sounds[l.id] = new s(l), o.soundIDs.push(l.id), o.sounds[l.id];
}
var r, u, l, c = null;
r = f + ".createSound(): ", u = r + st(N ? "notOK" : "notReady");
if (!N || !o.ok()) return ht(u), !1;
t !== i && (e = {
id: e,
url: t
}), l = M(e), l.url = Et(l.url), l.id === undefined && (l.id = o.setupOptions.idPrefix + zt++), l.id.toString().charAt(0).match(/^[0-9]$/) && o._wD(r + st("badID", l.id), 2), o._wD(r + l.id + (l.url ? " (" + l.url + ")" : ""), 1);
if (pt(l.id, !0)) return o._wD(r + l.id + " exists", 1), o.sounds[l.id];
if (Ct(l)) c = n(), o._wD(l.id + ": Using HTML5"), c._setup_html5(l); else {
if (o.html5Only) return o._wD(l.id + ": No HTML5 support for this sound, and no Flash. Exiting."), n();
if (o.html5.usingFlash && l.url && l.url.match(/data\:/i)) return o._wD(l.id + ": data: URIs not supported via Flash. Exiting."), n();
b > 8 && (l.isMovieStar === null && (l.isMovieStar = !!(l.serverURL || (l.type ? l.type.match(fn) : !1) || l.url && l.url.match(cn))), l.isMovieStar && (o._wD(r + "using MovieStar handling"), l.loops > 1 && L("noNSLoop"))), l = ct(l, r), c = n(), b === 8 ? a._createSound(l.id, l.loops || 1, l.usePolicyFile) : (a._createSound(l.id, l.url, l.usePeakData, l.useWaveformData, l.useEQData, l.isMovieStar, l.isMovieStar ? l.bufferTime : !1, l.loops || 1, l.serverURL, l.duration || null, l.autoPlay, !0, l.autoLoad, l.usePolicyFile), l.serverURL || (c.connected = !0, l.onconnect && l.onconnect.apply(c))), !l.serverURL && (l.autoLoad || l.autoPlay) && c.load(l);
}
return !l.serverURL && l.autoPlay && c.play(), c;
}, this.destroySound = function(e, t) {
if (!pt(e)) return !1;
var n = o.sounds[e], r;
n._iO = {}, n.stop(), n.unload();
for (r = 0; r < o.soundIDs.length; r++) if (o.soundIDs[r] === e) {
o.soundIDs.splice(r, 1);
break;
}
return t || n.destruct(!0), n = null, delete o.sounds[e], !0;
}, this.load = function(e, t) {
return pt(e) ? o.sounds[e].load(t) : !1;
}, this.unload = function(e) {
return pt(e) ? o.sounds[e].unload() : !1;
}, this.onPosition = function(e, t, n, r) {
return pt(e) ? o.sounds[e].onposition(t, n, r) : !1;
}, this.onposition = this.onPosition, this.clearOnPosition = function(e, t, n) {
return pt(e) ? o.sounds[e].clearOnPosition(t, n) : !1;
}, this.play = function(e, t) {
var n = null, r = t && !(t instanceof Object);
if (!N || !o.ok()) return ht(f + ".play(): " + st(N ? "notOK" : "notReady")), !1;
if (!pt(e, r)) {
if (!r) return !1;
r && (t = {
url: t
}), t && t.url && (o._wD(f + '.play(): Attempting to create "' + e + '"', 1), t.id = e, n = o.createSound(t).play());
} else r && (t = {
url: t
});
return n === null && (n = o.sounds[e].play(t)), n;
}, this.start = this.play, this.setPosition = function(e, t) {
return pt(e) ? o.sounds[e].setPosition(t) : !1;
}, this.stop = function(e) {
return pt(e) ? (o._wD(f + ".stop(" + e + ")", 1), o.sounds[e].stop()) : !1;
}, this.stopAll = function() {
var e;
o._wD(f + ".stopAll()", 1);
for (e in o.sounds) o.sounds.hasOwnProperty(e) && o.sounds[e].stop();
}, this.pause = function(e) {
return pt(e) ? o.sounds[e].pause() : !1;
}, this.pauseAll = function() {
var e;
for (e = o.soundIDs.length - 1; e >= 0; e--) o.sounds[o.soundIDs[e]].pause();
}, this.resume = function(e) {
return pt(e) ? o.sounds[e].resume() : !1;
}, this.resumeAll = function() {
var e;
for (e = o.soundIDs.length - 1; e >= 0; e--) o.sounds[o.soundIDs[e]].resume();
}, this.togglePause = function(e) {
return pt(e) ? o.sounds[e].togglePause() : !1;
}, this.setPan = function(e, t) {
return pt(e) ? o.sounds[e].setPan(t) : !1;
}, this.setVolume = function(e, t) {
return pt(e) ? o.sounds[e].setVolume(t) : !1;
}, this.mute = function(e) {
var t = 0;
e instanceof String && (e = null);
if (!e) {
o._wD(f + ".mute(): Muting all sounds");
for (t = o.soundIDs.length - 1; t >= 0; t--) o.sounds[o.soundIDs[t]].mute();
return o.muted = !0, !0;
}
return pt(e) ? (o._wD(f + '.mute(): Muting "' + e + '"'), o.sounds[e].mute()) : !1;
}, this.muteAll = function() {
o.mute();
}, this.unmute = function(e) {
var t;
e instanceof String && (e = null);
if (!e) {
o._wD(f + ".unmute(): Unmuting all sounds");
for (t = o.soundIDs.length - 1; t >= 0; t--) o.sounds[o.soundIDs[t]].unmute();
return o.muted = !1, !0;
}
return pt(e) ? (o._wD(f + '.unmute(): Unmuting "' + e + '"'), o.sounds[e].unmute()) : !1;
}, this.unmuteAll = function() {
o.unmute();
}, this.toggleMute = function(e) {
return pt(e) ? o.sounds[e].toggleMute() : !1;
}, this.getMemoryUse = function() {
var e = 0;
return a && b !== 8 && (e = parseInt(a._getMemoryUse(), 10)), e;
}, this.disable = function(e) {
var t;
e === i && (e = !1);
if (C) return !1;
C = !0, L("shutdown", 1);
for (t = o.soundIDs.length - 1; t >= 0; t--) et(o.sounds[o.soundIDs[t]]);
return O(e), _t.remove(window, "load", B), !0;
}, this.canPlayMIME = function(e) {
var t;
return o.hasHTML5 && (t = kt({
type: e
})), !t && Tt && (t = e && o.ok() ? !!((b > 8 ? e.match(fn) : null) || e.match(o.mimePattern)) : null), t;
}, this.canPlayURL = function(e) {
var t;
return o.hasHTML5 && (t = kt({
url: e
})), !t && Tt && (t = e && o.ok() ? !!e.match(o.filePattern) : null), t;
}, this.canPlayLink = function(e) {
return e.type !== i && e.type && o.canPlayMIME(e.type) ? !0 : o.canPlayURL(e.href);
}, this.getSoundById = function(e, t) {
if (!e) return null;
var n = o.sounds[e];
return !n && !t && o._wD(f + '.getSoundById(): Sound "' + e + '" not found.', 2), n;
}, this.onready = function(e, t) {
var n = "onready", r = !1;
if (typeof e != "function") throw st("needFunction", n);
return N && o._wD(st("queue", n)), t || (t = window), P(n, e, t), H(), r = !0, r;
}, this.ontimeout = function(e, t) {
var n = "ontimeout", r = !1;
if (typeof e != "function") throw st("needFunction", n);
return N && o._wD(st("queue", n)), t || (t = window), P(n, e, t), H({
type: n
}), r = !0, r;
}, this._writeDebug = function(e, t) {
var n = "soundmanager-debug", r, s;
if (!o.debugMode) return !1;
if (Zt && o.useConsole) {
t && typeof t == "object" ? console.log(e, t) : Y[t] !== i ? console[Y[t]](e) : console.log(e);
if (o.consoleOnly) return !0;
}
return r = h(n), r ? (s = v.createElement("div"), ++A % 2 === 0 && (s.className = "sm2-alt"), t === i ? t = 0 : t = parseInt(t, 10), s.appendChild(v.createTextNode(e)), t && (t >= 2 && (s.style.fontWeight = "bold"), t === 3 && (s.style.color = "#ff3333")), r.insertBefore(s, r.firstChild), r = null, !0) : !1;
}, d.indexOf("sm2-debug=alert") !== -1 && (this._writeDebug = function(e) {
window.alert(e);
}), this._wD = this._writeDebug, this._debug = function() {
var e, t;
L("currentObj", 1);
for (e = 0, t = o.soundIDs.length; e < t; e++) o.sounds[o.soundIDs[e]]._debug();
}, this.reboot = function(e, t) {
o.soundIDs.length && o._wD("Destroying " + o.soundIDs.length + " SMSound object" + (o.soundIDs.length !== 1 ? "s" : "") + "...");
var n, r, i;
for (n = o.soundIDs.length - 1; n >= 0; n--) o.sounds[o.soundIDs[n]].destruct();
if (a) try {
Vt && (it = a.innerHTML), rt = a.parentNode.removeChild(a);
} catch (s) {
L("badRemove", 2);
}
it = rt = Tt = a = null, o.enabled = V = N = dt = vt = x = T = C = Pt = o.swfLoaded = !1, o.soundIDs = [], o.sounds = {}, zt = 0;
if (!e) {
for (n in w) if (w.hasOwnProperty(n)) for (r = 0, i = w[n].length; r < i; r++) w[n][r].fired = !1;
} else w = [];
return t || o._wD(f + ": Rebooting..."), o.html5 = {
usingFlash: null
}, o.flash = {}, o.html5Only = !1, o.ignoreFlash = !1, window.setTimeout(function() {
z(), t || o.beginDelayedInit();
}, 20), o;
}, this.reset = function() {
return L("reset"), o.reboot(!0, !0);
}, this.getMoviePercent = function() {
return a && "PercentLoaded" in a ? a.PercentLoaded() : null;
}, this.beginDelayedInit = function() {
k = !0, W(), setTimeout(function() {
return vt ? !1 : (J(), U(), vt = !0, !0);
}, 20), j();
}, this.destruct = function() {
o._wD(f + ".destruct()"), o.disable(!0);
}, s = function(e) {
var t = this, n, r, s, f, l, c, h = !1, p = [], d = 0, v, m, g = null, y, w;
y = {
duration: null,
time: null
}, this.id = e.id, this.sID = this.id, this.url = e.url, this.options = M(e), this.instanceOptions = this.options, this._iO = this.instanceOptions, this.pan = this.options.pan, this.volume = this.options.volume, this.isHTML5 = !1, this._a = null, w = this.url ? !1 : !0, this.id3 = {}, this._debug = function() {
o._wD(t.id + ": Merged options:", t.options);
}, this.load = function(e) {
var n = null, r;
e !== i ? t._iO = M(e, t.options) : (e = t.options, t._iO = e, g && g !== t.url && (L("manURL"), t._iO.url = t.url, t.url = null)), t._iO.url || (t._iO.url = t.url), t._iO.url = Et(t._iO.url), t.instanceOptions = t._iO, r = t._iO, o._wD(t.id + ": load (" + r.url + ")");
if (!r.url && !t.url) return o._wD(t.id + ": load(): url is unassigned. Exiting.", 2), t;
!t.isHTML5 && b === 8 && !t.url && !r.autoPlay && o._wD(t.id + ": Flash 8 load() limitation: Wait for onload() before calling play().", 1);
if (r.url === t.url && t.readyState !== 0 && t.readyState !== 2) return L("onURL", 1), t.readyState === 3 && r.onload && Ut(t, function() {
r.onload.apply(t, [ !!t.duration ]);
}), t;
t.loaded = !1, t.readyState = 1, t.playState = 0, t.id3 = {};
if (Ct(r)) n = t._setup_html5(r), n._called_load ? o._wD(t.id + ": Ignoring request to load again") : (t._html5_canplay = !1, t.url !== r.url && (o._wD(L("manURL") + ": " + r.url), t._a.src = r.url, t.setPosition(0)), t._a.autobuffer = "auto", t._a.preload = "auto", t._a._called_load = !0, r.autoPlay && t.play()); else {
if (o.html5Only) return o._wD(t.id + ": No flash support. Exiting."), t;
if (t._iO.url && t._iO.url.match(/data\:/i)) return o._wD(t.id + ": data: URIs not supported via Flash. Exiting."), t;
try {
t.isHTML5 = !1, t._iO = ct(lt(r)), r = t._iO, b === 8 ? a._load(t.id, r.url, r.stream, r.autoPlay, r.usePolicyFile) : a._load(t.id, r.url, !!r.stream, !!r.autoPlay, r.loops || 1, !!r.autoLoad, r.usePolicyFile);
} catch (s) {
L("smError", 2), S("onload", !1), K({
type: "SMSOUND_LOAD_JS_EXCEPTION",
fatal: !0
});
}
}
return t.url = r.url, t;
}, this.unload = function() {
return t.readyState !== 0 && (o._wD(t.id + ": unload()"), t.isHTML5 ? (f(), t._a && (t._a.pause(), g = At(t._a))) : b === 8 ? a._unload(t.id, on) : a._unload(t.id), n()), t;
}, this.destruct = function(e) {
o._wD(t.id + ": Destruct"), t.isHTML5 ? (f(), t._a && (t._a.pause(), At(t._a), Pt || s(), t._a._s = null, t._a = null)) : (t._iO.onfailure = null, a._destroySound(t.id)), e || o.destroySound(t.id, !0);
}, this.play = function(e, n) {
var r, s, u, f, p, d, v, g = !0, y = null;
r = t.id + ": play(): ", n = n === i ? !0 : n, e || (e = {}), t.url && (t._iO.url = t.url), t._iO = M(t._iO, t.options), t._iO = M(e, t._iO), t._iO.url = Et(t._iO.url), t.instanceOptions = t._iO;
if (!t.isHTML5 && t._iO.serverURL && !t.connected) return t.getAutoPlay() || (o._wD(r + " Netstream not connected yet - setting autoPlay"), t.setAutoPlay(!0)), t;
Ct(t._iO) && (t._setup_html5(t._iO), l()), t.playState === 1 && !t.paused && (s = t._iO.multiShot, s ? o._wD(r + "Already playing (multi-shot)", 1) : (o._wD(r + "Already playing (one-shot)", 1), t.isHTML5 && t.setPosition(t._iO.position), y = t));
if (y !== null) return y;
e.url && e.url !== t.url && (!t.readyState && !t.isHTML5 && b === 8 && w ? w = !1 : t.load(t._iO)), t.loaded ? o._wD(r.substr(0, r.lastIndexOf(":"))) : t.readyState === 0 ? (o._wD(r + "Attempting to load"), !t.isHTML5 && !o.html5Only ? (t._iO.autoPlay = !0, t.load(t._iO)) : t.isHTML5 ? t.load(t._iO) : (o._wD(r + "Unsupported type. Exiting."), y = t), t.instanceOptions = t._iO) : t.readyState === 2 ? (o._wD(r + "Could not load - exiting", 2), y = t) : o._wD(r + "Loading - attempting to play...");
if (y !== null) return y;
!t.isHTML5 && b === 9 && t.position > 0 && t.position === t.duration && (o._wD(r + "Sound at end, resetting to position:0"), e.position = 0);
if (t.paused && t.position >= 0 && (!t._iO.serverURL || t.position > 0)) o._wD(r + "Resuming from paused state", 1), t.resume(); else {
t._iO = M(e, t._iO);
if (t._iO.from !== null && t._iO.to !== null && t.instanceCount === 0 && t.playState === 0 && !t._iO.serverURL) {
f = function() {
t._iO = M(e, t._iO), t.play(t._iO);
}, t.isHTML5 && !t._html5_canplay ? (o._wD(r + "Beginning load for from/to case"), t.load({
oncanplay: f
}), y = !1) : !t.isHTML5 && !t.loaded && (!t.readyState || t.readyState !== 2) && (o._wD(r + "Preloading for from/to case"), t.load({
onload: f
}), y = !1);
if (y !== null) return y;
t._iO = m();
}
(!t.instanceCount || t._iO.multiShotEvents || t.isHTML5 && t._iO.multiShot && !Pt || !t.isHTML5 && b > 8 && !t.getAutoPlay()) && t.instanceCount++, t._iO.onposition && t.playState === 0 && c(t), t.playState = 1, t.paused = !1, t.position = t._iO.position !== i && !isNaN(t._iO.position) ? t._iO.position : 0, t.isHTML5 || (t._iO = ct(lt(t._iO))), t._iO.onplay && n && (t._iO.onplay.apply(t), h = !0), t.setVolume(t._iO.volume, !0), t.setPan(t._iO.pan, !0), t.isHTML5 ? t.instanceCount < 2 ? (l(), u = t._setup_html5(), t.setPosition(t._iO.position), u.play()) : (o._wD(t.id + ": Cloning Audio() for instance #" + t.instanceCount + "..."), p = new Audio(t._iO.url), d = function() {
_t.remove(p, "onended", d), t._onfinish(t), At(p), p = null;
}, v = function() {
_t.remove(p, "canplay", v);
try {
p.currentTime = t._iO.position / sn;
} catch (e) {
ht(t.id + ": multiShot play() failed to apply position of " + t._iO.position / sn);
}
p.play();
}, _t.add(p, "ended", d), t._iO.position ? _t.add(p, "canplay", v) : p.play()) : (g = a._start(t.id, t._iO.loops || 1, b === 9 ? t.position : t.position / sn, t._iO.multiShot || !1), b === 9 && !g && (o._wD(r + "No sound hardware, or 32-sound ceiling hit", 2), t._iO.onplayerror && t._iO.onplayerror.apply(t)));
}
return t;
}, this.start = this.play, this.stop = function(e) {
var n = t._iO, r;
return t.playState === 1 && (o._wD(t.id + ": stop()"), t._onbufferchange(0), t._resetOnPosition(0), t.paused = !1, t.isHTML5 || (t.playState = 0), v(), n.to && t.clearOnPosition(n.to), t.isHTML5 ? t._a && (r = t.position, t.setPosition(0), t.position = r, t._a.pause(), t.playState = 0, t._onTimer(), f()) : (a._stop(t.id, e), n.serverURL && t.unload()), t.instanceCount = 0, t._iO = {}, n.onstop && n.onstop.apply(t)), t;
}, this.setAutoPlay = function(e) {
o._wD(t.id + ": Autoplay turned " + (e ? "on" : "off")), t._iO.autoPlay = e, t.isHTML5 || (a._setAutoPlay(t.id, e), e && !t.instanceCount && t.readyState === 1 && (t.instanceCount++, o._wD(t.id + ": Incremented instance count to " + t.instanceCount)));
}, this.getAutoPlay = function() {
return t._iO.autoPlay;
}, this.setPosition = function(e) {
e === i && (e = 0);
var n, r, s = t.isHTML5 ? Math.max(e, 0) : Math.min(t.duration || t._iO.duration, Math.max(e, 0));
t.position = s, r = t.position / sn, t._resetOnPosition(t.position), t._iO.position = s;
if (!t.isHTML5) n = b === 9 ? t.position : r, t.readyState && t.readyState !== 2 && a._setPosition(t.id, n, t.paused || !t.playState, t._iO.multiShot); else if (t._a) {
if (t._html5_canplay) {
if (t._a.currentTime !== r) {
o._wD(t.id + ": setPosition(" + r + ")");
try {
t._a.currentTime = r, (t.playState === 0 || t.paused) && t._a.pause();
} catch (u) {
o._wD(t.id + ": setPosition(" + r + ") failed: " + u.message, 2);
}
}
} else if (r) return o._wD(t.id + ": setPosition(" + r + "): Cannot seek yet, sound not ready", 2), t;
t.paused && t._onTimer(!0);
}
return t;
}, this.pause = function(e) {
return t.paused || t.playState === 0 && t.readyState !== 1 ? t : (o._wD(t.id + ": pause()"), t.paused = !0, t.isHTML5 ? (t._setup_html5().pause(), f()) : (e || e === i) && a._pause(t.id, t._iO.multiShot), t._iO.onpause && t._iO.onpause.apply(t), t);
}, this.resume = function() {
var e = t._iO;
return t.paused ? (o._wD(t.id + ": resume()"), t.paused = !1, t.playState = 1, t.isHTML5 ? (t._setup_html5().play(), l()) : (e.isMovieStar && !e.serverURL && t.setPosition(t.position), a._pause(t.id, e.multiShot)), !h && e.onplay ? (e.onplay.apply(t), h = !0) : e.onresume && e.onresume.apply(t), t) : t;
}, this.togglePause = function() {
return o._wD(t.id + ": togglePause()"), t.playState === 0 ? (t.play({
position: b === 9 && !t.isHTML5 ? t.position : t.position / sn
}), t) : (t.paused ? t.resume() : t.pause(), t);
}, this.setPan = function(e, n) {
return e === i && (e = 0), n === i && (n = !1), t.isHTML5 || a._setPan(t.id, e), t._iO.pan = e, n || (t.pan = e, t.options.pan = e), t;
}, this.setVolume = function(e, n) {
return e === i && (e = 100), n === i && (n = !1), t.isHTML5 ? t._a && (t._a.volume = Math.max(0, Math.min(1, e / 100))) : a._setVolume(t.id, o.muted && !t.muted || t.muted ? 0 : e), t._iO.volume = e, n || (t.volume = e, t.options.volume = e), t;
}, this.mute = function() {
return t.muted = !0, t.isHTML5 ? t._a && (t._a.muted = !0) : a._setVolume(t.id, 0), t;
}, this.unmute = function() {
t.muted = !1;
var e = t._iO.volume !== i;
return t.isHTML5 ? t._a && (t._a.muted = !1) : a._setVolume(t.id, e ? t._iO.volume : t.options.volume), t;
}, this.toggleMute = function() {
return t.muted ? t.unmute() : t.mute();
}, this.onPosition = function(e, n, r) {
return p.push({
position: parseInt(e, 10),
method: n,
scope: r !== i ? r : t,
fired: !1
}), t;
}, this.onposition = this.onPosition, this.clearOnPosition = function(e, t) {
var n;
e = parseInt(e, 10);
if (isNaN(e)) return !1;
for (n = 0; n < p.length; n++) e === p[n].position && (!t || t === p[n].method) && (p[n].fired && d--, p.splice(n, 1));
}, this._processOnPosition = function() {
var e, n, r = p.length;
if (!r || !t.playState || d >= r) return !1;
for (e = r - 1; e >= 0; e--) n = p[e], !n.fired && t.position >= n.position && (n.fired = !0, d++, n.method.apply(n.scope, [ n.position ]));
return !0;
}, this._resetOnPosition = function(e) {
var t, n, r = p.length;
if (!r) return !1;
for (t = r - 1; t >= 0; t--) n = p[t], n.fired && e <= n.position && (n.fired = !1, d--);
return !0;
}, m = function() {
var e = t._iO, n = e.from, r = e.to, i, s;
return s = function() {
o._wD(t.id + ': "To" time of ' + r + " reached."), t.clearOnPosition(r, s), t.stop();
}, i = function() {
o._wD(t.id + ': Playing "from" ' + n), r !== null && !isNaN(r) && t.onPosition(r, s);
}, n !== null && !isNaN(n) && (e.position = n, e.multiShot = !1, i()), e;
}, c = function() {
var e, n = t._iO.onposition;
if (n) for (e in n) n.hasOwnProperty(e) && t.onPosition(parseInt(e, 10), n[e]);
}, v = function() {
var e, n = t._iO.onposition;
if (n) for (e in n) n.hasOwnProperty(e) && t.clearOnPosition(parseInt(e, 10));
}, l = function() {
t.isHTML5 && mt(t);
}, f = function() {
t.isHTML5 && gt(t);
}, n = function(e) {
e || (p = [], d = 0), h = !1, t._hasTimer = null, t._a = null, t._html5_canplay = !1, t.bytesLoaded = null, t.bytesTotal = null, t.duration = t._iO && t._iO.duration ? t._iO.duration : null, t.durationEstimate = null, t.buffered = [], t.eqData = [], t.eqData.left = [], t.eqData.right = [], t.failures = 0, t.isBuffering = !1, t.instanceOptions = {}, t.instanceCount = 0, t.loaded = !1, t.metadata = {}, t.readyState = 0, t.muted = !1, t.paused = !1, t.peakData = {
left: 0,
right: 0
}, t.waveformData = {
left: [],
right: []
}, t.playState = 0, t.position = null, t.id3 = {};
}, n(), this._onTimer = function(e) {
var n, r = !1, i, s = {};
if (t._hasTimer || e) return t._a && (e || (t.playState > 0 || t.readyState === 1) && !t.paused) && (n = t._get_html5_duration(), n !== y.duration && (y.duration = n, t.duration = n, r = !0), t.durationEstimate = t.duration, i = t._a.currentTime * sn || 0, i !== y.time && (y.time = i, r = !0), (r || e) && t._whileplaying(i, s, s, s, s)), r;
}, this._get_html5_duration = function() {
var e = t._iO, n = t._a && t._a.duration ? t._a.duration * sn : e && e.duration ? e.duration : null, r = n && !isNaN(n) && n !== Infinity ? n : null;
return r;
}, this._apply_loop = function(e, t) {
!e.loop && t > 1 && o._wD("Note: Native HTML5 looping is infinite.", 1), e.loop = t > 1 ? "loop" : "";
}, this._setup_html5 = function(e) {
var i = M(t._iO, e), s = Pt ? u : t._a, o = decodeURI(i.url), a;
Pt ? o === decodeURI(Ht) && (a = !0) : o === decodeURI(g) && (a = !0);
if (s) {
if (s._s) if (Pt) s._s && s._s.playState && !a && s._s.stop(); else if (!Pt && o === decodeURI(g)) return t._apply_loop(s, i.loops), s;
a || (n(!1), s.src = i.url, t.url = i.url, g = i.url, Ht = i.url, s._called_load = !1);
} else i.autoLoad || i.autoPlay ? t._a = new Audio(i.url) : t._a = Kt && opera.version() < 10 ? new Audio(null) : new Audio, s = t._a, s._called_load = !1, Pt && (u = s);
return t.isHTML5 = !0, t._a = s, s._s = t, r(), t._apply_loop(s, i.loops), i.autoLoad || i.autoPlay ? t.load() : (s.autobuffer = !1, s.preload = "auto"), s;
}, r = function() {
function e(e, n, r) {
return t._a ? t._a.addEventListener(e, n, r || !1) : null;
}
if (t._a._added_events) return !1;
var n;
t._a._added_events = !0;
for (n in It) It.hasOwnProperty(n) && e(n, It[n]);
return !0;
}, s = function() {
function e(e, n, r) {
return t._a ? t._a.removeEventListener(e, n, r || !1) : null;
}
var n;
o._wD(t.id + ": Removing event listeners"), t._a._added_events = !1;
for (n in It) It.hasOwnProperty(n) && e(n, It[n]);
}, this._onload = function(e) {
var n, r = !!e || !t.isHTML5 && b === 8 && t.duration;
return n = t.id + ": ", o._wD(n + (r ? "onload()" : "Failed to load / invalid sound?" + (t.duration ? " -" : " Zero-length duration reported.") + " (" + t.url + ")"), r ? 1 : 2), !r && !t.isHTML5 && (o.sandbox.noRemote === !0 && o._wD(n + st("noNet"), 1), o.sandbox.noLocal === !0 && o._wD(n + st("noLocal"), 1)), t.loaded = r, t.readyState = r ? 3 : 2, t._onbufferchange(0), t._iO.onload && Ut(t, function() {
t._iO.onload.apply(t, [ r ]);
}), !0;
}, this._onbufferchange = function(e) {
return t.playState === 0 ? !1 : e && t.isBuffering || !e && !t.isBuffering ? !1 : (t.isBuffering = e === 1, t._iO.onbufferchange && (o._wD(t.id + ": Buffer state change: " + e), t._iO.onbufferchange.apply(t)), !0);
}, this._onsuspend = function() {
return t._iO.onsuspend && (o._wD(t.id + ": Playback suspended"), t._iO.onsuspend.apply(t)), !0;
}, this._onfailure = function(e, n, r) {
t.failures++, o._wD(t.id + ": Failures = " + t.failures), t._iO.onfailure && t.failures === 1 ? t._iO.onfailure(t, e, n, r) : o._wD(t.id + ": Ignoring failure");
}, this._onfinish = function() {
var e = t._iO.onfinish;
t._onbufferchange(0), t._resetOnPosition(0), t.instanceCount && (t.instanceCount--, t.instanceCount || (v(), t.playState = 0, t.paused = !1, t.instanceCount = 0, t.instanceOptions = {}, t._iO = {}, f(), t.isHTML5 && (t.position = 0)), (!t.instanceCount || t._iO.multiShotEvents) && e && (o._wD(t.id + ": onfinish()"), Ut(t, function() {
e.apply(t);
})));
}, this._whileloading = function(e, n, r, i) {
var s = t._iO;
t.bytesLoaded = e, t.bytesTotal = n, t.duration = Math.floor(r), t.bufferLength = i, !t.isHTML5 && !s.isMovieStar ? s.duration ? t.durationEstimate = t.duration > s.duration ? t.duration : s.duration : t.durationEstimate = parseInt(t.bytesTotal / t.bytesLoaded * t.duration, 10) : t.durationEstimate = t.duration, t.isHTML5 || (t.buffered = [ {
start: 0,
end: t.duration
} ]), (t.readyState !== 3 || t.isHTML5) && s.whileloading && s.whileloading.apply(t);
}, this._whileplaying = function(e, n, r, s, o) {
var u = t._iO, a;
return isNaN(e) || e === null ? !1 : (t.position = Math.max(0, e), t._processOnPosition(), !t.isHTML5 && b > 8 && (u.usePeakData && n !== i && n && (t.peakData = {
left: n.leftPeak,
right: n.rightPeak
}), u.useWaveformData && r !== i && r && (t.waveformData = {
left: r.split(","),
right: s.split(",")
}), u.useEQData && o !== i && o && o.leftEQ && (a = o.leftEQ.split(","), t.eqData = a, t.eqData.left = a, o.rightEQ !== i && o.rightEQ && (t.eqData.right = o.rightEQ.split(",")))), t.playState === 1 && (!t.isHTML5 && b === 8 && !t.position && t.isBuffering && t._onbufferchange(0), u.whileplaying && u.whileplaying.apply(t)), !0);
}, this._oncaptiondata = function(e) {
o._wD(t.id + ": Caption data received."), t.captiondata = e, t._iO.oncaptiondata && t._iO.oncaptiondata.apply(t, [ e ]);
}, this._onmetadata = function(e, n) {
o._wD(t.id + ": Metadata received.");
var r = {}, i, s;
for (i = 0, s = e.length; i < s; i++) r[e[i]] = n[i];
t.metadata = r, t._iO.onmetadata && t._iO.onmetadata.apply(t);
}, this._onid3 = function(e, n) {
o._wD(t.id + ": ID3 data received.");
var r = [], i, s;
for (i = 0, s = e.length; i < s; i++) r[e[i]] = n[i];
t.id3 = M(t.id3, r), t._iO.onid3 && t._iO.onid3.apply(t);
}, this._onconnect = function(e) {
e = e === 1, o._wD(t.id + ": " + (e ? "Connected." : "Failed to connect? - " + t.url), e ? 1 : 2), t.connected = e, e && (t.failures = 0, pt(t.id) && (t.getAutoPlay() ? t.play(i, t.getAutoPlay()) : t._iO.autoLoad && t.load()), t._iO.onconnect && t._iO.onconnect.apply(t, [ e ]));
}, this._ondataerror = function(e) {
t.playState > 0 && (o._wD(t.id + ": Data error: " + e), t._iO.ondataerror && t._iO.ondataerror.apply(t));
}, this._debug();
}, $ = function() {
return v.body || v._docElement || v.getElementsByTagName("div")[0];
}, h = function(e) {
return v.getElementById(e);
}, M = function(e, t) {
var n = e || {}, r, s;
r = t === i ? o.defaultOptions : t;
for (s in r) r.hasOwnProperty(s) && n[s] === i && (typeof r[s] != "object" || r[s] === null ? n[s] = r[s] : n[s] = M(n[s], r[s]));
return n;
}, Ut = function(e, t) {
!e.isHTML5 && b === 8 ? window.setTimeout(t, 0) : t();
}, D = {
onready: 1,
ontimeout: 1,
defaultOptions: 1,
flash9Options: 1,
movieStarOptions: 1
}, _ = function(e, t) {
var n, r = !0, s = t !== i, u = o.setupOptions, a = D;
if (e === i) {
r = [];
for (n in u) u.hasOwnProperty(n) && r.push(n);
for (n in a) a.hasOwnProperty(n) && (typeof o[n] == "object" ? r.push(n + ": {...}") : o[n] instanceof Function ? r.push(n + ": function() {...}") : r.push(n));
return o._wD(st("setup", r.join(", "))), !1;
}
for (n in e) if (e.hasOwnProperty(n)) if (typeof e[n] != "object" || e[n] === null || e[n] instanceof Array || e[n] instanceof RegExp) s && a[t] !== i ? o[t][n] = e[n] : u[n] !== i ? (o.setupOptions[n] = e[n], o[n] = e[n]) : a[n] === i ? (ht(st(o[n] === i ? "setupUndef" : "setupError", n), 2), r = !1) : o[n] instanceof Function ? o[n].apply(o, e[n] instanceof Array ? e[n] : [ e[n] ]) : o[n] = e[n]; else {
if (a[n] !== i) return _(e[n], n);
ht(st(o[n] === i ? "setupUndef" : "setupError", n), 2), r = !1;
}
return r;
}, _t = function() {
function e(e) {
var t = Dt.call(e), n = t.length;
return i ? (t[1] = "on" + t[1], n > 3 && t.pop()) : n === 3 && t.push(!1), t;
}
function t(e, t) {
var n = e.shift(), r = [ s[t] ];
i ? n[r](e[0], e[1]) : n[r].apply(n, e);
}
function n() {
t(e(arguments), "add");
}
function r() {
t(e(arguments), "remove");
}
var i = window.attachEvent, s = {
add: i ? "attachEvent" : "addEventListener",
remove: i ? "detachEvent" : "removeEventListener"
};
return {
add: n,
remove: r
};
}(), It = {
abort: r(function() {
o._wD(this._s.id + ": abort");
}),
canplay: r(function() {
var e = this._s, t;
if (e._html5_canplay) return !0;
e._html5_canplay = !0, o._wD(e.id + ": canplay"), e._onbufferchange(0), t = e._iO.position !== i && !isNaN(e._iO.position) ? e._iO.position / sn : null;
if (e.position && this.currentTime !== t) {
o._wD(e.id + ": canplay: Setting position to " + t);
try {
this.currentTime = t;
} catch (n) {
o._wD(e.id + ": canplay: Setting position of " + t + " failed: " + n.message, 2);
}
}
e._iO._oncanplay && e._iO._oncanplay();
}),
canplaythrough: r(function() {
var e = this._s;
e.loaded || (e._onbufferchange(0), e._whileloading(e.bytesLoaded, e.bytesTotal, e._get_html5_duration()), e._onload(!0));
}),
ended: r(function() {
var e = this._s;
o._wD(e.id + ": ended"), e._onfinish();
}),
error: r(function() {
o._wD(this._s.id + ": HTML5 error, code " + this.error.code), this._s._onload(!1);
}),
loadeddata: r(function() {
var e = this._s;
o._wD(e.id + ": loadeddata"), !e._loaded && !Jt && (e.duration = e._get_html5_duration());
}),
loadedmetadata: r(function() {
o._wD(this._s.id + ": loadedmetadata");
}),
loadstart: r(function() {
o._wD(this._s.id + ": loadstart"), this._s._onbufferchange(1);
}),
play: r(function() {
this._s._onbufferchange(0);
}),
playing: r(function() {
o._wD(this._s.id + ": playing"), this._s._onbufferchange(0);
}),
progress: r(function(e) {
var t = this._s, n, r, i, s = 0, u = e.type === "progress", a = e.target.buffered, f = e.loaded || 0, l = e.total || 1;
t.buffered = [];
if (a && a.length) {
for (n = 0, r = a.length; n < r; n++) t.buffered.push({
start: a.start(n) * sn,
end: a.end(n) * sn
});
s = (a.end(0) - a.start(0)) * sn, f = Math.min(1, s / (e.target.duration * sn));
if (u && a.length > 1) {
i = [], r = a.length;
for (n = 0; n < r; n++) i.push(e.target.buffered.start(n) * sn + "-" + e.target.buffered.end(n) * sn);
o._wD(this._s.id + ": progress, timeRanges: " + i.join(", "));
}
u && !isNaN(f) && o._wD(this._s.id + ": progress, " + Math.floor(f * 100) + "% loaded");
}
isNaN(f) || (t._onbufferchange(0), t._whileloading(f, l, t._get_html5_duration()), f && l && f === l && It.canplaythrough.call(this, e));
}),
ratechange: r(function() {
o._wD(this._s.id + ": ratechange");
}),
suspend: r(function(e) {
var t = this._s;
o._wD(this._s.id + ": suspend"), It.progress.call(this, e), t._onsuspend();
}),
stalled: r(function() {
o._wD(this._s.id + ": stalled");
}),
timeupdate: r(function() {
this._s._onTimer();
}),
waiting: r(function() {
var e = this._s;
o._wD(this._s.id + ": waiting"), e._onbufferchange(1);
})
}, Ct = function(e) {
var t;
return !e || !e.type && !e.url && !e.serverURL ? t = !1 : e.serverURL || e.type && n(e.type) ? t = !1 : t = e.type ? kt({
type: e.type
}) : kt({
url: e.url
}) || o.html5Only || e.url.match(/data\:/i), t;
}, At = function(e) {
var t;
return e && (t = Jt && !Wt ? null : Qt ? on : null, e.src = t, e._called_unload !== undefined && (e._called_load = !1)), Pt && (Ht = null), t;
}, kt = function(e) {
if (!o.useHTML5Audio || !o.hasHTML5) return !1;
var t = e.url || null, r = e.type || null, s = o.audioFormats, u, a, f, l;
if (r && o.html5[r] !== i) return o.html5[r] && !n(r);
if (!Lt) {
Lt = [];
for (l in s) s.hasOwnProperty(l) && (Lt.push(l), s[l].related && (Lt = Lt.concat(s[l].related)));
Lt = new RegExp("\\.(" + Lt.join("|") + ")(\\?.*)?$", "i");
}
return f = t ? t.toLowerCase().match(Lt) : null, !f || !f.length ? r ? (a = r.indexOf(";"), f = (a !== -1 ? r.substr(0, a) : r).substr(6)) : u = !1 : f = f[1], f && o.html5[f] !== i ? u = o.html5[f] && !n(f) : (r = "audio/" + f, u = o.html5.canPlayType({
type: r
}), o.html5[f] = u, u = u && o.html5[r] && !n(r)), u;
}, Mt = function() {
function e(e) {
var n, r, i, s = !1, u = !1;
if (!t || typeof t.canPlayType != "function") return s;
if (e instanceof Array) {
for (r = 0, i = e.length; r < i; r++) if (o.html5[e[r]] || t.canPlayType(e[r]).match(o.html5Test)) u = !0, o.html5[e[r]] = !0, o.flash[e[r]] = !!e[r].match(rn);
s = u;
} else n = t && typeof t.canPlayType == "function" ? t.canPlayType(e) : !1, s = !!n && !!n.match(o.html5Test);
return s;
}
if (!o.useHTML5Audio || !o.hasHTML5) return o.html5.usingFlash = !0, Tt = !0, !1;
var t = Audio !== i ? Kt && opera.version() < 10 ? new Audio(null) : new Audio : null, n, r, s = {}, u, a;
u = o.audioFormats;
for (n in u) if (u.hasOwnProperty(n)) {
r = "audio/" + n, s[n] = e(u[n].type), s[r] = s[n], n.match(rn) ? (o.flash[n] = !0, o.flash[r] = !0) : (o.flash[n] = !1, o.flash[r] = !1);
if (u[n] && u[n].related) for (a = u[n].related.length - 1; a >= 0; a--) s["audio/" + u[n].related[a]] = s[n], o.html5[u[n].related[a]] = s[n], o.flash[u[n].related[a]] = s[n];
}
return s.canPlayType = t ? e : null, o.html5 = M(o.html5, s), o.html5.usingFlash = Nt(), Tt = o.html5.usingFlash, !0;
}, R = {
notReady: "Unavailable - wait until onready() has fired.",
notOK: "Audio support is not available.",
domError: f + "exception caught while appending SWF to DOM.",
spcWmode: "Removing wmode, preventing known SWF loading issue(s)",
swf404: l + "Verify that %s is a valid path.",
tryDebug: "Try " + f + ".debugFlash = true for more security details (output goes to SWF.)",
checkSWF: "See SWF output for more debug info.",
localFail: l + "Non-HTTP page (" + v.location.protocol + " URL?) Review Flash player security settings for this special case:\nhttp://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager04.html\nMay need to add/allow path, eg. c:/sm2/ or /users/me/sm2/",
waitFocus: l + "Special case: Waiting for SWF to load with window focus...",
waitForever: l + "Waiting indefinitely for Flash (will recover if unblocked)...",
waitSWF: l + "Waiting for 100% SWF load...",
needFunction: l + "Function object expected for %s",
badID: 'Sound ID "%s" should be a string, starting with a non-numeric character',
currentObj: l + "_debug(): Current sound objects",
waitOnload: l + "Waiting for window.onload()",
docLoaded: l + "Document already loaded",
onload: l + "initComplete(): calling soundManager.onload()",
onloadOK: f + ".onload() complete",
didInit: l + "init(): Already called?",
secNote: "Flash security note: Network/internet URLs will not load due to security restrictions. Access can be configured via Flash Player Global Security Settings Page: http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager04.html",
badRemove: l + "Failed to remove Flash node.",
shutdown: f + ".disable(): Shutting down",
queue: l + "Queueing %s handler",
smError: "SMSound.load(): Exception: JS-Flash communication failed, or JS error.",
fbTimeout: "No flash response, applying ." + at.swfTimedout + " CSS...",
fbLoaded: "Flash loaded",
fbHandler: l + "flashBlockHandler()",
manURL: "SMSound.load(): Using manually-assigned URL",
onURL: f + ".load(): current URL already assigned.",
badFV: f + '.flashVersion must be 8 or 9. "%s" is invalid. Reverting to %s.',
as2loop: "Note: Setting stream:false so looping can work (flash 8 limitation)",
noNSLoop: "Note: Looping not implemented for MovieStar formats",
needfl9: "Note: Switching to flash 9, required for MP4 formats.",
mfTimeout: "Setting flashLoadTimeout = 0 (infinite) for off-screen, mobile flash case",
needFlash: l + "Fatal error: Flash is needed to play some required formats, but is not available.",
gotFocus: l + "Got window focus.",
policy: "Enabling usePolicyFile for data access",
setup: f + ".setup(): allowed parameters: %s",
setupError: f + '.setup(): "%s" cannot be assigned with this method.',
setupUndef: f + '.setup(): Could not find option "%s"',
setupLate: f + ".setup(): url, flashVersion and html5Test property changes will not take effect until reboot().",
noURL: l + "Flash URL required. Call soundManager.setup({url:...}) to get started.",
sm2Loaded: "SoundManager 2: Ready.",
reset: f + ".reset(): Removing event callbacks",
mobileUA: "Mobile UA detected, preferring HTML5 by default.",
globalHTML5: "Using singleton HTML5 Audio() pattern for this device."
}, st = function() {
var e = Dt.call(arguments), t = e.shift(), n = R && R[t] ? R[t] : "", r, i;
if (n && e && e.length) for (r = 0, i = e.length; r < i; r++) n = n.replace("%s", e[r]);
return n;
}, lt = function(e) {
return b === 8 && e.loops > 1 && e.stream && (L("as2loop"), e.stream = !1), e;
}, ct = function(e, t) {
return e && !e.usePolicyFile && (e.onid3 || e.usePeakData || e.useWaveformData || e.useEQData) && (o._wD((t || "") + st("policy")), e.usePolicyFile = !0), e;
}, ht = function(e) {
Zt && console.warn !== i ? console.warn(e) : o._wD(e);
}, m = function() {
return !1;
}, et = function(e) {
var t;
for (t in e) e.hasOwnProperty(t) && typeof e[t] == "function" && (e[t] = m);
t = null;
}, tt = function(e) {
e === i && (e = !1), (C || e) && o.disable(e);
}, nt = function(e) {
var t = null, n;
if (e) if (e.match(/\.swf(\?.*)?$/i)) {
t = e.substr(e.toLowerCase().lastIndexOf(".swf?") + 4);
if (t) return e;
} else e.lastIndexOf("/") !== e.length - 1 && (e += "/");
return n = (e && e.lastIndexOf("/") !== -1 ? e.substr(0, e.lastIndexOf("/") + 1) : "./") + o.movieURL, o.noSWFCache && (n += "?ts=" + (new Date).getTime()), n;
}, I = function() {
b = parseInt(o.flashVersion, 10), b !== 8 && b !== 9 && (o._wD(st("badFV", b, Z)), o.flashVersion = b = Z);
var e = o.debugMode || o.debugFlash ? "_debug.swf" : ".swf";
o.useHTML5Audio && !o.html5Only && o.audioFormats.mp4.required && b < 9 && (o._wD(st("needfl9")), o.flashVersion = b = 9), o.version = o.versionNumber + (o.html5Only ? " (HTML5-only mode)" : b === 9 ? " (AS3/Flash 9)" : " (AS2/Flash 8)"), b > 8 ? (o.defaultOptions = M(o.defaultOptions, o.flash9Options), o.features.buffering = !0, o.defaultOptions = M(o.defaultOptions, o.movieStarOptions), o.filePatterns.flash9 = new RegExp("\\.(mp3|" + ln.join("|") + ")(\\?.*)?$", "i"), o.features.movieStar = !0) : o.features.movieStar = !1, o.filePattern = o.filePatterns[b !== 8 ? "flash9" : "flash8"], o.movieURL = (b === 8 ? "soundmanager2.swf" : "soundmanager2_flash9.swf").replace(".swf", e), o.features.peakData = o.features.waveformData = o.features.eqData = b > 8;
}, Q = function(e, t) {
if (!a) return !1;
a._setPolling(e, t);
}, G = function() {
o.debugURLParam.test(d) && (o.debugMode = !0);
if (h(o.debugID)) return !1;
var e, t, n, r, i;
if (o.debugMode && !h(o.debugID) && (!Zt || !o.useConsole || !o.consoleOnly)) {
e = v.createElement("div"), e.id = o.debugID + "-toggle", r = {
position: "fixed",
bottom: "0px",
right: "0px",
width: "1.2em",
height: "1.2em",
lineHeight: "1.2em",
margin: "2px",
textAlign: "center",
border: "1px solid #999",
cursor: "pointer",
background: "#fff",
color: "#333",
zIndex: 10001
}, e.appendChild(v.createTextNode("-")), e.onclick = ft, e.title = "Toggle SM2 debug console", p.match(/msie 6/i) && (e.style.position = "absolute", e.style.cursor = "hand");
for (i in r) r.hasOwnProperty(i) && (e.style[i] = r[i]);
t = v.createElement("div"), t.id = o.debugID, t.style.display = o.debugMode ? "block" : "none";
if (o.debugMode && !h(e.id)) {
try {
n = $(), n.appendChild(e);
} catch (s) {
throw new Error(st("domError") + " \n" + s.toString());
}
n.appendChild(t);
}
}
n = null;
}, pt = this.getSoundById, L = function(e, t) {
return e ? o._wD(st(e), t) : "";
}, ft = function() {
var e = h(o.debugID), t = h(o.debugID + "-toggle");
if (!e) return !1;
E ? (t.innerHTML = "+", e.style.display = "none") : (t.innerHTML = "-", e.style.display = "block"), E = !E;
}, S = function(e, t, n) {
if (window.sm2Debugger !== i) try {
sm2Debugger.handleEvent(e, t, n);
} catch (r) {
return !1;
}
return !0;
}, ut = function() {
var e = [];
return o.debugMode && e.push(at.sm2Debug), o.debugFlash && e.push(at.flashDebug), o.useHighPerformance && e.push(at.highPerf), e.join(" ");
}, ot = function() {
var e = st("fbHandler"), t = o.getMoviePercent(), n = at, r = {
type: "FLASHBLOCK"
};
if (o.html5Only) return !1;
o.ok() ? (o.didFlashBlock && o._wD(e + ": Unblocked"), o.oMC && (o.oMC.className = [ ut(), n.swfDefault, n.swfLoaded + (o.didFlashBlock ? " " + n.swfUnblocked : "") ].join(" "))) : (Tt && (o.oMC.className = ut() + " " + n.swfDefault + " " + (t === null ? n.swfTimedout : n.swfError), o._wD(e + ": " + st("fbTimeout") + (t ? " (" + st("fbLoaded") + ")" : ""))), o.didFlashBlock = !0, H({
type: "ontimeout",
ignoreInit: !0,
error: r
}), K(r));
}, P = function(e, t, n) {
w[e] === i && (w[e] = []), w[e].push({
method: t,
scope: n || null,
fired: !1
});
}, H = function(e) {
e || (e = {
type: o.ok() ? "onready" : "ontimeout"
});
if (!N && e && !e.ignoreInit) return !1;
if (e.type === "ontimeout" && (o.ok() || C && !e.ignoreInit)) return !1;
var t = {
success: e && e.ignoreInit ? o.ok() : !C
}, n = e && e.type ? w[e.type] || [] : [], r = [], i, s, u = [ t ], a = Tt && !o.ok();
e.error && (u[0].error = e.error);
for (i = 0, s = n.length; i < s; i++) n[i].fired !== !0 && r.push(n[i]);
if (r.length) for (i = 0, s = r.length; i < s; i++) r[i].scope ? r[i].method.apply(r[i].scope, u) : r[i].method.apply(this, u), a || (r[i].fired = !0);
return !0;
}, B = function() {
window.setTimeout(function() {
o.useFlashBlock && ot(), H(), typeof o.onload == "function" && (L("onload", 1), o.onload.apply(window), L("onloadOK", 1)), o.waitForWindowLoad && _t.add(window, "load", B);
}, 1);
}, jt = function() {
if (Bt !== i) return Bt;
var e = !1, t = navigator, n = t.plugins, r, s, o, u = window.ActiveXObject;
if (n && n.length) s = "application/x-shockwave-flash", o = t.mimeTypes, o && o[s] && o[s].enabledPlugin && o[s].enabledPlugin.description && (e = !0); else if (u !== i && !p.match(/MSAppHost/i)) {
try {
r = new u("ShockwaveFlash.ShockwaveFlash");
} catch (a) {
r = null;
}
e = !!r, r = null;
}
return Bt = e, e;
}, Nt = function() {
var e, t, n = o.audioFormats, r = Wt && !!p.match(/os (1|2|3_0|3_1)/i);
if (r) o.hasHTML5 = !1, o.html5Only = !0, o.oMC && (o.oMC.style.display = "none"); else if (o.useHTML5Audio) {
if (!o.html5 || !o.html5.canPlayType) o._wD("SoundManager: No HTML5 Audio() support detected."), o.hasHTML5 = !1;
Yt && o._wD(l + "Note: Buggy HTML5 Audio in Safari on this OS X release, see https://bugs.webkit.org/show_bug.cgi?id=32159 - " + (Bt ? "will use flash fallback for MP3/MP4, if available" : " would use flash fallback for MP3/MP4, but none detected."), 1);
}
if (o.useHTML5Audio && o.hasHTML5) {
xt = !0;
for (t in n) n.hasOwnProperty(t) && n[t].required && (o.html5.canPlayType(n[t].type) ? o.preferFlash && (o.flash[t] || o.flash[n[t].type]) && (e = !0) : (xt = !1, e = !0));
}
return o.ignoreFlash && (e = !1, xt = !0), o.html5Only = o.hasHTML5 && o.useHTML5Audio && !e, !o.html5Only;
}, Et = function(e) {
var t, n, r = 0, i;
if (e instanceof Array) {
for (t = 0, n = e.length; t < n; t++) if (e[t] instanceof Object) {
if (o.canPlayMIME(e[t].type)) {
r = t;
break;
}
} else if (o.canPlayURL(e[t])) {
r = t;
break;
}
e[r].url && (e[r] = e[r].url), i = e[r];
} else i = e;
return i;
}, mt = function(e) {
e._hasTimer || (e._hasTimer = !0, !Gt && o.html5PollingInterval && (wt === null && bt === 0 && (wt = setInterval(yt, o.html5PollingInterval)), bt++));
}, gt = function(e) {
e._hasTimer && (e._hasTimer = !1, !Gt && o.html5PollingInterval && bt--);
}, yt = function() {
var e;
if (wt !== null && !bt) return clearInterval(wt), wt = null, !1;
for (e = o.soundIDs.length - 1; e >= 0; e--) o.sounds[o.soundIDs[e]].isHTML5 && o.sounds[o.soundIDs[e]]._hasTimer && o.sounds[o.soundIDs[e]]._onTimer();
}, K = function(e) {
e = e !== i ? e : {}, typeof o.onerror == "function" && o.onerror.apply(window, [ {
type: e.type !== i ? e.type : null
} ]), e.fatal !== i && e.fatal && o.disable();
}, Ft = function() {
if (!Yt || !jt()) return !1;
var e = o.audioFormats, t, n;
for (n in e) if (e.hasOwnProperty(n)) if (n === "mp3" || n === "mp4") {
o._wD(f + ": Using flash fallback for " + n + " format"), o.html5[n] = !1;
if (e[n] && e[n].related) for (t = e[n].related.length - 1; t >= 0; t--) o.html5[e[n].related[t]] = !1;
}
}, this._setSandboxType = function(e) {
var t = o.sandbox;
t.type = e, t.description = t.types[t.types[e] !== i ? e : "unknown"], t.type === "localWithFile" ? (t.noRemote = !0, t.noLocal = !1, L("secNote", 2)) : t.type === "localWithNetwork" ? (t.noRemote = !1, t.noLocal = !0) : t.type === "localTrusted" && (t.noRemote = !1, t.noLocal = !1);
}, this._externalInterfaceOK = function(e) {
if (o.swfLoaded) return !1;
var t;
S("swf", !0), S("flashtojs", !0), o.swfLoaded = !0, tn = !1, Yt && Ft();
if (!e || e.replace(/\+dev/i, "") !== o.versionNumber.replace(/\+dev/i, "")) return t = f + ': Fatal: JavaScript file build "' + o.versionNumber + '" does not match Flash SWF build "' + e + '" at ' + o.url + ". Ensure both are up-to-date.", setTimeout(function() {
throw new Error(t);
}, 0), !1;
setTimeout(y, Vt ? 100 : 1);
}, J = function(e, t) {
function n() {
var e = [], t, n = [], r = " + ";
t = "SoundManager " + o.version + (!o.html5Only && o.useHTML5Audio ? o.hasHTML5 ? " + HTML5 audio" : ", no HTML5 audio support" : ""), o.html5Only ? o.html5PollingInterval && e.push("html5PollingInterval (" + o.html5PollingInterval + "ms)") : (o.preferFlash && e.push("preferFlash"), o.useHighPerformance && e.push("useHighPerformance"), o.flashPollingInterval && e.push("flashPollingInterval (" + o.flashPollingInterval + "ms)"), o.html5PollingInterval && e.push("html5PollingInterval (" + o.html5PollingInterval + "ms)"), o.wmode && e.push("wmode (" + o.wmode + ")"), o.debugFlash && e.push("debugFlash"), o.useFlashBlock && e.push("flashBlock")), e.length && (n = n.concat([ e.join(r) ])), o._wD(t + (n.length ? r + n.join(", ") : ""), 1), qt();
}
function r(e, t) {
return '<param name="' + e + '" value="' + t + '" />';
}
if (x && T) return !1;
if (o.html5Only) return I(), n(), o.oMC = h(o.movieID), y(), x = !0, T = !0, !1;
var s = t || o.url, u = o.altURL || s, a = "JS/Flash audio component (SoundManager 2)", f = $(), l = ut(), c = null, d = v.getElementsByTagName("html")[0], m, g, b, w, E, S, N, C;
c = d && d.dir && d.dir.match(/rtl/i), e = e === i ? o.id : e, I(), o.url = nt(un ? s : u), t = o.url, o.wmode = !o.wmode && o.useHighPerformance ? "transparent" : o.wmode, o.wmode !== null && (p.match(/msie 8/i) || !Vt && !o.useHighPerformance) && navigator.platform.match(/win32|win64/i) && (St.push(R.spcWmode), o.wmode = null), m = {
name: e,
id: e,
src: t,
quality: "high",
allowScriptAccess: o.allowScriptAccess,
bgcolor: o.bgColor,
pluginspage: an + "www.macromedia.com/go/getflashplayer",
title: a,
type: "application/x-shockwave-flash",
wmode: o.wmode,
hasPriority: "true"
}, o.debugFlash && (m.FlashVars = "debug=1"), o.wmode || delete m.wmode;
if (Vt) g = v.createElement("div"), w = [ '<object id="' + e + '" data="' + t + '" type="' + m.type + '" title="' + m.title + '" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="' + an + 'download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0">', r("movie", t), r("AllowScriptAccess", o.allowScriptAccess), r("quality", m.quality), o.wmode ? r("wmode", o.wmode) : "", r("bgcolor", o.bgColor), r("hasPriority", "true"), o.debugFlash ? r("FlashVars", m.FlashVars) : "", "</object>" ].join(""); else {
g = v.createElement("embed");
for (b in m) m.hasOwnProperty(b) && g.setAttribute(b, m[b]);
}
G(), l = ut(), f = $();
if (f) {
o.oMC = h(o.movieID) || v.createElement("div");
if (!o.oMC.id) {
o.oMC.id = o.movieID, o.oMC.className = at.swfDefault + " " + l, S = null, E = null, o.useFlashBlock || (o.useHighPerformance ? S = {
position: "fixed",
width: "8px",
height: "8px",
bottom: "0px",
left: "0px",
overflow: "hidden"
} : (S = {
position: "absolute",
width: "6px",
height: "6px",
top: "-9999px",
left: "-9999px"
}, c && (S.left = Math.abs(parseInt(S.left, 10)) + "px"))), $t && (o.oMC.style.zIndex = 1e4);
if (!o.debugFlash) for (N in S) S.hasOwnProperty(N) && (o.oMC.style[N] = S[N]);
try {
Vt || o.oMC.appendChild(g), f.appendChild(o.oMC), Vt && (E = o.oMC.appendChild(v.createElement("div")), E.className = at.swfBox, E.innerHTML = w), T = !0;
} catch (k) {
throw new Error(st("domError") + " \n" + k.toString());
}
} else C = o.oMC.className, o.oMC.className = (C ? C + " " : at.swfDefault) + (l ? " " + l : ""), o.oMC.appendChild(g), Vt && (E = o.oMC.appendChild(v.createElement("div")), E.className = at.swfBox, E.innerHTML = w), T = !0;
}
return x = !0, n(), !0;
}, U = function() {
return o.html5Only ? (J(), !1) : a ? !1 : o.url ? (a = o.getMovie(o.id), a || (rt ? (Vt ? o.oMC.innerHTML = it : o.oMC.appendChild(rt), rt = null, x = !0) : J(o.id, o.url), a = o.getMovie(o.id)), typeof o.oninitmovie == "function" && setTimeout(o.oninitmovie, 1), Rt(), !0) : (L("noURL"), !1);
}, j = function() {
setTimeout(F, 1e3);
}, F = function() {
var e, t = !1;
if (!o.url) return !1;
if (dt) return !1;
dt = !0, _t.remove(window, "load", j);
if (tn && !en) return L("waitFocus"), !1;
N || (e = o.getMoviePercent(), e > 0 && e < 100 && (t = !0)), setTimeout(function() {
e = o.getMoviePercent();
if (t) return dt = !1, o._wD(st("waitSWF")), window.setTimeout(j, 1), !1;
N || (o._wD(f + ": No Flash response within expected time. Likely causes: " + (e === 0 ? "SWF load failed, " : "") + "Flash blocked or JS-Flash security error." + (o.debugFlash ? " " + st("checkSWF") : ""), 2), !un && e && (L("localFail", 2), o.debugFlash || L("tryDebug", 2)), e === 0 && o._wD(st("swf404", o.url), 1), S("flashtojs", !1, ": Timed out" + un ? " (Check flash security or flash blockers)" : " (No plugin/missing SWF?)")), !N && nn && (e === null ? o.useFlashBlock || o.flashLoadTimeout === 0 ? (o.useFlashBlock && ot(), L("waitForever")) : !o.useFlashBlock && xt ? window.setTimeout(function() {
ht(l + "useFlashBlock is false, 100% HTML5 mode is possible. Rebooting with preferFlash: false..."), o.setup({
preferFlash: !1
}).reboot(), o.didFlashBlock = !0, o.beginDelayedInit();
}, 1) : (L("waitForever"), H({
type: "ontimeout",
ignoreInit: !0
})) : o.flashLoadTimeout === 0 ? L("waitForever") : tt(!0));
}, o.flashLoadTimeout);
}, q = function() {
function e() {
_t.remove(window, "focus", q);
}
return en || !tn ? (e(), !0) : (nn = !0, en = !0, L("gotFocus"), dt = !1, j(), e(), !0);
}, Rt = function() {
St.length && (o._wD("SoundManager 2: " + St.join(" "), 1), St = []);
}, qt = function() {
Rt();
var e, t = [];
if (o.useHTML5Audio && o.hasHTML5) {
for (e in o.audioFormats) o.audioFormats.hasOwnProperty(e) && t.push(e + " = " + o.html5[e] + (!o.html5[e] && Tt && o.flash[e] ? " (using flash)" : o.preferFlash && o.flash[e] && Tt ? " (preferring flash)" : o.html5[e] ? "" : " (" + (o.audioFormats[e].required ? "required, " : "") + "and no flash support)"));
o._wD("SoundManager 2 HTML5 support: " + t.join(", "), 1);
}
}, O = function(e) {
if (N) return !1;
if (o.html5Only) return L("sm2Loaded"), N = !0, B(), S("onload", !0), !0;
var t = o.useFlashBlock && o.flashLoadTimeout && !o.getMoviePercent(), n = !0, r;
return t || (N = !0, C && (r = {
type: !Bt && Tt ? "NO_FLASH" : "INIT_TIMEOUT"
})), o._wD("SoundManager 2 " + (C ? "failed to load" : "loaded") + " (" + (C ? "Flash security/load error" : "OK") + ")", C ? 2 : 1), C || e ? (o.useFlashBlock && o.oMC && (o.oMC.className = ut() + " " + (o.getMoviePercent() === null ? at.swfTimedout : at.swfError)), H({
type: "ontimeout",
error: r,
ignoreInit: !0
}), S("onload", !1), K(r), n = !1) : S("onload", !0), C || (o.waitForWindowLoad && !k ? (L("waitOnload"), _t.add(window, "load", B)) : (o.waitForWindowLoad && k && L("docLoaded"), B())), n;
}, g = function() {
var e, t = o.setupOptions;
for (e in t) t.hasOwnProperty(e) && (o[e] === i ? o[e] = t[e] : o[e] !== t[e] && (o.setupOptions[e] = o[e]));
}, y = function() {
function e() {
_t.remove(window, "load", o.beginDelayedInit);
}
if (N) return L("didInit"), !1;
if (o.html5Only) return N || (e(), o.enabled = !0, O()), !0;
U();
try {
a._externalInterfaceTest(!1), Q(!0, o.flashPollingInterval || (o.useHighPerformance ? 10 : 50)), o.debugMode || a._disableDebug(), o.enabled = !0, S("jstoflash", !0), o.html5Only || _t.add(window, "unload", m);
} catch (t) {
return o._wD("js/flash exception: " + t.toString()), S("jstoflash", !1), K({
type: "JS_TO_FLASH_EXCEPTION",
fatal: !0
}), tt(!0), O(), !1;
}
return O(), e(), !0;
}, W = function() {
return V ? !1 : (V = !0, g(), G(), function() {
var e = "sm2-usehtml5audio=", t = "sm2-preferflash=", n = null, r = null, i = d.toLowerCase();
i.indexOf(e) !== -1 && (n = i.charAt(i.indexOf(e) + e.length) === "1", Zt && console.log((n ? "Enabling " : "Disabling ") + "useHTML5Audio via URL parameter"), o.setup({
useHTML5Audio: n
})), i.indexOf(t) !== -1 && (r = i.charAt(i.indexOf(t) + t.length) === "1", Zt && console.log((r ? "Enabling " : "Disabling ") + "preferFlash via URL parameter"), o.setup({
preferFlash: r
}));
}(), !Bt && o.hasHTML5 && (o._wD("SoundManager: No Flash detected" + (o.useHTML5Audio ? ". Trying HTML5-only mode." : ", enabling HTML5."), 1), o.setup({
useHTML5Audio: !0,
preferFlash: !1
})), Mt(), !Bt && Tt && (St.push(R.needFlash), o.setup({
flashLoadTimeout: 1
})), v.removeEventListener && v.removeEventListener("DOMContentLoaded", W, !1), U(), !0);
}, Ot = function() {
return v.readyState === "complete" && (W(), v.detachEvent("onreadystatechange", Ot)), !0;
}, X = function() {
k = !0, _t.remove(window, "load", X);
}, z = function() {
if (Gt) {
(!o.setupOptions.useHTML5Audio || o.setupOptions.preferFlash) && St.push(R.mobileUA), o.setupOptions.useHTML5Audio = !0, o.setupOptions.preferFlash = !1;
if (Wt || Xt && !p.match(/android\s2\.3/i)) St.push(R.globalHTML5), Wt && (o.ignoreFlash = !0), Pt = !0;
}
}, z(), jt(), _t.add(window, "focus", q), _t.add(window, "load", j), _t.add(window, "load", X), v.addEventListener ? v.addEventListener("DOMContentLoaded", W, !1) : v.attachEvent ? v.attachEvent("onreadystatechange", Ot) : (S("onload", !1), K({
type: "NO_DOM2_EVENTS",
fatal: !0
}));
}
if (window.SM2_DEFER === undefined || !SM2_DEFER) r = new s;
return window.soundManager = r, r;
} catch (o) {
wx.jslog({
src: "common/lib/soundmanager2.js"
}, o);
}
});define("common/qq/emoji.js", [ "xss/ui/emoji.css" ], function(e, t, n) {
try {
e("xss/ui/emoji.css");
var r = {
"☀": "2600",
"☁": "2601",
"☔": "2614",
"⛄": "26c4",
"⚡": "26a1",
"🌀": "1f300",
"🌁": "1f301",
"🌂": "1f302",
"🌃": "1f303",
"🌄": "1f304",
"🌅": "1f305",
"🌆": "1f306",
"🌇": "1f307",
"🌈": "1f308",
"❄": "2744",
"⛅": "26c5",
"🌉": "1f309",
"🌊": "1f30a",
"🌋": "1f30b",
"🌌": "1f30c",
"🌏": "1f30f",
"🌑": "1f311",
"🌔": "1f314",
"🌓": "1f313",
"🌙": "1f319",
"🌕": "1f315",
"🌛": "1f31b",
"🌟": "1f31f",
"🌠": "1f320",
"🕐": "1f550",
"🕑": "1f551",
"🕒": "1f552",
"🕓": "1f553",
"🕔": "1f554",
"🕕": "1f555",
"🕖": "1f556",
"🕗": "1f557",
"🕘": "1f558",
"🕙": "1f559",
"🕚": "1f55a",
"🕛": "1f55b",
"⌚": "231a",
"⌛": "231b",
"⏰": "23f0",
"⏳": "23f3",
"♈": "2648",
"♉": "2649",
"♊": "264a",
"♋": "264b",
"♌": "264c",
"♍": "264d",
"♎": "264e",
"♏": "264f",
"♐": "2650",
"♑": "2651",
"♒": "2652",
"♓": "2653",
"⛎": "26ce",
"🍀": "1f340",
"🌷": "1f337",
"🌱": "1f331",
"🍁": "1f341",
"🌸": "1f338",
"🌹": "1f339",
"🍂": "1f342",
"🍃": "1f343",
"🌺": "1f33a",
"🌻": "1f33b",
"🌴": "1f334",
"🌵": "1f335",
"🌾": "1f33e",
"🌽": "1f33d",
"🍄": "1f344",
"🌰": "1f330",
"🌼": "1f33c",
"🌿": "1f33f",
"🍒": "1f352",
"🍌": "1f34c",
"🍎": "1f34e",
"🍊": "1f34a",
"🍓": "1f353",
"🍉": "1f349",
"🍅": "1f345",
"🍆": "1f346",
"🍈": "1f348",
"🍍": "1f34d",
"🍇": "1f347",
"🍑": "1f351",
"🍏": "1f34f",
"👀": "1f440",
"👂": "1f442",
"👃": "1f443",
"👄": "1f444",
"👅": "1f445",
"💄": "1f484",
"💅": "1f485",
"💆": "1f486",
"💇": "1f487",
"💈": "1f488",
"👤": "1f464",
"👦": "1f466",
"👧": "1f467",
"👨": "1f468",
"👩": "1f469",
"👪": "1f46a",
"👫": "1f46b",
"👮": "1f46e",
"👯": "1f46f",
"👰": "1f470",
"👱": "1f471",
"👲": "1f472",
"👳": "1f473",
"👴": "1f474",
"👵": "1f475",
"👶": "1f476",
"👷": "1f477",
"👸": "1f478",
"👹": "1f479",
"👺": "1f47a",
"👻": "1f47b",
"👼": "1f47c",
"👽": "1f47d",
"👾": "1f47e",
"👿": "1f47f",
"💀": "1f480",
"💁": "1f481",
"💂": "1f482",
"💃": "1f483",
"🐌": "1f40c",
"🐍": "1f40d",
"🐎": "1f40e",
"🐔": "1f414",
"🐗": "1f417",
"🐫": "1f42b",
"🐘": "1f418",
"🐨": "1f428",
"🐒": "1f412",
"🐑": "1f411",
"🐙": "1f419",
"🐚": "1f41a",
"🐛": "1f41b",
"🐜": "1f41c",
"🐝": "1f41d",
"🐞": "1f41e",
"🐠": "1f420",
"🐡": "1f421",
"🐢": "1f422",
"🐤": "1f424",
"🐥": "1f425",
"🐦": "1f426",
"🐣": "1f423",
"🐧": "1f427",
"🐩": "1f429",
"🐟": "1f41f",
"🐬": "1f42c",
"🐭": "1f42d",
"🐯": "1f42f",
"🐱": "1f431",
"🐳": "1f433",
"🐴": "1f434",
"🐵": "1f435",
"🐶": "1f436",
"🐷": "1f437",
"🐻": "1f43b",
"🐹": "1f439",
"🐺": "1f43a",
"🐮": "1f42e",
"🐰": "1f430",
"🐸": "1f438",
"🐾": "1f43e",
"🐲": "1f432",
"🐼": "1f43c",
"🐽": "1f43d",
"😠": "1f620",
"😩": "1f629",
"😲": "1f632",
"😞": "1f61e",
"😵": "1f635",
"😰": "1f630",
"😒": "1f612",
"😍": "1f60d",
"😤": "1f624",
"😜": "1f61c",
"😝": "1f61d",
"😋": "1f60b",
"😘": "1f618",
"😚": "1f61a",
"😷": "1f637",
"😳": "1f633",
"😃": "1f603",
"😅": "1f605",
"😆": "1f606",
"😁": "1f601",
"😂": "1f602",
"😊": "1f60a",
"☺": "263a",
"😄": "1f604",
"😢": "1f622",
"😭": "1f62d",
"😨": "1f628",
"😣": "1f623",
"😡": "1f621",
"😌": "1f60c",
"😖": "1f616",
"😔": "1f614",
"😱": "1f631",
"😪": "1f62a",
"😏": "1f60f",
"😓": "1f613",
"😥": "1f625",
"😫": "1f62b",
"😉": "1f609",
"😺": "1f63a",
"😸": "1f638",
"😹": "1f639",
"😽": "1f63d",
"😻": "1f63b",
"😿": "1f63f",
"😾": "1f63e",
"😼": "1f63c",
"🙀": "1f640",
"🙅": "1f645",
"🙆": "1f646",
"🙇": "1f647",
"🙈": "1f648",
"🙊": "1f64a",
"🙉": "1f649",
"🙋": "1f64b",
"🙌": "1f64c",
"🙍": "1f64d",
"🙎": "1f64e",
"🙏": "1f64f",
"🏠": "1f3e0",
"🏡": "1f3e1",
"🏢": "1f3e2",
"🏣": "1f3e3",
"🏥": "1f3e5",
"🏦": "1f3e6",
"🏧": "1f3e7",
"🏨": "1f3e8",
"🏩": "1f3e9",
"🏪": "1f3ea",
"🏫": "1f3eb",
"⛪": "26ea",
"⛲": "26f2",
"🏬": "1f3ec",
"🏯": "1f3ef",
"🏰": "1f3f0",
"🏭": "1f3ed",
"⚓": "2693",
"🏮": "1f3ee",
"🗻": "1f5fb",
"🗼": "1f5fc",
"🗽": "1f5fd",
"🗾": "1f5fe",
"🗿": "1f5ff",
"👞": "1f45e",
"👟": "1f45f",
"👠": "1f460",
"👡": "1f461",
"👢": "1f462",
"👣": "1f463",
"👓": "1f453",
"👕": "1f455",
"👖": "1f456",
"👑": "1f451",
"👔": "1f454",
"👒": "1f452",
"👗": "1f457",
"👘": "1f458",
"👙": "1f459",
"👚": "1f45a",
"👛": "1f45b",
"👜": "1f45c",
"👝": "1f45d",
"💰": "1f4b0",
"💱": "1f4b1",
"💹": "1f4b9",
"💲": "1f4b2",
"💳": "1f4b3",
"💴": "1f4b4",
"💵": "1f4b5",
"💸": "1f4b8",
"🇨🇳": "1f1e81f1f3",
"🇩🇪": "1f1e91f1ea",
"🇪🇸": "1f1ea1f1f8",
"🇫🇷": "1f1eb1f1f7",
"🇬🇧": "1f1ec1f1e7",
"🇮🇹": "1f1ee1f1f9",
"🇯🇵": "1f1ef1f1f5",
"🇰🇷": "1f1f01f1f7",
"🇷🇺": "1f1f71f1fa",
"🇺🇸": "1f1fa1f1f8",
"🔥": "1f525",
"🔦": "1f526",
"🔧": "1f527",
"🔨": "1f528",
"🔩": "1f529",
"🔪": "1f52a",
"🔫": "1f52b",
"🔮": "1f52e",
"🔯": "1f52f",
"🔰": "1f530",
"🔱": "1f531",
"💉": "1f489",
"💊": "1f48a",
"🅰": "1f170",
"🅱": "1f171",
"🆎": "1f18e",
"🅾": "1f17e",
"🎀": "1f380",
"🎁": "1f381",
"🎂": "1f382",
"🎄": "1f384",
"🎅": "1f385",
"🎌": "1f38c",
"🎆": "1f386",
"🎈": "1f388",
"🎉": "1f389",
"🎍": "1f38d",
"🎎": "1f38e",
"🎓": "1f393",
"🎒": "1f392",
"🎏": "1f38f",
"🎇": "1f387",
"🎐": "1f390",
"🎃": "1f383",
"🎊": "1f38a",
"🎋": "1f38b",
"🎑": "1f391",
"📟": "1f4df",
"☎": "260e",
"📞": "1f4de",
"📱": "1f4f1",
"📲": "1f4f2",
"📝": "1f4dd",
"📠": "1f4e0",
"✉": "2709",
"📨": "1f4e8",
"📩": "1f4e9",
"📪": "1f4ea",
"📫": "1f4eb",
"📮": "1f4ee",
"📰": "1f4f0",
"📢": "1f4e2",
"📣": "1f4e3",
"📡": "1f4e1",
"📤": "1f4e4",
"📥": "1f4e5",
"📦": "1f4e6",
"📧": "1f4e7",
"🔠": "1f520",
"🔡": "1f521",
"🔢": "1f522",
"🔣": "1f523",
"🔤": "1f524",
"✒": "2712",
"💺": "1f4ba",
"💻": "1f4bb",
"✏": "270f",
"📎": "1f4ce",
"💼": "1f4bc",
"💽": "1f4bd",
"💾": "1f4be",
"💿": "1f4bf",
"📀": "1f4c0",
"✂": "2702",
"📍": "1f4cd",
"📃": "1f4c3",
"📄": "1f4c4",
"📅": "1f4c5",
"📁": "1f4c1",
"📂": "1f4c2",
"📓": "1f4d3",
"📖": "1f4d6",
"📔": "1f4d4",
"📕": "1f4d5",
"📗": "1f4d7",
"📘": "1f4d8",
"📙": "1f4d9",
"📚": "1f4da",
"📛": "1f4db",
"📜": "1f4dc",
"📋": "1f4cb",
"📆": "1f4c6",
"📊": "1f4ca",
"📈": "1f4c8",
"📉": "1f4c9",
"📇": "1f4c7",
"📌": "1f4cc",
"📒": "1f4d2",
"📏": "1f4cf",
"📐": "1f4d0",
"📑": "1f4d1",
"🎽": "1f3bd",
"⚾": "26be",
"⛳": "26f3",
"🎾": "1f3be",
"⚽": "26bd",
"🎿": "1f3bf",
"🏀": "1f3c0",
"🏁": "1f3c1",
"🏂": "1f3c2",
"🏃": "1f3c3",
"🏄": "1f3c4",
"🏆": "1f3c6",
"🏈": "1f3c8",
"🏊": "1f3ca",
"🚃": "1f683",
"🚇": "1f687",
"Ⓜ": "24c2",
"🚄": "1f684",
"🚅": "1f685",
"🚗": "1f697",
"🚙": "1f699",
"🚌": "1f68c",
"🚏": "1f68f",
"🚢": "1f6a2",
"✈": "2708",
"⛵": "26f5",
"🚉": "1f689",
"🚀": "1f680",
"🚤": "1f6a4",
"🚕": "1f695",
"🚚": "1f69a",
"🚒": "1f692",
"🚑": "1f691",
"🚓": "1f693",
"⛽": "26fd",
"🅿": "1f17f",
"🚥": "1f6a5",
"🚧": "1f6a7",
"🚨": "1f6a8",
"♨": "2668",
"⛺": "26fa",
"🎠": "1f3a0",
"🎡": "1f3a1",
"🎢": "1f3a2",
"🎣": "1f3a3",
"🎤": "1f3a4",
"🎥": "1f3a5",
"🎦": "1f3a6",
"🎧": "1f3a7",
"🎨": "1f3a8",
"🎩": "1f3a9",
"🎪": "1f3aa",
"🎫": "1f3ab",
"🎬": "1f3ac",
"🎭": "1f3ad",
"🎮": "1f3ae",
"🀄": "1f004",
"🎯": "1f3af",
"🎰": "1f3b0",
"🎱": "1f3b1",
"🎲": "1f3b2",
"🎳": "1f3b3",
"🎴": "1f3b4",
"🃏": "1f0cf",
"🎵": "1f3b5",
"🎶": "1f3b6",
"🎷": "1f3b7",
"🎸": "1f3b8",
"🎹": "1f3b9",
"🎺": "1f3ba",
"🎻": "1f3bb",
"🎼": "1f3bc",
"〽": "303d",
"📷": "1f4f7",
"📹": "1f4f9",
"📺": "1f4fa",
"📻": "1f4fb",
"📼": "1f4fc",
"💋": "1f48b",
"💌": "1f48c",
"💍": "1f48d",
"💎": "1f48e",
"💏": "1f48f",
"💐": "1f490",
"💑": "1f491",
"💒": "1f492",
"🔞": "1f51e",
"©": "a9",
"®": "ae",
"™": "2122",
"ℹ": "2139",
"#⃣": "2320e3",
"1⃣": "3120e3",
"2⃣": "3220e3",
"3⃣": "3320e3",
"4⃣": "3420e3",
"5⃣": "3520e3",
"6⃣": "3620e3",
"7⃣": "3720e3",
"8⃣": "3820e3",
"9⃣": "3920e3",
"0⃣": "3020e3",
"🔟": "1f51f",
"📶": "1f4f6",
"📳": "1f4f3",
"📴": "1f4f4",
"🍔": "1f354",
"🍙": "1f359",
"🍰": "1f370",
"🍜": "1f35c",
"🍞": "1f35e",
"🍳": "1f373",
"🍦": "1f366",
"🍟": "1f35f",
"🍡": "1f361",
"🍘": "1f358",
"🍚": "1f35a",
"🍝": "1f35d",
"🍛": "1f35b",
"🍢": "1f362",
"🍣": "1f363",
"🍱": "1f371",
"🍲": "1f372",
"🍧": "1f367",
"🍖": "1f356",
"🍥": "1f365",
"🍠": "1f360",
"🍕": "1f355",
"🍗": "1f357",
"🍨": "1f368",
"🍩": "1f369",
"🍪": "1f36a",
"🍫": "1f36b",
"🍬": "1f36c",
"🍭": "1f36d",
"🍮": "1f36e",
"🍯": "1f36f",
"🍤": "1f364",
"🍴": "1f374",
"☕": "2615",
"🍸": "1f378",
"🍺": "1f37a",
"🍵": "1f375",
"🍶": "1f376",
"🍷": "1f377",
"🍻": "1f37b",
"🍹": "1f379",
"↗": "2197",
"↘": "2198",
"↖": "2196",
"↙": "2199",
"⤴": "2934",
"⤵": "2935",
"↔": "2194",
"↕": "2195",
"⬆": "2b06",
"⬇": "2b07",
"➡": "27a1",
"⬅": "2b05",
"▶": "25b6",
"◀": "25c0",
"⏩": "23e9",
"⏪": "23ea",
"⏫": "23eb",
"⏬": "23ec",
"🔺": "1f53a",
"🔻": "1f53b",
"🔼": "1f53c",
"🔽": "1f53d",
"⭕": "2b55",
"❌": "274c",
"❎": "274e",
"❗": "2757",
"⁉": "2049",
"‼": "203c",
"❓": "2753",
"❔": "2754",
"❕": "2755",
"〰": "3030",
"➰": "27b0",
"➿": "27bf",
"❤": "2764",
"💓": "1f493",
"💔": "1f494",
"💕": "1f495",
"💖": "1f496",
"💗": "1f497",
"💘": "1f498",
"💙": "1f499",
"💚": "1f49a",
"💛": "1f49b",
"💜": "1f49c",
"💝": "1f49d",
"💞": "1f49e",
"💟": "1f49f",
"♥": "2665",
"♠": "2660",
"♦": "2666",
"♣": "2663",
"🚬": "1f6ac",
"🚭": "1f6ad",
"♿": "267f",
"🚩": "1f6a9",
"⚠": "26a0",
"⛔": "26d4",
"♻": "267b",
"🚲": "1f6b2",
"🚶": "1f6b6",
"🚹": "1f6b9",
"🚺": "1f6ba",
"🛀": "1f6c0",
"🚻": "1f6bb",
"🚽": "1f6bd",
"🚾": "1f6be",
"🚼": "1f6bc",
"🚪": "1f6aa",
"🚫": "1f6ab",
"✔": "2714",
"🆑": "1f191",
"🆒": "1f192",
"🆓": "1f193",
"🆔": "1f194",
"🆕": "1f195",
"🆖": "1f196",
"🆗": "1f197",
"🆘": "1f198",
"🆙": "1f199",
"🆚": "1f19a",
"🈁": "1f201",
"🈂": "1f202",
"🈲": "1f232",
"🈳": "1f233",
"🈴": "1f234",
"🈵": "1f235",
"🈶": "1f236",
"🈚": "1f21a",
"🈷": "1f237",
"🈸": "1f238",
"🈹": "1f239",
"🈯": "1f22f",
"🈺": "1f23a",
"㊙": "3299",
"㊗": "3297",
"🉐": "1f250",
"🉑": "1f251",
"➕": "2795",
"➖": "2796",
"✖": "2716",
"➗": "2797",
"💠": "1f4a0",
"💡": "1f4a1",
"💢": "1f4a2",
"💣": "1f4a3",
"💤": "1f4a4",
"💥": "1f4a5",
"💦": "1f4a6",
"💧": "1f4a7",
"💨": "1f4a8",
"💩": "1f4a9",
"💪": "1f4aa",
"💫": "1f4ab",
"💬": "1f4ac",
"✨": "2728",
"✴": "2734",
"✳": "2733",
"⚪": "26aa",
"⚫": "26ab",
"🔴": "1f534",
"🔵": "1f535",
"🔲": "1f532",
"🔳": "1f533",
"⭐": "2b50",
"⬜": "2b1c",
"⬛": "2b1b",
"▫": "25ab",
"▪": "25aa",
"◽": "25fd",
"◾": "25fe",
"◻": "25fb",
"◼": "25fc",
"🔶": "1f536",
"🔷": "1f537",
"🔸": "1f538",
"🔹": "1f539",
"❇": "2747",
"💮": "1f4ae",
"💯": "1f4af",
"↩": "21a9",
"↪": "21aa",
"🔃": "1f503",
"🔊": "1f50a",
"🔋": "1f50b",
"🔌": "1f50c",
"🔍": "1f50d",
"🔎": "1f50e",
"🔒": "1f512",
"🔓": "1f513",
"🔏": "1f50f",
"🔐": "1f510",
"🔑": "1f511",
"🔔": "1f514",
"☑": "2611",
"🔘": "1f518",
"🔖": "1f516",
"🔗": "1f517",
"🔙": "1f519",
"🔚": "1f51a",
"🔛": "1f51b",
"🔜": "1f51c",
"🔝": "1f51d",
" ": "2003",
" ": "2002",
" ": "2005",
"✅": "2705",
"✊": "270a",
"✋": "270b",
"✌": "270c",
"👊": "1f44a",
"👍": "1f44d",
"☝": "261d",
"👆": "1f446",
"👇": "1f447",
"👈": "1f448",
"👉": "1f449",
"👋": "1f44b",
"👏": "1f44f",
"👌": "1f44c",
"👎": "1f44e",
"👐": "1f450",
"": "2600",
"": "2601",
"": "2614",
"": "26c4",
"": "26a1",
"": "1f300",
"[霧]": "1f301",
"": "1f302",
"": "1f30c",
"": "1f304",
"": "1f305",
"": "1f306",
"": "1f307",
"": "1f308",
"[雪結晶]": "2744",
"": "26c5",
"": "1f30a",
"[火山]": "1f30b",
"[地球]": "1f30f",
"●": "1f311",
"": "1f31b",
"○": "1f315",
"": "1f31f",
"☆彡": "1f320",
"": "1f550",
"": "1f551",
"": "1f552",
"": "1f553",
"": "1f554",
"": "1f555",
"": "1f556",
"": "1f557",
"": "1f558",
"": "23f0",
"": "1f55a",
"": "1f55b",
"[腕時計]": "231a",
"[砂時計]": "23f3",
"": "2648",
"": "2649",
"": "264a",
"": "264b",
"": "264c",
"": "264d",
"": "264e",
"": "264f",
"": "2650",
"": "2651",
"": "2652",
"": "2653",
"": "26ce",
"": "1f33f",
"": "1f337",
"": "1f341",
"": "1f338",
"": "1f339",
"": "1f342",
"": "1f343",
"": "1f33a",
"": "1f33c",
"": "1f334",
"": "1f335",
"": "1f33e",
"[とうもろこし]": "1f33d",
"[キノコ]": "1f344",
"[栗]": "1f330",
"[さくらんぼ]": "1f352",
"[バナナ]": "1f34c",
"": "1f34f",
"": "1f34a",
"": "1f353",
"": "1f349",
"": "1f345",
"": "1f346",
"[メロン]": "1f348",
"[パイナップル]": "1f34d",
"[ブドウ]": "1f347",
"[モモ]": "1f351",
"": "1f440",
"": "1f442",
"": "1f443",
"": "1f444",
"": "1f61d",
"": "1f484",
"": "1f485",
"": "1f486",
"": "1f487",
"": "1f488",
"〓": "2005",
"": "1f466",
"": "1f467",
"": "1f468",
"": "1f469",
"[家族]": "1f46a",
"": "1f46b",
"": "1f46e",
"": "1f46f",
"[花嫁]": "1f470",
"": "1f471",
"": "1f472",
"": "1f473",
"": "1f474",
"": "1f475",
"": "1f476",
"": "1f477",
"": "1f478",
"[なまはげ]": "1f479",
"[天狗]": "1f47a",
"": "1f47b",
"": "1f47c",
"": "1f47d",
"": "1f47e",
"": "1f47f",
"": "1f480",
"": "1f481",
"": "1f482",
"": "1f483",
"[カタツムリ]": "1f40c",
"": "1f40d",
"": "1f40e",
"": "1f414",
"": "1f417",
"": "1f42b",
"": "1f418",
"": "1f428",
"": "1f412",
"": "1f411",
"": "1f419",
"": "1f41a",
"": "1f41b",
"[アリ]": "1f41c",
"[ミツバチ]": "1f41d",
"[てんとう虫]": "1f41e",
"": "1f420",
"": "1f3a3",
"[カメ]": "1f422",
"": "1f423",
"": "1f426",
"": "1f427",
"": "1f436",
"": "1f42c",
"": "1f42d",
"": "1f42f",
"": "1f431",
"": "1f433",
"": "1f434",
"": "1f435",
"": "1f43d",
"": "1f43b",
"": "1f439",
"": "1f43a",
"": "1f42e",
"": "1f430",
"": "1f438",
"": "1f463",
"[辰]": "1f432",
"[パンダ]": "1f43c",
"": "1f620",
"": "1f64d",
"": "1f632",
"": "1f61e",
"": "1f62b",
"": "1f630",
"": "1f612",
"": "1f63b",
"": "1f63c",
"": "1f61c",
"": "1f60a",
"": "1f63d",
"": "1f61a",
"": "1f637",
"": "1f633",
"": "1f63a",
"": "1f605",
"": "1f60c",
"": "1f639",
"": "263a",
"": "1f604",
"": "1f63f",
"": "1f62d",
"": "1f628",
"": "1f64e",
"": "1f4ab",
"": "1f631",
"": "1f62a",
"": "1f60f",
"": "1f613",
"": "1f625",
"": "1f609",
"": "1f645",
"": "1f646",
"": "1f647",
"(/_＼)": "1f648",
"(・×・)": "1f64a",
"|(・×・)|": "1f649",
"": "270b",
"": "1f64c",
"": "1f64f",
"": "1f3e1",
"": "1f3e2",
"": "1f3e3",
"": "1f3e5",
"": "1f3e6",
"": "1f3e7",
"": "1f3e8",
"": "1f3e9",
"": "1f3ea",
"": "1f3eb",
"": "26ea",
"": "26f2",
"": "1f3ec",
"": "1f3ef",
"": "1f3f0",
"": "1f3ed",
"": "1f6a2",
"": "1f376",
"": "1f5fb",
"": "1f5fc",
"": "1f5fd",
"[日本地図]": "1f5fe",
"[モアイ]": "1f5ff",
"": "1f45f",
"": "1f460",
"": "1f461",
"": "1f462",
"[メガネ]": "1f453",
"": "1f45a",
"[ジーンズ]": "1f456",
"": "1f451",
"": "1f454",
"": "1f452",
"": "1f457",
"": "1f458",
"": "1f459",
"[財布]": "1f45b",
"": "1f45c",
"[ふくろ]": "1f45d",
"": "1f4b5",
"": "1f4b1",
"": "1f4c8",
"[カード]": "1f4b3",
"￥": "1f4b4",
"[飛んでいくお金]": "1f4b8",
"": "1f1e81f1f3",
"": "1f1e91f1ea",
"": "1f1ea1f1f8",
"": "1f1eb1f1f7",
"": "1f1ec1f1e7",
"": "1f1ee1f1f9",
"": "1f1ef1f1f5",
"": "1f1f01f1f7",
"": "1f1f71f1fa",
"": "1f1fa1f1f8",
"": "1f525",
"[懐中電灯]": "1f526",
"[レンチ]": "1f527",
"": "1f528",
"[ネジ]": "1f529",
"[包丁]": "1f52a",
"": "1f52b",
"": "1f52f",
"": "1f530",
"": "1f531",
"": "1f489",
"": "1f48a",
"": "1f170",
"": "1f171",
"": "1f18e",
"": "1f17e",
"": "1f380",
"": "1f4e6",
"": "1f382",
"": "1f384",
"": "1f385",
"": "1f38c",
"": "1f386",
"": "1f388",
"": "1f389",
"": "1f38d",
"": "1f38e",
"": "1f393",
"": "1f392",
"": "1f38f",
"": "1f387",
"": "1f390",
"": "1f383",
"[オメデトウ]": "1f38a",
"[七夕]": "1f38b",
"": "1f391",
"[ポケベル]": "1f4df",
"": "1f4de",
"": "1f4f1",
"": "1f4f2",
"": "1f4d1",
"": "1f4e0",
"": "1f4e7",
"": "1f4eb",
"": "1f4ee",
"[新聞]": "1f4f0",
"": "1f4e2",
"": "1f4e3",
"": "1f4e1",
"[送信BOX]": "1f4e4",
"[受信BOX]": "1f4e5",
"[ABCD]": "1f520",
"[abcd]": "1f521",
"[1234]": "1f522",
"[記号]": "1f523",
"[ABC]": "1f524",
"[ペン]": "2712",
"": "1f4ba",
"": "1f4bb",
"[クリップ]": "1f4ce",
"": "1f4bc",
"": "1f4be",
"": "1f4bf",
"": "1f4c0",
"": "2702",
"[画びょう]": "1f4cc",
"[カレンダー]": "1f4c6",
"[フォルダ]": "1f4c2",
"": "1f4d2",
"[名札]": "1f4db",
"[スクロール]": "1f4dc",
"[グラフ]": "1f4c9",
"[定規]": "1f4cf",
"[三角定規]": "1f4d0",
"": "26be",
"": "26f3",
"": "1f3be",
"": "26bd",
"": "1f3bf",
"": "1f3c0",
"": "1f3c1",
"[スノボ]": "1f3c2",
"": "1f3c3",
"": "1f3c4",
"": "1f3c6",
"": "1f3c8",
"": "1f3ca",
"": "1f683",
"": "24c2",
"": "1f684",
"": "1f685",
"": "1f697",
"": "1f699",
"": "1f68c",
"": "1f68f",
"": "2708",
"": "26f5",
"": "1f689",
"": "1f680",
"": "1f6a4",
"": "1f695",
"": "1f69a",
"": "1f692",
"": "1f691",
"": "1f6a8",
"": "26fd",
"": "1f17f",
"": "1f6a5",
"": "26d4",
"": "2668",
"": "26fa",
"": "1f3a1",
"": "1f3a2",
"": "1f3a4",
"": "1f4f9",
"": "1f3a6",
"": "1f3a7",
"": "1f3a8",
"": "1f3ad",
"[イベント]": "1f3aa",
"": "1f3ab",
"": "1f3ac",
"[ゲーム]": "1f3ae",
"": "1f004",
"": "1f3af",
"": "1f3b0",
"": "1f3b1",
"[サイコロ]": "1f3b2",
"[ボーリング]": "1f3b3",
"[花札]": "1f3b4",
"[ジョーカー]": "1f0cf",
"": "1f3b5",
"": "1f3bc",
"": "1f3b7",
"": "1f3b8",
"[ピアノ]": "1f3b9",
"": "1f3ba",
"[バイオリン]": "1f3bb",
"": "303d",
"": "1f4f7",
"": "1f4fa",
"": "1f4fb",
"": "1f4fc",
"": "1f48b",
"": "1f48c",
"": "1f48d",
"": "1f48e",
"": "1f48f",
"": "1f490",
"": "1f491",
"": "1f492",
"": "1f51e",
"": "a9",
"": "ae",
"": "2122",
"[ｉ]": "2139",
"": "2320e3",
"": "3120e3",
"": "3220e3",
"": "3320e3",
"": "3420e3",
"": "3520e3",
"": "3620e3",
"": "3720e3",
"": "3820e3",
"": "3920e3",
"": "3020e3",
"[10]": "1f51f",
"": "1f4f6",
"": "1f4f3",
"": "1f4f4",
"": "1f354",
"": "1f359",
"": "1f370",
"": "1f35c",
"": "1f35e",
"": "1f373",
"": "1f366",
"": "1f35f",
"": "1f361",
"": "1f358",
"": "1f35a",
"": "1f35d",
"": "1f35b",
"": "1f362",
"": "1f363",
"": "1f371",
"": "1f372",
"": "1f367",
"[肉]": "1f356",
"[なると]": "1f365",
"[やきいも]": "1f360",
"[ピザ]": "1f355",
"[チキン]": "1f357",
"[アイスクリーム]": "1f368",
"[ドーナツ]": "1f369",
"[クッキー]": "1f36a",
"[チョコ]": "1f36b",
"[キャンディ]": "1f36d",
"[プリン]": "1f36e",
"[ハチミツ]": "1f36f",
"[エビフライ]": "1f364",
"": "1f374",
"": "2615",
"": "1f379",
"": "1f37a",
"": "1f375",
"": "1f37b",
"": "2934",
"": "2935",
"": "2196",
"": "2199",
"⇔": "2194",
"↑↓": "1f503",
"": "2b06",
"": "2b07",
"": "27a1",
"": "1f519",
"": "25b6",
"": "25c0",
"": "23e9",
"": "23ea",
"▲": "1f53c",
"▼": "1f53d",
"": "2b55",
"": "2716",
"": "2757",
"！？": "2049",
"！！": "203c",
"": "2753",
"": "2754",
"": "2755",
"～": "27b0",
"": "27bf",
"": "2764",
"": "1f49e",
"": "1f494",
"": "1f497",
"": "1f498",
"": "1f499",
"": "1f49a",
"": "1f49b",
"": "1f49c",
"": "1f49d",
"": "1f49f",
"": "2665",
"": "2660",
"": "2666",
"": "2663",
"": "1f6ac",
"": "1f6ad",
"": "267f",
"[旗]": "1f6a9",
"": "26a0",
"": "1f6b2",
"": "1f6b6",
"": "1f6b9",
"": "1f6ba",
"": "1f6c0",
"": "1f6bb",
"": "1f6bd",
"": "1f6be",
"": "1f6bc",
"[ドア]": "1f6aa",
"[禁止]": "1f6ab",
"[チェックマーク]": "2705",
"[CL]": "1f191",
"": "1f192",
"[FREE]": "1f193",
"": "1f194",
"": "1f195",
"[NG]": "1f196",
"": "1f197",
"[SOS]": "1f198",
"": "1f199",
"": "1f19a",
"": "1f201",
"": "1f202",
"[禁]": "1f232",
"": "1f233",
"[合]": "1f234",
"": "1f235",
"": "1f236",
"": "1f21a",
"": "1f237",
"": "1f238",
"": "1f239",
"": "1f22f",
"": "1f23a",
"": "3299",
"": "3297",
"": "1f250",
"[可]": "1f251",
"[＋]": "2795",
"[－]": "2796",
"[÷]": "2797",
"": "1f4a1",
"": "1f4a2",
"": "1f4a3",
"": "1f4a4",
"[ドンッ]": "1f4a5",
"": "1f4a7",
"": "1f4a8",
"": "1f4a9",
"": "1f4aa",
"[フキダシ]": "1f4ac",
"": "2747",
"": "2734",
"": "2733",
"": "1f534",
"": "25fc",
"": "1f539",
"": "2b50",
"[花丸]": "1f4ae",
"[100点]": "1f4af",
"←┘": "21a9",
"└→": "21aa",
"": "1f50a",
"[電池]": "1f50b",
"[コンセント]": "1f50c",
"": "1f50e",
"": "1f510",
"": "1f513",
"": "1f511",
"": "1f514",
"[ラジオボタン]": "1f518",
"[ブックマーク]": "1f516",
"[リンク]": "1f517",
"[end]": "1f51a",
"[ON]": "1f51b",
"[SOON]": "1f51c",
"": "1f51d",
"": "270a",
"": "270c",
"": "1f44a",
"": "1f44d",
"": "261d",
"": "1f446",
"": "1f447",
"": "1f448",
"": "1f449",
"": "1f44b",
"": "1f44f",
"": "1f44c",
"": "1f44e",
"": "1f450"
}, i = {
"/微笑": "0",
"/撇嘴": "1",
"/色": "2",
"/发呆": "3",
"/得意": "4",
"/流泪": "5",
"/害羞": "6",
"/闭嘴": "7",
"/睡": "8",
"/大哭": "9",
"/尴尬": "10",
"/发怒": "11",
"/调皮": "12",
"/呲牙": "13",
"/惊讶": "14",
"/难过": "15",
"/酷": "16",
"/冷汗": "17",
"/抓狂": "18",
"/吐": "19",
"/偷笑": "20",
"/可爱": "21",
"/白眼": "22",
"/傲慢": "23",
"/饥饿": "24",
"/困": "25",
"/惊恐": "26",
"/流汗": "27",
"/憨笑": "28",
"/大兵": "29",
"/奋斗": "30",
"/咒骂": "31",
"/疑问": "32",
"/嘘": "33",
"/晕": "34",
"/折磨": "35",
"/衰": "36",
"/骷髅": "37",
"/敲打": "38",
"/再见": "39",
"/擦汗": "40",
"/抠鼻": "41",
"/鼓掌": "42",
"/糗大了": "43",
"/坏笑": "44",
"/左哼哼": "45",
"/右哼哼": "46",
"/哈欠": "47",
"/鄙视": "48",
"/委屈": "49",
"/快哭了": "50",
"/阴险": "51",
"/亲亲": "52",
"/吓": "53",
"/可怜": "54",
"/菜刀": "55",
"/西瓜": "56",
"/啤酒": "57",
"/篮球": "58",
"/乒乓": "59",
"/咖啡": "60",
"/饭": "61",
"/猪头": "62",
"/玫瑰": "63",
"/凋谢": "64",
"/示爱": "65",
"/爱心": "66",
"/心碎": "67",
"/蛋糕": "68",
"/闪电": "69",
"/炸弹": "70",
"/刀": "71",
"/足球": "72",
"/瓢虫": "73",
"/便便": "74",
"/月亮": "75",
"/太阳": "76",
"/礼物": "77",
"/拥抱": "78",
"/强": "79",
"/弱": "80",
"/握手": "81",
"/胜利": "82",
"/抱拳": "83",
"/勾引": "84",
"/拳头": "85",
"/差劲": "86",
"/爱你": "87",
"/NO": "88",
"/OK": "89",
"/爱情": "90",
"/飞吻": "91",
"/跳跳": "92",
"/发抖": "93",
"/怄火": "94",
"/转圈": "95",
"/磕头": "96",
"/回头": "97",
"/跳绳": "98",
"/挥手": "99",
"/激动": "100",
"/街舞": "101",
"/献吻": "102",
"/左太极": "103",
"/右太极": "104",
"/::)": "0",
"/::~": "1",
"/::B": "2",
"/::|": "3",
"/:8-)": "4",
"/::<": "5",
"/::$": "6",
"/::X": "7",
"/::Z": "8",
"/::(": "9",
"/::'(": "9",
"/::-|": "10",
"/::@": "11",
"/::P": "12",
"/::D": "13",
"/::O": "14",
"/::(": "15",
"/::+": "16",
"/:--b": "17",
"/::Q": "18",
"/::T": "19",
"/:,@P": "20",
"/:,@-D": "21",
"/::d": "22",
"/:,@o": "23",
"/::g": "24",
"/:|-)": "25",
"/::!": "26",
"/::L": "27",
"/::>": "28",
"/::,@": "29",
"/:,@f": "30",
"/::-S": "31",
"/:?": "32",
"/:,@x": "33",
"/:,@@": "34",
"/::8": "35",
"/:,@!": "36",
"/:!!!": "37",
"/:xx": "38",
"/:bye": "39",
"/:wipe": "40",
"/:dig": "41",
"/:handclap": "42",
"/:&-(": "43",
"/:B-)": "44",
"/:<@": "45",
"/:@>": "46",
"/::-O": "47",
"/:>-|": "48",
"/:P-(": "49",
"/::'|": "50",
"/:X-)": "51",
"/::*": "52",
"/:@x": "53",
"/:8*": "54",
"/:pd": "55",
"/:<W>": "56",
"/:beer": "57",
"/:basketb": "58",
"/:oo": "59",
"/:coffee": "60",
"/:eat": "61",
"/:pig": "62",
"/:rose": "63",
"/:fade": "64",
"/:showlove": "65",
"/:heart": "66",
"/:break": "67",
"/:cake": "68",
"/:li": "69",
"/:bome": "70",
"/:kn": "71",
"/:footb": "72",
"/:ladybug": "73",
"/:shit": "74",
"/:moon": "75",
"/:sun": "76",
"/:gift": "77",
"/:hug": "78",
"/:strong": "79",
"/:weak": "80",
"/:share": "81",
"/:v": "82",
"/:@)": "83",
"/:jj": "84",
"/:@@": "85",
"/:bad": "86",
"/:lvu": "87",
"/:no": "88",
"/:ok": "89",
"/:love": "90",
"/:<L>": "91",
"/:jump": "92",
"/:shake": "93",
"/:<O>": "94",
"/:circle": "95",
"/:kotow": "96",
"/:turn": "97",
"/:skip": "98",
"/:oY": "99",
"/:#-0": "100",
"/:hiphot": "101",
"/:kiss": "102",
"/:<&": "103",
"/:&>": "104"
}, s = '<span class="emoji emoji%s"></span>', o = wx.resPath + "/mpres/htmledition/images/icon/emotion/", u = '<img src="' + o + '%s.gif" width="24" height="24">';
String.prototype.emoji = function() {
var e = this.toString();
for (var t in r) while (-1 != e.indexOf(t)) e = e.replace(t, s.sprintf(r[t]));
for (var t in i) while (-1 != e.indexOf(t)) e = e.replace(t, u.sprintf(i[t]));
return e;
};
} catch (a) {
wx.jslog({
src: "common/qq/emoji.js"
}, a);
}
});define("tpl/media/dialog/file.html.js", [], function(e, t, n) {
return '{each list as item}\n{mediaDialogInit item}\n<li class="media_item">\n    <div class="media_info">\n        <label class="media_name frm_radio_label">\n        	<i class="icon_radio"></i>\n        	<input name="media" type="radio" class="frm_radio" value="{item.file_id}">\n            {item.name}\n        </label>\n        <span class="media_size">{item.size}</span>\n        <span class="media_time">{mediaDialogtimeFormat item.update_time}</span>\n    </div>\n    <div id="fileItem{item.file_id}" data-id="{item.file_id}" data-type="{item.type}" class="media_content"></div>\n</li>\n{/each}\n';
});define("tpl/media/dialog/videomsg_layout.html.js", [], function(e, t, n) {
return '<div class="dialog_media_container">\n    {if tpl=="loading"}\n    <i class="icon32_loading light">loading...</i>\n    {else if tpl=="no-media"}\n    <div class="no_media_wrp">\n        <p class="tips">暂无素材</p>\n        <div class="richvideo_create">\n            <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/videomsg_edit&action=video_edit&type=15&lang=zh_CN&token={token}">\n                <i class="icon_richvideo_small"></i><strong>新建视频消息</strong>\n            </a>\n        </div>\n    </div>\n    <span class="vm_box"></span>\n    {else}\n    <div class="sub_title_bar in_dialog">\n        <div class="info">\n            <div class="richvideo_create">\n                <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/videomsg_edit&action=video_edit&type=15&lang=zh_CN&token={token}">\n                    <i class="icon_richvideo_small"></i><strong>新建视频消息</strong>\n                </a>\n            </div>\n        </div>\n        <div class="pagination_wrp pageNavigator"></div>\n    </div>\n    <div class="richvideo_list media_dialog" id="js_videomsg_list">\n        <div class="richvideo_col"><div class="inner"></div></div>&nbsp;\n        <div class="richvideo_col"><div class="inner"></div></div>\n    </div>\n    {/if}\n</div>\n';
});define("tpl/media/dialog/appmsg_layout.html.js", [], function(e, t, n) {
return '<div class="dialog_media_container">\n    {if tpl=="loading"}\n    <i class="icon32_loading light">loading...</i>\n    {else if tpl=="no-media"}\n    <div class="no_media_wrp">\n        <p class="tips">暂无素材</p>\n        <div class="appmsg_create">\n            {if type==10}\n            <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=10&lang=zh_CN&token={token}">\n                <i class="icon_appmsg_small"></i><strong> 新建单图文消息 </strong>\n            </a>\n            <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=10&isMul=1&lang=zh_CN&token={token}">\n                <i class="icon_appmsg_small"></i><strong>新建多图文消息</strong>\n            </a>\n            {else if type==11}\n            <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=11&lang=zh_CN&token={token}">\n                <i class="icon_shopmsg_small"></i><strong>新建单商品消息</strong>\n            </a>\n            <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=11&isMul=1&lang=zh_CN&token={token}">\n                <i class="icon_shopmsg_small"></i><strong>新建多商品消息</strong>\n            </a>\n            {/if}\n        </div>\n    </div>\n    <span class="vm_box"></span>\n    {else}\n    <div class="sub_title_bar in_dialog">\n        <div class="info">\n            <div class="appmsg_create">\n                {if type==10}\n                <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=10&lang=zh_CN&token={token}">\n                    <i class="icon_appmsg_small"></i><strong>新建单图文消息</strong>\n                </a>\n                <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=10&isMul=1&lang=zh_CN&token={token}">\n                    <i class="icon_appmsg_small multi"></i><strong>新建多图文消息</strong>\n                </a>\n                {else if type==11}\n                <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=11&lang=zh_CN&token={token}">\n                    <i class="icon_shopmsg_small"></i><strong>新建单商品消息</strong>\n                </a>\n                <a class="" target="_blank" href="/cgi-bin/appmsg?t=media/appmsg_edit&action=edit&type=11&isMul=1&lang=zh_CN&token={token}">\n                    <i class="icon_shopmsg_small multi"></i><strong>新建多商品消息</strong>\n                </a>\n                {/if}\n            </div>\n        </div>\n        <div class="pagination_wrp pageNavigator"></div>\n    </div>\n    <div class="js_appmsg_list appmsg_list media_dialog">\n        <div class="appmsg_col"><div class="inner"></div></div>&nbsp;\n        <div class="appmsg_col"><div class="inner"></div></div>\n    </div>\n    {/if}\n</div>\n';
});define("tpl/media/dialog/file_layout.html.js", [], function(e, t, n) {
return '<div class=\'dialog_media_container {if tpl=="no-media"}no_media{/if}\'>\n    {if tpl=="loading"}\n    <i class="icon32_loading light">loading...</i>\n    {else if tpl=="no-media"}\n    <div class="no_media_wrp">\n        <p class="tips">\n        暂无素材        </p>\n        <div class="upload_box">\n            <span class="upload_area"><a id="js_media_dialog_upload{upload_id}" class="btn btn_upload" data-gid="">上传</a></span>\n            <p class="upload_tips">\n            {if type=="2"}\n                大小: 不超过2M,&nbsp;&nbsp;&nbsp;&nbsp;格式: bmp, png, jpeg, jpg, gif            {/if}\n            {if type=="3"}\n                大小: 不超过5M,&nbsp;&nbsp;&nbsp;&nbsp;长度: 不超过60s,&nbsp;&nbsp;&nbsp;&nbsp;格式: mp3, wma, wav, amr            {/if}\n            {if type=="4"}\n                大小: 不超过20M,&nbsp;&nbsp;&nbsp;&nbsp;格式: rm, rmvb, wmv, avi, mpg, mpeg, mp4            {/if}\n            </p>\n        </div>\n    </div>\n    <span class="vm_box"></span>\n    {else}\n    <div class="sub_title_bar in_dialog">\n        <div class="info">\n            <div class="upload_box">\n                <span class="upload_area"><a id="js_media_dialog_upload{upload_id}" class="btn btn_upload" data-gid="">上传</a></span>&nbsp;\n                <p class="upload_tips">\n                    {if type=="2"}\n                        大小: 不超过2M,&nbsp;&nbsp;&nbsp;&nbsp;格式: bmp, png, jpeg, jpg, gif                    {/if}\n                    {if type=="3"}\n                        大小: 不超过5M,&nbsp;&nbsp;&nbsp;&nbsp;长度: 不超过60s,&nbsp;&nbsp;&nbsp;&nbsp;格式: mp3, wma, wav, amr                    {/if}\n                    {if type=="4"}\n                        大小: 不超过20M,&nbsp;&nbsp;&nbsp;&nbsp;格式: rm, rmvb, wmv, avi, mpg, mpeg, mp4                    {/if}\n                </p>\n            </div>&nbsp;\n        </div>\n        <div class="pagination_wrp pageNavigator"></div>\n    </div>\n    <ul class=\'dialog_media_list js_media_list\'></ul>\n    {/if}\n</div>\n';
});define("common/wx/time.js", [], function(e, t, n) {
try {
"use strict";
var r = function(e) {
return e += "", e.length >= 2 ? e : "0" + e;
}, i = [ "日", "一", "二", "三", "四", "五", "六" ];
function s(e) {
var t = new Date(e * 1e3), n = new Date, s = t.getTime(), o = n.getTime(), u = 864e5;
return o - s < u && n.getDate() == t.getDate() ? "%s:%s".sprintf(r(t.getHours()), r(t.getMinutes())) : o - s < 2 * u && (new Date(t * 1 + u)).getDate() == n.getDate() ? "昨天 %s:%s".sprintf(r(t.getHours()), r(t.getMinutes())) : o - s <= 6 * u ? "星期%s %s:%s".sprintf(i[t.getDay()], r(t.getHours()), r(t.getMinutes())) : t.getFullYear() == n.getFullYear() ? "%s月%s日".sprintf(r(t.getMonth() + 1), r(t.getDate())) : "%s年%s月%s日".sprintf(t.getFullYear(), r(t.getMonth() + 1), r(t.getDate()));
}
function o(e) {
var t = new Date(e * 1e3);
return "%s-%s-%s %s:%s:%s".sprintf(t.getFullYear(), r(t.getMonth() + 1), r(t.getDate()), r(t.getHours()), r(t.getMinutes()), r(t.getSeconds()));
}
return {
timeFormat: s,
getFullTime: o
};
} catch (u) {
wx.jslog({
src: "common/wx/time.js"
}, u);
}
});define("common/wx/pagebar.js", [ "xss/ui/pagination.css", "tpl/pagebar.html.js", "common/qq/Class.js", "common/wx/Tips.js" ], function(e, t, n) {
try {
"use strict";
var r, i, s, o, u, a, f, l = e("xss/ui/pagination.css"), c = e("tpl/pagebar.html.js"), h = e("common/qq/Class.js"), p = e("common/wx/Tips.js");
f = template.compile(c), r = t, i = {
first: "首页",
last: "末页",
prev: "上页",
next: "下页",
startPage: 1,
initShowPage: 1,
perPage: 10,
startRange: 1,
midRange: 3,
endRange: 1,
totalItemsNum: 0,
container: "",
callback: null,
isNavHide: !1,
isSimple: !0
};
var d = function(e, t, n) {
var r;
return r = e + (t - 1), r = r > n ? n : r, r;
}, v = function(e, t, n) {
var r;
return n % 2 === 0 ? r = t - (n / 2 - 1) : r = t - (n - 1) / 2, r = r < e ? e : r, r;
}, m = function(e, t, n) {
var r;
return t % 2 === 0 ? r = parseInt(e) + t / 2 : r = parseInt(e) + (t - 1) / 2, r = r > n ? n : r, r;
}, g = function(e, t, n) {
var r;
return r = t - (n - 1), r = r < e ? e : r, r;
}, y = function(e, t) {
if (t[e] && isNaN(t[e])) throw new Error("Invalid arguments: " + e + " should be a number");
}, b = function(e) {
y("perPage", e), y("totalItemsNum", e), y("startPage", e), y("startRange", e), y("midRange", e), y("endRange", e), y("initShowPage", e);
if (e.callback !== undefined && e.callback !== null && !$.isFunction(e.callback)) throw new Error("Invalid arguments: callback should be a function");
}, w = function(e, t, n) {
var r = e.container.find(".page_" + n);
if (typeof t == "string") {
var i = $(t);
i.length !== 0 && (r = i);
} else {
if (t !== !1) throw new Error("Invalid Paramter: '" + n + "' should be a string or false");
r.hide();
}
return r;
}, E = h.declare({
init: function(e) {
if (!e.totalItemsNum) return;
var t;
b(e), t = $.extend(!0, {}, i, e), this._init(t);
if (t.initShowPage < t.startPage) throw new Error("Invalid arguments: initShowPage should be larger than startPage");
if (t.initShowPage > t.endPage) throw new Error("Invalid arguments: initShowPage should be smaller than endPage");
this.paginate();
},
_init: function(e) {
var t, n, r, s, o, u;
this.currentPage = e.initShowPage, this._isNextButtonShow = !0, this._isPrevButtonShow = !0, this.uid = "wxPagebar_" + +(new Date), this.initEventCenter(), this.optionsForTemplate = {}, $.extend(this, e), this.container = $(e.container), this.optionsForTemplate.isSimple = e.isSimple, this.optionsForTemplate.firstButtonText = $(e.first).length === 0 ? e.first : i.first, this.optionsForTemplate.lastButtonText = $(e.last).length === 0 ? e.last : i.last, this.optionsForTemplate.nextButtonText = $(e.next).length === 0 ? e.next : i.next, this.optionsForTemplate.prevButtonText = $(e.prev).length === 0 ? e.prev : i.prev, this.optionsForTemplate.isNavHide = e.isNavHide, this.generatePages(parseInt(this.totalItemsNum)), this.gapForStartRange = this.container.find(".gap_prev"), this.gapForEndRange = this.container.find(".gap_next"), this.firstButton = w(this, e.first, "first"), this.lastButton = w(this, e.last, "last"), this.prevButton = w(this, e.prev, "prev"), this.nextButton = w(this, e.next, "next"), this.bindEvent();
},
initEventCenter: function() {
this.eventCenter = {
eventList: [],
bind: function(e, t) {
this.eventList[e] || (this.eventList[e] = []), this.eventList[e].push(t);
},
trigger: function(e) {
var t, n, r;
this.eventList[e] || (this.eventList[e] = []), t = this.eventList[e];
for (var i = 0; i < t.length; i++) {
r = Array.prototype.slice.call(arguments, 1);
if (t[i].apply(this, r) === !1) return !1;
}
},
unbind: function(e, t) {
if (!this.eventList) throw new Error("The eventList was undefined");
if (!this.eventList[e]) throw new Error("The event type " + e + " was not found");
if (t === undefined) this.eventList[e] = []; else {
var n = this.eventList[e], r = n.length;
for (var i = 0; i < r; i++) if (n[i] === t) {
n.splice(i, 1);
break;
}
}
}
};
},
generatePages: function(e) {
var t, n, r, i, s, o, u;
this.pageNum = Math.ceil(e / this.perPage), this.endPage = this.startPage + this.pageNum - 1, this.gapForStartRange = null, this.gapForEndRange = null, this.optionsForTemplate.startRange = [], this.optionsForTemplate.midRange = [], this.optionsForTemplate.endRange = [], n = d(this.startPage, this.startRange, this.endPage), r = v(this.startPage, this.currentPage, this.midRange), i = m(this.currentPage, this.midRange, this.endPage), s = g(this.startPage, this.endPage, this.endRange), n >= s && (s = n + 1);
for (t = this.startPage; t <= n; t += 1) this.optionsForTemplate.startRange.push(t);
for (var a = 0, t = r; a < this.midRange; a += 1, t += 1) this.optionsForTemplate.midRange.push(t);
for (t = s; t <= this.endPage; t += 1) this.optionsForTemplate.endRange.push(t);
this.optionsForTemplate.endPage = this.endPage, this.optionsForTemplate.initShowPage = this.initShowPage, o = f(this.optionsForTemplate), this.container.html(o), this.pages = this.container.find(".page_nav"), this.midPages = this.container.find(".js_mid"), this.labels = this.container.find(".page_num label"), this.container.find(".pagination").attr("id", this.uid);
},
paginate: function() {
var e, t, n, r, i, s, o, u, a, f, l;
if (this.isSimple === !0) for (var c = 0, h = this.labels.length; c < h; c++) c % 2 === 0 && $(this.labels[c]).html(this.currentPage); else {
n = d(this.startPage, this.startRange, this.endPage), o = v(this.startPage, this.currentPage, this.midRange), u = m(this.currentPage, this.midRange, this.endPage), a = g(this.startPage, this.endPage, this.endRange), n >= a && (a = n + 1), n >= o && (o = n + 1), u >= a && (u = a - 1), this.pages.show(), this.pages.removeClass("current"), l = parseInt(this.midPages.length / this.midRange);
for (var c = 0, h = l; c < h; c++) {
s = 0;
for (e = o; e <= u; e += 1) i = this.midRange * c + (e - o), f = $(this.midPages[i]), f.html(e), s += 1, e == this.currentPage && f.addClass("current");
i = this.midRange * c + s;
for (; s < this.midRange; s += 1) f = $(this.midPages[i]), f.hide(), f.removeClass("current"), i += 1;
}
for (var c = 0, h = this.pages.length; c <= h; c++) r = $(this.pages[c]), e = parseInt(r.html()), e === parseInt(this.currentPage) && r.addClass("current");
n + 1 < o ? this.gapForStartRange.show() : this.gapForStartRange.hide(), u + 1 < a ? this.gapForEndRange.show() : this.gapForEndRange.hide();
if (this.isNavHide) {
for (var c = this.startPage; c <= this.endPage; c += 1) this.pages.hide();
this.gapForStartRange.hide(), this.gapForEndRange.hide();
}
}
this.checkButtonShown();
},
destroy: function() {
this.container.off("click", "#" + this.uid + " a.page_nav"), this.container.off("click", "#" + this.uid + " a.page_go"), this.container.off("keydown", "#" + this.uid + " .goto_area input"), this.nextButton.off("click"), this.prevButton.off("click"), this.firstButton.off("click"), this.lastButton.off("click");
},
bindEvent: function() {
this.container.on("click", "#" + this.uid + " a.page_nav", this.proxy(function(e) {
var t = $(e.target);
if (t.hasClass("current")) return !1;
this.clickPage(parseInt(t.html()));
}, this)), this.nextButton.on("click", this.proxy(function(e) {
var t = $(e.target);
this.nextPage();
}, this)), this.prevButton.on("click", this.proxy(function(e) {
var t = $(e.target);
this.prevPage();
}, this)), this.firstButton.on("click", this.proxy(function(e) {
var t = $(e.target);
this.goFirstPage();
}, this)), this.lastButton.on("click", this.proxy(function(e) {
var t = $(e.target);
this.goLastPage();
}, this)), this.container.on("click", "#" + this.uid + " a.page_go", this.proxy(function(e) {
var t = $(e.target).prev();
this.goPage(t.val());
}, this)), this.container.on("keydown", "#" + this.uid + " .goto_area input", this.proxy(function(e) {
wx.isHotkey(e, "enter") && this.container.find("a.page_go").click();
}, this));
},
on: function(e, t) {
this.eventCenter.bind(e, this.proxy(t, this));
},
callbackFunc: function(e) {
var t = {
currentPage: this.currentPage,
perPage: this.perPage,
count: this.pageNum
};
if ($.isFunction(this.callback) && this.callback(t) === !1) return !1;
if (this.eventCenter.trigger(e, t) === !1) return !1;
this.paginate();
},
proxy: function(e, t) {
return function() {
var n = Array.prototype.slice.call(arguments, 0);
return e.apply(t, n);
};
},
nextPage: function() {
this.currentPage !== this.endPage && (this.currentPage++, this.callbackFunc("next") === !1 && this.currentPage--);
},
prevPage: function() {
this.currentPage !== this.startPage && (this.currentPage--, this.callbackFunc("prev") === !1 && this.currentPage++);
},
goFirstPage: function() {
var e = this.currentPage;
this.currentPage = this.startPage, this.callbackFunc("goFirst") === !1 && (this.currentPage = e);
},
goLastPage: function() {
var e = this.currentPage;
this.currentPage = this.endPage, this.callbackFunc("goLast") === !1 && (this.currentPage = e);
},
checkButtonShown: function() {
+this.currentPage === +this.startPage ? this.hidePrevButton() : this.showPrevButton(), +this.currentPage === +this.endPage ? this.hideNextButton() : this.showNextButton();
},
goPage: function(e) {
var t = this.currentPage;
if (e === this.currentPage) return !1;
if (isNaN(e)) return p.err("请输入正确的页码"), !1;
if (e === "") return !1;
if (e < this.startPage) return p.err("请输入正确的页码"), !1;
if (e > this.endPage) return p.err("请输入正确的页码"), !1;
this.currentPage = e, this.callbackFunc("go") === !1 && (this.currentPage = t);
},
clickPage: function(e) {
var t = this.currentPage;
isNaN(e) && (e = this.startPage), e < this.startPage ? this.currentPage = this.startPage : e > this.endPage ? this.currentPage = this.endPage : this.currentPage = e, this.callbackFunc("click") === !1 && (this.currentPage = t);
},
showNextButton: function() {
this.nextButton && this._isNextButtonShow === !1 && (this.nextButton.show(), this._isNextButtonShow = !0);
},
showPrevButton: function() {
this.prevButton && this._isPrevButtonShow === !1 && (this.prevButton.show(), this._isPrevButtonShow = !0);
},
hideNextButton: function() {
this.nextButton && this._isNextButtonShow === !0 && (this.nextButton.hide(), this._isNextButtonShow = !1);
},
hidePrevButton: function() {
this.prevButton && this._isPrevButtonShow === !0 && (this.prevButton.hide(), this._isPrevButtonShow = !1);
}
});
return t = E;
} catch (S) {
wx.jslog({
src: "common/wx/pagebar.js"
}, S);
}
});define("common/wx/checkbox.js", [ "tpl/checkbox.html.js" ], function(e, t, n) {
try {
"use strict";
var r = {
container: null,
label: "",
name: "",
type: "checkbox"
}, i = e("tpl/checkbox.html.js"), s = wx.T, o = 1, u = 1;
function a(e) {
var t = $(e);
t.each(function() {
var e = $(this).prop("checked"), t = $(this).parent();
e ? t.addClass("selected") : t.removeClass("selected");
});
}
function f() {
return "checkbox" + o++;
}
var l = function(e) {
this.options = $.extend(!0, {}, r, e), this.options.index = u++, this.$container = $(this.options.container), this.$dom = $(s(i, this.options)).appendTo(this.$container), this.$input = this.$dom.find("input"), this.$input.checkbox();
};
l.prototype = {
checked: function(e) {
return typeof e != "undefined" && (this.$input.prop("checked", e), a(this.$input)), this.$input.prop("checked");
}
}, $.fn.checkbox = function(e) {
var t, n, r = !1, i, s;
typeof e == "boolean" ? t = e : $.isPlainObject(e) ? (t = e.multi, n = e.onChanged) : typeof e == "string" && (r = !0, i = e, s = [].slice.call(arguments, 1)), typeof t == "undefined" && (t = this.is("input[type=checkbox]"));
var o = this, u = t ? "checkbox" : "radio", l = {
checked: function(e) {
return o.attr("checked", e), o.prop("checked", e), a(o), o;
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
label: function(e) {
return e && (o.parent().find(".lbl_content").text(e), o.attr("data-label", e)), o;
}
};
return r && typeof l[i] == "function" ? l[i].apply(l, s) : (this.addClass("frm_" + u).each(function() {
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
var r = f();
this.id = r;
}
t.attr("for", this.id);
}), a(this), this.parent().delegate("input[type=checkbox],input[type=radio]", "click", function(e) {
var r = $(this), i = r.prop("checked");
t ? (r.attr("checked", i), a(r)) : (o.attr("checked", !1), r.attr("checked", !0).prop("checked", !0), a(o)), typeof n == "function" && n(r);
}).addClass("frm_" + u + "_label"), l);
}, n.exports = l;
} catch (c) {
wx.jslog({
src: "common/wx/checkbox.js"
}, c);
}
});define("media/media_cgi.js", [ "common/wx/Tips.js", "common/wx/Cgi.js" ], function(e, t, n) {
try {
"use strict";
var r = e("common/wx/Tips.js"), i = e("common/wx/Cgi.js"), s = {
del: function(e, t) {
i.post({
mask: !1,
url: wx.url("/cgi-bin/operate_appmsg?sub=del&t=ajax-response"),
data: {
AppMsgId: e
},
error: function() {
r.err("删除失败");
}
}, function(e) {
e.ret == "0" ? (r.suc("删除成功"), t && t(e)) : r.err("删除失败");
});
},
save: function(e, t, n, s, o, u) {
var a = n.AppMsgId ? wx.url("/cgi-bin/operate_appmsg?t=ajax-response&sub=update&type=%s".sprintf(t)) : wx.url("/cgi-bin/operate_appmsg?t=ajax-response&sub=create&type=%s".sprintf(t));
n.ajax = 1, i.post({
url: a,
data: n,
dataType: "html",
error: function() {
r.err("保存失败"), o && o();
},
complete: u
}, function(t) {
t = $.parseJSON(t);
if (t.ret == "0") r.suc("保存成功"), s && s(t); else {
var n = !1;
switch (t.ret) {
case "64506":
r.err("保存失败,链接不合法");
break;
case "64507":
r.err("内容不能包含链接，请调整");
break;
case "64508":
r.err("查看原文链接可能具备安全风险，请检查");
break;
case "-99":
r.err("内容超出字数，请调整");
break;
case "10801":
r.err("标题含有敏感词，请重新编辑。"), n = t.msg;
break;
case "10802":
r.err("作者含有敏感词，请重新编辑。"), n = t.msg;
break;
case "10803":
r.err("敏感链接，请重新添加。"), n = t.msg;
break;
case "10804":
e ? r.err("正文含有敏感词，请重新编辑。") : r.err("摘要含有敏感词，请重新编辑。"), n = t.msg;
break;
case "-20000":
r.err("登录态超时，请重新登录。");
break;
default:
r.err("保存失败");
}
o && o(n);
}
});
},
preview: function(e, t, n, s, o) {
i.post({
url: wx.url("/cgi-bin/operate_appmsg?sub=preview&t=ajax-appmsg-preview&type=%s".sprintf(t)),
data: n,
dataType: "html",
error: function() {
r.err("发送失败，请稍后重试"), o && o();
}
}, function(t) {
t = $.parseJSON(t);
if (t.ret == "0") r.suc("发送预览成功，请留意你的手机微信"), s && s(t); else {
switch (t.ret) {
case "64501":
r.err("你输入是非法的微信号，请重新输入");
break;
case "64502":
r.err("你输入的微信号不存在，请重新输入");
break;
case "10700":
case "64503":
r.err("你输入的微信号不是你的好友");
break;
case "10703":
r.err("对方关闭了接收消息");
break;
case "10701":
r.err("用户已被加入黑名单，无法向其发送消息");
break;
case "10704":
case "10705":
r.err("该素材已被删除");
break;
case "64504":
r.err("保存图文消息发送错误，请稍后再试");
break;
case "64505":
r.err("发送预览失败，请稍后再试");
break;
case "64507":
r.err("内容不能包含链接，请调整");
break;
case "-99":
r.err("内容超出字数，请调整");
break;
case "62752":
r.err("可能含有具备安全风险的链接，请检查");
break;
case "10801":
r.err("标题含有敏感词，请重新编辑。"), t.antispam = !0;
break;
case "10802":
r.err("作者含有敏感词，请重新编辑。"), t.antispam = !0;
break;
case "10803":
r.err("敏感链接，请重新添加。"), t.antispam = !0;
break;
case "10804":
e ? r.err("正文含有敏感词，请重新编辑。") : r.err("摘要含有敏感词，请重新编辑。"), t.antispam = !0;
break;
case "-8":
case "-6":
t.ret = "-6", r.err("请输入验证码");
break;
default:
r.err("系统繁忙，请稍后重试");
}
o && o(t);
}
});
},
getList: function(e, t, n, s) {
i.get({
mask: !1,
url: wx.url("/cgi-bin/appmsg?type=%s&action=list&begin=%s&count=%s&f=json".sprintf(e, t, n)),
error: function() {
r.err("获取列表失败");
}
}, function(e) {
e && e.base_resp && e.base_resp.ret == 0 ? s && s(e.app_msg_info) : r.err("获取列表失败");
});
}
};
return {
rename: function(e, t, n) {
i.post({
mask: !1,
url: wx.url("/cgi-bin/modifyfile?oper=rename&t=ajax-response"),
data: {
fileid: e,
fileName: t
},
error: function() {
r.err("重命名失败");
}
}, function(e) {
if (e.ret == "0") r.suc("重命名成功"), n && n(e); else switch (e.ret) {
case "-2":
r.err("素材名不能包含空格");
break;
default:
r.err("重命名失败");
}
});
},
del: function(e, t) {
i.post({
mask: !1,
url: wx.url("/cgi-bin/modifyfile?oper=del&t=ajax-response"),
data: {
fileid: e
},
error: function() {
r.err("删除失败");
}
}, function(e) {
e.ret == "0" ? (r.suc("删除成功"), t && t(e)) : r.err("删除失败");
});
},
getList: function(e, t, n, s) {
i.get({
mask: !1,
url: wx.url("/cgi-bin/filepage?type=%s&begin=%s&count=%s&f=json".sprintf(e, t, n)),
error: function() {
r.err("获取列表失败");
}
}, function(e) {
e && e.base_resp && e.base_resp.ret == 0 ? s && s(e.page_info) : r.err("获取列表失败");
});
},
appmsg: s
};
} catch (o) {
wx.jslog({
src: "media/media_cgi.js"
}, o);
}
});define("common/wx/upload.js", [ "common/lib/uploadify.js", "xss/ui/upload.css", "common/wx/Tips.js", "tpl/uploader.html.js", "common/lib/swfobject.js", "common/wx/dialog.js", "common/wx/Cgi.js" ], function(e, t, n) {
try {
"use strict", e("common/lib/uploadify.js"), e("xss/ui/upload.css");
var r = wx.T, i = e("common/wx/Tips.js"), s = e("tpl/uploader.html.js"), o = e("common/lib/swfobject.js"), u = e("common/wx/dialog.js"), a = e("common/wx/Cgi.js"), f = wx.path.uploadify, l = wx.data.t, c = 0, h = 2, p = 3, d = 4, v = 5, m = 6, g = {
"0": {
type: c,
tip: "格式错误",
msg: "图片格式必须为以下格式：bmp, png, jpeg, jpg, gif<br/>语音格式必须为以下格式：mp3, wma, wav, amr<br/>视频格式必须为以下格式：rm, rmvb, wmv, avi, mpg, mpeg, mp4<br/>文档格式必须为以下格式：pdf"
},
"2": {
type: h,
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
type: p,
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
type: d,
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
type: v,
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
type: m,
tip: "格式错误",
msg: "图片格式必须为以下格式：bmp, png, jpeg, jpg, gif<br/>文档格式必须为以下格式：pdf",
ext: "bmp|png|jpeg|jpg|gif|pdf"
}
};
g[15] = g[4];
var y = function(e) {
var t = [ h, p, d, v ];
e = e.substr(1).toLowerCase();
for (var n = 0; n < t.length; ++n) {
var r = g[t[n]];
if (r && r.ext && r.ext.indexOf(e) != -1) return t[n];
}
return !1;
};
function b(e, t) {
if (t == 0) return b(e, h) || b(e, p) || b(e, d) || b(e, v);
var e = e.substr(1).toLowerCase(), n = g[t];
return n && n.ext.indexOf(e) != -1;
}
function w(e, t, n) {
var r = y(e);
return t <= g[r][n].limit;
}
var E = {
uploader: f,
queueID: "fileQueue",
cancelImg: "cancel.png",
folder: "uploads",
fileDataName: "file",
auto: !0,
multi: !0,
hideButton: !0
}, S = function(e, t) {
return e = e + "&ticket_id=" + wx.data.user_name + "&ticket=" + wx.data.ticket, function(n) {
function f(e) {
l.show().append(r(s, e));
}
var l = $('<ul class="upload_file_box"></ul>'), c = $(n.container);
n.type = n.type || 0;
if (!o.ua.pv[0]) return c.click(function() {
u.show({
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
n = $.extend(!0, {}, E, n);
var h = n.uploadlist$ ? $(n.uploadlist$) : c.parent(), p = {};
h.append(l.hide());
var d = $.extend(!0, {}, n, {
script: wx.url(e),
onSelectOnce: function() {
$.isEmptyObject(p) ? l.hide() : l.show(), p = {};
},
onQueueFull: function(e, t) {
return p = {}, l.html(""), u.show({
type: "warn",
msg: "警告|一次上传最多只能上传%s个文件".sprintf(t),
mask: !0,
buttons: [ {
text: "确定",
click: function() {
this.remove();
}
} ]
}), !1;
},
onSelect: function(e, r, s) {
var o = s.type, u = y(o), a = u && g[u].type || n.type, l = "KB", c = Math.round(s.size / 1024 * 100) * .01, h = c;
h > 1e3 && (h = Math.round(h * .001 * 100) * .01, l = "MB");
var d = {
id: r,
fileName: s.name,
size: h + l
};
if (!b(o, n.type)) return i.err(g[n.type + ""].msg), d.status = g[n.type + ""].tip, d.className = "error", !1;
if (!w(o, c, t)) return i.err(g[u + ""][t].msg), d.status = g[u + ""][t].tip, d.className = "error", !1;
d.status = "正在上传", p[r] = !0, f(d), n.onSelect && n.onSelect(e, r, s);
},
onProgress: function(e, t, r, i) {
var s = l.find("#uploadItem" + t).find(".progress_bar_thumb");
if (s.data("status") == "error") return;
s.css("width", i.percentage + "%"), n.onProgress && n.onProgress(e, t, r, i);
},
onComplete: function(e, t, r, s, o) {
var u = l.find("#uploadItem" + t).find(".upload_file_status");
if (u.data("status") == "error") return;
s = $.parseJSON(s);
if (s && s.base_resp) {
var f = s.base_resp.ret;
f == 0 ? (delete p[t], l.find("#uploadItem" + t).find(".upload_file_status").addClass("success").html("上传成功")) : f == -18 ? i.err("页面停留时间过久，请刷新页面后重试！") : f == -20 ? i.err("无法解释该图片，请使用另一图片或截图另存") : f == -13 ? i.err("上传文件过于频繁，请稍后再试") : f == -10 ? i.err("上传文件过大") : a.show(s);
}
n.onComplete && n.onComplete(e, t, r, s, o);
},
onAllComplete: function(e, t) {
setTimeout(function() {
l.fadeOut().html("");
}, 3e3), $.isEmptyObject(p) ? n.onAllComplete && n.onAllComplete(e, t) : i.err("上传文件发送出错，请刷新页面后重试！");
}
});
c.uploadify(d);
};
}, x = function(e) {
return function(t) {
return wx.url(e + "&ticket_id=" + wx.data.user_name + "&ticket=" + wx.data.ticket + "&id=" + t);
};
}, T = ~location.hostname.search(/^mp/) ? "https://mp.weixin.qq.com" : "";
return {
uploadBizFile: S(T + "/cgi-bin/filetransfer?action=upload_material&f=json", "bizfile"),
uploadTmpFile: S(T + "/cgi-bin/filetransfer?action=preview&f=json", "tmpfile"),
uploadCdnFile: S(T + "/cgi-bin/filetransfer?action=upload_cdn&f=json", "tmpfile"),
uploadVideoCdnFile: S(T + "/cgi-bin/filetransfer?action=upload_video_cdn&f=json", "tmpfile"),
tmpFileUrl: x(T + "/cgi-bin/filetransfer?action=preview"),
mediaFileUrl: x(T + "/cgi-bin/filetransfer?action=bizmedia"),
multimediaFileUrl: x(T + "/cgi-bin/filetransfer?action=multimedia")
};
} catch (N) {
wx.jslog({
src: "common/wx/upload.js"
}, N);
}
});define("common/wx/richEditor/emotion.js", [ "tpl/richEditor/emotion.html.js", "common/qq/Class.js" ], function(e, t, n) {
try {
"use strict";
var r = wx.T, i = {
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
var t, n, r = i.url, s = i.ext, o = i.data;
for (t in o) n = new RegExp("/" + o[t], "g"), e = e.replace(n, '<img src="{src}" alt="mo-{alt}"/>'.format({
src: r + t + s,
alt: o[t]
}));
return e;
}
}, s = e("tpl/richEditor/emotion.html.js"), o = e("common/qq/Class.js"), u = 24, a = 24, f = 15, l = 7, c = o.declare({
init: function(e) {
this.selector$ = e;
var t = [], n = i.url + "{k}" + i.ext, o = u, c = a, h = f, p = l;
for (var d = 0; d < p; ++d) for (var v = 0; v < h; ++v) {
var m = d * h + v;
t.push({
gifurl: n.format({
k: m
}),
title: i.data[m + ""],
bp: "background-position:" + -m * o + "px 0;"
});
}
this.selector$.html(r(s, {
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
c.emoji = i.replaceEmoji, n.exports = c;
} catch (h) {
wx.jslog({
src: "common/wx/richEditor/emotion.js"
}, h);
}
});define("common/wx/richEditor/wysiwyg.js", [ "common/wx/richEditor/editorRange.js", "common/qq/Class.js" ], function(e, t, n) {
try {
"use strict";
var r = /msie/.test(navigator.userAgent.toLowerCase()), i = "Wysiwyg", s = e("common/wx/richEditor/editorRange.js"), o = e("common/qq/Class.js"), u = o.declare({
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
var r = s.getSelection();
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
if (!r || !e) return;
var t = s.getSelection();
t.extend && (t.extend(e, e.length), t.collapseToEnd && t.collapseToEnd());
},
insertHTML: function(e) {
var t = this;
t.focus();
var n = s.getRange();
if (n.createContextualFragment) {
e += '<img style="width:1px;height:1px;">';
var i = n.createContextualFragment(e), o = i.lastChild;
n.deleteContents(), n.insertNode(i), n.setEndAfter(o), n.setStartAfter(o);
var u = s.getSelection();
u.removeAllRanges(), u.addRange(n), document.execCommand("Delete", !1, null);
} else r && />$/.test(e), n.pasteHTML && n.pasteHTML(e), n.collapse && n.collapse(!1), n.select();
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
}), e._dom$.after(e._editArea$).hide().data(i, e), e.init && e.init();
},
_saveRang: function() {
return this._lastRange = s.getRange(), this;
},
_resotreRange: function() {
var e = this._lastRange;
if (e) {
var t = s.getSelection();
if (t.addRange) t.removeAllRanges(), t.addRange(e); else {
var n = s.getRange();
n.setEndPoint && (n.setEndPoint("EndToEnd", e), n.setEndPoint("StartToStart", e)), n.select();
}
}
return this;
}
}), a = function(e, t) {
return e.data(i) || new u(e, t);
};
n.exports = a;
} catch (f) {
wx.jslog({
src: "common/wx/richEditor/wysiwyg.js"
}, f);
}
});define("tpl/richEditor/emotionEditor.html.js", [], function(e, t, n) {
return '<div class="emotion_editor">\n    <div class="edit_area js_editorArea"></div>\n    <div class="editor_toolbar">\n        {if !hideEmotion}\n        <a href="javascript:void(0);" class="icon_emotion emotion_switch js_switch">表情</a>\n        {/if}\n        {if !hideUpload}\n        <div class="upload_box">\n            <div class="upload_area">\n                <a id="emotionEditor_{gid}_" href="javascript:void(0);" class="js_upload upload_access">\n                    <i class="icon18_common upload_gray"></i>\n                    上传图片                </a>\n            </div>\n        </div>\n        {/if}\n        <p class="editor_tip js_editorTip"></p>\n        <div class="emotion_wrp js_emotionArea"></div>\n    </div>\n</div>\n\n';
});