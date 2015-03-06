<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.viewmodels.WebsiteViewModel"%>
<%@page import="com.zhike.viewmodels.ImgViewModel"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.viewmodels.ActionViewModel"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	WebsiteViewModel websiteViewModel = (WebsiteViewModel) request
			.getAttribute(Constat.WEBSITES);
	if (websiteViewModel == null)
		websiteViewModel = new WebsiteViewModel();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/snower.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/common.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/reset.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/home-13.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/menu-3.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/weixin/gw/css/site.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/wx_style_new.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/css/color3.css" media="all"/>
		
		<script type="text/javascript" src="<%=path%>/weixin/gw/js/maivl.js"></script>
		<script type="text/javascript" src="<%=path%>/js/swipe.js"></script>
		<script type="text/javascript" src="<%=path%>/weixin/gw/js/zepto.js"></script>
		
		<title>微信封-微信营销系统</title>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
        <meta name="Keywords" content="微信封、微信营销、微信代运营、微信定制开发、微信托管、微网站、微商城、微营销" />
        <meta name="Description" content="微信封，国内最大的微信公众智能服务平台，微信封八大微体系：微菜单、微官网、微会员、微活动、微商城、微推送、微服务、微统计，企业微营销必备。" />
        <!-- Mobile Devices Support @begin -->
        <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
        <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
        <meta content="no-cache" http-equiv="pragma">
        <meta content="0" http-equiv="expires">
        <meta content="telephone=no, address=no" name="format-detection">
        <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <!-- Mobile Devices Support @end -->
        <link rel="shortcut icon" href="http://stc.weimob.com/img/favicon.ico" />
        
<script type="text/javascript">var yyuc_jspath = "";</script>
    <script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/yyucadapter.js"></script>
<script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/3dskin.js"></script>
<script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/mu.js"></script>
<script type="text/javascript" src="<%=path%>/weixin/gw/tmp2_js/swipe.js"></script>

<link type="text/css" rel="stylesheet" href="<%=path%>/weixin/gw/tmp2_css/list.css" />
<script type="text/javascript">
$(function(){
	$('img[rrurl]').click(function(){
		location.href = $(this).attr('rrurl');
	});
	$('table').attr("cellpadding","0").attr("cellspacing","0");
	$('[fixed="fixed"]').css('position','fixed');
	resize();
	$(window).resize(function(){
		resize();
	});
	$('.add_qq_more').each(function(){
		var tourl = $.trim($(this).attr('toto'));
		if(tourl ==''){
			tourl = 'javascript:;'
		}
		if(tourl.indexOf(':')==-1){
			tourl = tourl+'.html';
		}
		if(tourl !=''){
			if(tourl.indexOf('tel')!==0){
				if(tourl.indexOf('?')>0){
					tourl = tourl + '&wxid=#mp.weixin.qq.com';
				}else{
					tourl = tourl + '#mp.weixin.qq.com';
				}
				
			}
			if($(this).is('a')){
				$(this).attr('href',tourl);
			}else if($(this).find('a').size()>0){
				$(this).find('a').each(function(){
					if($.trim($(this).attr('href')).indexOf('http')==-1){
						$(this).attr('href',tourl);
					}
				});
			}else{
				$(this).wrap('<a href="'+tourl+'"></a>');
			}			
		}
	});
	if($('.mainpicarea').is('div')){
		var tplth = $('.mainpicarea').find('td').length;
		$('#ppoool').append('<li class="on" style="margin-left:5px;"></li>');
		for(var i=1;i<tplth;i++){
			$('#ppoool').append('<li style="margin-left:5px;"></li>');
		}
		$('.mainpicarea').qswipe({ stime:3600});
		$('.mainpicarea').on('dragok',function(e,msg){
			if((msg+'').indexOf('.')>0){
				msg = 0;
			}
			$('#ppoool').find('li').removeClass('on');
			$('#ppoool').find('li').eq(msg).addClass('on');
		});
		
	}
	

});
function resize(){
	var ww = $(window).width();
	$('.picshowtop,.mainpicshow').css('width',ww+'px');
	$('#tpdhtr').children('td').css('width',ww+'px');
	$('#tpdhtr').children('td').find('img').css('width',ww+'px');
	$('img').each(function(){
		var pw = $(this).parent().width();
		var ppw = $(this).parent().parent().width();
		if($(this).width()>ppw){
			$(this).width(ppw);
		}
	});
}
</script>
<style type="text/css">

