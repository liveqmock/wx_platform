<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.GuaguakaBean"%>
<%@page import="com.zhike.finals.Constat"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<%
	GuaguakaBean guaguakaBean = (GuaguakaBean)request.getSession().getAttribute("guaguakaBean");
	if(guaguakaBean!=null){
		%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 

    <title><%=guaguakaBean.getTitle() %></title>
    
    <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
     <script type="text/javascript" src="<%=path%>/js/service/wScratchPad.js"></script>  
    <link rel="stylesheet" href="<%=path%>/css/service/fl.normal.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/service/skin.orange.css" type="text/css"></link></head>
   

</head>
<body >
		<div class="main">
			<div class="content">
				<section class="turntable-lottery">
				<form id="service">
					<div  class="cover">
						<div id="outer-cont">
							<div id="outer">
								<img src="<%=path%>/img/service/guaguaka_bgnone.jpg">
							</div>
						</div>
						<div id="inner-cont" style="margin: 20px auto;">
							<div id="inner" >
								 <div id="wScratchPad" ></div>
							</div>
						</div>
					</div>
					<div class="content">
						<div class="title">
							活动规则：
						</div>
						<p class="desc">
							每个帐号每天有<%=guaguakaBean.getEverydaytime()%>次抽奖机会<br>总计可以抽奖<%=guaguakaBean.getTotaltime()%>次
						</p>
					</div>
					<div class="content">
						<div class="title">
							活动时间：
						</div>
						<p class="desc">
							开始时间：<%=guaguakaBean.getStarttime() %> 
							<br>
							结束时间：<%=guaguakaBean.getEndtime() %> 
						</p>
					</div>
					<div class="content">
						<div class="title">
							奖项设置：
						</div>
						<%
						if(guaguakaBean.getOne_number()!=0){
							%>
							<p class="desc">
							一等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getOne_number() %>名）<%}%>：<%=guaguakaBean.getOne_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getTwo_number()!=0){
							%>
							<p class="desc">
							二等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getTwo_number() %>名）<%}%>：<%=guaguakaBean.getTwo_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getThree_number()!=0){
							%>
							<p class="desc">
							三等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getThree_number() %>名）<%}%>：<%=guaguakaBean.getThree_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getFour_number()!=0){
							%>
							<p class="desc">
							四等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getFour_number() %>名）<%}%>：<%=guaguakaBean.getFour_prize() %>
							</p>
							<%
						}
						%>
						<%
						if(guaguakaBean.getFive_number()!=0){
							%>
							<p class="desc">
							五等奖<%if(guaguakaBean.getIsdisplay().equals("1")){%>（<%=guaguakaBean.getFive_number() %>名）<%}%>：<%=guaguakaBean.getFive_prize() %>
							</p>
							<%
						}
						%>																							
					</div>
					<div class="content">
						<div class="title">
							其他说明：
						</div>
						<p class="desc">
							<%=guaguakaBean.getExplain_service() %>
						</p>
					</div>
				<div style="height: 20px;">
				</div>
				<input type="hidden" name="guaguakaBean.openid" value="<%=guaguakaBean.getOpenid() %>"/>
				<input type="hidden" name="guaguakaBean.id" value="<%=guaguakaBean.getId() %>"/>
				</form>
				</section>
			
			</div>
			<footer class="footer">
			<section class="f-content center">
			<span class="back-top left"> <a
				href="http://www.vxinfeng.com">本页面由微信封 vxinfeng.com支持</a> </span>
			<span class="back-top right"> <a class="ml10 fl_report"
				data-url="http://fl.act.qq.com/report/report/reason">举报</a> </span>
			</section>
			</footer>
		</div>	
