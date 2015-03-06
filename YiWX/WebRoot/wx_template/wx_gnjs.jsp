<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta content="微信封、微信营销、微信代运营、微信定制开发、微信托管、微网站、微商城、微营销" name="Keywords">
		<meta
			content="微信封，国内最大的微信公众智能服务平台，微信封八大微体系：微菜单、微官网、微会员、微活动、微商城、微推送、微服务、微统计，企业微营销必备。"
			name="Description">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/main.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/bootstrap.min.css"
			media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/bootstrap-responsive.min.css"
			media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/wx_style.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/todc_bootstrap.css"
			media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/themes.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/inside.css" media="all" />
		<script type="text/javascript"
			src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript"
			src="<%=path%>/js/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="<%=path%>/js/inside.js"></script>
		<title>微信封-微信营销系统</title>
		<link rel="shortcut icon" href="<%=path%>/img/logo_icon.png" />


	</head>
	<body>

		<div id="main">
			<div class="container-fluid">

				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<div class="span10">
									<h3>
										<i class="icon-edit-sign"></i>功能介绍
									</h3>
								</div>
								<div class="span2">
									<a class="btn" href="Javascript:window.history.go(-1)">返回</a>
								</div>
							</div>
							<!--微活动-->
							<div class="row-fluid">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微活动：</strong>优惠券+刮刮卡+大转盘+微投票+一战到底
									</h4>
									<h5>
										微活动，强大的交互体验，极大提高了用户粘性和粉丝活跃度。
									</h5>

								</div>

								<div class="box-content">

									<ul id="myTab" class="nav nav-tabs">
										<li class="active">
											<a href="#Coupon" data-toggle="tab">优惠券</a>
										</li>
										<li class="">
											<a href="#Scratch" data-toggle="tab">刮刮卡</a>
										</li>
										<li class="">
											<a href="#Wheel" data-toggle="tab">大转盘</a>
										</li>
										<li class="">
											<a href="#Vote" data-toggle="tab">微投票</a>
										</li>
										<li class="">
											<a href="#yzdd" data-toggle="tab">一站到底</a>
										</li>

									</ul>
									<div id="myTabContent" class="tab-content">
										<div class="tab-pane fade active in" id="Coupon">
											<dl>
												<dt class="span7">
													<p>
														优惠券是用于微信上与顾客互动的一种营销方式，不仅可以展现自己的产品，更能让顾客在使用此项功能时感受到更多的乐趣。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、新增优惠券活动：编辑活动开始的内容，包括关键词、活动名称、成功抢到说明、简介、活动起始时间、活动说明、兑换券使用说明；
													</p>
													<p>
														2、编辑活动结束内容：填写活动公告主题和活动说明；
													</p>
													<p>
														3、
														点击下一步，进行活动设置。设置优惠券的名称、数量，兑奖密码、sn码生成设置、sn码重新命名、手机号重新命名、设置抽奖页面是否显示奖品数量，提交保存活动；
													</p>
													<p>
														4、
														设置活动开始；（点击开始活动后，就不能再修改活动奖项，但可以修改其他活动内容,活动开启会自动生成SN码，也就是兑奖码）
													</p>
													<p>
														5、 设置活动结束；（你设置的活动结束时间到了会自动结束活动，你也可以时间没有到直接结束活动）
													</p>
													<p>
														6、 兑奖，查看活动粉丝中奖详情；（点击SN码管理查看详情）
													</p>
													<p>
														7、 删除活动（最好是在最后兑奖时间过了，再删除活动）
													</p>
													<p>
														备注：每个网友每次活动只能领取一张优惠劵。
													</p>
												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/Coupon.png">
												</dd>
											</dl>
										</div>

										<div class="tab-pane fade" id="Scratch">
											<dl>
												<dt class="span7">
													<p>
														该模块可为商家提供刮刮卡抽奖服务，全网第一个可以通过微信玩刮刮卡，用户通过手机屏幕进行刮奖的游戏！
													</p>
													<H3>
														使用方法：
													</H3>
													<p>
														1、设置抽奖前需要先编辑一条图文消息，提前一天或者当天推送给所有粉丝，告知在某个时间段发某个关键词可以参与刮奖；
													</p>
													<p>
														2、进入抽奖设置，设定活动时间、中奖几率、触发关键词和相应的奖品，确定设置后系统会根据设定的中奖几率产生相应的SN码；
													</p>
													<p>
														3、活动设定后，在规定时间到时，网友发送关键词如“我要抽奖”，就会发送给他一张刮刮卡，粉丝通过屏幕进行刮奖，中奖后会得到一个SN码，网友到店时向商家出示SN码，商家根据系统产生的SN码进行比对，确认无误后即可兑换奖品。
													</p>
													<p>
														备注：每个网友每次活动只能参与一次刮奖。
													</p>
												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/Scratch.png">
												</dd>
											</dl>
										</div>

										<div class="tab-pane fade" id="Wheel">
											<dl>
												<dt class="span7">
													<p>
														该模块可为商家提供转盘抽奖服务，商家通过设置活动时间，预计参加抽奖人数，相应奖项和触发关键词，由网友在线参与抽奖。
													</p>
													<h3>
														使用方法：
													</h3>
													<P>
														1、设置抽奖前需要先编辑一条图文消息，提前一天或者当天推送给所有粉丝，告知在某个时间段发某个关键词可以参与抽奖；
													</P>
													<P>
														2、进入抽奖设置，设定活动的类别，设定活动的预热时间，已经活动的开始和结束时间，设置活动回复关键词“我要抽奖”，确定设置后系统会根据设定的中奖几率产生相应的SN码；
													</P>
													<p>
														3、活动设定后，在规定时间到时，网友发送关键词如“我要抽奖”，就可以参与三次转盘，中奖后会得到一个SN码，网友到店时向商家出示SN码，商家根据系统产生的SN码进行比对，确认无误后即可兑换奖品。
													</p>
													<p>
														备注：每个网友每次活动只能领取一张优惠劵。
													</p>
												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/Wheel.png">
												</dd>
											</dl>
										</div>

										<div class="tab-pane fade" id="Vote">
											<dl>
												<dt class="span7">
													<p>
														商家采用投票的活动来吸引用户，与用户之间产生互动，从而促进企业营销的一种手段。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、商家发布一个活动名称，例如：“您愿意把微信封介绍给您的朋友吗？”商家还可以为本次活动上传封面，吸引更多的用户来参加；
													</p>
													<p>
														2、商家可以设置两个选项：愿意、不愿意，每个用户只能选择一个选项；
													</p>
													<p>
														3、设置活动的回复关键词为“我要投票”；
													</p>
													<p>
														4、编辑活动说明，例如：“每位参与投票的朋友都将获得商家送出的尊贵礼品，同时你还将参加抽奖，有机会获得iphone5等大奖。”；
													</p>
													<p>
														5、设置活动的起开始时间和活动的结束时间。
													</p>
												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/Vote.png">
												</dd>
											</dl>
										</div>

										<div class="tab-pane fade" id="yzdd">
											<dl>
												<dt class="span7">
													<p>
														该模块是以答题比赛的方式，给用户带来乐趣的一种营销性活动。如果这一季您连续参加了答题，系统会根据答题正确率和答题速度自动计算您的积分，赛季结束以后，商家会根据最终的比赛结果，评选出一二三等奖各5名，精美礼品等着您！
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、新增，进入“新建一站到底活动”页，编辑活动名称，活动时间，触发关键词（如：一战到底），图文封面，活动说明，活动规则，每道系统题目分值、每道自定义题目分值（均可使用默认图片及内容，也可上传图片及自定义内容）；
													</p>
													<p>
														2、奖品设置、数量设置，根据商家需求填写，会在用户答题完毕显示；
													</p>
													<p>
														3、保存并设置考题，进入题目设置页面，可自定义添加题目，插入行业相关问题提高用户的认知，答题时间也可自定义（默认20秒/题），如不设置直接保存，则系统默认使用原有题库。
													</p>
													<P>
														备注：
													</P>
													<p>
														（1）每天每个用户只能参加一次答题，每次10道,答对加分，答错不扣分；
													</p>
													<p>
														（2）用户参加答题需提交姓名及手机号码，商家可查询；
													</p>
													<P>
														（3）同样积分者，答题速度优先的用户排名为先；
													</P>
													<P>
														（4）积分累计到活动结束后，可在统计图表内查询排名顺序参与人数、答题率及用户信息。
													</P>
												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/yzdd.jpg">
												</dd>
											</dl>
										</div>


									</div>
								</div>
							</div>

							<!--微服务-->

							<div class="row-fluid">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微服务：</strong>微信企业应用与电子商务
									</h4>
									<h5>
										自定义菜单、无需重新开发APP
									</h5>

								</div>
								<div class="box-content ">
									<ul id="myTab" class="nav nav-tabs">
										<li class="active">
											<a href="#weather" data-toggle="tab">城市天气</a>
										</li>
										<li class="">
											<a href="#bk" data-toggle="tab">百度百科</a>
										</li>
										<li class="">
											<a href="#translate" data-toggle="tab">即时翻译</a>
										</li>
										<li class="">
											<a href="#stock" data-toggle="tab">股票查询</a>
										</li>
										<li class="">
											<a href="#delivery" data-toggle="tab">快递查询</a>
										</li>
										<li class="">
											<a href="#bus" data-toggle="tab">火车查询</a>
										</li>
										<li class="">
											<a href="#flight" data-toggle="tab">航班查询</a>
										</li>
										<li class="">
											<a href="#rules" data-toggle="tab">星座密语</a>
										</li>

										</li>
									</ul>
									<div id="myTabContent" class="tab-content">
										<div class="tab-pane fade active in" id="weather">
											<dl>
												<dd class="span5">
													<img src="<%=path%>/img/weather.jpg">
												</dd>
												<dt class="span5">
													<p>
														城市天气是运用于微信公众平台上让用户随时随地查询天气情况的一种功能，更能方便用户的出行。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通城市天气服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入“所在的城市+天气“，就能查询到所在城市的天气情况。
													</p>
													<p></p>
													<p></p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="bk">
											<dl>

												<dd class="span5">
													<img src="<%=path%>/img/bk.jpg">
												</dd>
												<dt class="span5">
													<p>
														百度百科利用微信为用户提供一个创造性的移动互联网平台，充分调动互联网所有用户的力量，汇聚上亿用户的头脑智慧，积极进行交流和分享，同时实现与搜索引擎的完美结合，从不同的层次上满足用户对信息的需求。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通百度百科服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入“百科查询内容“，如”百科姚明“，就能查询到姚明的所有相关资料。
													</p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="translate">
											<dl>
												<dd class="span5">
													<img src="<%=path%>/img/translate.jpg">

												</dd>
												<dt class="span5">
													<p>
														即时翻译是一款基于微信平台的翻译软件，支持语音输入与文本输入及发音，目前支持汉语、英语、汉语、日语、法语、德语、意大利语、西班牙语、捷克语、俄语和土耳其语之间的互相翻译。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通即时翻译服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需要输入“翻译查询内容（中文或英文）”，即可以查询到所要翻译的内容。
													</p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="stock">
											<dl>
												<dd class="span5">
													<img src="<%=path%>/img/stock.jpg">

												</dd>
												<dt class="span5">
													<p>
														股票查询是一款基于微信平台查询股票最动态的软件，能够方便用户理财。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通股票查询服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入"股票+数字代码 或
														股票+字母缩写"，如“股票payh、股票000001”，就可以查询到股票的最新动态。
													</p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="delivery">
											<dl>

												<dd class="span5">
													<img src="<%=path%>/img/delivery.jpg">
												</dd>
												<dt class="span5">
													<p>
														快递用户通过进入到快递查询公众账号，持快递公司邮单号，对包裹快递过程进行跟踪查询。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通快递查询服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入“ 快递单号”，如”查申通快递222222“，就可以查询到快递的最新动态。
													</p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="bus">
											<dl>
												<dd class="span5">

													<img src="<%=path%>/img/bus.jpg">
												</dd>
												<dt class="span5">
													<p>
														火车查询是一款基于微信平台的火车查询工具，用户可以通过火车查询公众平台随时随地查询火车班次时刻表。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通火车查询服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入“ 火车车次”，如“ 火车T109“，就可以查询到火车的最新动态。
													</p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="rules">
											<dl>
												<dd class="span5">
													<img src="<%=path%>/img/flight.jpg">

												</dd>
												<dt class="span5">
													<p>
														航班查询是一款基于微信平台的为用户提供实时航班查询的服务，用户可以通过航班查询公众平台随时随地查询到航班的最新动态。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、开通航班查询服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入“ 航班班次”，如“CZ5108“，就可以查询到航班的最新动态。
													</p>
												</dt>
											</dl>
										</div>

										<div class="tab-pane fade" id="rules">
											<dl>

												<dd class="span5">
													<img src="<%=path%>/img/rules.jpg">
												</dd>
												<dt class="span5">
													<p>
														星座密语是一款基于微信平台的为用户提供星座查询的服务，用户可以通过星座密语公众平台随时随地查询到星座的最新动态。
													</p>
													<h3>
														星座密语
													</h3>
													<p>
														1、开通星座密语服务，在状态栏选择“ON”即可；
													</p>
													<p>
														2、用户只需输入“ 星座”，如“射手座“，就可以查询到射手座相关的星座信息。
													</p>
												</dt>
											</dl>
										</div>

									</div>
								</div>
							</div>

							<div class="row-fluid">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微信会员卡 (SCRM)：</strong>移动时代的社会化会员管理平台
									</h4>
									<h5>
										微信会员卡
										通过在微信封平台内植入会员卡，帮助企业建立新一代的移动会员管理系统。清晰记录企业用户的消费行为并进行数据分析;还可根据用户特征进行精细分类，从而实现各种模式的精准营销。
									</h5>

								</div>

								<!--微信会员卡
