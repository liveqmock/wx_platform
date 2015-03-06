<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
    <head>
    <title>在线预约</title>
    <script type="text/javascript">var yyuc_jspath = "<%=path %>/";</script>
    <script type="text/javascript" src="<%=path %>/weixin/order/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="<%=path %>/weixin/order/js/yyucadapter.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path %>/weixin/order/css/order.css" media="all" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
    <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
    <meta content="no-cache" http-equiv="pragma">
    <meta content="0" http-equiv="expires">
    <meta content="telephone=no, address=no" name="format-detection">
    <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <script type="text/javascript" src="<%=path %>/weixin/order/js/swipe.js"></script>
<style>
img.mm{ width:100%!important;}
.footermenu {
position: fixed;
bottom: 0;
left: 0;
right: 0;
z-index: 900;
-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.footermenu ul {
border-top: 1px solid #3D3D46;
position: fixed;
z-index: 900;
bottom: 0;
left: 0;
right: 0;
margin: auto;
display: block;
width: 100%;
background: rgba(255,255,255,0.7);
height: 48px;
display: -webkit-box;
display: box;
-webkit-box-orient: horizontal;
background: -webkit-gradient(linear, 0 0, 0 100%, from(#697077), to(#3F434E), color-stop(60%, #464A53));
box-shadow: 0 1px 0 #949494 inset;
}
.footermenu ul li{
width: auto!important;
height: 100%;
position: static!important;
margin: 0;
border-radius: 0!important;
-webkit-box-sizing: border-box;
box-sizing: border-box;
-webkit-box-flex: 1;
box-flex: 1;
-webkit-box-sizing: border-box;
box-shadow: none!important;
background: none;
}
.footermenu ul li a {
color: #fff;
font-size: 20px;
line-height: 20px;
text-align: center;
display: block;
text-decoration: none;
padding-top: 2px;
position:relative;
text-shadow:0 1px rgba(0, 0, 0, 0.2);
}
.footermenu ul li a.active {
    background:-webkit-gradient(linear, 0 0, 0 100%, from(#535A5F), to(#17181B), color-stop(60%, #32363A));
	border: 1px solid rgba(148, 148, 148, 0.6);
	border-bottom:0;
}
.footermenu ul li a .num {
font-size:10px;
	position:absolute;
	left: 55%;
	top:-5px;
	background-color:#eb3634;
	color:#fff;
	font-family:Verdana;
	font-weight:normal;
	line-height:10px;
	padding:2px 4px;
	-moz-box-shadow:0 0 0 2px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
	-webkit-box-shadow:0 0 0 2px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
	box-shadow:0 0 0 2px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
	border-radius:15px;
}
.footermenu ul li a img{
width:24px;
height:24px;
}
.footermenu ul li a p{
margin: 2px 0 0 0;
font-size: 12px;
display: block !important;
line-height: 18px;
text-align: center;
}
</style>
</head>
<body id="hotels" ondragstart="return false;" onselectstart="return false;" >
<section class="body">
	<div class="banner">
		<div id="imgs_box" class="box_swipe">
			<img class="mm" src="/ups/2013/12/4140/dfde7e3802c4c71e34736037b48f6fa8.jpg" style="width: 100%;">	
		</div>
	</div>

			<ul class="round">
				<li class="title mb"><span class="none">订单说明</span></li>
				
				<li class="nob">
					<span style="white-space:nowrap;">宝马在线预约试驾活动开始啦</span>
				</li>
			</ul>
			<!-- 
		
			<ul class="round">
				<li class="tel"><a href="tel:4006232003"><span>4006232003 </span></a></li>
				<li class="addr"><a href="http://api.map.baidu.com/marker?location=39.916042,116.403694&title=宝马在线预约试驾【体验】&name=临沂万阅城&content=临沂万阅城&output=html&src=weiba|weiweb"><span>临沂万阅城</span></a></li>
			</ul>

			<ul class="round">
                <li>
                    <a href="myby-249.html" >
                        <span>我的在线预约<em class="ok">2</em></span>                        
                    </a>
                </li>
            </ul>
		  
 -->
			<ul class="round">
				<form action="javascript:void(0);" method="post" id="theform"><input type="hidden" value = "323" name="newyy_recordT08d9e827ffbba2efe4413cb064bbf847id" id="newyy_recordid" />				<li class="title mb"><span class="none">请认真填写在线订单</span></li>
				
								<li class="nob">
					<table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<th>联系人</th>
							<td><input type="text"   value="21" name="newyy_recordT08d9e827ffbba2efe4413cb064bbf847form0" id="newyy_recordform0" class="px" placeholder="请输入您的名字"/></td>
						</tr>
					</tbody></table>
				</li>
								<li class="nob">
					<table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<th>联系电话</th>
							<td><input type="text"   value="21" name="newyy_recordT08d9e827ffbba2efe4413cb064bbf847form1" id="newyy_recordform1" class="px" placeholder="请输入您的电话"/></td>
						</tr>
					</tbody></table>
				</li>
								<li class="nob">
					<table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<th>预约日期</th>
							<td><input type="text"   value="2014-03-02"  id="newyy_recordform2" class="px" placeholder="请选择预约日期" name="newyy_recordT08d9e827ffbba2efe4413cb064bbf847form2" mdate="date" relobj="yyucmcalendar" rel="yyuc"/></td>
						</tr>
					</tbody></table>
				</li>
								<li class="nob">
					<table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<th>预约车系</th>
							<td><select    name="newyy_recordT08d9e827ffbba2efe4413cb064bbf847form3"  id="newyy_recordform3" class="dropdown-select" yy_autotext="newyy_recordT08d9e827ffbba2efe4413cb064bbf847SEL_TXT_form3"><option value="宝马x6" selected="selected">宝马x6</option><option value="宝马z4" >宝马z4</option><option value="宝马x1" >宝马x1</option><option value="宝马x7" >宝马x7</option></select></td>
						</tr>
					</tbody></table>
				</li>
								<li class="nob">
					<table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<th>备注</th>
							<td><textarea name="newyy_recordT08d9e827ffbba2efe4413cb064bbf847form4"   id="newyy_recordform4" class="pxtextarea" style="height:99px;overflow-y:visible" placeholder="请留言">23</textarea></td>
						</tr>
					</tbody></table>
				</li>
								</form>
			</ul>
			<div class="footReturn">
			<table style="width: 100%;">
			<tr>
			<td width="50%" align="left"><a id="delcard" class="submit2" style="display: inline-block;width:70%;" href="javascript:void(0);">删除订单</a></td>
			<td width="50%" align="right"><a id="showcard" class="submit" style="display: inline-block;width:70%;" href="javascript:void(0);">修改订单</a></td>
			</tr>
			</table>
				
				
				<div class="window" id="windowcenter">
					<div id="title" class="wtitle">提示<span class="close" id="alertclose"></span></div>
					<div class="content">
						<div id="txt"></div>
					</div>
				</div>
			</div>
		</div>
	<div class="plugback">
		<a href="javascript:history.back(-1)">
			<div class="plugbg themeStyle">
				<span class="plugback">
				</span>
			</div>
		</a>
	</div>
</section>
	<div class="mfooter" id="wxgjfooter" style="text-align: center;width: 100%;height: 20px;line-height: 20px;margin-top:10px;">
<span class="sp2"><a href="http://www.weixinguanjia.cn/weiweb/3702/" style="color: #5e5e5e;font-size: 12px;">技术支持：微信管家</a></span>
</div>
<div style="width: 0px;height: 0px;overflow: hidden;">
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F43da571de43e9d6228927d0883b8b8b4' type='text/javascript'%3E%3C/script%3E"));
</script>

</div>

     <script>
    	$(document).ready(function(){
    		$(function(){
				new Swipe(document.getElementById('imgs_box'), {
					speed:500,
					//auto:3000,
					callback: function(index, elem){
						var lis = $('#imgs_box').children("ol").children();
						lis.removeClass("on").eq(index).addClass("on");
					}
				}); 
			});
    		
    		$('#showcard').click(function(){
    			var ctj = true;
    			$('#theform').find('select,input[type="text"]').each(function(){
    				if($.trim($(this).val())==''){    					
    					ctj = false;
    				}
    			});
    			if(!ctj){
    				tusi('请填写完整预约项');
    				return;
    			}
    			$.ajax({
    			url:'yybyok-249.html',
    			data:$('#theform').serialize(),
    			type:'POST',
    			success:function(m){
    				if(m=='ok'){
    					$('#txt').text('提交成功');
    					$('#windowcenter').slideDown();
    				}
    				setTimeout(function(){
    					$('#windowcenter').slideUp();
    					location.href = 'myby-249.html#mp.weixin.qq.com';
    				},1000);
    			}
    			});
    		});
    		
    		
    		$('#delcard').click(function(){
    			var ctj = true;
    			$('#theform').find('select,input[type="text"]').each(function(){
    				if($.trim($(this).val())==''){    					
    					ctj = false;
    				}
    			});
    			if(!ctj){
    				tusi('请填写完整预约项');
    				return;
    			}
    			$.ajax({
    			url:'yybydel-323.html',
    			type:'POST',
    			success:function(m){
    				if(m=='ok'){
    					$('#txt').text('删除成功');
    					$('#windowcenter').slideDown();
    				}
    				setTimeout(function(){
    					$('#windowcenter').slideUp();
    					location.href = 'myby-249.html#mp.weixin.qq.com';
    				},1000);
    			}
    			});
    		});
    	});
   	</script>        
</body>
</html>