.mainpicshow{
height: 0px;
overflow: hidden;
}
.mainpicarea{
height: 0px;
}
.mainpicarea table,.mainpicarea tr,.mainpicarea td{
border: none;
border-image-width:0px;
}
.mainpicarea img{
height: 0px;
}
#ppoool{
    height:20px;
    position: relative;
    z-index:10;
    margin-top:0px;
    text-align:right;
    padding-right:15px;
    background-color:rgba(0,0,0,0.3);
}
#ppoool>li{
    display:inline-block;
    margin:5px 0;
    width:8px;
    height:8px;
    background-color:#757575;
    border-radius: 8px;
}
#ppoool>li.on{
    background-color:#ffffff;
}
#playbox{
    display:inline-block;
    width:35px;
    height:35px;
    background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAuCAYAAACf1cHhAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjMyRjE2MDNEMUFBQjExRTNCMjVDODE5ODkwMkRFNjdBIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjMyRjE2MDNFMUFBQjExRTNCMjVDODE5ODkwMkRFNjdBIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MzJGMTYwM0IxQUFCMTFFM0IyNUM4MTk4OTAyREU2N0EiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MzJGMTYwM0MxQUFCMTFFM0IyNUM4MTk4OTAyREU2N0EiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz54acelAAADhUlEQVR42tRaPYgTQRTe2wtWikEQ7LLKFaJNbG2yWlmutcVtwEYbEwQRm9w1WmkuIHaStDbGRhSO43KVpXeCVuItVlbeioVwIPE9fcsN42QzOzs/mw8+juMumflm3nzvzdtdmk6nnmU0gfUZf9sFprYmUjP8/QEwArZIdCDxmZQWYQc4IRrBkoGdx12NgaskuCxwMV4BB7Qo+oDiNbEOXAMeTM1hGxjqmrOunV8D3sk5y7qBR6ENTFyGPYb1UFN4q6AL3HAhPibhroFRcF0lS6iKH5L4IqaFk9yjnylnXgFDzAyhZGZgU2S7sCEqGMWwoEFFiobUBPYLGOgBfUZ6jKIT6hcQHTjIIvsmxcsMHmpMn/wijCXmIL3ofkFnzwMWIpcMVmQpGVt7jrlJG58u8SNVx1UAjnUlZ6xIt+EFOWeubyjMZQxxe4bxBTrPPD/IkEwodCScZ0dguFrERypf7ID8BkU6avt9puBIydQSr3rAOb5n7hc4x7NlDC/iKq1BRYVnYgeCXoKy4Y05I6lXNOTZWoA15rFqnudXbmSzxVSiFhjlRK502PMhM/AWAwPZvJ8nvsXdmpIFEZ9wt7uWiviQuzMvEiYzdEh1bwOuJbWjMoOfD0Jtak48LLT+ON8O01ANRJHr54jnmwVlcJJoC7tz9OTufFPQskro5hZzUTGS8AMsPk4De8CnwENNRU0scHqRwzdFR3eW+Ab3e48+jCL7M7q3ecgqrcfAW8B7wHFJ8THNi9/xVcE5b8gaXp85LyawAnwJfAO8YOkYdESb5gvCs2NpQteAH4DPLPlBh/QJxbvovy/TMfhCP5cNj9dk2+0+kwtjzx1OUQRgJFw1PFaceYLPGFoVgB6wRZ6wYnCcXiY+yKuCHAH7gR+Bj4DHDXw/6g38CgrPcAx43yvxLG7eAvhescdCtvEd+MJU58evqOjfwCfAc8BNU4PUKij8LfAu8JPpgWoVuqd/pkLkta17v1+Bu/oP2umLFoX/vfP7tPOuFuA58Dyd70ObwrOdR3Qti37n/ev/3wR+c7DoXbbCw6vgusHBsl39CrwBvOzpfq1MHuvZ2DXuTt4wVOPfBp6h8P7l0F9GbO+BT3X47HuPat+65rPtEint+Ma8PI//gO0qfK8uKlMBFmw6Gkln3tHbm/+ldJkHlQExe4OKvwtYfVmYQV3Qf5h4Ry82J/NqmD8CDACVdRJQsKrlcgAAAABJRU5ErkJggg==') no-repeat center center;
    background-size:100% auto;
    position:fixed;
    z-index:100;
    left:15px;
    top:20px;
    z-index:9999999;
}
#playbox.on{
    background-image:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAuCAYAAACf1cHhAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjM4RjBDQUE1MUFBQjExRTM5N0Q0QThGNzY0ODlENjAxIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjM4RjBDQUE2MUFBQjExRTM5N0Q0QThGNzY0ODlENjAxIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MzhGMENBQTMxQUFCMTFFMzk3RDRBOEY3NjQ4OUQ2MDEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MzhGMENBQTQxQUFCMTFFMzk3RDRBOEY3NjQ4OUQ2MDEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7xFPruAAAC70lEQVR42uRaPW7bMBRWhI4ZjF4gzJxFBbpbvYFyAstL1zhjJydTR0cnsHoC5waxD1AkAbpbyNSp0dzF5QOeGuKFkkialCzzAz5EViyTH38+Pj7xZLfbBR0j4hzV/O+Js+yqIh8c/z7jTDjHKJopPFNiI2w410gnOHHQ89CrKecEBe8LaIx7zgwbxR5AvCWOOG84X3fu8MAZ26qzrZ6/4bxqmMu2AVNhyln0OexhWC8tDW8TXHPe9SE+ReF9A0bBpckqYSp+ieJ1TAsq+Yx/S2JeTCCsDLHiyiAukVNtQzQwiqWmQSWGhhRxLjQM9BWfUS5Dt0ILDdGsh1Vk61K8SuGxxeWTNsJKoQ7KjR5qOnsTIBD55DAiK9HYpi3mpmx8tsTnpo5rACjrS0NZiW3DYw1zbuFomKsY4kON8TGbc54WskQTinsSTjmTGK4V8YnJD/dA2kGJjdh+KwQcJZpaERweoI6Pwv4C6ni+j+ElJNLKDlR4JTaT5BKMDW9FjGR0oENejAVEY16ZrvO05fIuU0x7xAJ5w8hVHvZ0yGTBMJCprvtN4sdk11QMRHxBdndjE/Ex2TMPCesaHUriGUlJbQYmfkMSqkxXPE0WDAlPLXoa8/aRJGVV4M4tJaMib/ODix9beRqp5vu/JueqQU0qcXqZw0eyqVsn/ox8nuPDIHJRk71tw0fO73j9h/Nby32VHOJc0uMTyTw/U+15EDdzMBRPOb/i9Ysgsu6+TcyEbG/tnH90JPwQMEN9UvF95t+7QiSm20NhLUwDP5BWnhAKhuYT5pV41hQFHSlALws9FP6/AcJA77XQMYGFgcfwXnzhqfYiHOBe3dqev+p53xpgXfX8u4DfA1yLhgdbwVtPhN9WyY6Q7MnzIxeei7kHup+Hd9/PGPvaPlb2m/MzXv9VuG8TJfb4XVsyA74A6So4V5dYjABB2E+N+1aWs+Dt9Oa7JV3lRSVDVieo6F6g08PCAkaS/MM6eDvYXLTFMP8EGAB6tfmFGdtWtgAAAABJRU5ErkJggg==');
}
</style>
  <script type="text/javascript">
        window.addEventListener("DOMContentLoaded", function(){
        	playbox.init("playbox");
        }, false);
 </script>
