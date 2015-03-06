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
		%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 

    <title><%=guaguakaBean.getTitle() %></title>
    
   
    <link rel="stylesheet" href="<%=path%>/css/service/fl.normal.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/service/skin.orange.css" type="text/css"></link></head>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=path%>/js/service/jquery.easing.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/service/jQueryRotate.2.2.js"></script>   

</head>
<body >
		<div class="main">
			<div class="content">
				<section class="turntable-lottery">
				<form id="service">
	
					<div class="cover" style="height: 320px;">
						<div id="outer-cont">
							<div id="outer">
								<img id="back_img" />
							</div>
						</div>
						<div id="inner-cont">
							<div id="inner">
								<img src="<%=path%>/img/service/dazhuanpan_zhizhen.png" id="lotteryBtn"/>
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
			<input type="hidden" id="zhuanpan_back" value="<%=guaguakaBean.getZhuanpan_back()%>"/>
			<input type="hidden" id="zhizhen_back" value="<%=guaguakaBean.getZhizhen_back()%>"/>
		</div>	
</body>
		<%
	//}
	%>
        <script type="text/javascript">
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
	    				url : 'dazhuanpanwx!updateInfo.action', //请求的action路径
	    				error : function() {//请求失败处理函数);
	    				},
	    				success : function(data) { //请求成功后处理函数
	    					if(data=='success'){
	    						var t= setTimeout("askReload(1)",500);
		    				}else{
		    					var t= setTimeout("askReload(2)",500);
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
            	set_image_bg();
            	requeryInfo();
            	
                }
            )


          //查询抽奖次数权限
            function requeryInfo(){
    			var params = $("form[id=service]").serialize();
    			$.ajax({
    				async : false,
    				cache : false,
    				type : 'POST',
    				data : params,
    				url : 'dazhuanpanwx!requeryInfo.action', //请求的action路径
    				error : function() {//请求失败处理函数);
    				},
    				success : function(data) { //请求成功后处理函数
    					if(data=='success'){
        					//查询中奖信息
        					requeryWinInfo();
    					}else{
    						errorMessage = data;
    						errorType = true;
    						disable();
        					}
    				}
    			});	
             }
            //禁用抽奖
            var errorType = false;
            var errorMessage = "";
            function disable(){
                alert(errorMessage);
             }
            
          	//查询中奖信息
          	var prizeNum = 0;
            function requeryWinInfo(){
    			var params = $("form[id=service]").serialize();
    			$.ajax({
    				async : false,
    				cache : false,
    				type : 'POST',
    				data : params,
    				url : 'dazhuanpanwx!requeryWinInfo.action', //请求的action路径
    				error : function() {//请求失败处理函数);
    				},
    				success : function(data) { //请求成功后处理函数
    					prizeNum = data;
    				}
    			});	                
            }

            var underImgCount = 0;
            var prizeNum = 0;
            function set_image_bg() {
                
            	var num1 = <%=guaguakaBean.getOne_number()%>;
            	var num2 = <%=guaguakaBean.getTwo_number()%>;
            	var num3 = <%=guaguakaBean.getThree_number()%>;
            	var num4 = <%=guaguakaBean.getFour_number()%>;
            	var num5 = <%=guaguakaBean.getFive_number()%>;
				if(num5>0){
					underImgCount=5;
				}else if(num4>0){
					underImgCount=4;
				}else if(num3>0){
					underImgCount=3;
				}else if(num2>0){
					underImgCount=2;
				}else if(num1>0){
					underImgCount=1;
				}
				var underImgUrl= '<%=path%>/img/service/dazhuanpan_pan'+underImgCount+'.png';
				var zhuanpan_back = $('#zhuanpan_back').val();
				if(zhuanpan_back.length>0&&(zhuanpan_back!='null')){
					$('#back_img').attr('src',zhuanpan_back);
					}else{
					$('#back_img').attr('src',underImgUrl);
						}
				
				var zhizhen_back = $('#zhizhen_back').val();
				if(zhizhen_back.length>0&&(zhizhen_back!='null')){
					$('#lotteryBtn').attr('src',zhizhen_back);
					}
          	 }	


       	 //大转盘代码
            $(function(){
            	var rotateFunc = function(angle){  //awards:奖项，angle:奖项对应的角度
            		$('#back_img').stopRotate();
            		$("#back_img").rotate({
            			angle:0, 
            			duration: 5000, 
            			animateTo: angle+1440, //angle是图片上各奖项对应的角度，1440是我要让指针旋转4圈。所以最后的结束的角度就是这样子^^
            			callback:function(){
            				updateInfo();
            			}
            		}); 
            	};

            	var tempType = true;
            	$("#lotteryBtn").rotate({ 
            	   bind: 
            		 { 
            			click: function(){
        				if(errorType){
        					disable();
            			}else{
                			if(tempType){
                    			//只执行一次
                				tempType = false;
                    			var angle;
    							if(prizeNum>0){//中奖
    								if(underImgCount == 1){
    									angle = 360;
    								}else if(underImgCount == 2){
    									if(prizeNum == 1){
    										angle = 360;
    									}else if(prizeNum == 2){
    										angle = 180;
    									}
    								}else if(underImgCount == 3){
    									if(prizeNum == 1){
    										angle = 360;
    									}else if(prizeNum == 2){
    										angle = 240;
    									}else if(prizeNum == 3){
    										angle = 120;
    									}
    								}else if(underImgCount == 4){
    									if(prizeNum == 1){
    										angle = 360;
    									}else if(prizeNum == 2){
    										angle = 300;
    									}else if(prizeNum == 3){
    										angle = 180;
    									}else if(prizeNum == 4){
    										angle = 120;
    									}
    								}else if(underImgCount == 5){
    									if(prizeNum == 1){
    										angle = 360;
    									}else if(prizeNum == 2){
    										angle = 240//300;//240
    									}else if(prizeNum == 3){
    										angle = 120//240;//120
    									}else if(prizeNum == 4){
    										angle = 300//180;//300
    									}else if(prizeNum == 5){
    										angle = 180//120;//180
    									}
    								}
    								rotateFunc(angle)
    							}else{//未中奖
    								if(underImgCount == 1){
    									angle = [60,120,180,240,300];//360
    								}else if(underImgCount == 2){
    									angle = [60,120,240,300];//180,360
    								}else if(underImgCount == 3){
    									angle = [60,180,300];//120,240,360
    								}else if(underImgCount == 4){
    									angle = [60,240];//120,180,300,360
    								}else if(underImgCount == 5){
    									angle = [60];//,120,180,240,300
    								}
    								angle = angle[Math.floor(Math.random()*angle.length)]
    								rotateFunc(angle)
    							}
                			}
                		}

            			}
            		 } 
            	   
            	});
            	
            })              
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