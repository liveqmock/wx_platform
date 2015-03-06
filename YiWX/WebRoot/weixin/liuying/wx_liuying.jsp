<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LiuyingBean"%>
<%@page import="com.wechat.model.WxConfig"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html >
<head>
<%
	LiuyingBean liuyingBean = (LiuyingBean)request.getAttribute("liuyingBean");
%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=liuyingBean.getTitle() %></title>
    <meta content="no-cache,must-revalidate" http-equiv="Cache-Control" />
    <meta content="no-cache" http-equiv="pragma" />
    <!--<meta content="telephone=no, address=no" name="format-detection">-->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <!--<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0,maxmum-scale=1.0" name="viewport">-->
    <script type="text/javascript">
        var phoneWidth = parseInt(window.screen.width);
        var phoneScale = phoneWidth / 640;
        var ua = navigator.userAgent;
        if (/Android (\d+\.\d+)/.test(ua)) {
            var version = parseFloat(RegExp.$1);
            // andriod 2.3
            if (version > 2.3) {
                document.write('<meta name="viewport" content="width=640, minimum-scale = ' + phoneScale + ', maximum-scale = ' + phoneScale + ', target-densitydpi=device-dpi">');
                // andriod 2.3以上
            } else {
                document.write('<meta name="viewport" content="width=640, target-densitydpi=device-dpi">');
            }
            // 其他系统
        } else {
            document.write('<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">');
        }
    </script>

    <link rel='stylesheet' href='<%=path%>/weixin/liuying/css/common.css' media='screen' />
    <link rel='stylesheet' href='<%=path%>/weixin/liuying/css/style.css' media='screen' />
    <script type="text/javascript" src="<%=path%>/weixin/liuying/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/weixin/liuying/js/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="<%=path%>/weixin/liuying/js/blocksit.js"></script>
     <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<body>
    <div class="body">
        <div class="head"><%=liuyingBean.getTitle() %></div>
        <!--没有数据显示-->
        <div id="no-data" style="display:none;">
            <img style="width:100%; margin-top:150px;" src="<%=path%>/weixin/liuying/img/null.gif" />
        </div>
        <!--有数据显示-->
        <div id="has-data">
            <div class="nav">
                <img src="<%=path%>/weixin/liuying/img/ico_time.jpg" />
            </div>
            <div style="position:relative; margin-bottom:15px;">
                <div id="container">
                
                    
                    
                </div>
                <div id="split"></div>
            </div>
            <div class="load" ><img id="hadmore" src="<%=path%>/weixin/liuying/img/loding.gif" /><span id="nomore">没有更多了</span></div>
        </div>
        <div class="footer" onclick="liuyan(<%=liuyingBean.getId() %>)"> <img width="35px" src="<%=path%>/weixin/liuying/img/fabiao.png"/>我要留言</div>
    </div>
    <form id="search_form" >
    <!--分页 -->
   	 <input  type="hidden" id="toPage" name="pageBean.currentPage" value="1"/>
    	<input type="hidden" name="liuyingInfoBean.service_id" value="<%=liuyingBean.getId() %>"/>
		<jsp:include page="${path}/paginator.jsp"></jsp:include>
	</form>		
<script type="text/javascript">

