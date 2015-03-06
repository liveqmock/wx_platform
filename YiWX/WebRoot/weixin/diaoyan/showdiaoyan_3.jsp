<%@ page language="java" import="java.util.*,com.zhike.sql.beans.ResearchAnswerBean" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResearchAnswerBean answerBean = (ResearchAnswerBean)request.getAttribute("researchanswerBean");
String questionid=request.getAttribute("questionid").toString();
String serviceid=request.getAttribute("serviceid").toString();
String userid=request.getAttribute("userid").toString();
System.out.println("researchanswerBean.getanswer_a="+answerBean.getAnswer_a());
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1,user-scalable=no,maximum-scale=1,initial-scale=1" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" href="<%=path %>/weixin/diaoyan/css/common.css" />
<link rel="stylesheet" href="<%=path %>/weixin/diaoyan/css/survey.css" />
<script type="text/javascript" src="<%=path %>/weixin/diaoyan/js/zepto.min.js"></script>
<title>微调研</title>
<style>
.question{z-index: 2;position: relative;padding-top: 20px;}
.index{position: absolute;color: #b40000;top: 75px;left: 80px;font-size: 10px;}
.index strong{font-size: 12px;}
.question .title{
	font-size: 24px;
	text-align: center;
	max-height: 77px;
	overflow: hidden;
	text-overflow: ellipsis;
	padding: 0 10px;
	line-height: 26px;
	margin-bottom: 10px;
}
.question .option{position: relative;height: 45px;}
.question .option .text{position: relative;line-height: 40px;overflow: hidden;}
.question .option .i{float: left;margin-left: 20px;}
.question .option .otext{
	margin-left: 45px;
	overflow: hidden;
	max-width: 260px;
	height: 40px;
}
.question .option .oimg,.question .option .oimg-sel{position: absolute;top: 4px;left: 10px;width: 300px;}
.question .option .oimg-sel{display: none;}
.question .option-sel .oimg{display: none;}
.question .option-sel .oimg-sel{display: block;}
.result-timeout .timg{
	margin-left: -40px;
}
#submit{
	width: 80px;
	margin: 20px 20px 0px 0px;
	float: right;
	position: relative;
}
#submit img{
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
}
#submit span{
	position: relative;
	color: #FFF;
	font-size: 18px;
	line-height: 40px;
	margin-left: 8px;
}
.page-url{
	position: absolute;
	width: 100%;
	bottom: 0px;
}
.tip{
	color: #FFF;
	font-size: 12px;
	margin-left: 20px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<img class="bg" src="<%=path %>/weixin/diaoyan/pic/bg.jpg" />
		<div class="question">
			<div class="title"><%=answerBean.getTitle()%></div>
			<div class="tip">注：本题最多能选择<%=answerBean.getAnswers() %>个答案！</div>
			
			<div class="options">
				<%if(answerBean.getAnswer_a()!=null&&!"".equals(answerBean.getAnswer_a())) { %>
				<div class="option" data-value="1">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_a() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_b()!=null&&!"".equals(answerBean.getAnswer_b())) { %>
				<div class="option" data-value="2">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_b() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_c()!=null&&!"".equals(answerBean.getAnswer_c())) { %>
				<div class="option" data-value="3">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_c() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_d()!=null&&!"".equals(answerBean.getAnswer_d())) { %>
				<div class="option" data-value="4">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_d() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_e()!=null&&!"".equals(answerBean.getAnswer_e())) { %>
				<div class="option" data-value="5">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_e() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_f()!=null&&!"".equals(answerBean.getAnswer_f())) { %>
				<div class="option" data-value="6">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_f() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_g()!=null&&!"".equals(answerBean.getAnswer_g())) { %>
				<div class="option" data-value="7">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_g() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_h()!=null&&!"".equals(answerBean.getAnswer_h())) { %>
				<div class="option" data-value="8">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_h() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_i()!=null&&!"".equals(answerBean.getAnswer_i())) { %>
				<div class="option" data-value="9">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_i() %></div>
					</div>
				</div>
				<%} %>
				<%if(answerBean.getAnswer_j()!=null&&!"".equals(answerBean.getAnswer_j())) { %>
				<div class="option" data-value="10">
					<img class="oimg" src="<%=path %>/weixin/diaoyan/pic/option_bg.png" />
					<img class="oimg-sel" src="<%=path %>/weixin/diaoyan/pic/option_sel_bg.png" />
					<div class="text">
						<div class="otext"><%=answerBean.getAnswer_j() %></div>
					</div>
				</div>
				<%} %>
				
			</div>
			<form id="diaoyan">
			<input type="hidden" id="answer1" value="0" name="researchquestionViewModel.answer_a" >
			<input type="hidden" id="answer2" value="0" name="researchquestionViewModel.answer_b">
			<input type="hidden" id="answer3" value="0" name="researchquestionViewModel.answer_c">
			<input type="hidden" id="answer4" value="0" name="researchquestionViewModel.answer_d">
			<input type="hidden" id="answer5" value="0" name="researchquestionViewModel.answer_e">
			<input type="hidden" id="answer6" value="0" name="researchquestionViewModel.answer_f">
			<input type="hidden" id="answer7" value="0" name="researchquestionViewModel.answer_g">
			<input type="hidden" id="answer8" value="0" name="researchquestionViewModel.answer_h">
			<input type="hidden" id="answer9" value="0" name="researchquestionViewModel.answer_i">
			<input type="hidden" id="answer10" value="0" name="researchquestionViewModel.answer_j">
			<div id="submit">
				<img src="<%=path %>/weixin/diaoyan/pic/next_btn.png" />
				<span>下一步</span>
				<!-- <div class="next-btn" onclick="window.location.href='researchperson!addnewquestion.action?userid=<%=userid%>&serviceid=<%=serviceid%>&questionid=<%=questionid%>'">马上开始</div> -->
			</div>
			</form>
		</div>

 	<p class="page-url">
		<a href="<%=path %>" target="_blank" class="page-url-link">此功能由“微信封”平台提供</a>
	</p>




		<audio id="musicClick" src="http://wxj.weixinjia.net/music/exam/click.mp3" preload="auto"></audio>
	</div>
	<div id="loading" class="loading-mask">
		<img class="gimg" src="<%=path %>/weixin/diaoyan/pic/ajax-loader.gif">
	</div>
</body>
<script type="text/javascript">
	$(function(){
		var maxsel = <%=answerBean.getAnswers() %>;
		
	/*	$(".option").on("click",function(){
			var $option = $(this);
			$option.toggleClass("option-sel");
			$("#musicClick")[0].play();
		});*/
		$(".option").on("touchend",function(){
			var $option = $(this);
			$option.toggleClass("option-sel");
			
			var data = "answer"+$option.attr("data-value");
			if($option.attr("class").indexOf("option-sel")==-1){
				$("#answer"+$option.attr("data-value")).val("0");
			}else{
				$("#answer"+$option.attr("data-value")).val("1");
			}
			$("#musicClick")[0].play();
		});
		$("#submit").on("click",function(){
			var $btn = $(this);
			if($btn.hasClass("disabled")) return;
			var $answer = $(".options .option-sel");
			if($answer.size() == 0){
				alert("请选择一个答案!");
				return;
			}
			if($answer.size() > maxsel){
				alert("本题最多只能选择个"+maxsel+"答案!");
				return;
			}
			var i=0;
			var ans = "";
			$answer.each(function(index,o){
				if(i++ != 0){
					ans += ",";
				}
				ans += $(o).attr("data-value");
			});
			$btn.addClass("disabled");
			var params = $("form[id=diaoyan]").serialize();
			
			$.ajax({
				async : true,
				cache : false,
				type : 'POST',
				data : params,
				url : 'researchperson!addnewquestion.action?userid=<%=userid%>&serviceid=<%=serviceid%>&questionid=<%=questionid%>', //请求的action路径
				error : function() {//请求失败处理函数);
					alert("访问服务器失败");
				},
				success : function(data) { //请求成功后处理函数
					dealLoginResult(data);
				}
			});
		});
		$(document).on('ajaxBeforeSend', function(e, xhr, options){
			$("#loading").show();
		}).on("ajaxComplete ",function(e, xhr, options){
			//$("#loading").hide();
		});
	});
	function dealLoginResult(data){
		var josnStr = eval('(' + data + ')');
		var status = josnStr["status"];
		var content = josnStr["content"];
		if(status=='success'){

			window.location="<%=path%>/"+content+"";
		}else{
			$("#errorMsg").html(content);
		}
	}
</script>
</html>