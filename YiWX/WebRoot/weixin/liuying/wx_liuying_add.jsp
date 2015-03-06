<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LiuyingBean"%>
<%@page import="com.zhike.sql.beans.LiuyingInfoBean"%>
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
	LiuyingInfoBean liuyingInfoBean = (LiuyingInfoBean)request.getAttribute("liuyingInfoBean");

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
    <link rel='stylesheet' href='<%=path%>/weixin/liuying/css/load.css' media='screen' />
    <script type="text/javascript" src="<%=path%>/weixin/liuying/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/weixin/liuying/js/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="<%=path%>/weixin/liuying/js/blocksit.min.js"></script>
</head>
<body>
    <div class="body">
        <div class="head">
            <div class="top_leftBtn" id="btn_close">取消</div>
            <div class="top_rightBtn" id="btn_send">发送</div></div>
        <div class="main">
            <textarea id="send_text"  class="send_text" placeholder="这一刻的想法......"></textarea>
            <div class="add_img" id="btn_img" ></div>
            <div class="select_imginfo">
                <img id="select_img"  />
                <div class="del">&nbsp;</div>
            </div>
        </div>


     
    </div>
    <div id="load" class="load" >
        <div class="full"></div>
        <div class="l-body">
            <div class="content"></div>
            <div class="spinner">
                <div class="spinner-container container1">
                    <div class="circle1"></div>
                    <div class="circle2"></div>
                    <div class="circle3"></div>
                    <div class="circle4"></div>
                </div>
                <div class="spinner-container container2">
                    <div class="circle1"></div>
                    <div class="circle2"></div>
                    <div class="circle3"></div>
                    <div class="circle4"></div>
                </div>
                <div class="spinner-container container3">
                    <div class="circle1"></div>
                    <div class="circle2"></div>
                    <div class="circle3"></div>
                    <div class="circle4"></div>
                </div>
            </div>
            <div class="load-text">正在加载中...</div>
        </div>
    </div>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<form id="form_add">

	<input  type="hidden" name="liuyingInfoBean.service_id"  value="<%=liuyingBean.getId() %>"/>
	<input type="hidden" id="form_text" name="liuyingInfoBean.liuyan" />
	<input type="hidden" id="form_img" name="liuyingInfoBean.liuying" />
</form>
    <script>

        $(function () {

        	
            $(".l-body").css("top", $(window).height() / 2);//预定设定弹出层位置
            //取消按钮
            $("#btn_close").click(function () {
                    history.go("-1");
            });
            //删除图片
            $(".del").click(function () {
                _localIds = []; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
                document.getElementById("select_img").src ="";
                $("#btn_img").show();
                $(".select_imginfo").hide();
            });
        })
        
        
        <%
        WxConfig wxConfig =   (WxConfig) request.getAttribute("wcConfig");
        %>
        wx.config({
            debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
            appId: '<%=wxConfig.getAppId()%>', // 必填，公众号的唯一标识
            timestamp: '<%=wxConfig.getTimestamp()%>', // 必填，生成签名的时间戳
            nonceStr: '<%=wxConfig.getNonceStr()%>', // 必填，生成签名的随机串
            signature: '<%=wxConfig.getSignature()%>',// 必填，签名，见附录1
            jsApiList: ["chooseImage", "previewImage", "uploadImage", "downloadImage","hideOptionMenu"] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
        });

        
        
        wx.ready(function () {
            //选择图片
            document.querySelector('#btn_img').onclick = function () {
                selectImg();
            }
            //确定按钮 发送到服务器
            document.querySelector('#btn_send').onclick = function () {
                sendInfo();
            }
           
           wx.hideOptionMenu();
            
        });

		

        var _localIds = [];
        var _serverIds = [];
        //选择图片
        function selectImg() {
            wx.chooseImage({
                success: function (res) {
                    if (res.localIds.length > 1) {
                        alert('只能选择一张图片！')
                        return;
                    };
                    _localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
                    document.getElementById("select_img").src = _localIds[0];
                    $("#btn_img").hide();
                    $(".select_imginfo").show();
                }
            });
        };
        //确定发送
        function sendInfo() {
        	var _text = document.getElementById("send_text").value;
            if ($.trim(_text) == "") { 
                alert("说点什么吧");
                return;
                }
            if(_text.length>140){
            	alert("最多140字");
                return;
                }
            if (_localIds.length > 0) 
            {
                //有图片模式
                wx.uploadImage({
                    localId: _localIds[0], // 需要上传的图片的本地ID，由chooseImage接口获得
                    isShowProgressTips: 1,// 默认为1，显示进度提示
                    success: function (res) {
                        _serverIds.push(res.serverId);// 返回图片的服务器端ID

                        $('#form_text').val(_text);
                        $('#form_img').val(_serverIds[0]);
                      
                        var params = $("form[id=form_add]").serialize();
                        $.ajax({
            				async : false,
            				cache : false,
            				type : 'POST',
            				data : params,
            				url : 'liuyingwx!addSave.action', //请求的action路径
            				error : function() {//请求失败处理函数);
            					alert('访问服务器失败');
            				},
            				success : function(data) { //请求成功后处理函数
            					if(data=='success'){
                					history.go("-1");
            						}else{
									alert(data);
                						}
            				}
            			});	
            			
                       // alert('开始发送数据：\n文字内容:' + _text + '\n图片Id:' + _serverIds[0] + '');
                    }
                });

            } else {
                //没图片模式
                alert('请选择一张图片');
            }

        };

    </script>



</body>
</html>