function LoadImgInfo(){

	$('#container').BlocksIt({
        numOfCol: 2,
        offsetX: 5,
        offsetY: 5
    });
	
};
$(function(){

    
	
    function loadImg() {
        $("img.lazy").lazyload({
            load: function () {
                $('#container').BlocksIt({
                    numOfCol: 2,
                    offsetX: 5,
                    offsetY: 5
                });
            }
        });
    };
    loadImg();
	
    $(window).scroll(function () {
			// 当滚动到最底部以上50像素时， 加载新内容
		if ($(document).height() - $(this).scrollTop() - $(this).height()<100){
			getMore();
		}
	});

	//window resize
	var currentWidth = 640;
	$(window).resize(function () {
		var winWidth = $(window).width();
		var conWidth;
		$('#container').width(conWidth);
		$('#container').BlocksIt({
			numOfCol: 2,
			offsetX: 5,
			offsetY: 5
		});
		
	});

	requeryPage(1);
});



    </script>
    <script type="text/javascript">
	//分页控件
    var action = "liuyingwx";
	//算总数
	function requeryPage(page){
		//openLoading();
		$('#toPage').val(page);
		//$('#getMore').html('加载中');
		var params = $("form[id=search_form]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : action+'!requeryPage.action', //请求的action路径
			error : function() {//请求失败处理函数);
				alert('查询失败');
				//closeLoading();
			},
			success : function(data) { //请求成功后处理函数
				
				var josnStr = eval('(' + data + ')');
				var currentPage_paginator = josnStr["currentPage_paginator"];
				var totalPages_paginator = josnStr["totalPages_paginator"];
				var numberOfPages_paginator = josnStr["numberOfPages_paginator"];
					
				if(totalPages_paginator=='0'){
					//closeLoading();
					//没有结果
					$('#no-data').css('display','block');
					$('#has-data').css('display','none');
					tempLoading =false;
				}else{
					$('#currentPage_paginator').val(currentPage_paginator);
					$('#totalPages_paginator').val(totalPages_paginator);
					$('#numberOfPages_paginator').val(numberOfPages_paginator);
					requeryResult();	
				}
			}
		});	
		}
	
	//替换数据
	function requeryResult(){
		var params = $("form[id=search_form]").serialize();
		$.ajax({
			async : true,
			cache : false,
			type : 'POST',
			data : params,
			url : action+'!requeryResult.action', //请求的action路径
			error : function() {//请求失败处理函数);
				//closeLoading();
				alert('查询失败');
			},
			success : function(data) { //请求成功后处理函数
				//closeLoading();
				$('#container').append(data);//这一行为追加数据代码
				$('#container').BlocksIt({
					numOfCol:2,
					offsetX: 5,
					offsetY: 5
				});
			
				tempLoading = true;
				//$('#getMore').html('点击查看更多');
				//$('#getMore').css('display','');	
				
				if($('#currentPage_paginator').val()==$('#totalPages_paginator').val()){
					$('#hadmore').css('display','none');
					$('#nomore').css('display','block');	
					tempLoading =false;
					//$('#getMore').css('background','gray');	
					//$('#getMore').html('没有更多了');
					}	
				
			}
		});	
	}

	function openLoading(){
		$('#load').css('display','block');
	}

	function closeLoading(){
		$('#load').css('display','none');
	}

	var tempLoading = true;
	function getMore(){
		var currentPage = $('#currentPage_paginator').val();
		if(tempLoading){
			currentPage++;
			requeryPage(currentPage);
			tempLoading = false;
			}
	}
	
	//分页控件结束
</script>
<script type="text/javascript">
function liuyan(id){
	var url = '<%=path%>/liuyingwx!add.action?serviceid='+id;
  	window.location.href = url;
}

<%
WxConfig wxConfig =   (WxConfig) request.getAttribute("wcConfig");
%>
wx.config({
    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
    appId: '<%=wxConfig.getAppId()%>', // 必填，公众号的唯一标识
    timestamp: '<%=wxConfig.getTimestamp()%>', // 必填，生成签名的时间戳
    nonceStr: '<%=wxConfig.getNonceStr()%>', // 必填，生成签名的随机串
    signature: '<%=wxConfig.getSignature()%>',// 必填，签名，见附录1
    jsApiList: ["previewImage", "onMenuShareTimeline", "onMenuShareAppMessage"] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
});

var curWwwPath=window.document.location.href;
var pathName=window.document.location.pathname;
var pos=curWwwPath.indexOf(pathName);
var localhostPaht=curWwwPath.substring(0,pos);

wx.ready(function () {
	var share_title = '<%=liuyingBean.getTitle()%>';
	var share_desc = '<%=liuyingBean.getDesc_service()%>';
	var share_link = location.href.split('#')[0];
	var share_imgUrl = localhostPaht+'<%=liuyingBean.getImg()%>';
	
	wx.onMenuShareTimeline({
	    title: share_title, // 分享标题
	    link: share_link, // 分享链接
	    imgUrl: share_imgUrl, // 分享图标
	    success: function () { 
	        // 用户确认分享后执行的回调函数
	    },
	    cancel: function () { 
	        // 用户取消分享后执行的回调函数
	    }
	});

	
	wx.onMenuShareAppMessage({
	    title: share_title, // 分享标题
	    desc: share_desc, // 分享描述
	    link: share_link, // 分享链接
	    imgUrl: share_imgUrl, // 分享图标
	    type: '', // 分享类型,music、video或link，不填默认为link
	    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
	    success: function () { 
	        // 用户确认分享后执行的回调函数
	    },
	    cancel: function () { 
	        // 用户取消分享后执行的回调函数
	    }
	});
    
});

function previewImage(inurl){
		
		var url = localhostPaht+inurl;
		wx.previewImage({
		      current: url,
		      urls: [
		        url
		      ]
		    });
	}

</script>
</body>
</html>