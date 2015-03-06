<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.MemberBean"%>
<%@page import="com.zhike.sql.beans.MemberInfoBean"%>
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
	MemberBean memberBean  = (MemberBean)request.getSession().getAttribute("memberBean");
	MemberInfoBean memberInfoBean  = (MemberInfoBean)request.getSession().getAttribute("memberInfoBean");
	%>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
		<meta name="format-detection" content="telephone=no">
		<title>绑定实体会员卡</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_bind.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/member/css/wei_dialog.css">
		
        <script src="<%=path%>/weixin/member/js/wei_webapp_v2_common.js"></script>
        <script src="<%=path%>/weixin/member/js/wei_webapp_v2.js"></script>
        <script src="<%=path%>/weixin/member/js/wei_dialog.js"></script>
        
        <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
        <style type="text/css">
            
            .hagen_submit {background:none repeat scroll 0 0 #8a0000;}
            
        </style>
        
	</head>
	<body>
	<form id="member">
	
		<div class="qb_gap pg_upgrade_content">
			<div class="mod_color_weak qb_fs_s qb_gap qb_pt10">
				请输入实体会员卡资料
			</div>
			 <input id="issupport_check" name="memberBean.card_issupport_check" type="hidden" value="<%=memberBean.getCard_issupport_check()%>"/>
			 <input id="service_id" name="memberEntityCardBean.service_id" type="hidden" value="<%=memberBean.getId()%>"/>
			<!-- 卡号 -->
			<div class="mod_input qb_mb10 qb_flex" id="check1">
                <label for="_tmp_4">卡　　号：</label>
				<input name="memberEntityCardBean.card_id" value="" class="flex_box" placeholder="请输入实体卡号" id="check1_val" type="text" />
			</div>
			<!-- 密码 -->
			<div class="mod_input qb_mb10 qb_flex" id="check2" style="display: none;">
                <label for="_tmp_4">密　　码：</label>
				<input name="memberEntityCardBean.card_password" value="" class="flex_box" placeholder="请输入密码" id="check2_val" type="text"/>
			</div>
			<!-- 姓名-->
			<div class="mod_input qb_mb10 qb_flex" id="check3" style="display: none;">
                <label for="_tmp_4">姓　　名：</label>
				<input name="memberEntityCardBean.card_name" value="" class="flex_box" placeholder="请输入姓名" id="check3_val" type="text" />
			</div>
			<!-- 手机-->
			<div class="mod_input qb_mb10 qb_flex" id="check4" style="display: none;">
                <label for="_tmp_4">手　　机：</label>
				<input name="memberEntityCardBean.card_tel" value="" class="flex_box" placeholder="请输入手机号" id="check4_val" type="text" />
			</div>						
			                                    
			
			
			
			
            
        <a id="submitBtn" onclick="submit_check_entity()" href="#" class="mod_btn btn_block qb_mb10  ">提&nbsp;交</a>
		</div>
		
	</form>
		<div class="mod_quick_tips"  id="showTips" style="display:none">
			<div class="qb_bfc">
				<div class="bfc_f"><img src="<%=path %>/weixin/member/image/icon_warn.png" width="28" height="28">
				</div>
				<div class="bfc_c"  id="tipscon"></div>
			</div>
		</div>
	</body>


<script>


$(document).ready(function(){
	//初始化
	//处理校验条目
	var check_val = $("#issupport_check").val();
	var check_val_result = check_val.split("")
	if(check_val_result[1]=='1'){
		$("#check2").css('display','');
		
		}
	if(check_val_result[2]=='1'){
		$("#check3").css('display','');
		}
	if(check_val_result[3]=='1'){
		$("#check4").css('display','');
		}

})

function submit_check_entity(){
	
	
	if($("#check1_val").val()==''){
		show_tips('请输入卡号!');
		return;
		}
	var check_val = $("#issupport_check").val();
	var check_val_result = check_val.split("")
	if(check_val_result[1]=='1'){
		if($("#check2_val").val()==''){
			show_tips('请输入密码!');
			return;
			}
		}
	if(check_val_result[2]=='1'){
		if($("#check3_val").val()==''){
			show_tips('请输入姓名!');
			return;
			}
		}
	if(check_val_result[3]=='1'){
		if($("#check4_val").val()==''){
			show_tips('请输入手机号!');
			return;
			}
		}
	
	disabled_sub_button();

	var params = $("form[id=member]").serialize();
	$.ajax({
		async : true,
		cache : false,
		type : 'POST',
		data : params,
		url : 'memberwx!checkEntity.action', //请求的action路径
		error : function() {//请求失败处理函数);
		},
		success : function(data) { //请求成功后处理函数
			if(data=='success'){
				show_tips('绑定成功!');
				setTimeout('loadContent()',2000);
			}else{
				show_tips(data);
				enalbe_sub_button();
			}
		}
	});	

	
}

function disabled_sub_button(){
	$("#submitBtn").addClass('disabled');
	
}

function enalbe_sub_button(){
	$("#submitBtn").removeClass('disabled');
}

function show_tips(content){
	$("#showTips").css('display','block');
	$("#tipscon").html(content);
	setTimeout('hidden_tips()',2000);
	
}
function hidden_tips(){
	$("#showTips").css('display','none');
}

function loadContent(){
	var service_id = $("#service_id").val();
	var action = 'memberwx.action?serviceid='+service_id;
      var url = '<%=path%>/'+action;
      window.location.href = url;
}
</script>
</html>