</body>
		<%
	}
	%>
        <script type="text/javascript">
            var sp = $("#wScratchPad").wScratchPad({
                scratchDown: function(e, percent){;$("#percent_scratched").html(percent)},
                scratchMove: function(e, percent){;$("#percent_scratched").html(percent)},
                scratchUp: function(e, percent){updateInfo();$("#percent_scratched").html(percent)}
            });
			var temp = true;
			function updateInfo(){
				if(temp){
					temp=false;
	    			var params = $("form[id=service]").serialize();
	    			$.ajax({
	    				async : false,
	    				cache : false,
	    				type : 'POST',
	    				data : params,
	    				url : 'guaguakawx!updateInfo.action', //请求的action路径
	    				error : function() {//请求失败处理函数);
	    				},
	    				success : function(data) { //请求成功后处理函数
	    					if(data=='success'){
	    						var t= setTimeout("askReload(1)",2000);
		    				}else{
		    					var t= setTimeout("askReload(2)",2000);
				    			}
	    				}
	    			});	
					}
				}

			function askReload(type){
				if(type==1){
					alert('恭喜您中奖了!');
					location.reload();
				}else{
					if(confirm("很可惜您未中奖,再试一次?")){
						location.reload();
					}
				}

			}
            $(document).ready(function ready(){
            	//查询抽奖次数权限
            	requeryInfo();
                }
            )
            //隐藏刮刮卡DIV
            function disable(){
            	 $('#inner-cont').hide();
             }

          //查询抽奖次数权限
            function requeryInfo(){
    			var params = $("form[id=service]").serialize();
    			$.ajax({
    				async : false,
    				cache : false,
    				type : 'POST',
    				data : params,
    				url : 'guaguakawx!requeryInfo.action', //请求的action路径
    				error : function() {//请求失败处理函数);
    				},
    				success : function(data) { //请求成功后处理函数
    					if(data=='success'){
        					//查询中奖信息
        					requeryWinInfo();
    					}else{
							disable();
							alert(data);
        					}
    				}
    			});	
             }
            
          	//查询中奖信息
            function requeryWinInfo(){
    			var params = $("form[id=service]").serialize();
    			$.ajax({
    				async : false,
    				cache : false,
    				type : 'POST',
    				data : params,
    				url : 'guaguakawx!requeryWinInfo.action', //请求的action路径
    				error : function() {//请求失败处理函数);
    				},
    				success : function(data) { //请求成功后处理函数
    					set_image_bg(data);
    				}
    			});	                
            }

            
            function set_image_bg(data) {
             var underImgUrl= '<%=path%>/img/service/guaguaka_slide'+data+'.png';
             var overImgUrl = '<%=path%>/img/service/guaguaka_over.jpg';
             sp.wScratchPad('image', underImgUrl);
             sp.wScratchPad('image2', overImgUrl);
           	 sp.wScratchPad('reset');
          	 }	
               
        </script>
        
        <script>

        	<%
        	String strBackUrl = (String)request.getSession().getAttribute(Constat.STRBACKURL);
        	%>
			document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		    var mainTitle="<%=guaguakaBean.getTitle() %>";
		    var mainURL="<%=strBackUrl%>";
			var mainDesc="<%=guaguakaBean.getDesc_service() %>";
			var mainImgUrl= "<%=request.getScheme()%>://<%=request.getServerName()%><%=guaguakaBean.getImg()%>";
			
			window.shareData = {
				"imgUrl": mainImgUrl,
				"timeLineLink": mainURL,//发送朋友圈链接
				"sendFriendLink": mainURL,//发送好友链接
				"tTitle": mainTitle,//发送朋友圈标题
				"tContent": mainDesc,//发送朋友圈内容
				"fTitle": mainTitle,//发送好友标题
				"fContent": mainDesc,//发送好友内容
			};

			// 发送给好友
			WeixinJSBridge.on('menu:share:appmessage', function (argv) {
				WeixinJSBridge.invoke('sendAppMessage', {
					"img_url": window.shareData.imgUrl,
					"img_width": "640",
					"img_height": "640",
					"link": window.shareData.sendFriendLink,
					"desc": window.shareData.fContent,
					"title": window.shareData.fTitle
				}, function (res) {
					_report('send_msg', res.err_msg);
				})
			});

			// 分享到朋友圈
			WeixinJSBridge.on('menu:share:timeline', function (argv) {
				WeixinJSBridge.invoke('shareTimeline', {
					"img_url": window.shareData.imgUrl,
					"img_width": "640",
					"img_height": "640",
					"link": window.shareData.timeLineLink,
					"desc": window.shareData.tContent,
					"title": mainDesc
				}, function (res) {
					_report('timeline', res.err_msg);
				});
			});

		}, false)
	</script>
</html>