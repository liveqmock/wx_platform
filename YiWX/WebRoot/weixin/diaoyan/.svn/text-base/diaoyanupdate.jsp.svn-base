<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.zhike.sql.beans.ResearchBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=path%>/weixin/diaoyan/css/bootstrap.min.css?v=20140319" />
<link rel="stylesheet" href="<%=path%>/weixin/diaoyan/css/admin.css?v=20140319" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/weixin/diaoyan/js/operamasks-ui.min.js"></script>

<%  
		ResearchBean researchBean = (ResearchBean)request.getAttribute("researchBean"); 
	%>
	
<title>“微调研”题目设置</title>
</head>
<body>
	<form class="form-horizontal" style="display: block;" id="tform">
		<input type="hidden" value="-1" name="tid" id="tid" />
		<input type="hidden" value="1299" name="sid" id="sid" />
		<fieldset>
			<legend>题目添加</legend>
			<div class="control-group">
				<label class="control-label" for="title">题目名称:</label>
				<div class="controls">
					<input type="text" id="title" name="researchViewModel.title" class="span4" value="<%=researchBean.getTitle()%>">
					<span class="maroon">*</span><span class="help-inline">中文英文数字都可，长度不超过60个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option1">选项A:</label>
				<div class="controls">
					<input type="text" class="option" id="option1" name="researchViewModel.answer_a" value="<%=researchBean.getAnswer_a()%>">
					
					<span class="maroon">*</span><span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option2">选项B:</label>
				<div class="controls">
					<input type="text" class="option" id="option2" name="researchViewModel.answer_b" value="<%=researchBean.getAnswer_b()%>">
					<span class="maroon">*</span><span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option3">选项C:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option3" name="researchViewModel.answer_c" value="<%=researchBean.getAnswer_c()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option4">选项D:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option4" name="researchViewModel.answer_d" value="<%=researchBean.getAnswer_d()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option5">选项E:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option5" name="researchViewModel.answer_e" value="<%=researchBean.getAnswer_e()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option6">选项F:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option6" name="researchViewModel.answer_f" value="<%=researchBean.getAnswer_f()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option7">选项G:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option7" name="researchViewModel.answer_g" value="<%=researchBean.getAnswer_g()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option8">选项H:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option8" name="researchViewModel.answer_h" value="<%=researchBean.getAnswer_h()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option9">选项I:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option9" name="researchViewModel.answer_i" value="<%=researchBean.getAnswer_i()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="option10">选项J:</label>
				<div class="controls">
					<input type="text" class="option" readonly="readonly" id="option10" name="researchViewModel.answer_j" value="<%=researchBean.getAnswer_j()%>">
					<span class="help-inline">长度不超过16个字符</span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for=answer">最多能选几个答案:</label>
				<div class="controls">
					<select id="limit" name="researchViewModel.answers" >
					    <option value="<%=researchBean.getAnswers()%>"><%=researchBean.getAnswers()%></option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
					<span class="maroon">*</span>
				</div>
			</div>
			
   		  	<div class="control-group">
			    <div class="controls">
			      <button class="btn btn-primary" onclick="addSave();return false;">保存</button>
			      <a href="javascript:;" id="return-btn" class="btn" onclick="history.go(-1);">返回</a>
			    </div>
		    </div>
		</fieldset>
		<input type="hidden" name="researchViewModel.id" value="<%=researchBean.getId() %>">	
	</form>
