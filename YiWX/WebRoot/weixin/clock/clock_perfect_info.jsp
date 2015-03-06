<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.ClockBean"%>
<%@page import="com.zhike.sql.beans.ClockUserBean"%>

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
	ClockBean clockBean  = (ClockBean)request.getSession().getAttribute("clockBean");
	ClockUserBean clockUserBean  = (ClockUserBean)request.getAttribute("clockUserBean");
	%>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
		<meta name="format-detection" content="telephone=no">
		<title>完善考勤信息</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/clock/css/wei_bind.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/weixin/clock/css/wei_dialog.css">
		
        <script src="<%=path%>/weixin/clock/js/wei_webapp_v2_common.js?v=1.0.1"></script>
        <script src="<%=path%>/weixin/clock/js/wei_webapp_v2.js?v=1.0.1"></script>
        <script src="<%=path%>/weixin/clock/js/wei_dialog.js"></script>
        
        <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
        <style type="text/css">
            
            .hagen_submit {background:none repeat scroll 0 0 #8a0000;}
            
        </style>
        
	</head>
	<body>
		<div class="qb_gap pg_upgrade_content">
		<form id="clock">
		<input name="clockUserBean.service_id" id="service_id"  type="hidden" value="<%=clockUserBean.getService_id()%>"/>
		<input name="clockUserBean.openid"  type="hidden" value="<%=clockUserBean.getOpenid()%>"/>
			<div class="mod_color_weak qb_fs_s qb_gap qb_pt10">
				完善考勤信息
			</div>


			<!-- 姓名 -->
			<div class="mod_input qb_mb10 qb_flex" id="divName">
                <label for="_tmp_4">姓　　名：</label>
                <input value="" class="flex_box" placeholder="请输入姓名" id="inName" type="text" name="clockUserBean.name"/>
			</div>

			                                    
			<!-- 性别 -->
			<div class="mod_input qb_mb10">
				性　　别：<label  class="qb_mr10">
				 <i onclick="chooseSex(1)" class="qb_icon icon_checkbox"  id="gradenameboy"></i>男
				  <i onclick="chooseSex(2)" class="qb_icon icon_checkbox" id="gradenamegirl"></i>女 
				 </label>
				 <input id="card_sex" type="hidden"  name="clockUserBean.sex">
			</div>
			<!-- 生日 -->
			<div class="mod_input qb_mb10 qb_flex" >
				<div >
					生　　日：				</div>

				<select class="mod_input qb_mb10 qb_flex"  id="inBirthYear"   style="padding:0px;margin:2px 2px 0 0;float:left;height: 31px;line-height:31px;font-size: 14px;outline: none;" onchange="chooseDate(false);">
					<option value="0">年</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option>
				</select>

				<select class="mod_input qb_mb10 qb_flex"  id="inBirthMonth"   style="padding:0px;margin:2px 2px 0 0;line-height:31px;float:left;height: 31px;font-size: 14px;outline: none;" onchange="chooseDate(false);">
					<option value="0">月</option><option value="01">1</option><option value="02">2</option>
					<option value="03">3</option><option value="04">4</option><option value="05">5</option>
					<option value="06">6</option><option value="07">7</option><option value="08">8</option>
					<option value="09">9</option><option value="10">10</option><option value="11">11</option>
					<option value="12">12</option>
				</select>

				<select class="mod_input qb_mb10 qb_flex"   id="inBirthDay"     style="padding:0px;margin:2px 2px 0 0;line-height:31px;float:left;height: 31px;font-size: 14px;outline: none;">
                <option value="0">日</option><option value="01">1</option><option value="02">2</option>
					<option value="03">3</option><option value="04">4</option><option value="05">5</option>
					<option value="06">6</option><option value="07">7</option><option value="08">8</option>
					<option value="09">9</option><option value="10">10</option><option value="11">11</option>
					<option value="12">12</option><option value="13">13</option><option value="14">14</option>
					<option value="15">15</option><option value="16">16</option><option value="17">17</option>
					<option value="18">18</option><option value="19">19</option><option value="20">20</option>
					<option value="21">21</option><option value="22">22</option><option value="23">23</option>
					<option value="24">24</option><option value="25">25</option><option value="26">26</option>
					<option value="27">27</option><option value="28">28</option><option value="29">29</option>
					<option value="30">30</option><option value="31">31</option>
                </select>
                <input id="card_birthday" name="clockUserBean.birthday" type="hidden" >
			</div>
			
			<!-- 所属部门 -->
			<div class="mod_input qb_mb10 qb_flex" >
				<div >所属部门：</div>

				<select id="clockde_id" name="clockUserBean.clockde_id" class="mod_input qb_mb10 qb_flex"   style="padding:0px;margin:2px 2px 0 0;float:left;height: 31px;line-height:31px;font-size: 14px;outline: none;" >
					<option value="0">请选择</option>
				<%
			 	for(int i=0;i<clockBean.getListClockDe().size();i++){
			 		%>
			 		<option id="<%=clockBean.getListClockDe().get(i).getId()%>" value="<%=clockBean.getListClockDe().get(i).getId()%>"><%=clockBean.getListClockDe().get(i).getName()%></option>
			 		<%
			 	}
				
			   %>      
				</select>
			</div>			
			
	
			<!-- 手机号 -->
			<div class="mod_input qb_mb10 qb_flex" id="divTel">
				<label for="_tmp_4">手　　机：</label>
                <input value="" name="clockUserBean.tel" class="flex_box" placeholder="请输入手机号" id="inTel" type="text" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" />
			</div>
			<!-- 手机号 -->
			<div class="mod_input qb_mb10 qb_flex" id="divTel">
				<label for="_tmp_4">办公邮箱：</label>
                <input value="" name="clockUserBean.email" class="flex_box" placeholder="选填" id="inTel" type="text"  />
			</div>
						<!-- 短信验证 
			<div class="qb_flex qb_mb10">
				<div class="mod_input flex_box qb_mr10" id="recaptchaCon">
					<div class="qb_flex">
						<label for="_tmp_5" style="display: block; width: 70px">验&nbsp;证&nbsp;码：</label>
						<input id="inCode" type="text" class="flex_box" placeholder="请输入验证码" onBlur='hideOne("recaptchaCon")' onFocus='showOne("recaptchaCon")' oninput='testSubmitOk("inCode")'/>
					</div>
				</div>
				<a class="btn_code "  href="javascript:;" id="recaptchaBtn">获取验证码</a>
			</div>
			<span id="spanMsg_inCode" style="display: none;">请填写验证码</span>
			-->
			
            
            			<a id="submitBtn" onclick="submit_perfect_entity()" href="#" class="mod_btn btn_block qb_mb10  ">提&nbsp;交</a>
			</form>
		</div>
		<div class="mod_quick_tips"  id="showTips" style="display:none">
			<div class="qb_bfc">
				<div class="bfc_f"><img src="<%=path %>/weixin/clock/image/icon_warn.png" width="28" height="28">
				</div>
				<div class="bfc_c"  id="tipscon"></div>
			</div>
		</div>
	</body>


<script>
/*
 * 性别联动
 */
function chooseSex(sex){
	if(sex==2){
		$('#gradenamegirl').addClass('checked');
		$('#gradenameboy').removeClass('checked');
		$('#card_sex').val('2');
	}else{
		$('#gradenamegirl').removeClass('checked');
		$('#gradenameboy').addClass('checked');		
		$('#card_sex').val('1');	
	}
}
/*
* 日期联动
* param is_ini 判断是否是初始化调用
*/

function chooseDate(is_ini){
    var year = document.getElementById('inBirthYear').value;
    var month = document.getElementById('inBirthMonth').value;
    var selectDate = document.getElementById('inBirthDay').value;
    var sel = document.getElementById('inBirthDay');
    if(is_ini){
        var inBirthday = $id('inBirthday').value;
        if(inBirthday){
            inBirthday = inBirthday.split('-');
            selectDate = parseInt(inBirthday[2]);
        }else{
            selectDate = 0;
        }
    }
    //清空选项重新动态生成
    sel.innerHTML = "";
    var longDate = {'01':1, '03':3, '05':5, '07':7, '08':8, '10':10, '12':12};
    var shortDate = {'04':4, '06':6, '09':9, '11':11};
    var day = 0;
    if(longDate[month]){//31天
        day = 31;
    }else {
        if(shortDate[month]){//30天
            day = 30
        }else{//二月
            day = isRunYear(year);
        }
    }
    if(!month || month == '0'){
        day = 31;
    }
    for(var i=0; i <= day; i++){
        var option = document.createElement('option');
        sel.options.add(option);
        option.text = i;
        option.value = i;
    }
    if(selectDate > day){
        selectDate = 0;
    }
    sel.options[0].text = '日';
    sel.options[0].value = 0;
    sel.options[selectDate].selected = true;
}

function chooseBabyDate(is_ini){
    var year = document.getElementById('inBabyBirthYear').value;
    var month = document.getElementById('inBabyBirthMonth').value;
    var selectDate = document.getElementById('inBabyBirthDay').value;
    var sel = document.getElementById('inBabyBirthDay');
    if(is_ini){
        var inBirthday = $id('inBabyBirthday').value;
        if(inBirthday){
            inBirthday = inBirthday.split('-');
            selectDate = parseInt(inBirthday[2]);
        }else{
            selectDate = 0;
        }
    }
    //清空选项重新动态生成
    sel.innerHTML = "";
    var longDate = {'01':1, '03':3, '05':5, '07':7, '08':8, '10':10, '12':12};
    var shortDate = {'04':4, '06':6, '09':9, '11':11};
    var day = 0;
    if(longDate[month]){//31天
        day = 31;
    }else {
        if(shortDate[month]){//30天
            day = 30
        }else{//二月
            day = isRunYear(year);
        }
    }
    if(!month || month == '0'){
        day = 31;
    }
    for(var i=0; i <= day; i++){
        var option = document.createElement('option');
        sel.options.add(option);
        option.text = i;
        option.value = i;
    }
    if(selectDate > day){
        selectDate = 0;
    }
    sel.options[0].text = '日';
    sel.options[0].value = 0;
    sel.options[selectDate].selected = true;
}

function isRunYear(year){
    if((year%4==0&&year%100!=0)||(year%400==0) || !year){
        return 29;
    }
    return 28;
}
    

$(document).ready(function(){
	//初始化
	//chooseDate(true);
	//处理性别默认
	var sex_val = $('#card_sex').val();
	if(sex_val=='1'){
		chooseSex(sex_val);
		}
	if(sex_val=='2'){
		chooseSex(sex_val);
	}
	//处理生日默认
	var birthday_val = $('#card_birthday').val();
	if(birthday_val!='null'&&birthday_val!=''){
		birthday_result = birthday_val.split("-")
		$('#inBirthYear').val(birthday_result[0]);
		$('#inBirthMonth').val(birthday_result[1]);
		$('#inBirthDay').val(birthday_result[2]);
		}

})

function disabled_sub_button(){
	$("#submitBtn").addClass('disabled');
	
}

function enalbe_sub_button(){
	$("#submitBtn").removeClass('disabled');
}

function submit_perfect_entity(){
	//校验
	var name =  $('#inName').val();
	if((name=='')||(name=='null')){
		show_tips('请输入姓名!');
		return;
		}
	var sex =  $('#card_sex').val();
	if((sex=='')||(sex=='null')){
		show_tips('请选择性别!');
		return;
		}
	var year = $('#inBirthYear').val();
	var month = $('#inBirthMonth').val();
	var day = $('#inBirthDay').val();
	if((year=='0')||(month=='0')||(day=='0')){
		show_tips('请输入生日!');
		return;
		}
	$('#card_birthday').val(year+'-'+month+'-'+day);

	var clockde = $('#clockde_id').val();
	if(clockde==0){
		show_tips('请选择所属部门!');
		return;
		}
	var tel =  $('#inTel').val();
	if((tel=='')||(tel=='null')){
		show_tips('请输入手机号!');
		return;
		}

	var params = $("form[id=clock]").serialize();
	$.ajax({
		async : true,
		cache : false,
		type : 'POST',
		data : params,
		url : 'clockwx!submit_perfect.action', //请求的action路径
		error : function() {//请求失败处理函数);
		},
		success : function(data) { //请求成功后处理函数
			if(data=='success'){
				show_tips('提交成功!');
				setTimeout('loadContent()',2000);
			}else{
				show_tips(data);
				enalbe_sub_button();
			}
		}
	});	

	

	
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
	var action = 'clockwx.action?serviceid='+service_id;
      var url = '<%=path%>/'+action;
      window.location.href = url;
}
</script>
</html>