</head>
<body>
<header>
    <div class="snower">
	<script type="text/javascript">
	var urls = new Array();
	urls.push('<%=websiteViewModel.getBgani() %>');
	</script>
    <script type="text/javascript" src="<%=path%>/weixin/gw/js/snower.js"></script>
    </div>
</header>
<div class="body" style="padding-bottom:52px;">
	<!--
	幻灯片管理
	-->
	<div style="-webkit-transform:translate3d(0,0,0);">
		<div id="banner_box" class="box_swipe" >
			<ul>
				<%
					List<ImgViewModel> imgViewModels = websiteViewModel.getThumbs();
					if (imgViewModels == null)
						imgViewModels = new ArrayList<ImgViewModel>();
				%>
				<%
					for (ImgViewModel imgViewModel : imgViewModels) {
				%>
				<li>
					<a href="<%=imgViewModel.getLink() %>">
						<img src="<%=imgViewModel.getImg()%>" alt="<%=imgViewModel.getTitle()%>" style="width: 100%;" /> </a>
				</li>
				<%
					}
				%>
			</ul>
			<ol>
				<%
					for(int i = 0 ; i < imgViewModels.size() ; i++){
				%>
					<li class="<%=(i == 0 ? "on" : "") %>"></li>
				<%
					}
				%>
			</ol>
		</div>
	</div>
		<script>
		$(function(){
			new Swipe(document.getElementById('banner_box'), {
				speed:500,
				auto:2000,
				callback: function(){
					var lis = $(this.element).next("ol").children();
					lis.removeClass("on").eq(this.index).addClass("on");
				}
			});
		});
	</script>