(SCRM)-->
								<div class="box-content">
									<ul id="myTab" class="nav nav-tabs">
										<li class="active">
											<a href="#cardset" data-toggle="tab">会员卡设置</a>
										</li>
										<li class="">
											<a href="#cardman" data-toggle="tab">会员管理</a>
										</li>
										<li class="">
											<a href="#consumeman" data-toggle="tab">消费管理</a>
										</li>
										<li class="">
											<a href="#statistics" data-toggle="tab">数据统计</a>
										</li>
										<li class="">
											<a href="#storeset" data-toggle="tab">门店管理</a>
										</li>

										</li>
									</ul>

									<div id="myTabContent" class="tab-content">

										<div class="tab-pane fade active in" id="cardset">
											<dl>

												<dt class="span7">
													<p>
														会员卡设置是指商家通过在微信封平台内植入会员卡，对会员卡的设置来管理会员。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、 设置商家信息，包括商家名称、触发关键词、商户所在地、商家类别、商家详细地址、联系方式、商家兑换密码。
													</p>
													<p>
														2、
														点击下一步，设置卡片信息。包括会员卡名称、会员卡名称颜色、会员卡的背景、自己设计的背景、图文消息封面上传、会员卡的图标上传、卡号文字颜色、首页提示文字。
													</p>
													<p>
														3、 提交信息。
													</p>
													<p>
														4、 添加会员特权管理，设置标题、正文内容、可使用次数、时间限制，点击保存即可。
													</p>

												</dt>

												<dd class="span5">
													<img src="<%=path%>/img/cardset.png">
												</dd>
											</dl>
										</div>

										<div class="tab-pane fade" id="cardman">
											<dl>
												<dt class="span7">
													<p>
														会员管理是指商家可以通过微信封平台后台查看到用户领取会员卡的记录。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、商家可以通过输入用户名或者手机号码查询已经领取会员卡的用户信息，包括：会员卡号、姓名、手机号码、领卡时间、状态。
													</p>
													<p>
														2、商家可以点击“冻结”、“解冻”对用户的状态进行设置。
													</p>
												</dt>

												<dd class="span5">
													<img src="<%=path%>/img/cardman.png">
												</dd>

											</dl>
										</div>


										<div class="tab-pane fade" id="consumeman">
											<dl>
												<dt class="span7">
													<p>
														消费管理是指商家可以通过微信封平台后台查看到用户特权消费管理的信息。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、商家可以通过输入SN码查询特权消费用户的信息，包括：特权名称、用户名、电话、SN码、SN码派发时间、使用时间、消费门店、消费金额/(元)、状态。
													</p>
													<p>
														2、商家可以选择需要管理的用户，进行批量启用或者批量停用操作来改变用户的状态。
													</p>

												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/consumeman.png">
												</dd>

											</dl>
										</div>


										<div class="tab-pane fade" id="statistics">
											<dl>

												<dt class="span7">
													<p>
														数据统计是指商家可以通过微信封后台查询最近一个月新增会员的趋势和最近一个月消费次数趋势的走向图。
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、商家可以通过点击最近一个月新增会员的趋势图横坐标上的小圆点，查看到当天新增会员的人数。
													</p>
													<p>
														2、同时可以通过查看右侧新增会员的区域，查看到今日新增会员人数、昨日新增会员人数和目前总会员人数。
													</p>
													<p>
														3、商家还可以点击最近一个月消费次数的趋势图横坐标上的小圆点，查看到当天消费的人数。
													</p>
													<p>
														4、同样的通过右侧消费次数的区域内，可以查看到今日消费次数、昨日消费次数数和目前总消费次数。
													</p>

												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/statistics.png">
												</dd>
											</dl>
										</div>

										<div class="tab-pane fade" id="storeset">
											<dl>

												<dt class="span7">
													<p>
														门店设置是指商家通过微信封平台设置自己的商铺信息，从而让用户更加详细的了解商家的确切资料
													</p>
													<h3>
														使用方法：
													</h3>
													<p>
														1、点击“添加门店”，设置门店基本信息。包括：门店的名称、电话、地址、上传门店的图片。
													</p>
													<p>
														2、设置门店标识：通过滚动地图和拖拽地图来查找门店的位置，然后点击标记门店位置。
													</p>
													<p>
														3、填写门店简介。
													</p>
													<p>
														4、点击保存即可。
													</p>
												</dt>
												<dd class="span5">
													<img src="<%=path%>/img/storeset.png">
												</dd>
											</dl>
										</div>


									</div>
								</div>
							</div>
							<!--微官网-->
							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微官网：</strong>五分钟打造超炫微信3G网站
									</h4>
								</div>

								<div class="box-content">
									<dl>
										<dd class="span5">
											<img src="<%=path%>/img/microwebsite.png">
										</dd>
										<dt class="span6">
											<p>
												微信封全国首创微信3G网站，用户只要通过简单的设置，就能快速生成属于您自己的微信3G网站，并且有各种精美模板，供您选择，还有自定义模版，可以设计出自己的风格，让您的粉丝有种惊艳的感觉。在微信封官方微信号输入"首页"体验微信3G网站。
											</p>
											<p>
												1、微官网设置：商家可以设置微官网的标题、触发关键词、匹配模式、图文消息标题、上传图文消息封面、编辑图文消息简介，设置完全符合商家需求的个性化网站。
											</p>
											<p>
												2、首页幻灯片设置：商家可以设置幻灯片名称、显示顺序、上传幻灯片图片、填写外链网站或活动，设置在首页显示。
											</p>
											<p>
												3、分类管理：点击添加分类，设置分类名称、分类描述、显示顺序、上传分类图片、是否显示在首页、添加外链网站或活动、选择图标，这样就创建了一个分类。
											</p>
											<p>
												4、模板管理：首先选择栏目首页模板风格，然后选择图文列表模板风格，最后选择图文详细模板，这样就完成了一套完整的模板设置。
											</p>

										</dt>
									</dl>
								</div>

							</div>

							<!--微商城-->
							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微商城：</strong>打造微信移动电商
									</h4>
								</div>

								<div class="box-content">
									<dl>
										<dt class="span5">
											<p>
												“微商城”（又名Vshop）是由上海晖硕信息科技有限公司推出的，一款基于移动互联网的商城应用服务产品，以时下最热门的互动应用微信为媒介，配合微信5.0微信支付功能，实现商家与客户的在线互动，即时推送最新商品信息给微信用户，实现微信在线的购物功能。
											</p>
											<p>
												其主要功能包括：支持商品管理、支持会员管理、支持购物车、支持商品分类管理、支持订单管理、支持店铺设置、支持支付方式管理、支持配送方式管理。
											</p>
										</dt>
										<dd class="span5">
											<img src="<%=path%>/img/micromall.png" />
										</dd>
									</dl>
								</div>
							</div>

							<!--微酒店-->
							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微酒店：</strong>
									</h4>
								</div>

								<div class="box-content">
									<dl>
										<dt class="span1"></dt>
										<dd class="span4">
											<img src="<%=path%>/img/microhote.png">
										</dd>
										<dt class="span6">
											<p>
												“微酒店”是一款基于移动互联网的酒店应用服务产品，提供最全面的互联网营销解决方案，深谙客户需求、了解行业动向，并且具有强大的媒体资源控制力，代理着国内主流酒店网络媒体广告，调动一切资源，帮助酒店实现利益最大化。
											</p>
											<p>
												现已涵盖了五大模块包括：
											</p>
											<p>
												1、消息管理：包含自动消息回复和功能性消息编辑功能，优化对用户的消息服务，提升用户体验。
											</p>
											<p>
												2、营销管理：主要对群发消息进行管理，这里特别提一下，酒店可以根据不同营销需求精准推送消息给用户。
											</p>
											<p>
												3、门店管理：即对门店详情页面显示内容进行管理。
											</p>
											<p>
												4、用户管理：用户信息管理模块，给每个用户打上各种标签，为精准营销提供服务。
											</p>
											<p>
												5、数据统计;各式各样的数据为后期运营提供重要帮助。
											</p>

										</dt>
									</dl>
								</div>

							</div>

							<!--微推送(LSP)：-->
							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微推送(LSP)：</strong>微信附近的人——精准营销
									</h4>
								</div>

								<div class="box-content">
									<dl>
										<dt class="span5">
											<p>
												Location Surround
												Push(基于附近的人的消息推送)微信中基于LBS(基于位置的服务)的功能插件“查看附近的人”便可以使更多陌生人看到这种强制性广告。
											</p>
											<p>
												用户点击“查看附近的人”后，可以根据自己的地理位置查找到周围的微信用户。在这些附近的微信用户中，除了显示用户姓名等基本信息外，还会显示用户签名档的内容。所以用户可以利用这个免费的广告位为自己的产品打广告。
											</p>
											<p>
												营销人员在人流最旺盛的地方后台24小时运行微信，如果“查看附近的人”使用者足够多，这个广告效果也会不断随着微信用户数量的上升，可能这个简单的签名栏也会变成会移动的“黄金广告位”。
											</p>
										</dt>
										<dd class="span5">
											<img src="<%=path%>/img/micropush.jpg">
										</dd>
									</dl>
								</div>
							</div>



							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微医疗：</strong>是指通过微信封平台实现在线挂号、内容设置、预约查询、预约统计的一整套服务体系，能够有效解决患者挂号难、排队累、就医不方便等一系列难题。
									</h4>
								</div>

								<div class="box-content">
									<dl>
										<dd class="span5">
											<img src="<%=path%>/img/micromed.png">
										</dd>
										<dt class="span7">
											<p>
												微医疗是指通过微信封平台实现在线挂号、内容设置、预约查询、预约统计的一整套服务体系，能够有效解决患者挂号难、排队累、就医不方便等一系列难题。
											</p>
											<p>
												1、挂号设置：商家通过设置触发关键字、图文封面标题、上传图文封面、挂号页头部图片、编辑图文简介，来设置一整套挂号体系。
											</p>
											<p>
												2、内容设置：第一步，设置字段类型，包括：单行文字、性别选择、时间选择、多行文字、科室选择、专家选择、病种选择；第二步，设置字段名称，包括：患者姓名、性别、年龄、联系电话、预定日期、联系地址、预约科室、预约专家、预约病种等信息；第三步、设置初始内容：对应着字段名称填写对应的信息；第四步，操作：设置是否显示。
											</p>
											<p>
												3、预约查询：可以通过输入预约号、电话、姓名、预约科室、预约专家、预约病种或者预约日期的关键词，来查询到患者的基本信息。
											</p>
											<p>
												4、微医疗数据统计：通过点击“最近一月新增预约趋势图”横坐标上的圆点可以查询到当天的预约人数，在右边的新增预约板块可以查看到今日新增预约人数和昨日新增预约人数以及目前预约总人数；通过点击“最近一月到诊人数趋势图“横坐标上的圆点可以查询到当天的到诊人数，在右边的到诊人数板块可以查询到今日到诊人数和昨日到诊人数以及目前到诊总人数。
											</p>
										</dt>

									</dl>
								</div>
							</div>


							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">LBS图文回复</strong>是由商家设置店铺位置，用户提交当前所在位置后，可以找到最近的商家店铺，并进行一键导航、一键拨号，如果店铺当前有进行的活动（如：优惠券、刮刮卡），也可把活动显示出来。
									</h4>
								</div>

								<div class="box-content">

									<dl>
										<dt class="span7">
											<h3>
												使用方法：
											</h3>
											<p>
												1、新增，进入“新建一战到底活动”页，编辑活动名称，活动时间，触发关键词（如：一战到底），图文封面，活动说明，活动规则，每道系统题目分值、每道自定义题目分值（均可使用默认图片及内容，也可上传图片及自定义内容）；
											</p>
											<p>
												2、奖品设置、数量设置，根据商家需求填写，会在用户答题完毕显示；
											</p>
											<p>
												3、保存并设置考题，进入题目设置页面，可自定义添加题目，插入行业相关问题提高用户的认知，答题时间也可自定义（默认20秒/题），如不设置直接保存，则系统默认使用原有题库。
											</p>
											<P>
												备注：
											</P>
											<p>
												1、自定义LBS数据：设置商铺的地理位置（在“经纬度”输入）即可；
											</p>
											<p>
												2、填写标题、图文封面、电话、简介、详细页内容，并且可设置外链跳转到其他网址；
											</p>
											<P>
												3、当前商铺有活动可进行活动融合添加，勾选已经开始的活动，保存，生成LBS回复。
											</P>
										</dt>
										<dd class="span5">
											<img src="<%=path%>/img/lbs.jpg">
										</dd>
									</dl>

								</div>
							</div>


							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微相册：</strong>微相册作为微信封平台的一项主打基本功能，为微信封用户提供图片的存储和展示服务，同时拓展成为基于图片兴趣分享的社区型产品。在微相册里，你可以方便的创建相册，轻松地发布你的照片，方便你与家人、朋友分享快乐、感动和成长…还可以拓展为商家开展活动的一种展现方式。
									</h4>
								</div>

								<div class="box-content">

									<dl>
										<dd class="span5">
											<img src="<%=path%>/img/wxc.png">
										</dd>
										<dt class="span7">
											<h3>
												使用方法：
											</h3>
											<p>
												1、 相册设置：上传相册头部图片，选择相册的展现方式，点击保存。
											</p>
											<p>
												2、相册管理：创建相册，添加图片，拖拽图片可排序(图片大小不超过300k,50张上限)，点击保存即可。
											</p>

										</dt>

									</dl>

								</div>
							</div>



							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微留言：</strong>“微留言”是一种能为商家带来巨大的社会化流量的功能。“微留言”允许留言可以被分享于留言者的朋友圈、腾讯微博和发送给好友，意味着这些留言可以被无数的粉丝分享，用户对商家进行实时且客观的评价，真实的社交环境保证了留言的客观性和有效性。“微留言”的使用商家只需做好产品和用户服务即可，随着口碑的传播，消费者将源源不断。
									</h4>
								</div>

								<div class="box-content">

									<dl>

										<dt class="span7">
											<h3>
												使用方法：
											</h3>
											<p>
												1、留言板设置：设置触发关键词、填写显示名称、上传图文封面和头部图片、设置是否开放留言板，提交保存；
											</p>
											<p>
												2、在手机端留言板提交留言,然后在“留言列表”中找到自己的openid，并在管理员Openid处添加为管理员，点击保存；此时返回手机端重新触发打开留言板，就可以拥有“删除”管理权限；
											</p>
											<P>
												3、在留言列表里，可以看到所有用户的留言列表，可以使用“删除”和“拉黑”的功能；
											</P>
											<P>
												4、如果被拉黑的用户，将会在黑名单列表里显示。点击“取消拉黑”按钮，即可以取消拉黑。
											</P>
										</dt>
										<dd class="span5">
											<img src="<%=path%>/img/wly.png">
										</dd>
									</dl>

								</div>
							</div>


							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微调研：</strong>是一种以问卷调查的方式，基于微信封平台而展现出的一种新的在线调研应用方式，微调研已经完成调研项目数十个，涉及游戏、快速消费品、汽车、房产、美食、数码产品、家用电器等多个行业，具备有对微信用户进行生活形态研究的能力，受到行业客户的一致认可。
									</h4>
								</div>

								<div class="box-content">

									<dl>
										<dd class="span5">
											<img src="<%=path%>/img/wdy.png">
										</dd>
										<dt class="span7">
											<h3>
												使用方法：
											</h3>
											<p>
												1、进入微调研界面，新建微调研：设置微调研名称、微调研时间、回复关键词，（活动的关键词不能重复，且不建议包含标点符号，多个关键词时用空格分开）；
											</p>
											<p>
												2、选择图文封面，尺寸要求300K以下,大图片建议尺寸：720像素 * 400像素；
											</p>
											<P>
												3、设置开始说明，编辑活动开始的开场白；
											</P>
											<P>
												4、设置活动结束说明，编辑活动的结束语。
											</P>
											<p>
												5、保存并设置题目。
											</p>
											<p>
												6、新增题目：设置题目名称、编辑选项、设置题目答案最多数目，点击保存即可。
											</p>
											<p>
												备注：1、调研最多可以添加5条；
											</p>
											<p>
												2、如果手动终止某条进行中的调研,那么该条调研的全部数据将不被保存,请谨慎！
											</p>

										</dt>

									</dl>

								</div>
							</div>

							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微喜帖：</strong>颠覆传统方式，让庆典更时尚环保
									</h4>
									<h4>
										微喜帖是针对结婚庆典而推出的一款行业产品，主要是为计划结婚的用户们，通过使用微喜帖应用来向亲朋好友传播自己即将结婚的动态，可以展现用户想要表达的话、结婚日期、地址、导航、接待电话，同时亲朋好友可以在微喜帖平台上提交赴宴通知、送上祝福，并且转发喜帖。
									</h4>
								</div>

								<div class="box-content">

									<dl>

										<dt class="span7">
											<h3>
												使用方法：
											</h3>
											<p>
												1、进入喜帖管理界面，点击添加喜帖，设置喜帖标题、触发关键词、上传喜帖封面、开场动画、缩略图；
											</p>
											<p>
												2、填写新郎名字、新娘名字、选择新郎和新娘名字排列顺序；
											</p>
											<P>
												3、填写联系电话、婚宴日期、宴席地址、添加喜帖视频、选择背景音乐、上传喜帖图片；
											</P>
											<P>
												4、设置密码，可以通过微信查看来宾名单，编辑想要说的话，限200个字以内，点击保存。
											</P>
										</dt>
										<dd class="span5">
											<img src="<%=path%>/img/wxt.png">
										</dd>
									</dl>

								</div>
							</div>

							<div class="box">
								<div class="box-title">
									<h4 class="text-warning">
										<strong class="text-info">微汽车：</strong>一键在线预约
									</h4>
									<h4>
										微汽车采用微信封平台进行汽车的销售管理、预约保养、预约试驾、保险计算、车贷计算、车型比较、违章查询等功能，整个过程非常便捷，省时省力省心，并通过与微信封平台有交互能力的手机客户端，快速便捷的实现了商家的销售管理与预约过程，同时也实现了客户无需进入4s店就能进行预约保养和试驾的功能。
									</h4>
								</div>

								<div class="box-content">

									<dl>

										<dt class="span7">
											<h3>
												使用方法：
											</h3>
											<p>
												1、 进入微汽车设置界面，设置触发关键词、标题、上传图文封面、编辑图文消息简介，点击保存；
											</p>
											<p>
												2、 进入品牌管理界面，添加品牌：编辑品牌名称、官方网站地址、上传logo标识、设置显示顺序、品牌简介，点击保存；
											</p>
											<P>
												3、 进入车系管理界面，添加车系：选择品牌、编辑车系名称、车系简称、上传车系图片、设置显示顺序、编辑车系亮点，点击保存；
											</P>
											<P>
												4、
												进入车型管理界面，添加车型：编辑车型名称、选择品牌和车系、年款、设置显示顺序、设定指导价、经销商报价、上传图片（50张以内）、设置排量、档位个数、选择变速箱，点击保存；
											</P>
											<p>
												5、销售管理：添加销售顾问，输入姓名、上传头像、填写电话号码、设置显示顺序、选择类型（售前/售后）、编辑简介，点击保存；
											</p>
											<p>
												6、预约保养：点击新增预约，设置触发关键词、图文消息标题、上传图文封面、填写预约地址、设置地图标识、填写预约电话、上传订单页头部图片、编辑订单详情、设置重命名订单、重命名订单说明、重命名订单电话、订单接收设置、填写订单的起始和结束时间，设置订单内容，点击保存；
											</p>
											<p>
												7、预约试驾：基本流程与预约保养一样，用户只需按照流程步骤来操作即可完成预约试驾功能，点击保存；
											</p>
											<p>
												8、使用工作：保险计算、车贷计算、全款计算、车型比较，商家可以根据需求，设置打开功能。
											</p>
											<p>
												9、点击“微官网”，进入微官网界面
											</p>
											<p>
												a、设置“首页幻灯片”：添加几张您的微汽车首页的幻灯片，并做简短的描述；
											</p>
											<p>
												b、“微官网”--“分类管理”：请建立6个状态为“显示”的分类（分别是最新资讯全部车型、销售管理、预约保养、预约试驾、实用工具），依次在“回复类型”中选择调用“微汽车”下的6个功能模块；
											</p>
											<p>
												c、“微官网”--“模板管理”中选择我们为您精心设计的微汽车模板“模板0”以及“图文列表模板风格”中选择“列表0”；
											</p>
											<p>
												d、“素材库”--“图文回复”：中添加新闻资讯内容，并将分类设置为“最新资讯”。
											</p>
										</dt>
										<dd class="span5">
											<img src="<%=path%>/img/wqc.png">
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		</div>
		</div>
		<div id="footer">
			<p>
				Copyright © 2011-2013 微信封. All Rights Reserved
			</p>
			<a href="#" class="gototop"><i class="icon-arrow-up"></i>
			</a>
		</div>

	</body>
</html>