</body>
<script type="text/javascript">
$(function(){
	var validator = $("#tform").validate({
		rules: {
			title: {required: true,maxlength: 60},
			option1: {required: true,maxlength: 16},
			option2: {required: true,maxlength: 16},
			option3: {chkOption3:true,maxlength: 16},
			option4: {chkOption4:true,maxlength: 16},
			option5: {chkOption5:true,maxlength: 16},
			option6: {chkOption6:true,maxlength: 16},
			option7: {chkOption7:true,maxlength: 16},
			option8: {chkOption8:true,maxlength: 16},
			option9: {chkOption9:true,maxlength: 16},
			option10: {maxlength: 16},
			limit: {required: true,chkLimit:true}
		},
		messages: {
			title: {required: "请输入题目名称",maxlength: "题目名称不能超过60个字符"},
			option1: {required: "至少包含两个选项",maxlength: "不能超过16个字符"},
			option2: {required: "至少包含两个选项",maxlength: "不能超过16个字符"},
			option3: {maxlength: "不能超过16个字符"},
			option4: {maxlength: "不能超过16个字符"},
			option5: {maxlength: "不能超过16个字符"},
			option6: {maxlength: "不能超过16个字符"},
			option7: {maxlength: "不能超过16个字符"},
			option8: {maxlength: "不能超过16个字符"},
			option9: {maxlength: "不能超过16个字符"},
			option10: {maxlength: "不能超过16个字符"}
		},
		showErrors: function(errorMap, errorList) {
			if (errorList && errorList.length > 0) {
				$.each(errorList,
				function(index, obj) {
					var item = $(obj.element);
					if(item.is(".cover")){
						alert(obj.message);
					}
					// 给输入框添加出错样式
					item.closest(".control-group").addClass('error');
					item.attr("title",obj.message);
				});
			} else {
				var item = $(this.currentElements);
				item.closest(".control-group").removeClass('error');
				item.removeAttr("title");
			}
		},
		submitHandler: function() {
			var $form = $("#tform");
			var $btn = $("#save-btn");
			if($btn.hasClass("disabled")) return;
			var submitData = {
					title: $("input[name='title']", $form).val(),
					option1: $("input[name='option1']", $form).val(),
					option2: $("input[name='option2']", $form).val(),
					option3: $("input[name='option3']", $form).val(),
					option4: $("input[name='option4']", $form).val(),
					option5: $("input[name='option5']", $form).val(),
					option6: $("input[name='option6']", $form).val(),
					option7: $("input[name='option7']", $form).val(),
					option8: $("input[name='option8']", $form).val(),
					option9: $("input[name='option9']", $form).val(),
					option10: $("input[name='option10']", $form).val(),
					limit: $("select[name='limit']", $form).val(),
					sid: $("input[name='sid']", $form).val(),
					action : "savetest"
			};
			if($("input[name='tid']", $form).val() != -1){
				submitData.tid = $("input[name='tid']", $form).val(); 
			}
			$btn.addClass("disabled");
			$.post('/admin/survey', submitData,function(data) {
				$btn.removeClass("disabled");
				if (data.success == true) {
					alert("保存成功");
					window.location.reload();
				}  else{
					alert("保存失败");
				}
			},"json");
			return false;
		}
	});
	$("#option2,#option3,#option4,#option5,#option6,#option7,#option8,#option9").on("keyup",function(e){
		var $nextOptions = $(this).closest(".control-group").next().find("input");
		if($(this).val() == ""){
			$nextOptions.attr("readonly","readonly");
		} else{
			$nextOptions.removeAttr("readonly");
		}
	});
	$("#addtest").click(function(){
		$("#testlist").hide();
		$("#title,#option1,#option2,#option3,#option4,#option5,#option6,#option7,#option8,#option9,#option10","#tform").val("");
		$("#limit","#tform").val("1");
		$("#option3,#option4,#option5,#option6,#option7,#option8,#option9,#option10").attr("readonly","readonly");
		$("tid","#tform").val(-1);
		validator.resetForm();
		$("#tform").show();
	});
	$("#return-btn").click(function(){
		$("#testlist").show();
		$("#tform").hide();
	});
	$("#testlist").delegate(".opt-edit","click",function(){
		$("#testlist").hide();
		var $tr = $(this).closest("tr");
		var tid = $tr.find(".tid").attr("tid");
		var $option1 = $("#option1","#tform"),
			$option2 = $("#option2","#tform"),
			$option3 = $("#option3","#tform"),
			$option4 = $("#option4","#tform"),
			$option5 = $("#option5","#tform"),
			$option6 = $("#option6","#tform"),
			$option7 = $("#option7","#tform"),
			$option8 = $("#option8","#tform"),
			$option9 = $("#option9","#tform"),
			$option10 = $("#option10","#tform");
		$("#title","#tform").val($tr.find(".title").text());
		$option1.val($tr.attr("data-option1"));
		$option2.val($tr.attr("data-option2"));
		$option3.val($tr.attr("data-option3")).removeAttr("readonly");
		$option4.val($tr.attr("data-option4"));
		$option5.val($tr.attr("data-option5"));
		$option6.val($tr.attr("data-option6"));
		$option7.val($tr.attr("data-option7"));
		$option8.val($tr.attr("data-option8"));
		$option9.val($tr.attr("data-option9"));
		$option10.val($tr.attr("data-option10"));
		if($option3.val() == ""){
			$option4.attr("readonly","readonly");
		} else{
			$option4.removeAttr("readonly");
		}
		if($option4.val() == ""){
			$option5.attr("readonly","readonly");
		} else{
			$option5.removeAttr("readonly");
		}
		if($option5.val() == ""){
			$option6.attr("readonly","readonly");
		} else{
			$option6.removeAttr("readonly");
		}
		if($option6.val() == ""){
			$option7.attr("readonly","readonly");
		} else{
			$option7.removeAttr("readonly");
		}
		if($option7.val() == ""){
			$option8.attr("readonly","readonly");
		} else{
			$option8.removeAttr("readonly");
		}
		if($option8.val() == ""){
			$option9.attr("readonly","readonly");
		} else{
			$option9.removeAttr("readonly");
		}
		if($option9.val() == ""){
			$option10.attr("readonly","readonly");
		} else{
			$option10.removeAttr("readonly");
		}
		$("#limit","#tform").val($tr.attr("data-limit"));
		$("#tid","#tform").val(tid);
		$("#tform").show();
	});
	$("#testlist").delegate(".opt-del","click",function(){
		if(confirm("确认废弃这个题目？")){
			var tid = $(this).closest("td").attr("tid");
			window.location.href="/admin/survey?action=deltest&tid=" + tid + "&sid=" + 1299;
		}
	});
	
	$.validator.addMethod("chkOption3", function(value) {
		return !(value == '' && 
				($("#option4").val() != '' 
				|| $("#option5").val() != ''
				|| $("#option6").val() != ''
				|| $("#option7").val() != ''
				|| $("#option8").val() != ''
				|| $("#option9").val() != ''
				|| $("#option10").val() != ''));
     }, '这个选项不能为空！');
	$.validator.addMethod("chkOption4", function(value) {
		return !(value == '' && 
				($("#option5").val() != ''
				|| $("#option6").val() != ''
				|| $("#option7").val() != ''
				|| $("#option8").val() != ''
				|| $("#option9").val() != ''
				|| $("#option10").val() != ''));
     }, '这个选项不能为空！');
	$.validator.addMethod("chkOption5", function(value) {
		return !(value == '' && 
				($("#option6").val() != ''
				|| $("#option7").val() != ''
				|| $("#option8").val() != ''
				|| $("#option9").val() != ''
				|| $("#option10").val() != ''));
     }, '这个选项不能为空！');
	$.validator.addMethod("chkOption6", function(value) {
		return !(value == '' && 
				($("#option7").val() != ''
				|| $("#option8").val() != ''
				|| $("#option9").val() != ''
				|| $("#option10").val() != ''));
     }, '这个选项不能为空！');
	$.validator.addMethod("chkOption7", function(value) {
		return !(value == '' && 
				($("#option8").val() != ''
				|| $("#option9").val() != ''
				|| $("#option10").val() != ''));
     }, '这个选项不能为空！');
	$.validator.addMethod("chkOption8", function(value) {
		return !(value == '' && 
				($("#option9").val() != ''
				|| $("#option10").val() != ''));
     }, '这个选项不能为空！');
	$.validator.addMethod("chkOption9", function(value) {
		return !(value == '' && $("#option10").val() != '');
     }, '这个选项不能为空！');
	$.validator.addMethod("chkLimit", function(value) {
		var count = 0;
		$(".option").each(function(){
			if($(this).val() !== ''){
				count ++;
			}
		});
		return count >= $("#limit").val();
     }, '不能大于题目的选项数量！');
});

    function addSave() {
    	var params = $("form[id=tform]").serialize();
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data : params,
			url : 'research!updateResearch.action?basicid=<%=request.getAttribute("basicid").toString()%>', //请求的action路径
			error : function() {//请求失败处理函数);
				alert("访问服务器失败");
			},
			success : function(data) { //请求成功后处理函数
				dealLoginResult(data)
			}
		});	
    }
    function dealLoginResult(data){
		var josnStr = eval('(' + data + ')');
		var status = josnStr["status"];
		var content = josnStr["content"];
		if(status=='success'){
			window.location="<%=path%>/"+content+"";
		}else{
			alert(content);
		}
	}
</script>
</html>
