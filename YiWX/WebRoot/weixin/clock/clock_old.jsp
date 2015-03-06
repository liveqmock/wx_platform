<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockInfoBean"%>
<%@page import="com.zhike.sql.beans.ClockUserBean"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>




<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
*{ margin:0;padding:0;}
	.digit{
		height: 4620px;
		float: left;
		background-image: url('<%=path%>/weixin/clock/image/digits.png');
		width: 53px;
		margin-top: 0px;
	}

.dian{
	width: 5px;
	height: 5px;
	background: #fff;
	border-radius: 45px;
	display: inline-block;
	margin-bottom: 2px;
}
</style>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<script type="text/javascript" src="/YiWX/js/jquery-1.8.3.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/clock/css/wei_bind.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/clock/css/wei_dialog.css">



<body>
		<div style=" position: absolute; top:0; bottom:0; width:100%;position: absolute;background:url(/YiWX/weixin/clock/image/back_ground_dark.jpg);background-size: 100% 100%; ">
			<div id="outer" style="position: relative; margin: 10% auto;width: 260px;height: 173px;">
					<img src="/YiWX/weixin/clock/image/time_back.png" style="position: absolute; top:0;left:0;width: 100%;height: 100%;"/>
					<div style="height: 60px;line-height: 60px;position: relative;color: #fff;">
					   <span id="clock_noon" style="margin-left: 40px;"></span>
					   <span id="clock_date" style="margin-right: 40px;float: right;"></span>
					</div>
						<div   style="    height: 77px;overflow: hidden; position: relative;   margin-left: 19px;   margin-top: 6px;">
						    	<div id="divmm" class="digit"></div>
						    	<div id="divm" class="digit" style="margin-right: 10px;"></div>
						        <div id="divss" class="digit"></div>
						        <div id="divs" class="digit"></div>
					 </div>		
			</div>
			<div style="position: absolute;  bottom:30px;width: 100%;">
				<div id="button_click" onclick ="button_click()"   style=" width:260px;height:45px;margin: 20px auto; background-image:url(/YiWX/weixin/clock/image/button.png); background-repeat: no-repeat; background-size: 100% 100%; text-align: center; line-height: 45px; font-size: 18px; color: #3e3a39;">
					 <%
					 ClockBean clockBean = (ClockBean)session.getAttribute("clockBean");
					 ClockInfoBean clockInfoBean = (ClockInfoBean)request.getAttribute("clockInfoBean");
					 if(clockInfoBean==null){
						 %>
						 上班打卡
						 <%
					 }else{
						 %>
						 下班打卡
								 <%
					 }
					 %>
				</div>
				<div style="color: #fff;text-align: center;font-size: 13px;">
					<span onclick="for_info()">考勤记录&nbsp;&nbsp;&nbsp;&nbsp; </span>
					<span class="dian"></span>
					<span onclick="for_lbs()" >&nbsp;&nbsp;&nbsp;&nbsp;公司位置 </span>
				</div>
			</div>
		</div>
		
		<div class="mod_quick_tips"  id="showTips" style="display:none">
			<div class="qb_bfc">
				<div class="bfc_f"><img id="iconimg" src="<%=path %>/weixin/clock/image/icon_warn.png" width="28" height="28">
				</div>
				<div class="bfc_c"  id="tipscon"></div>
			</div>
		</div>
				
		<form id="clock">
			<%
			ClockUserBean clockUserBean = (ClockUserBean)session.getAttribute("clockUserBean");
			%>
			<input type="hidden" name="clockInfoBean.user_id" value="<%=clockUserBean.getId() %>">
			<input type="hidden" name="clockInfoBean.service_id" id="service_id" value="<%=clockUserBean.getService_id() %>">
			<%
			if(clockInfoBean!=null){
				%>
				<input type="hidden" name="clockInfoBean.id" value="<%=clockInfoBean.getId() %>">
				<%
			}
			%>
			
		</form>	
</body>
<script type="text/javascript">
var temp = true;
function button_click(){
	if(temp){
		hidden_button();
		var params = $("form[id=clock]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'clockwx!clock.action', //请求的action路径
			error : function() {//请求失败处理函数);
			},
			success : function(data) { //请求成功后处理函数
				if(data=='nolbs'){
					show_tips('您没有上报你的位置信息,请在公众号内选择并打开提供位置信息。并确定您的手机允许微信获得您的GPS信息。','warn');
					setTimeout('show_button()',2000);
				}else if(data=='outtime'){
					show_tips('您上报的位置位置信息已超时,请重新进入该微信公众号上报位置信息','warn');
					setTimeout('show_button()',2000);
				}else if(data=='error'){
					show_tips('门店信息错误,请联系考勤管理员','error');
					setTimeout('show_button()',2000);
				}else if(data=='打卡成功'){
					show_tips(data,'success');
				}else{
					show_tips('距离过远,当前您离公司还有'+data+'米','warn');
					setTimeout('show_button()',2000);
				}
			}
		});	
		}



	
	
}
function loadContent(){
	var service_id = $("#service_id").val();
	var action = 'clockwx.action?serviceid='+service_id;
      var url = '<%=path%>/'+action;
      window.location.href = url;
}