<div class="mainshowtop">
<div id="mainmenu80">
        <ul>
        	<%
				List<ActionViewModel> mainActionEvents = websiteViewModel.getMains();
				if(mainActionEvents == null) mainActionEvents = new ArrayList<ActionViewModel>();
				for(ActionViewModel mainActionEvent : mainActionEvents){
			%>
            <li class="add_qq_more">
                <a href="<%=mainActionEvent.getLink() %>">
                    <!-- <i class="icon80"><img src="<%=mainActionEvent.getIcon() %>" class="m_pic"></i> -->
                    <i class="icon80 <%=mainActionEvent.getIcon() %>"></i>
                    <p class="title80 m_text"><%=mainActionEvent.getTitle() %></p>
                </a>
            </li>
            <%} %>
            <div class="clear" style="clear:both;"></div>
        </ul>
    </div>
</div>

<div id="footer">Copyright © 2012 - 2013 微信封<br/><a href="http://wwww.vxinfeng.com" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a></div>


	<section>
		<div class="plug-div">
			<div id="plug-phone" class="plug-phone">
				<input type="checkbox" id="plug-btn" class="plug-menu" style="background-color:#B70000;">
					<%
						List<ActionViewModel> navActionEvents = websiteViewModel.getNavs();
						if(navActionEvents == null) navActionEvents = new ArrayList<ActionViewModel>();
					%>
					<%
						for(ActionViewModel navActionEvent : navActionEvents){
					%>
				<div style="background-color:#B70000; " class="">
					<a href="<%=navActionEvent.getLink() %>" class="<%=navActionEvent.getIcon() %> "></a>
				</div>
					<%
						}
					%>
			</div>
		</div>
	</section>
	<script>
		window.addEventListener("DOMContentLoaded", function(){
			btn = document.getElementById("plug-btn");
			btn.onclick = function(){
				var divs = document.getElementById("plug-phone").querySelectorAll("div");
				var className = this.checked?"on":"";
				for(i = 0;i<divs.length; i++){
					divs[i].className = className;
				}
				document.getElementById("plug-wrap").style.display = "on" == className? "block":"none";
			}
		}, false);
	</script>
</div>
</body>
<script type="text/javascript">
</script>
<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/gw/tmp2_css/mu.css" media="all" />
</html>