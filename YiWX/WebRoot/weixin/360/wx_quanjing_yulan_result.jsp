<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.QuanJingBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
		<title>微信封-微信营销系统-360预览</title>
		<style>
			body {
				background-color: #000000;
				margin: 0;
				cursor: move;
				overflow: hidden;
			}

			a {
				color: #ffffff;
			}

			#info {
				position: absolute;
				width: 100%;
				color: #ffffff;
				padding: 5px;
				font-family: Monospace;
				font-size: 13px;
				font-weight: bold;
				text-align: center;
				z-index: 1;
			}
		</style>
	</head>
	<% 
	QuanJingBean quanjingBean = (QuanJingBean)request.getAttribute("quanjingBean");
	//System.out.println(quanjingBean.getUrl1());
	//System.out.println(quanjingBean.getUrl2());
	//System.out.println(quanjingBean.getUrl3());
	//System.out.println(quanjingBean.getUrl4());
	//System.out.println(quanjingBean.getUrl5());
	//System.out.println(quanjingBean.getUrl6());
	%>
	<body>
		<script src="<%=path %>/js/three.min.js"></script>
		<script src="<%=path %>/js/CSS3DRenderer.js"></script>
		<script>

			var camera, scene, renderer;
			var geometry, material, mesh;
			var target = new THREE.Vector3();

			var lon = 90, lat = 0;
			var phi = 0, theta = 0;

			var touchX, touchY;

			init();
			animate();

			function init() {

				camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 1, 1000 );

				scene = new THREE.Scene();

				var sides = [
					{
						url: '<%=quanjingBean.getUrl2() %>',
						position: [ -512, 0, 0 ],
						rotation: [ 0, Math.PI / 2, 0 ]
					},
					{
						url: '<%=quanjingBean.getUrl1() %>',
						position: [ 512, 0, 0 ],
						rotation: [ 0, -Math.PI / 2, 0 ]
					},
					{
						url: '<%=quanjingBean.getUrl5() %>',
						position: [ 0,  512, 0 ],
						rotation: [ Math.PI / 2, 0, Math.PI ]
					},
					{
						url: '<%=quanjingBean.getUrl6() %>',
						position: [ 0, -512, 0 ],
						rotation: [ - Math.PI / 2, 0, Math.PI ]
					},
					{
						url: '<%=quanjingBean.getUrl4() %>',
						position: [ 0, 0,  512 ],
						rotation: [ 0, Math.PI, 0 ]
					},
					{
						url: '<%=quanjingBean.getUrl3() %>',
						position: [ 0, 0, -512 ],
						rotation: [ 0, 0, 0 ]
					}
				];
				
				for ( var i = 0; i < sides.length; i ++ ) {

					var side = sides[ i ];

					var element = document.createElement( 'img' );
					element.width = 1026; // 2 pixels extra to close the gap.
					element.src = side.url;

					var object = new THREE.CSS3DObject( element );
					object.position.fromArray( side.position );
					object.rotation.fromArray( side.rotation );
					scene.add( object );

				}

				renderer = new THREE.CSS3DRenderer();
				renderer.setSize( window.innerWidth, window.innerHeight );
				document.body.appendChild( renderer.domElement );

				//

				document.addEventListener( 'mousedown', onDocumentMouseDown, false );
				document.addEventListener( 'mousewheel', onDocumentMouseWheel, false );

				document.addEventListener( 'touchstart', onDocumentTouchStart, false );
				document.addEventListener( 'touchmove', onDocumentTouchMove, false );

				window.addEventListener( 'resize', onWindowResize, false );

				//window.addEventListener('deviceorientation', this.orientationListener, false);
		        //window.addEventListener('MozOrientation', this.orientationListener, false);
		        //window.addEventListener('devicemotion', this.orientationListener, false);

			}

			function onWindowResize() {

				camera.aspect = window.innerWidth / window.innerHeight;
				camera.updateProjectionMatrix();

				renderer.setSize( window.innerWidth, window.innerHeight );
			}

			function onDocumentMouseDown( event ) {

				event.preventDefault();

				document.addEventListener( 'mousemove', onDocumentMouseMove, false );
				document.addEventListener( 'mouseup', onDocumentMouseUp, false );

			}

			function onDocumentMouseMove( event ) {

				var movementX = event.movementX || event.mozMovementX || event.webkitMovementX || 0;
				var movementY = event.movementY || event.mozMovementY || event.webkitMovementY || 0;

				lon -= movementX * 0.1;
				lat += movementY * 0.1;

			}
			
			function orientationListener( evt ){
			// For FF3.6+
	            if (!evt.gamma && !evt.beta) {
	            	// angle=radian*180.0/PI 在firefox中x和y是弧度值,
	                evt.gamma = (evt.x * (180 / Math.PI)); //转换成角度值,
	                evt.beta = (evt.y * (180 / Math.PI)); //转换成角度值
	                evt.alpha = (evt.z * (180 / Math.PI)); //转换成角度值
	           	}
	              
	            var gamma = evt.gamma;
	            var beta = evt.beta;
	            var alpha = evt.alpha;
	            if(evt.accelerationIncludingGravity){
	               // window.removeEventListener('deviceorientation', this.orientationListener, false);
					gamma = evt.accelerationIncludingGravity.x*5;
					beta = -evt.accelerationIncludingGravity.y*5;
					alpha = evt.accelerationIncludingGravity.z*5;
	            }
	            
	            if (this._lastGamma != gamma) {
	                lon -= gamma * 0.1 ;
	                this._lastGamma = gamma;
	            }
	            
	            if(this._lastBeta != beta){
	            	 lat += beta * 0.1 ;
	            	 this._lastBeta = beta;
	            }
			}

			function onDocumentMouseUp( event ) {

				document.removeEventListener( 'mousemove', onDocumentMouseMove );
				document.removeEventListener( 'mouseup', onDocumentMouseUp );

			}

			function onDocumentMouseWheel( event ) {

				camera.fov -= event.wheelDeltaY * 0.05;
				camera.updateProjectionMatrix();

			}

			function onDocumentTouchStart( event ) {

				event.preventDefault();

				var touch = event.touches[ 0 ];

				touchX = touch.screenX;
				touchY = touch.screenY;

			}

			function onDocumentTouchMove( event ) {

				event.preventDefault();

				var touch = event.touches[ 0 ];

				lon -= ( touch.screenX - touchX ) * 0.2;
				lat += ( touch.screenY - touchY ) * 0.2;

				touchX = touch.screenX;
				touchY = touch.screenY;

			}

			function animate() {

				requestAnimationFrame( animate );

				lon +=  0.1;
				lat = Math.max( - 85, Math.min( 85, lat ) );
				phi = THREE.Math.degToRad( 90 - lat );
				theta = THREE.Math.degToRad( lon );

				target.x = Math.sin( phi ) * Math.cos( theta );
				target.y = Math.cos( phi );
				target.z = Math.sin( phi ) * Math.sin( theta );

				camera.lookAt( target );

				renderer.render( scene, camera );

			}

		</script>
		<div id="info"><a href="http://www.vxinfeng.com" target="_blank">本页面由微信封 vxinfeng.com支持</a></div>
	</body>
</html>