function show_button(){
	temp = true;
	$("#button_click").css("background-image","url(/YiWX/weixin/clock/image/button.png)");
}

function hidden_button(){
	temp = false;
	$("#button_click").css("background-image","url(/YiWX/weixin/clock/image/button_click.png)");
}

function show_tips(content,type){
	var url = '<%=path %>/weixin/clock/image/icon_'+type+'.png'
	$("#iconimg").attr("src",url);
	
	$("#showTips").css('display','block');
	$("#tipscon").html(content);
	setTimeout('hidden_tips()',2000);
	
}
function hidden_tips(){
	$("#showTips").css('display','none');
}

function getTime(){

	$.ajax({
		async : false,
		cache : false,
		type : 'POST',
		data : false,
		url : 'clockwx!getTime.action', //请求的action路径
		error : function() {//请求失败处理函数);
		},
		success : function(data) { //请求成功后处理函数
			var hh = data[0]+data[1];
			if(parseInt(hh)<13){
				$('#clock_noon').text("上午");
				}else{
				$('#clock_noon').text("下午");
			}
			var ss = data[4]+data[5];
			initDigit(data[0]+data[1]+data[2]+data[3]);
			var time = 60- parseInt(ss);
			setTimeout(start_digit(),time*1000)

			var myDate = new Date();
			var month = myDate.getMonth()+1;  
			var date  = myDate.getDate(); 
			var result = month+"月"+date+"日"
			$('#clock_date').text(result);
		}
	});		
}

</script>
 <script type="text/javascript">
function moves() {
    var stepTime = 60;
    var _h = 77; //每次移动距离
    var digitImages = 6; //变更一次数字 需要移动的图片次数
	var max = 10
    var el = $("#divs");
    el.max = _h * digitImages * max;
    

    var _current = margin(el) - _h; //每次移动后的位置

    if (_current <= -el.max) { 
    	_current = 0; 
    
        movess();
  
    } //归零

    setTimeout(function () {

        margin(el, _current);

        if (_current % (_h * digitImages) != 0) {

            moves();

        };

    }, stepTime);



};


function movess() {
    var stepTime = 60;
    var _h = 77; //每次移动距离
    var digitImages = 6; //变更一次数字 需要移动的图片次数
	var max = 6;
    var el = $("#divss");
    el.max = _h * digitImages * max;
    
    var _current = margin(el) - _h; //每次移动后的位置
    if (_current <= -el.max) { 
    	_current = 0; 
 		movem();
    } //归零
    setTimeout(function () {
        margin(el, _current);
        if (_current % (_h * digitImages) != 0) {
            movess();
        };
    }, stepTime);

}; 



function movem() {
    var stepTime = 60;
    var _h = 77; //每次移动距离
    var digitImages = 6; //变更一次数字 需要移动的图片次数
	var max = 10;
    var el = $("#divm");
    el.max = _h * digitImages * max;
    
    var _current = margin(el) - _h; //每次移动后的位置
    if (_current <= -el.max) { 
    	_current = 0; 
    	movemm();
 
    } //归零
    setTimeout(function () {
        margin(el, _current);
        if (_current % (_h * digitImages) != 0) {
            movem();
        };
    }, stepTime);

}; 

function movemm() {
    var stepTime = 60;
    var _h = 77; //每次移动距离
    var digitImages = 6; //变更一次数字 需要移动的图片次数
	var max = 6;
    var el = $("#divmm");
    el.max = _h * digitImages * max;
    
    var _current = margin(el) - _h; //每次移动后的位置
    if (_current <= -el.max) { 
    	_current = 0; 
 
    } //归零
    setTimeout(function () {
        margin(el, _current);
        if (_current % (_h * digitImages) != 0) {
            movemm();
        };
    }, stepTime);

};             


function initDigit(time){

	$("#divmm").css('marginTop',-time[0]*6*77+'px');
	$("#divm").css('marginTop',-time[1]*6*77+'px');
	$("#divss").css('marginTop',-time[2]*6*77+'px');
	$("#divs").css('marginTop',-time[3]*6*77+'px');
}

function start_digit(){
	setInterval(function () {moves();}, 60*1000);
}
$(document).ready(function(){
	getTime();
	
})

function margin(elem, val) {
    if (val !== undefined)
        return elem.css({ 'marginTop': val + 'px' });
    return parseInt(elem.css('marginTop').replace('px', ''));
};


</script>
<script type="text/javascript">
//考勤记录
function for_info(){
	var id = <%=clockUserBean.getId()%>;
	var url = "<%=path%>/clockwx!for_info.action?id="+id;
	window.location.href = url;
	
}

//公司位置
function for_lbs(){
	var id = <%=clockBean.getLbs_id()%>
	var url = "<%=path%>/clockwx!for_lbs.action?id="+id;
	window.location.href = url;
}
</script>
</html>
