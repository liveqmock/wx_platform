<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的微相册</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,minimum-scale=1,user-scalable=no,maximum-scale=1,initial-scale=1" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" href="<%=path %>/weixin/photo/css/common.css" />
<link rel="stylesheet" href="<%=path %>/weixin/photo/css/photo.css" />
<script type="text/javascript" src="<%=path %>/weixin/photo/js/zepto.min.js"></script>
</head>
<style>
.page-url-link{
	color: gray;
}
</style>
<body>
<div id="photo">
	<h3 style="text-align: center;">我的微相册</h3>
	
	<ul class="chatPanel fn-clear">
		
		<li class="media mediaFullText" data-index="0">
			<a href="album_pic.jsp?aid=3&index=0">
				<div class="mediaPanel">
					<div class="mediaHead">
						<div class="clr"></div>
					</div>
					<div class="mediaImg" style="width: auto;">
						
						<img class="cover" src="http://api.weijuju.com/image/120/app/album/c59ead6c-2f07-4050-9faa-e62eaca16c2d.jpg" />
						
					</div>
					<div class="mediaFooter">
						<span class="mesgIcon right"></span><span class="bt">花花世界</span>
						<div class="clr"></div>
					</div>
				</div>
			</a>
		</li>
		
		<li class="media mediaFullText" data-index="1">
			<a href="album_pic.jsp?aid=3&index=1">
				<div class="mediaPanel">
					<div class="mediaHead">
						<div class="clr"></div>
					</div>
					<div class="mediaImg" style="width: auto;">
						
						<img class="cover" src="http://api.weijuju.com/image/120/app/album/389cd18a-0edf-46a4-a545-9006c006f3b4.jpg" />
						
					</div>
					<div class="mediaFooter">
						<span class="mesgIcon right"></span><span class="bt">一生必须去的地方</span>
						<div class="clr"></div>
					</div>
				</div>
			</a>
		</li>
		
		<li class="media mediaFullText" data-index="2">
			<a href="album_pic.jsp?aid=3&index=2">
				<div class="mediaPanel">
					<div class="mediaHead">
						<div class="clr"></div>
					</div>
					<div class="mediaImg" style="width: auto;">
						<img class="cover" src="http://api.weijuju.com/image/120/app/album/cfdfd82a-4cb7-4d01-b1a8-f6d282d37bb4.jpg" />
					</div>
					<div class="mediaFooter">
						<span class="mesgIcon right"></span><span class="bt">无印良品</span>
						<div class="clr"></div>
					</div>
				</div>
			</a>
		</li>
	</ul>
	
 	<p class="page-url">
		<a href="http://www.vxinfeng.com" target="_blank" class="page-url-link">此功能由微信封(vxinfeng)平台提供</a>
	</p>
</div>
</body>
</html>