<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css"
			media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/bootstrap.min.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/bootstrap-responsive.min.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/wx_style.css" media="all" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/todc_bootstrap.css" media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/themes.css"
			media="all" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/inside.css"
			media="all" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/inside.js"></script>
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
								<div class="span12">
									<h3>
										<i class="icon-cog"></i>使用指南
									</h3>
								</div>
							</div>
							<ul id="myTab" class="nav nav-tabs" style="margin-top: 20px;">
								<li class="active">
									<a href="#Doctut" data-toggle="tab"><strong>文档教程</strong> </a>
								</li>
								<li class="">
									<a href="#videotut" data-toggle="tab"><strong>视频教程</strong>
									</a>
								</li>

							</ul>

							<div id="myTabContent" class="tab-content">
								<div class="box-content tab-pane fade active in" id="Doctut">
									<div class="box">

										<div class="box-content">

											<ul class="span3">
												<li>
													<h4>
														1 微信封简介
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#vxinfeng">1.1 什么是微信封</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#kt">1.2
																企业为什么开通微信公众号</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#ys">1.3 微信封平台优势</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#tc">1.4 微信封套餐介绍</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#gm">1.5 微信封如何购买充值</a>
														</li>
													</ul>

												</li>

												<li>
													<h4>
														5 微信会员卡
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#sz">5.1 会员卡设置</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#sy">5.2 会员卡使用</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#hygl">5.3会员管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#czjl">5.4 充值记录</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#jfcl">5.5 积分策略</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#tzgl">5.6 通知管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#tqgl">5.7 特权管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#yhqgl">5.8 优惠券管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#lpqgl">5.9 礼品券管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#sjtj">5.10 数据统计</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#mdgl">5.11 门店管理</a>
														</li>
													</ul>

												</li>


												<li>
													<h4>
														9 微房产
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#lpjj">9.1 楼盘简介</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#zlp">9.2 子楼盘</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#lphx">9.3楼盘户型</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#lpxc">9.4 楼盘相册</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#fyyx">9.5 房友印象</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#zjdp">9.6 专家点评</a>
														</li>

													</ul>

												</li>

											</ul>

											<ul class="span3">

												<li>
													<h4>
														2 基础建设
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#zc">2.1 如何注册微信公众号</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#pt">2.2 如何注册微信封平台</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#zh">2.3 如何添加公众号</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#cs">2.4 账户信息参数详解</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#yy">2.5 运营图表</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#mr">2.6 默认设置</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#hf">2.7 关注时回复</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wb">2.8 文本回复</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#tw">2.9 图文回复</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#cd">2.10 自定义菜单</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#lbs">2.11 LBS回复</a>
														</li>


													</ul>
												</li>
												<li>
													<h4>
														6 微官网
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#gw">6.1 微官网设置</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#hdp">6.2 首页幻灯片设置</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#fl">6.3 分类管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wz">6.4 文章添加</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#mb">6.5 模板管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#kj">6.6 快捷与版权</a>
														</li>
													</ul>
												</li>

												<li>
													<h4>
														10 微预约
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#yygl">10.1 预约管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#yytj">10.2 预约统计</a>
														</li>
													</ul>
												</li>



											</ul>

											<ul class="span3">
												<li>
													<h4>
														3 微活动
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#yhq">3.1 优惠券</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#ggk">3.2 刮刮卡</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#dzp">3.3 大转盘</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wtp">3.4 微投票</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#yzdd">3.5 一战到底</a>
														</li>
													</ul>
												</li>
												<li>
													<h4>
														7 微酒店
													</h4>

													<ul>
														<li>
															<a href="javascript:void()" rel="#jdgl">7.1 酒店管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#ddgl">7.2 订单管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#fjsz">7.3 房间设置</a>
														</li>

													</ul>


												</li>


												<li>
													<h4>
														11 微餐饮
													</h4>

													<ul>
														<li>
															<a href="javascript:void()" rel="#wcy1">11.1 门店管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wcy2">11.2 分类管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wcy3">11.3 标签管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wcy4">11.4 菜品管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wcy5">11.5 智能选餐</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#wcy6">11.6 餐台设置</a>
														</li>

													</ul>


												</li>

											</ul>

											<ul class="span3">
												<li>
													<h4>
														4 微服务
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#tq">4.1 城市天气</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#bk">4.2 百度百科</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#fy">4.3 即时翻译</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#gp">4.4 股票查询</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#kd">4.5 快递查询</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#hc">4.6 火车查询</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#hb">4.7 航班查询</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#xz">4.8 星座密语</a>
														</li>
													</ul>
												</li>

												<li>
													<h4>
														8 微汽车
													</h4>
													<ul>
														<li>
															<a href="javascript:void()" rel="#qcsz">8.1汽车设置</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#ppgl">8.2品牌管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#cxgl">8.3车系管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#cvgl">8.4车型管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#xsgl">8.5销售管理</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#yyby">8.6预约保养</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#yysj">8.7预约试驾</a>
														</li>
														<li>
															<a href="javascript:void()" rel="#sygj">8.8实用工具</a>
														</li>

													</ul>

												</li>


											</ul>



											<style>
.span4 li {
	line-height: 30px;
}
</style>
										</div>
									</div>
									<!-- 1 微信封简介-->
									<div class="box">
										<div class="box-title">
											<h4>
												<a id="vxinfeng">1.1、什么是微信封？</a>
											</h4>
										</div>
										<div class="box-content">
											微信封是打造的一个专门针对微信公众账号提供营销推广服务的第三方平台。主要功能是针对微信商家公众号提供与众不同的、有针对性的营销推广服务。通过微信封平台，用户可以轻松管理自己的微信各类信息，对微信公众账号进行维护、开展智能机器人、在线发优惠劵、抽奖、刮奖、派发会员卡、打造微官网、开启微团购等多种活动，对微信营销实现有效监控，极大扩展潜在客户群和实现企业的运营目标。微信封平台很好的弥补了微信公众平台本身功能不足、针对性不强、交互不便利的问题，为商家公众账号提供更为贴心的、且是核心需求的功能和服务。在线优惠劵、转盘抽奖、微信会员卡等推广服务更是让微信成为商家推广的利器。智能客服的可调教功能让用户真正从微信繁琐的日常客服工作中解脱出来，真正成为商家便利的新营销渠道。
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="kt">1.2 企业为什么开通微信公众号</a>
											</h4>
										</div>
										<div class="box-content">
											<h5>
												移动互联网的趋势
											</h5>
											<p>
												平台化电子商务最缺的不是商家是消费者。
											</p>
											<p>
												哪里有人哪里就有商业，哪里就有盈利空间。据第三方统计70%的手机用户开通了个人微信，其年龄涵盖了小学生至老年人，各年龄阶层的人群。截止目前腾讯已拥有4亿的微信用户，7亿的qq用户。消费者才是企业追逐的目标，人的数量决定了财富的数量。
											</p>

											<h5>
												微信营销的趋势与巨大利润空间
											</h5>
											<p>
												微信营销是继微博后的最大营销机遇！
											</p>
											<p>
												淘宝的第一批用户是一批什么都敢尝试的大学生，如今他们已经大多成为千万、亿万的商务人群。微信营销时代已经到来，其势不可挡的趋势，已严重冲击着传统的销售渠道。错过了淘宝时代，错过了微博时代，不要错过微信营销时代。基于微信营销的第一批企业必然成为未来的微信首批富豪。
											</p>


											<h5>
												微信的粘性和使用惯性
											</h5>
											<p>
												没有人会天天上淘宝，也没有人会天天刷微博——但微信可以。
											</p>
											<p>
												首先微信是一款沟通工具，实时通讯的特性决定了其使用价值，朋友圈的分享让社会化关系代替了点对点的交互，这不仅是一种关系，更是影响力！更是控制力！基于关系网的微信，平民也有明星的感觉。其用户黏度没有任何一个产品可以比拟。微信用其巨大的威力吸引、稳定着消费者，消费者已经准备好了，企业还不来吗？
											</p>

											<h5>
												企业微信公众账号的作用与开通意义
											</h5>
											<p>
												企业微信公众账号是企业媒体发布平台、销售信息发布平台、危机公关平台、消费者互动平台、促销活动开展平台、新品展示平台、产品在线销售平台、网上支付平台、调研平台、公司企业文化传播平台、人才招聘平台等，一切企业关注的，企业需要的在企业微信公众账号都可以实现！！
											</p>

											<h5>
												企业为什么要开通、运营企业微信公众账号
											</h5>
											<P>
												重点的关键点——品牌、产品销售、人才、客户
											</P>
											<p>
												1) 企业微信公众账号的媒体属性:10万个粉丝等于地方性报纸;100万个粉丝等于全国性的报纸头条新闻。
											</p>
											<p>
												2) 产品销售平台:在线购买、在线支付、促销活动。最活跃的、反应速度最快、互动最强的电子商务平台
											</p>
											<p>
												3) 人才招聘的平台：免费的人才招聘渠道，未来人才招聘的主流渠道
											</p>
											<p>
												4)
												客户：客户在线互动、客户体验、新品试用、消费者意见调研、有奖活动、在线咨询甚至网上订餐、送货服务、钟点服务、上门维修等。
											</p>

											<h5>
												企业微信公众平台的现状
											</h5>
											<p>
												功能单一、操作复杂、用户体验差、没有差异化功能。
											</p>
											<h6>
												TIPS1:什么是微信公众平台？
											</h6>
											<p>
												微信公众平台是腾讯公司在微信的基础上新增的功能模块，通过这一平台，个人和企业都可以打造一个微信的公众号，并实现和特定群体的文字、图片、语音的全方位沟通、互动。微信公众平台注册地址：https://mp.weixin.qq.com/
											</p>
											<h6>
												TIPS2:微信封主要用来做什么？
											</h6>
											<p>
												微信封平台主要是为企业公众号提供个性化服务，他是一个第三方平台，企业只需要把公众平台接口地址和Token换成微信封的接口，即可以实现微信封平台上所有的功能，利用微信封平台可以很快的定制一个电子会员卡，也可以通过模板5分种内打造一个超炫3G网站，不需要服务器和域名，统一由微信封提供。详细阅读：www.vxinfeng.com
											</p>
											<h5>
												微信封全面解决当前企业微信营销困境
											</h5>

											<table id="listTable"
												class="table table-bordered table-hover  dataTable">
												<tr>
													<th scope="col">
														当前企业遇到的困境
													</th>
													<th scope="col">
														解决方案
													</th>
												</tr>
												<tr>
													<td>
														传统网络营销遭遇瓶颈
													</td>
													<td>
														<strong>微营销成为企业营销新渠道</strong> 微信封为企业微信营销提供智能的服务平台和完整的解决方案
													</td>
												</tr>
												<tr>
													<td>
														微信营销有理论、无方法，想法无法落地
													</td>
													<td>
														<strong>微信封——理论加实践的产物</strong> 微信封平台根据市场行业需求，制定行业标准解决方案。
													</td>
												</tr>
												<tr>
													<td>
														腾讯对企业开发要求门槛过高
													</td>
													<td>
														<strong>微信封平台解决企业开发烦恼</strong>
														微信封大部分技术研发人员来自百度、腾讯，强大的技术后盾企业微信开发提供有力的保障。
													</td>
												</tr>
												<tr>
													<td>
														腾讯公众平台无法满足企业需求
													</td>
													<td>
														<strong>行业需求，定制开发</strong>
														根据市场上目前行业的需求，设定相应的功能，从而满足了企业微信营销的需求。
													</td>
												</tr>
												<tr>
													<td>
														企业定制开发成本高、周期长
													</td>
													<td>
														<strong>微信封——微信智能服务平台</strong>
														微信封在定制开发的基础上，抽取大部分行业定制需求，对产品进行标准化，企业无需开发即可实现强大的功能。
													</td>
												</tr>
												<tr>
													<td>
														微信5.0群发功能限制，个性化服务凸现
													</td>
													<td>
														<strong>微信封——功能强大，满足个性需求</strong>
														针对微信商家公众号提供与众不同的、有针对性的、更为贴心的、核心需求的功能和服务
													</td>
												</tr>
											</table>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="ys">1.3、微信封平台优势 </a>
											</h4>
										</div>
										<div class="box-content">
											<h5>
												操作简洁
											</h5>
											<p>
												微信封平台的管理界面简单易用、操作方便，大量人性化设计，一分钟开启微信营销，无需安装任何软件，全自动“云”平台，多账号管理，只需要简单的设置即可完成复杂的微信营销推广功能。
											</p>
											<h5>
												功能强大
											</h5>
											<p>
												通过微信封平台，用户可以轻松管理自己的微信各类信息，对微信公众账号进行维护、开展智能机器人、在线发优惠劵、抽奖、刮奖、派发会员卡、打造微官网、开启微团购等多种活动，对微信营销实现有效监控，在线优惠劵、转盘抽奖、微信会员卡等推广服务更是让微信成为商家推广的利器，智能客服的可调教功能让用户真正从微信繁琐的日常客服工作中解脱出来，真正成为商家便利的新营销渠道，极大扩展潜在客户群和实现企业的运营目标。
											</p>
											<h5>
												专业团队
											</h5>
											<p>
												一站式管理，平台支持，拥有多年网络营销经验的管理团队，强大的技术支持，专注于社会化媒体的研究，自有全国百万订阅量公众账号、全国主要城市区域号，以及微信电商团队实际操作，运营上海本地公众账号用户过万，熟练掌握获取本地用户的方法，不做整合营销，我们只专注于微信。
											</p>
											<h5>
												资深背景
											</h5>
											<p>
												微信封已经引入国内知名风险投资，技术团队由国内知名IT公司（百度、腾讯）核心成员组成、其技术总监为原百度商务搜索部技术经理，商务总监为原腾讯IMG商务经理，运营团队有着丰富的互联网推广经验和资源，并与腾讯保持密切合作，因此可以为商家提供一个更智能、更便捷的微信公众服务平台。
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="tc">1.4 微信封套餐介绍</a>
											</h4>
										</div>
										<div class="box-content">
											<table id="listTable"
												class="table table-bordered table-hover dataTable table-striped">
												<tr>
													<td rowspan=2>
														套餐功能
													</td>
													<td rowspan=2>
														项目内容
													</td>
													<td rowspan=2>
														试用版
													</td>
													<td rowspan=2>
														标准版
													</td>
													<td rowspan=2>
														增强版
													</td>
													<td colspan=9 style="text-align: center;">
														行业套餐
													</td>
													<td rowspan=2>
														至尊版
													</td>
												</tr>
												<tr>
													<td>
														微医疗
													</td>
													<td>
														微酒店
													</td>
													<td>
														微汽车
													</td>
													<td>
														微房产
													</td>
													<td>
														微婚庆
													</td>
													<td>
														微商城
													</td>
													<td>
														微餐饮
													</td>
													<td>
														微旅游
													</td>
													<td>
														微商场
													</td>
												</tr>
												<tr>
													<td>
														月请求数
													</td>
													<td>
														每月请求数
													</td>
													<td>
														2000
													</td>
													<td>
														50000
													</td>
													<td>
														150000
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
												</tr>
												<tr>
													<td rowspan=6>
														自定义关键字回复条数
													</td>
													<td>
														默认设置
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														关注时回复
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														文本回复
													</td>
													<td>
														100
													</td>
													<td>
														500
													</td>
													<td>
														2000
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
												</tr>
												<tr>
													<td>
														图文回复
													</td>
													<td>
														10
													</td>
													<td>
														500
													</td>
													<td>
														2000
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
												</tr>
												<tr>
													<td>
														语音回复
													</td>
													<td>
														0
													</td>
													<td>
														200
													</td>
													<td>
														1000
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
												</tr>
												<tr>
													<td>
														LBS回复
													</td>
													<td>
														0
													</td>
													<td>
														200
													</td>
													<td>
														1000
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
													<td>
														不限
													</td>
												</tr>
												<tr>
													<td>
														版权
													</td>
													<td>
														显示微信封版权
													</td>
													<td>
														有
													</td>
													<td>
														有
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
													<td>
														无
													</td>
												</tr>
												<tr>
													<td>
														公众账号数
													</td>
													<td>
														数量
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														1
													</td>
													<td>
														2
													</td>
												</tr>
												<tr>
													<td>
														自定义菜单
													</td>
													<td>
														支持多级菜单
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=5>
														微活动
													</td>
													<td>
														优惠券
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														刮刮卡
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														大转盘
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微投票
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														一战到底
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=15>
														微服务
													</td>
													<td>
														小黄鸡
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														城市天气
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														周边商家
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														百度百科
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														即时翻译
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														今日老黄历
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														看新闻
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														金银价查询
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														快递查询
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														在线听歌
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														火车查询
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														测试人品
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														成语解释
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√td>
														<td>
															√
														</td>
														<td>
															√
														</td>
														<td>
															√
														</td>
														<td>
															√
														</td>
												</tr>
												<tr>
													<td>
														看笑话
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														股票查询
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=11>
														微信会员卡
													</td>
													<td>
														商家设置
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														会员卡设置
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														会员管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														充值记录
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														积分策略
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														通知管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														特权管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														优惠券管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														礼品券管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														数据统计
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														门店管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微官网
													</td>
													<td>
														个性官网
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微留言
													</td>
													<td>
														粉丝留言
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微相册
													</td>
													<td>
														个性图片、相片等
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微预约
													</td>
													<td>
														预约系统
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微调研
													</td>
													<td>
														粉丝调研
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微团购
													</td>
													<td>
														在线团购
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微签到
													</td>
													<td>
														粉丝签到
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														独享空间
													</td>
													<td>
														图片、视频空间大小
													</td>
													<td>
														10M
													</td>
													<td>
														50M
													</td>
													<td>
														200M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
													<td>
														300M
													</td>
												</tr>
												<tr>
													<td>
														微推送
													</td>
													<td>
														附近人推送
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微喜帖
													</td>
													<td>
														喜帖
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微酒店
													</td>
													<td>
														酒店预定
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=4>
														微医疗
													</td>
													<td>
														挂号设置
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														内容设置
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														预约查询
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														预约统计
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=7>
														微汽车
													</td>
													<td>
														品牌管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														车系管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														车型管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														销售管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														预约保养
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														预约试驾
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														实用工具
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=6>
														微房产
													</td>
													<td>
														楼盘简介
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														子楼盘
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														楼盘户型360度全景展示
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														楼盘相册
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														房友印象
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														专家点评
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td rowspan=4>
														微商城
													</td>
													<td>
														商品管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														订单管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														会员管理
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														系统设置
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微餐饮
													</td>
													<td>
														订餐系统
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微旅游
													</td>
													<td>
														微旅游
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
												</tr>
												<tr>
													<td>
														微商场
													</td>
													<td>
														微商场
													</td>
													<td>
														√
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														×
													</td>
													<td>
														√
													</td>
													<td>
														√
													</td>
												</tr>
											</table>

										</div>


									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="gm">1.5、微信封如何购买充值</a>
											</h4>
										</div>
										<div class="box-content">
											<h5>
												操作简洁
											</h5>
											<p>
												如果是代理商开户请直接联系当地代理商，如果是总部直销客户，只需要点击升级按钮，会联系到对应的充值专员，目前微信封暂不支持在线充值，充值专员会发微信封相关银行账户信息，充值好后告诉充值专员即可完成充值。
											</p>

										</div>

									</div>

									<!--2 基础建设-->

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="zc">2.1、如何注册微信公众号？</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												登录mp.weixin.qq.com，点击注册填写相关信息即可申请微信公众号，微信公众号只能在PC端登录，不能用手机端，公众号分服务号和订阅号，企业可申请服务号，个人、自媒体申请订阅号，服务号每个月限制群发一条，而订阅号每天可发送一次，但消息会折叠起来放在一个订阅号的消息盒子里，服务号仍然是放在聊天列表。
											</p>
											<p>
												<img src="<%=path%>/img/zhuce.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="pt">2.2、如何注册微信封平台？</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												直接网址输入www.vxinfeng.com或者百度输入微信封，点击进入微信封官方网站，点击免费试用填写用户名、密码、手机、邮箱、QQ即可进行在线注册，前期邀请码开放，后期功能稳定则需要邀请码，所以大家珍惜机会，赶紧注册。
											</p>
											<p>
												<img src="<%=path%>/img/wmzhuce.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="zh">2.3、如何添加公众号？</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												微信封平台对不同版本添加公众号的数量作相应的限制，除了黄金版可以同时添加3个公众号，试用版、标准版、增强版都只能添加一个公众号。添加点击公众号按钮，进入添加公众号界面，如果有什么问题都可以随时咨询微助手。
											</p>
											<p>
												<img src="<%=path%>/img/zh1.png">
											</p>
											<p>
												<img src="<%=path%>/img/zh2.png">
											</p>
											<p>
												1、公众号名称与微信公众平台公众号名称保持一致。
											</p>
											<p>
												2、公众号原始id，这个很重要，公众平台进行通讯就靠这个ID，所以不能填错，如果在填的时候遇到问题可以点不懂就问我或者直接联系在线客服。
											</p>
											<p>
												a. 登录微信公众平台mp.weixin.qq.com，点设置，查看帐号信息
											</p>
											<p>
												<img src="<%=path%>/img/zh3.gif">
											</p>
											<h5>
												b.在账号信息里面可以直接查看到原始ID，不需要像之前那样保存二维码图片到桌面，再查看图片的名称来获得二维码。
											</h5>
											<p>
												<img src="<%=path%>/img/zh4.gif">
											</p>
											<h5>
												3、微信号：公众号的英文名称，这个是唯一的。
											</h5>
											<h5>
												4、图文统计代码：用来统计图文浏览的相关数据，目前是可以添加第三方统计平台，如百度统计、CNZZ，后期微信封会加入对图文的统计。填好表单如下：
											</h5>
											<p>
												<img src="<%=path%>/img/zh5.png">
											</p>
											<p>
												点击保存，提示将接口地址和TOKEN绑定到腾讯公众平台;
											</p>
											<p>
												<img src="<%=path%>/img/zh6.png">
											</p>
											<h5>
												5、绑定URL和TOKEN。
											</h5>
											<p>
												a. 登录微信公众平台mp.weixin.qq.com(注意需提前注册好公众号)
											</p>
											<p>
												b. 点击高级功能，进入开发模式。（注：如果没有高级功能说明你注册的账号还在审核中，审核通过后会有高级功能）
											</p>
											<p>
												c. 开启开发模式（注：开启开发模式编辑模式则不能用，两者只能选其一）
											</p>
											<p>
												<img src="<%=path%>/img/zh7.png">
											</p>
											<p>
												d.
												填写接口URL和对应TOKEN，点击提交。如果提示提交成功，说明公众号绑定成功，如果出现服务器无法正确响应TOKEN验证，说明URL或者TOKEN有问题，请仔细检查。如果遇到问题可以随时咨询微信封客服。
											</p>
											<p>
												<img src="<%=path%>/img/zh8.png">
											</p>
											<p>
												在公众号绑定完URL和TOKEN，整个添加公众号的操作完毕，可以看到如下界面。
											</p>
											<p>
												<img src="<%=path%>/img/zh9.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="cs">2.4、账户信息参数详解</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												<img src="<%=path%>/img/cs1.png">
											</p>
											<p>
												<strong>套餐有效期 ： </strong>指套餐到期的时间，套餐结束后公众号将会被冻洁，所有功能将不能使用。
											</p>
											<p>
												<strong>文本自定义：</strong>文本自定义是指素材库 里面关键词回复里定义文本回复的条数。
											</p>
											<p>
												<strong>图文自定义：</strong>图文自定义是指素材库 里面关键词回复里定义图语言回复的条数。
											</p>
											<p>
												<strong>语音自定义：</strong>语音自定义是指素材库 里面关键词回复里定义语音回复的条数。
											</p>
											<p>
												<strong>请求数：</strong>请求是指粉丝通过公众号发起一次互动，比如输入一个关键词、发送一个位置都记为一次请求。不同版本请求数不一样，黄金版不限请求数。
											</p>
											<p>
												<strong>请求数剩余：</strong>指当月还剩下的请求数。
											</p>
											<p>
												<strong>总请求数：</strong>指从账号创建到现在总的请求数。
											</p>
											<p>
												<strong>本月请求数：</strong>指本月内总的请求数。
											</p>
											<p>
												<strong>每月可请求总数：</strong>指每月限制的请求总数，黄金版不限。
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yy">2.5、运营图表</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												目前微信封主要是统计公众号每天文本、图文、语音请求数和总的请求数：
											</p>
											<p>
												<img src="<%=path%>/img/yy1.png">
											</p>
											<p>
												每天公众号新增关注数、取消关注数及净增长数。
											</p>
											<p>
												<img src="<%=path%>/img/yy2.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="mr">2.6、默认设置</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												<img src="<%=path%>/img/mr1.png">
											</p>
											<p>
												<strong>默认关注回复：</strong>是指当用户关注公众号后发送的第一条信息，目前微信封支持关注时文字回复和图文回复（支持多图文）。
											</p>
											<p>
												<strong>默认无匹配回复：</strong>是指当用户触发关键词无内容匹配时自动回复的内容，这边需要填写已经定义好的关键词，这个关键词在文本回复和图文回复里定义。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="hf">2.7、关注时回复</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												<img src="<%=path%>/img/hf1.png">
											</p>
											<p>
												<strong>关注时回复：</strong>指粉丝关注微信公众号后推送的第一条信息，可以是文本，也可以是图文，如果需要图文回复，点击切换到图文模式。
											</p>
											<p>
												<img src="<%=path%>/img/hf2.png">
											</p>
											<p>
												TIPS：如果想关注时默认进到微网站，可以不填写图文内容，然后在图文外链地址里面填写微官网首页地址，微官网首页地址在微官网设置里可以看见。
											</p>
											<p>
												<img src="<%=path%>/img/hf3.png">
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wb">2.8、文本回复</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												文本回复指添加关键后回复的内容是文本。点击添加按钮
											</p>
											<p>
												<img src="<%=path%>/img/mr1.png">
											</p>
											<p>
												如上示例：定义了关键词你好，当用户在公众号发送“你好”的时候，将会回复“哈哈”
											</p>
											<p>
												如果想定义多个关键词用空格隔开，如：你好 在吗 哈哈
											</p>
											<p>
												匹配类型分完全匹配和包含匹配，考虑到包括匹配出现的情况太多，目前只支持完全匹配。
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="tw">2.9、图文回复</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												点击添加图文按钮进入图文编辑页面
											</p>
											<p>
												<img src="<%=path%>/img/tw1.png">
											</p>
											<p>
												填写触发关键词，图文标题、图文简介，上传图文封面。
											</p>
											<p>
												<img src="<%=path%>/img/tw2.png">
											</p>
											<p>
												<strong> 所属类型</strong>是指图片所属分类，默认可以不选择分类，如果需要定义分类，需要在微官网—分类管理，添加对应分类。
											</p>
											<p>
												<strong>详细页是否显示封面</strong>就是详情的内容页头部是否会将图文的封面显示在顶部，如下图。
											</p>
											<p>
												<strong>图文详细内容</strong>即是添加图文的完整内容。
											</p>
											<p>
												多图文是指在触发关键词的时候显示多条图文。目前多图文最多支持9条。
											</p>
											<p>
												点击添加弹出多图文选择框
											</p>
											<p>
												<img src="<%=path%>/img/tw3.png">
											</p>
											<p>
												在这里多图文并不是同时创建9条图文，而是一条一条创建，如果想选择多图文，只是在要显示多图文勾选之前添加的图文，即可进行关联，实现多图文。
											</p>
											<p>
												<strong>推荐阅读</strong>也是同样的道理，在这里就不多说，推荐阅读会显示在详情页的下面。
											</p>
											<p>
												<strong>图文外链地址</strong>是指当用户点击图文消息框的时候，不进入对应的图文详情页，而是直接进行已有的网站链接，这个功能可以很好的整合自身的一些资源。如果企业本身有移动3G站，可以直接链到3G站。
											</p>
											<p>
												<img src="<%=path%>/img/tw4.png">
											</p>
											<p>
												添加完之后点击保存，即完成图文回复创建。
											</p>
											<p>
												下面是回复效果展示，我们在民营医疗那些事公众号输入关键词”营销”“微信封资源” “微信封团队测试一下效果。
											</p>
											<p>
												<img src="<%=path%>/img/tw5.png" width="206" height="360">
												<img src="<%=path%>/img/tw6.png" width="206" height="360">
												<img src="<%=path%>/img/tw7.png" width="206" height="360">
											</p>
											<p>
												注：图文回复是整个微信封平台的素材库，里面定义的内容在微官网里会用到，所在在定义前最好创建好分类，之前在微官网里就可以直接显示。
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="cd">2.10、自定义菜单</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												自定义菜单是企业微信公众号消息框底部的导航菜单，可以很方便用户进行交互，相当于一个轻量级的APP。
											</p>
											<p>
												目前自定义菜单只对服务号开放，服务号认证需要企业认证，所以如果是订阅号这个功能是用不了的，如果服务号还没有申请自定义菜单，可以点击-高级功能-开发模式，会有一栏会话界面自定义菜单，点击申请就可以了，申请成功后的界面如下：
											</p>

											<p>
												<img src="<%=path%>/img/cd1.png">
											</p>
											<p>
												<img src="<%=path%>/img/cd1.png">
											</p>
											<p>
												将AppId 和AppSecret填写在微信封平台自定义菜单-授权设置 应用ID和应用密匙里
											</p>
											<p>
												<img src="<%=path%>/img/cd3.png">
											</p>
											<p>
												<strong> 菜单设置:</strong>自定义菜单目前限制只能3个一级菜单，5个二级菜单，微信封后台也对添加菜单作了相应的限制，只允许同时启用三个一级菜单，五个二级菜单。
												并且只有保存主菜单后才能添加子菜单。
											</p>
											<p>
												<img src="<%=path%>/img/cd4.png">
											</p>
											<p>
												<strong>主菜单</strong>名称就是显示在消息框的一级菜单，触发关键词表示点击这个菜单后触发的关键词，这个关键词需提前在素材库
												里定义好，可以是文字回复、也可以是图文回复、还可以是活动关键词等。勾选启用表示当前菜单会被显示。
											</p>
											<p>
												<strong>添加二级菜单</strong>，直接点击一级菜单后面的+即可以创建二级菜单，二级菜单只能同时启用5个。
											</p>
											<p>
												<strong>显示顺序</strong>表示菜单的显示的先后顺序，数字越小越排在前面。点击保存，保存自定义菜单设置，注意这时候并未生成自定义菜单，需要点生成自定义菜单。
											</p>
											<p>
												如果出现以下情况：
											</p>
											<p>
												<img src="<%=path%>/img/cd5.png">
											</p>
											<p>
												说明没有填写自定义菜单的appid，这个需要去微信公众平台去申请，而且必须要服务号。申请后好填在授权设置里。
											</p>
											<p>
												生成自定义菜单后会在24小时内生效，如果想立即生效，取消关注后重新关注就可以看到了。
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="lbs">2.11、LBS回复</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												开启此功能,用户点击“+”→位置→发送，就可回复您自定义的LBS数据，了解到周边是否有您的商铺，并进行一键导航、一键拨号，如果店铺当前有进行的活动（如：优惠券、刮刮卡），也可把活动显示出来。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												<img src="<%=path%>/img/lbs.jpg">
											</p>
											<p>
												1、 自定义LBS数据：设置商铺的地理位置（在“经纬度”输入）即可；
											</p>
											<p>
												<img src="<%=path%>/img/lbs2.jpg">
											</p>
											<p>
												2、 填写标题、图文封面、电话、简介、详细页内容，并且可设置外链跳转到其他网址；
											</p>
											<p>
												3、 当前商铺有活动可进行活动融合 添加，勾选已经开始的活动，保存，生成LBS回复。
											</p>


										</div>

									</div>

									<!--3 基础建设-->

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yhq">3.1、优惠券</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												优惠券是用于微信上与顾客互动的一种营销方式，不仅可以展现自己的产品，更能让顾客在使用此项功能时感受到更多的乐趣。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、新建优惠券活动；
											</p>
											<p>
												2、填写活动开始的内容；
											</p>
											<p>
												3、填写活动结束的内容；
											</p>
											<p>
												4、设置奖项，设定活动时间、中奖几率、触发关键词和相应的奖品，确定设置后系统会根据设定的中奖几率产生相应的SN码，保存活动；
											</p>
											<p>
												5、设置活动开始；（点击开始活动后，就不能再修改活动奖项，但可以修改其他活动内容,活动开启会自动生成SN码，也就是兑奖码）
											</p>
											<p>
												6、设置活动结束；（你设置的活动结束时间到了会自动结束活动，你也可以时间没有到直接结束活动）
											</p>
											<p>
												7、兑奖，查看活动粉丝中奖详情；
											</p>
											<p>
												8、删除活动（最好是在最后兑奖时间过了，再删除活动）
											</p>
											<p>
												<img src="<%=path%>/img/yhq1.png" width="240" height="360">
												<img src="<%=path%>/img/yhq2.png" width="240" height="360">
												<img src="<%=path%>/img/yhq3.png" width="240" height="360">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="ggk">3.2、刮刮卡</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												该模块可为商家提供刮刮卡抽奖服务，全网第一个可以通过微信玩刮刮卡，用户通过手机屏幕进行刮奖的游戏！
											</p>
											<h5>
												使用方法：
											</h5>
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
												<img src="<%=path%>/img/ggk1.png" width="240" height="360">
												<img src="<%=path%>/img/ggk2.png" width="240" height="360">
												<img src="<%=path%>/img/ggk3.png" width="240" height="360">
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="dzp">3.3、大转盘</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												该模块可为商家提供转盘抽奖服务，商家通过设置活动时间，预计参加抽奖人数，相应奖项和触发关键词，由网友在线参与抽奖。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、设置抽奖前需要先编辑一条图文消息，提前一天或者当天推送给所有粉丝，告知在某个时间段发某个关键词可以参与抽奖；
												<p>
													2、进入抽奖设置，设定活动的类别，设定活动的预热时间，已经活动的开始和结束时间，设置活动回复关键词“我要抽奖”，确定设置后系统会根据设定的中奖几率产生相应的SN码；
												</p>
												<p>
													3、活动设定后，在规定时间到时，网友发送关键词如“我要抽奖”，就可以参与三次转盘，中奖后会得到一个SN码，网友到店时向商家出示SN码，商家根据系统产生的SN码进行比对，确认无误后即可兑换奖品。
												</p>
												<p>
													<img src="<%=path%>/img/dzp1.jpg">
												</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wtp">3.4、微投票</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												商家采用投票的活动来吸引用户，与用户之间产生互动，从而促进企业营销的一种手段。
											</p>
											<h5>
												使用方法：
											</h5>
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
											<p>
												<img src="<%=path%>/img/tp1.jpg">
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yzdd"> 3.5、一战到底</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												全新微活动“一战到底”重磅上线，有丰富的题库系统；想提高用户粘性吗？想跟用户激情互动吗？想提高用户对于商户的认知吗？这一切，尽在“一战到底”。开启此功能，直接发布一战到底活动，设置活动内容、奖项及考题，可带给用户刺激的挑战。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、
												新增，进入“新建一战到底活动”页，编辑活动名称，活动时间，触发关键词（如：一战到底），图文封面，活动说明，活动规则，每道系统题目分值、每道自定义题目分值（均可使用默认图片及内容，也可上传图片及自定义内容）；
											</p>
											<p>
												2、 奖品设置、数量设置，根据商家需求填写，会在用户答题完毕显示；
											</p>
											<p>
												3、
												保存并设置考题，进入题目设置页面，可自定义添加题目，插入行业相关问题提高用户的认知，答题时间也可自定义（默认20秒/题），如不设置直接保存，则系统默认使用原有题库。
											</p>
											<p>
												4. 积分累计到活动结束后根据排名顺序派发相应奖项。
											</p>
											<p>
												<strong>备注：</strong>
											</p>
											<p>
												（1）每天每个用户只能参加一次答题，每次10道,答对加分，答错不扣分；
											</p>
											<p>
												（2）用户参加答题需提交姓名及手机号码，商家可查询；
											</p>
											<p>
												（3）同样积分者，答题速度优先的用户排名为先；
											</p>
											<p>
												（4）积分累计到活动结束后，可在统计图表内查询排名顺序参与人数、答题率及用户信息。
											</p>


										</div>

									</div>

									<!--4 微服务-->

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="tq">4.1、城市天气</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												城市天气是运用于微信公众平台上让用户随时随地查询天气情况的一种功能，更能方便用户的出行。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通城市天气服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需输入“所在的城市+天气“，就能查询到所在城市的天气情况。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="bk">4.2、百度百科</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												百度百科利用微信为用户提供一个创造性的移动互联网平台，充分调动互联网所有用户的力量，汇聚上亿用户的头脑智慧，积极进行交流和分享，同时实现与搜索引擎的完美结合，从不同的层次上满足用户对信息的需求。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通百度百科服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需输入“百科查询内容“，如”百科姚明“，就能查询到姚明的所有相关资料。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="fy">4.3、即时翻译</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												百度百科利用微信为用户提供一个创造性的移动互联网平台，充分调动互联网所有用户的力量，汇聚上亿用户的头脑智慧，积极进行交流和分享，同时实现与搜索引擎的完美结合，从不同的层次上满足用户对信息的需求。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通即时翻译服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需要输入“翻译查询内容（中文或英文）”，即可以查询到所要翻译的内容。
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="gp">4.4、股票查询</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												股票查询是一款基于微信平台查询股票最动态的软件，能够方便用户理财。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、股票查询是一款基于微信平台查询股票最动态的软件，能够方便用户理财。
											</p>
											<p>
												2、用户只需输入"股票+数字代码 或
												股票+字母缩写"，如“股票payh、股票000001”，就可以查询到股票的最新动态。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="kd">4.5、快递查询</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												快递用户通过进入到快递查询公众账号，持快递公司邮单号，对包裹快递过程进行跟踪查询。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通快递查询服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需输入“ 快递单号”，如”查申通快递222222“，就可以查询到快递的最新动态。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="hc">4.6、火车查询</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												火车查询是一款基于微信平台的火车查询工具，用户可以通过火车查询公众平台随时随地查询火车班次时刻表。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通火车查询服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需输入“ 火车车次”，如“ 火车T109“，就可以查询到火车的最新动态。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="hb">4.7、航班查询</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												航班查询是一款基于微信平台的为用户提供实时航班查询的服务，用户可以通过航班查询公众平台随时随地查询到航班的最新动态。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通航班查询服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需输入“ 航班班次”，如“航班ca1386“，就可以查询到航班的最新动态。
											</p>



										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="xz">4.8、星座密语</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												星座密语是一款基于微信平台的为用户提供星座查询的服务，用户可以通过星座密语公众平台随时随地查询到星座的最新动态。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、开通星座密语服务，在状态栏选择“ON”即可；
											</p>
											<p>
												2、用户只需输入“ 星座”，如“射手座“，就可以查询到射手座相关的星座信息。
											</p>



										</div>

									</div>

									<!--5 微信会员卡
-->

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="sz">5.1 会员卡设置</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：
											</p>
											<p>
												<img src="<%=path%>/img/hyk1.png">
											</p>
											<p>
												<img src="<%=path%>/img/hyk2-1.png">
											</p>
											<h5>
												商家名称：商家的名称
											</h5>
											<p>
												触发关键词：用户输入触发会员卡的关键词。
											</p>
											<p>
												填写商家所在地区、商家类别、商家详细地址、联系方式。注商家地址和联系方式将会显示在会员卡首页。
											</p>
											<p>
												商家兑奖密码是当会员在使用特权的时候，商家不便用电脑操作后台去使用SN码，可以直接输入密码即可兑奖。
											</p>
											<p>
												设置后点击下一步，进入会员卡设计页面。
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="sy">5.2 会员卡使用</a>
											</h4>
										</div>
										<div class="box-content">
											<img src="<%=path%>/img/hyk3.png">
											<p>
												微信封强大的会员卡自定义功能，极大的方便了商家进行会员卡设计。
											</p>
											<p>
												填写会员卡名称，会显示在会员卡左上角，不填将不显示。
											</p>
											<p>
												会员卡名称颜色可以根据会员卡背景不同进行设置。
											</p>
											<p>
												会员卡背景可以调用微信封系统后台模板，目前微信封支持23种会员卡模板，供商家调用。
											</p>
											<p>
												如果商家对微信封提供的模板不满意，可以上传自己设计的背景，注意尺寸尽量为534*318.
											</p>
											<p>
												填写图文消息封面，用来在关键词出发时显示。
											</p>
											<p>
												会员卡图标：即商家LOGO，注意尺寸，且是透明的PNG或者GIF图片。
											</p>
											<p>
												卡号文字颜色，根据会员卡背景设置会员卡号颜色。
											</p>
											<p>
												首页提示文字：即首页图文消息封面简介。
											</p>
											<p>
												以上都设置好，点击提交，整个会员卡页面设计完成。
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="hygl">5.3 会员管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：用户在手机端领取会员卡之后，会在后台显示会员记录，商家可以在会员卡领取记录里面，设置充值、查看统计消费曲线图、编辑会员信息、冻结的功能。
											</p>
											<img src="<%=path%>/img/hyk4.png">
											<img src="<%=path%>/img/hyk5.png">
											<img src="<%=path%>/img/hyk6.png">
											<img src="<%=path%>/img/hyk7.png">
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="czjl">5.4充值记录</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：商家可以通过右上角的用户名或者手机号查看到会员的信息，选择用户，可以对用户进行冻结和解冻操作。
											</p>
											<img src="<%=path%>/img/hyk8.png">


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="jfcl">5.5积分策略</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												1、进入积分策略界面，商家进行会员卡使用说明和积分规则说明的设置，商家根据自己的需求设置相应的奖励积分，点击保存
											</p>
											<p>
												2、进入积分策略界面，添加会员等级和积分设置（必须为整数），点击保存。
											</p>
											<img src="<%=path%>/img/hyk9.png">
											<img src="<%=path%>/img/hyk10.png">


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="tzgl">5.6通知管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：进入通知管理界面，点击添加通知，编辑通知标题，选择人群，并且可以添加图文详细页内容，点击保存即可。
											</p>
											<p>
												<img src="<%=path%>/img/hyk11.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="tqgl">5.7特权管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												<img src="<%=path%>/img/hyk12.png">
											</p>

											<p>
												标题即是特权标题。
											</p>
											<p>
												选择合适的人群
											</p>
											<p>
												可使用次数：表示会员卡使用的次数。
											</p>
											<p>
												时间设置：是会员特权有效期。填好后创建特权。
											</p>
											<p>
												编辑特权使用说明
											</p>
											<p>
												特权的状态分三种：未开始、进行中、已结束、只有在进行中的特权才会显示在会员卡首页。
											</p>
											<p>
												备注：1.进行中或已经结束的特权不可以修改！
											</p>
											<p>
												2.您最多可以创建8条特权!
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yhqgl">5.8优惠券管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：进入优惠券管理界面，点击发布优惠券，编辑优惠券名称、选择人群、设置有效期、选择类型、设置每位用户可以获得优惠券数量、编辑使用说明，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/hyk13.png">
											</p>
											<p>
												<img src="<%=path%>/img/hyk14.png">
											</p>
											<p>
												商家可以选择用户，对用户进行“删除”、“编辑”、“使用统计”操作。
											</p>


										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="lpqgl">5.9礼品券管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：进入礼品券管理界面，点击“发布礼品券”，设置礼品名称、兑换礼品所需积分、有效期、编辑使用说明，点击保存。
											</p>
											<p>
												<img src="<%=path%>/img/hyk15.png">
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="sjtj">5.10数据统计</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												统计最近一个月新增会员趋势图、最近一月消费次数趋势图。
											</p>
											<p>
												<img src="<%=path%>/img/hyk16.png">
											</p>

										</div>

									</div>
									<div class="box">
										<div class="box-title">
											<h4>
												<a id="mdgl">5.11门店管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												门店管理用来设置商家对应门店。首先添加门店。
											</p>
											<p>
												<img src="<%=path%>/img/hyk17.png">
											</p>
											<p>
												输入门店名称、电话、地址、门店图片、门店简介、地图标识。
											</p>
											<p>
												地图标识用来标记门店的具体位置，当用户发送自己位置的时候，将显示最近的门店。
											</p>
											<p>
												可添加多个门店，添加完成之后会在会员卡适用门店显示。
											</p>
											<p>
												<img src="<%=path%>/img/hyk18.png" width="230" height="410" />
											</p>


										</div>

									</div>


									<!--6 微信会员卡-->

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="gw">6.1、微官网设置</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用微官网前首先进行微官网设置，设置微官网标题、触发关键词、关键词匹配模式、图文消息封面，图文消息简介，设置完后点击保存。首页地址是指微官网首页地址，如果需要链接微官网首页地址时，可以用此地址，每个商户的微官网地址是唯一的。
											</p>
											<p>
												<img src="<%=path%>/img/gw1.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="hdp">6.2、首页幻灯片</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												为了加大微官网的视觉效果，微官网支持首页幻灯片，点击首页幻灯片-添加幻灯片，输入幻灯片名称、幻灯片显示顺序，外链网站，勾选是否显示，点击保存即完成幻灯片添加工作。
											</p>
											<p>
												<img src="<%=path%>/img/gw2.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="fl">6.3、分类管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												分类管理是用于显示在首页的菜单栏，点击添加分类。
											</p>
											<p>
												<img src="<%=path%>/img/gw3.png">
											</p>
											<p>
												<strong>分类名称：</strong>用于显示在首页的菜单名称。
											</p>
											<p>
												<strong>分类描述：</strong>菜单的一句话描述，有些模板会用到，另外列表页简介也会用到。
											</p>
											<p>
												<strong>显示顺序：</strong>菜单显示的先后顺序。
											</p>
											<p>
												<strong>分类封面：</strong>图片模板需要显示图片封面。
											</p>
											<p>
												<strong>是否官网显示：</strong>是否显示在首页菜单，勾选就会显示
											</p>
											<p>
												<strong>图标：</strong>图标是在图标模板或菜单导航时显示的，目前微信封内置100多套图标库，后期还会再增加。
											</p>
											<p>
												<img src="<%=path%>/img/gw4.jpg">
											</p>
											<p>
												回复类型：微信封微官网强大的内链系统，支持回复的类型有图文、电话、导航、活动、业务模块。
											</p>
											<p>
												图文直接链接到对应分类的图文列表;
											</p>
											<p>
												电话可以添加电话号码，首页就可以一键拨号;
											</p>
											<p>
												导航,对地理位置进行标注，首页调用百度地图直接一键导航；
											</p>
											<p>
												<img src="<%=path%>/img/gw5.png">
											</p>
											<p>
												<strong>活动：</strong>链接微信封系统所有开始进行的活动，如刮刮卡、优惠券、大转盘。
											</p>
											<p>
												<img src="<%=path%>/img/gw6.png">
											</p>
											<p>
												业务模块：可以链接微信封系统所有业务模块，如微官网、会员卡、微预约、微医疗等
											</p>
											<p>
												<img src="<%=path%>/img/gw7.png">
											</p>
											<p>
												选择好对应的业务类型，点击保存即分成分类的添加。
											</p>
											<p>
												重复上述动作，完成其它分类的添加。
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wz">6.4、文章添加</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												为了更好的利用整合资源，微官网文章的添加与图文回复是共用一套，所以文章的添加需要图文回复里添加。
											</p>
											<p>
												点击素材库
												-图文回复，添加图文，所以图文添加的设置同之前一样，只是在添加时候选择所属文章分类，就是上一步创建的分类，这样在微官网里如果当前分类设置为图文，点击进行就是添加的图文列表。如下图
											</p>
											<p>
												<img src="<%=path%>/img/gw8.png">
											</p>


										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="mb">6.5、模板管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												微官网目前支持首页模板、列表页模板、详情页模板。多达几十种模板可以随意任意组合，快速打造超强超炫的微官网。直接选择喜欢的模板风格，勾选就可以了，然后打开手机端即可预览效果。
											</p>

											<p>
												<img src="<%=path%>/img/gw9.png">
											</p>
											<p>
												<img src="<%=path%>/img/gw10.png">
											</p>
											<p>
												<img src="<%=path%>/img/gw11.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="kj">6.6、快捷与版权</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												快捷菜单是首页左下角小圆快捷交互功能，企业通过设定一些常用快捷，如电话、导航、首页、在线咨询等快捷工具，可以很好的方便用户与企业进行在线沟通。点击新增快捷菜单，填写快捷名称，显示顺序，是否显示，对应图标，以及回复类型即可完成快捷菜单的创建。
											</p>

											<p>
												<img src="<%=path%>/img/gw12.png">
											</p>
											<p>
												颜色与版权：快捷导航按钮显示的颜色，默认是红色，可以按需要修改
											</p>
											<p>
												版权是页面底部显示的版权，默认是显示公众号名称，可以自行修改。
											</p>

											<p>
												<img src="<%=path%>/img/gw13.png">
											</p>
											<p>
												至此，一个微官网就设置完了，前后是不是不要30分钟呢，赶快来体验吧。
											</p>
											<p>
												<img src="<%=path%>/img/gw14.jpg">
											</p>
											<p>
												<img src="<%=path%>/img/gw15.jpg">
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="jdgl">7.1酒店管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用微酒店可进行酒店管理功能，设置酒店添加、房间信息，并支持在线预约房间，创造销售机会，也方便商户管理。
											</p>
											<h5>
												使用方法：
											</h5>
											<p>
												1、新增订房，进入编辑酒店信息页面，设置触发关键词、酒店名称、上传图文封面、填写酒店地址、酒店电话、上传订单页头部图片、设置地图标识，地图标识可直接输入地址，进行搜索定位，以实现一键导航功能；
											</p>

											<p>
												<img src="<%=path%>/img/wjd1.png">
											</p>
											<p>
												2、上传商家图片：点击添加图片，编辑文章描述、设置排序、上传图片，图片大小建议800x600；
											</p>
											<p>
												<img src="<%=path%>/img/wjd2.png">
											</p>
											<p>
												3、编辑商家介绍、订房说明；
											</p>
											<p>
												<img src="<%=path%>/img/wjd3.png">
											</p>
											<p>
												4、订单内容设置：例如：联系人、联系电话、预约日期、选择数量，商家可以根据自己的需求，可对酒店各房间的类型、价格、图片、配套设施进行填写，以供用户针对性的选择房型预订，点击保存
											</p>
											<p>
												<img src="<%=path%>/img/wjd4.png">
											</p>
											<p>
												（房型点击可支持在线预约，地址、电话均可实现一键导航、一键拨号）
											</p>


										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="ddgl">7.2订单管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												<img src="<%=path%>/img/wjd5.png">
											</p>
											<p>
												1、点击订单管理，进入订单管理页面，会出现客户预订的信息；
											</p>
											<p>
												<img src="<%=path%>/img/wjd6.png">
											</p>
											<p>
												2、商家可以点击右上角根据时间查询“等待客服确认”、“已确认”、“已拒绝”的客户信息；
											</p>
											<p>
												<img src="<%=path%>/img/wjd7.png">
											</p>
											<p>
												3、点击导出订单，可以导出用户信息：包括预订人、电话、预订入住时间、房间类型、订单状态、用户是否删除等信息；
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="fjsz">7.3房间设置</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												1、点击房间设置，进入房间设置页面，新增房间类型、简要说明、原价、优惠价、上传图片、编辑配套设施；
											</p>
											<p>
												<img src="<%=path%>/img/wjd8.png">
											</p>
											<p>
												2、点击保存即可。
											</p>

										</div>

									</div>
									<div class="box">
										<div class="box-title">
											<h4>
												微汽车
											</h4>
										</div>
										<div class="box-content">
											<p>
												微汽车采用微信封平台进行汽车的销售管理、预约保养、预约试驾、保险计算、车贷计算、车型比较、违章查询等功能，整个过程非常便捷，省时省力省心，并通过与微信封平台有交互能力的手机客户端，快速便捷的实现了商家的销售管理与预约过程，同时也实现了客户无需进入4s店就能进行预约保养和试驾的功能。
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="qcsz">8.1、汽车设置</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：进入微汽车设置界面，设置触发关键词、编辑标题、上传图文封面、编辑图文消息简介，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/qcsz.png">
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="ppgl">8.2、品牌管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：点击品牌管理，进入品牌管理界面，添加品牌：编辑品牌名称、官方网站地址、上传logo标识、设置显示顺序、品牌简介，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/ppgl1.png">
											</p>
											<p>
												<img src="<%=path%>/img/ppgl2.png">
											</p>
										</div>

									</div>
									<div class="box">
										<div class="box-title">
											<h4>
												<a id="cxgl">8.3、车系管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：点击“添加车系”，进入车系管理页面，添加车系：选择品牌、编辑车系名称、车系简称、上传车系图片、设置显示顺序、编辑车系亮点，点击保存；
											</p>
											<p>
												备注：注意填写车系的简称，因为在手机端的前台页面上我们显示的是简称。
											</p>
											<p>
												<img src="<%=path%>/img/cxgl.png">
											</p>
										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="cvgl">8.4、车型管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：进入车型管理界面，添加车型：编辑车型名称、选择品牌和车系、年款、设置显示顺序、设定指导价、经销商报价、上传图片（50张以内）、设置排量、档位个数、选择变速箱，点击保存；
											</p>
											<p>
												备注：为之前添加的每一款车系添加相应的车型，请认真填写每一项内容并为该款车型添加清晰的图片。
											</p>
											<p>
												<img src="<%=path%>/img/cvgl1.png">
											</p>
											<p>
												<img src="<%=path%>/img/cvgl2.png">
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="xsgl">8.5、销售管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：添加销售顾问，输入姓名、上传头像、填写电话号码、设置显示顺序、选择类型（售前/售后）、编辑简介，点击保存；
											</p>
											<p>
												备注：添加为您服务的销售人员联系方式，您的顾客将可以通过手机端直接拨打电话。
											</p>
											<p>
												<img src="<%=path%>/img/xsgl.png">
											</p>
										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yyby">8.6、预约保养</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：点击新增预约，设置触发关键词、图文消息标题、上传图文封面、填写预约地址、设置地图标识、填写预约电话、上传订单页头部图片、编辑订单详情、设置重命名订单、重命名订单说明、重命名订单电话、订单接收设置、填写订单的起始和结束时间，设置订单内容，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/yyby1.png">
											</p>
											<p>
												<img src="<%=path%>/img/yyby2.png">
											</p>
											<p>
												<img src="<%=path%>/img/yyby3.png">
											</p>
											<p>
												基本流程与预约保养一样，用户只需按照流程步骤来操作即可完成预约试驾功能，点击保存；
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yysj">8.7、预约试驾</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：点击新增预约，设置触发关键词、图文消息标题、上传图文封面、填写预约地址、设置地图标识、填写预约电话、上传订单页头部图片、编辑订单详情、设置重命名订单、重命名订单说明、重命名订单电话、订单接收设置、填写订单的起始和结束时间，设置订单内容，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/yyby1.png">
											</p>
											<p>
												<img src="<%=path%>/img/yyby2.png">
											</p>
											<p>
												<img src="<%=path%>/img/yyby3.png">
											</p>
											<p>
												基本流程与预约保养一样，用户只需按照流程步骤来操作即可完成预约试驾功能，点击保存；
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="sygj">8.8、实用工具</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												使用方法：点击新增预约，设置触发关键词、图文消息标题、上传图文封面、填写预约地址、设置地图标识、填写预约电话、上传订单页头部图片、编辑订单详情、设置重命名订单、重命名订单说明、重命名订单电话、订单接收设置、填写订单的起始和结束时间，设置订单内容，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/sygj.png">
											</p>
											<p>
												使用方法：保险计算、车贷计算、全款计算、车型比较，商家可以根据需求，设置打开功能。
											</p>
											<p>
												备注：我们暂时给您提供了5款实用小工具，以后会逐步增加更多。
											</p>
											<p>
												注意：当您完成了以上内容设置之后，还有一些内容您需要花几分钟时间去设置：
											</p>
											<p>
												<img src="<%=path%>/img/sygj1.png">
											</p>
											<p>
												a、“微官网”--“首页幻灯片”：添加几张您的微汽车首页的幻灯片，并做简短的描述；
											</p>
											<p>
												<img src="<%=path%>/img/sygj2.png">
											</p>
											<p>
												b、“微官网”--“分类管理”：请建立6个状态为“显示”的分类，依次在“回复类型”中选择调用“微汽车”下的6个功能模块；
											</p>
											<p>
												<img src="<%=path%>/img/sygj3.png">
											</p>
											<p>
												<img src="<%=path%>/img/sygj4.png">
											</p>
											<p>
												c、“微官网”--“模板管理”中选择我们为您精心设计的微汽车模板“模板0”以及“图文列表模板风格”中选择“列表0”；
											</p>
											<p>
												<img src="<%=path%>/img/sygj5.png">
											</p>
											<p>
												<img src="<%=path%>/img/sygj6.png">
											</p>
											<p>
												<img src="<%=path%>/img/sygj7.png">
											</p>
											<p>
												d、进入“素材库 ”界面--“图文回复”：中添加新闻资讯内容，并将分类设置为“最新资讯”。
												好了，全部完成，用您的手机触发关键字来看看您的“微汽车”官网吧！
											</p>
										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												9.微房产
											</h4>
										</div>
										<div class="box-content">
											<p>
												微房产是利用微信封平台打造的一款全新超炫酷房产官方网站，其功能非常强大，包含了楼盘介绍、子楼盘管理、楼盘相册、房友印象以及专家点评等功能，更有360度全景看房超强大功能震撼登场！现在就花几分钟时间来看一下如何打造您的微房产官网吧。
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="lpjj">9.1楼盘简介</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												1、就像您使用我们其他功能模块一样，设置一个打开微房产首页的触发关键字，以及图文回复的消息标题，选择完全匹配模式，上传图文消息封面和楼盘顶部图片，设置相册的名称；
											</p>
											<p>
												<img src="<%=path%>/img/wfc1.png">
											</p>
											<p>
												2.上传户型头部图片，在地图上设置标识；
											</p>
											<p>
												<img src="<%=path%>/img/wfc2.png">
											</p>
											<p>
												3、编辑楼盘简介、项目简介、交通配套，点击保存即可。
											</p>
											<p>
												<img src="<%=path%>/img/wfc3.png">
											</p>
											<p>
												<img src="<%=path%>/img/wfc4.png">
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="zlp">9.2子楼盘</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												“子楼盘”：如果您的楼盘是由多种楼盘类型组成的，比如既有别墅群，又有公寓、商品房等，那我们建议您在子楼盘内进行分类添加相应的子楼盘。
											</p>
											<p>
												1、点击“添加子楼盘”，设置子楼盘名称，显示顺序、子楼盘介绍，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/wfc5.png">
											</p>
											<p>
												2、点击“操作”板块的两个按钮，分别可以进行编辑和删除操作。
											</p>
											<p>
												<img src="<%=path%>/img/wfc6.png">
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="lphx">9.3楼盘户型</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												详细添加您的户型内容，特别请您注意的是我们可以为您提供制作360度全景户型展示功能，如果您需要此功能，请联系我们的客服。
											</p>
											<p>
												1、点击“添加户型”，设置户型名称、选择子楼盘、楼层设置、建筑面积、房屋户型、显示顺序、户型介绍，添加户型图片，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/wfc7.png">
											</p>
											<p>
												2、点击“管理全景图”，进入管理全景图界面，继续点击“添加全景图”，设置全景图标题，上传图片。（为了能更好的展现360度全景图效果，全景图所需要的规格请向客服咨询）
											</p>
											<p>
												<img src="<%=path%>/img/wfc8.png">
											</p>
											<p>
												<img src="<%=path%>/img/wfc9.png">
											</p>
											<p style="color: #FF0000;">
												注意：360度全景图制作要点：
											</p>
											<p>
												（1）硬件配备
											</p>
											<p>
												数码单反相机,鱼眼镜头,全景云台,三脚架,硬件设备推荐表
											</p>
											<p>
												（2）如何制作一个360度全景？
											</p>
											<p>
												360全景不是凭空生成的，要制作一个360全景，我们需要有原始的图像素材，原始图像素材的来源可以是：
											</p>
											<p>
												A、在现实的场景中，使用相机的全景拍摄功能得到的鱼眼图像
											</p>
											<p>
												B、通过建模渲染得到的虚拟图像
											</p>
											<p>
												下文中的表格对比了在不同的设备、拍摄机位、拼合模式、拍摄难度下所能获得到的鱼眼图像：
											</p>
											<p>
												<img src="<%=path%>/img/wfc10.png">
											</p>
											<p>
												<img src="<%=path%>/img/wfc11.png">
											</p>
											<p>
												C、如何使用图片素材来生成360全景图片？
											</p>
											<h4>
												第一步：拍摄全景图原始素材
											</h4>
											<p>
												由专业的摄影师使用专业相机、鱼眼镜头以及三脚架拍摄汽车、房间或者其他需要360全景展示的对象照片
												我们来看下备用的三张原始素材
											</p>
											<p>
												<img src="<%=path%>/img/xwfc1.png">
											</p>
											<h4>
												第二步：使用“PTGui Pro”软件合成全景图片
											</h4>
											<p>
												下载“PTGui Pro”软件（ 下载地址:
												http://forum.xitek.com/thread-425467-1-1-1.html）并安装，然后打开软件：
											</p>
											<p>
												<img src="<%=path%>/img/xwfc2.png">
											</p>
											<p>
												根据提示，点击“加载图像”，将拍摄的全景图原始素材导入，如下图：
											</p>
											<p>
												<img src="<%=path%>/img/xwfc3.png">
											</p>
											<p>
												接下来点击“对准图像”
											</p>
											<p>
												如果图像拍摄的位置准确，软件会直接进入到全景图编辑流程
											</p>
											<p>
												<img src="<%=path%>/img/xwfc4.png">
											</p>
											<p>
												通常，这里我们不要对图片进行改动，直接关闭编辑器进入下一步“创建全景图”而有时候图像拍摄的不那么准确，那么我们需要通过手动的方式来对图片进行调整如图：
											</p>
											<p>
												<img src="<%=path%>/img/xwfc5.png">
											</p>
											<p>
												我们需要比对左右的2张图片，找到图像上重合的点（至少3个点）来进行标记如图：
											</p>
											<p>
												<img src="<%=path%>/img/xwfc6.png">
											</p>
											<p>
												在上图我们一共找了若干个两张图片重合的点并作了标记，如此这般，需要对全部有可能有重合的图片都至少标记3个“控制点”。
											</p>
											<p>
												调整完图像之后，我们可以创建全景图了
											</p>
											<p>
												<img src="<%=path%>/img/xwfc7.png">
											</p>
											<p>
												设置输出的文件目录，点击“创建全景图”，我们就获得了加工好了全景图片。来看下我们得到的全景图片：
											</p>
											<p>
												<img src="<%=path%>/img/xwfc8.png">
											</p>
											<p>
												这个图片就是所谓的“全景图片”了，看得很晕吧，没关系，还只是半成品，通过第三步我们将进一步加工这张图片以生成效果精美的360全景展示效果
											</p>
											<h4>
												第三步：使用“Pano2VR”软件实现360全景效果
											</h4>
											<p>
												下载“Pano2VR”软件（ 下载地址）并安装，然后打开软件：
											</p>
											<p>
												<img src="<%=path%>/img/xwfc9.png">
											</p>
											<p>
												在上图中，点击“选择输入”，将第二步生成的全景图片导入进去；同时点击“新输出格式”的下拉框，选择“HTML5”选项，然后点击“增加”按钮如图
											</p>
											<p>
												<img src="<%=path%>/img/xwfc10.png">
											</p>
											<p>
												点击增加按钮后得到
											</p>
											<p>
												<img src="<%=path%>/img/xwfc11.png">
											</p>
											<p>
												设置立方体面片尺寸为700px
											</p>
											<p>
												设置输出文件的输出目录后，点击确定，就开始生成360全景效果了
											</p>
											<p>
												打开输出目录我们看到
											</p>
											<p>
												<img src="<%=path%>/img/xwfc12.png">
											</p>
											<p>
												此时，浏览器会自动打开上图中的.html文件，360全景效果就可以被欣赏到了
											</p>
											<p>
												请记得将“images”目录下的6张图片通过微信封后台上传全景图片的位置上传到微信封的服务器，您就可以通过手机端来查看360全景效果了。
											</p>
											<p>
												具体的操作步骤可以查看：http://www.weimob.com/tutorial/page1.html
											</p>
											<p>
												3、在“操作“栏目，点击这两个按钮，分别可以进行编辑和删除操作。
											</p>
											<p>
												<img src="<%=path%>/img/wfc12.png">
											</p>

										</div>

									</div>



									<div class="box">
										<div class="box-title">
											<h4>
												<a id="lpxc">9.4楼盘相册</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												“楼盘相册”：用于添加和您楼盘相关的各种精美图片，在前台我们会用独特的方式进行图片展示。
											</p>
											<p>
												1、点击“添加相册“，进入”添加楼盘相册“界面，设置相册名称、显示顺序、相册介绍、添加相册图片，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/wfc13.png">
											</p>
											<p>
												2、在“楼盘相册管理“界面，点击以下两个按钮，分别进行编辑和删除操作；）
											</p>
											<p>
												<img src="<%=path%>/img/wfc14.png">
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="fyyx">9.5房友印象</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												1、进入“房友印象”管理界面，点击“添加印象”，添加标题：添加能代表您楼盘特点的印象短语，如“无敌海景”、“美轮美奂”、“成熟学区”等，为保证显示效果完美，请您添加6条印象短语并且每天短语字数相同（4个字最好）。
											</p>
											<p>
												<img src="<%=path%>/img/wfc15.png">
											</p>
											<p>
												2、在“房友印象管理里面，点击以下两个按钮，可以进行编辑和删除操作。
											</p>
											<p>
												<img src="<%=path%>/img/wfc16.png">
											</p>

										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="zjdp">9.6专家点评</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												1、进入“专家点评“管理界面，点击”添加点评“，添加标题、设置显示顺序、专家姓名、专家职位、上传专家照片、编辑专家介绍和专家点评，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/wfc17.png">
											</p>
											<p>
												2、进入“专家点评管理“界面，点击以下两个按钮，可以进行编辑和删除操作。
											</p>
											<p>
												<img src="<%=path%>/img/wfc18.png">
											</p>
											<p>
												当您完成了以上内容设置之后，您的微房产官网的内容就都添加完成了，接下来去设置一下前台页面吧。
											</p>
											<p>
												a、“微官网”--“分类管理”：请至少建立4个状态为“显示”的分类（楼盘简介、精美相册、楼盘印象、360全景图），依次在“回复类型”中选择调用“微房产”下的4个功能模块；
											</p>
											<p>
												<img src="<%=path%>/img/wfc19.png">
											</p>
											<p>
												b、在“分类管理“界面，可以进行”编辑“和”删除“的操作；
											</p>
											<p>
												<img src="<%=path%>/img/wfc21.png">
											</p>
											<p>
												c、“微官网”--“模板管理”中选择我们为您精心设计的微房产模板“首页0”或者“首页1”。
											</p>
											<p>
												<img src="<%=path%>/img/wfc22.png">
											</p>
											<p>
												d、“微官网“- -”微官网设置“,选择官网背景或者上传自定义官网背景，点击保存。
											</p>
											<p>
												<img src="<%=path%>/img/wfc23.png">
											</p>
											<p>
												这样一个完整的“微房产“官网就全部完成了，用您的手机触发关键字来看看您的“微房产”官网吧！
											</p>
										</div>

									</div>




									<div class="box">
										<div class="box-title">
											<h4>
												<a id="zjdp">10 微预约</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												微预约是商家利用微信封平台实现在线预约的一种服务，可以运用于汽车、房产、酒店、医疗、餐饮等一系列行业，给用户的出行办事、购物、消费带来了极大的便利！且操作简单，响应速度非常快，受到业界的一致好评！
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yygl">10.1 预约管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												1、点击“预约管理”—“新增预约”，填写触发关键词，设置图文消息回复标题、上传图文封面、填写预约地址、设置地图标识；
											</p>
											<p>
												<img src="<%=path%>/img/wyy1.png">
											</p>
											<p>
												2、填写预约电话、上传订单页头部图片、编辑订单详情、订单接收设置、填写订单的起始和结束时间(为空表示不限制)；
											</p>
											<p>
												<img src="<%=path%>/img/wyy2.png">
											</p>
											<p>
												3、订单内容设置：填写你要收集的内容！订单默认选项不可以修改删除！如果有其他的需求，可以点击“添加”，编辑内容，点击“保存”即可；
											</p>
											<p>
												<img src="<%=path%>/img/wyy3.png">
											</p>
											<p>
												4、回到“预约管理”界面，点击“订单管理”；
											</p>
											<p>
												<img src="<%=path%>/img/wyy4.png">
											</p>
											<p>
												5、进入“在线订单管理”界面，点击“订单查询”，可以查看到用户的订单详细信息，还可以点击“管理”按钮，进行订单处理，并且能够导出用户的订单；
											</p>
											<p>
												<img src="<%=path%>/img/wyy5.png">
											</p>
											<p>
												<img src="<%=path%>/img/wyy6.png">
											</p>
										</div>

									</div>


									<div class="box">
										<div class="box-title">
											<h4>
												<a id="yytj">10.2预约统计</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												点击“预约统计”，进入“我的预约”界面，可以查看到最近一月新增预约趋势图，点击横坐标上面的小圆点可以查看到每天的订单人数，在最右边的方框内会显示“今天新增人数”、“昨天新增人数”和“目前会员共计人数”。
											</p>
											<p>
												<img src="<%=path%>/img/wyy7.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy0">11 微餐饮</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												微餐饮是通过微信封平台打造的一个餐饮行业的移动网站，借助微信封平台实现品牌传播、菜品宣传、在线定餐、智能点餐、预定坐席、粉丝到店、口碑营销，与粉丝互动等全自主的营销手段，帮助餐饮企业让粉丝转为门店客人，让门店客人转为长期客户！
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy1">11.1 门店管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												门店管理——添加门店：编辑门店的基本信息，包括名称、电话、地址、密码、图片、实景、门店所在的地区，并在地图上标识，最后编辑门店简介，点击保存；
											</p>
											<p>
												<img src="<%=path%>/img/wcy1.png">
											</p>
											<p>
												<img src="<%=path%>/img/wcy2.png">
											</p>
											<p>
												<img src="<%=path%>/img/wcy3.png">
											</p>
											<p>
												点击参与子系统管理平台地址（红色方框区域）
											</p>
											<p>
												<img src="<%=path%>/img/wcy4.png">
											</p>
											<p>
												进入到商家后台子系统的登录界面，选择登录门店，输入密码；
											</p>
											<p>
												<img src="<%=path%>/img/wcy5.png">
											</p>
										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy2">11.2分类管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												进入菜品设置界面，点击“分类管理”-----“添加分类”，编辑分类名称，显示顺序，保存；
											</p>
											<p>
												<img src="<%=path%>/img/wcy6.png">
											</p>
											<p>
												<img src="<%=path%>/img/wcy7.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy3">11.3标签管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												在菜品设置界面里面，点击“标签管理”编辑标签名称和显示顺序；
											</p>
											<p>
												<img src="<%=path%>/img/wcy8.png">
											</p>
											<p>
												<img src="<%=path%>/img/wcy9.png">
											</p>

										</div>

									</div>

									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy4">11.4菜品管理</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												在“菜品设置”界面里面点击“菜品管理”——“添加菜品”，编辑菜品的名称、价格、是否上架、选择菜品分类、标签、上传图片、设置显示顺序、编辑菜品简介，点击保存；这样客户就能在前台实现在线订餐的功能了；
											</p>
											<p>
												<img src="<%=path%>/img/wcy10.png">
											</p>

										</div>

									</div>
									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy5">11.5 智能选餐</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												点击“智能选餐”——“添加智能选菜”，设置适用人数，选择菜品组合，设置显示顺序，点击保存，这样前台的智能选餐功能就能实现啦；
											</p>
											<p>
												<img src="<%=path%>/img/wcy11.png">
											</p>

										</div>

									</div>
									<div class="box">
										<div class="box-title">
											<h4>
												<a id="wcy5">11.6 餐台设置</a>
											</h4>
										</div>
										<div class="box-content">
											<p>
												点击“智能选餐”——“添加智能选菜”，设置适用人数，选择菜品组合，设置显示顺序，点击保存，这样前台的智能选餐功能就能实现啦；
											</p>
											<p>
												<img src="<%=path%>/img/wcy12.png">
											</p>
											<p>
												回到餐台设置界面，还可以点击以下红色区域，对餐台进行“编辑”和“禁用”操作。
											</p>
											<p>
												<img src="<%=path%>/img/wcy13.png">
											</p>

										</div>

									</div>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>


									<a
										style="position: fixed ! important; border-radius: 15px; border: 1px solid #ccc; box-shadow: 2px 2px 2px #999; height: 30px; width: 30px; right: 15px; background: #fff; bottom: 50px; text-align: center; line-height: 30px; text-decoration: none; color: #F00;"
										href="#" class="gototop"><i class="icon-arrow-up"></i> </a>
								</div>

								<div class="box-content tab-pane fade" id="videotut">

									<div class="box-title">
										<div class="span12">
											<h3>
												<i class="icon-cog"></i>微信封-微信公众服务平台使用视频教程
											</h3>
										</div>
									</div>
									<div class="box-content">
										<embed
											src="http://player.youku.com/player.php/sid/XNjEwMjI2ODI0/v.swf"
											allowFullScreen="true" quality="high" width="480"
											height="400" align="middle" allowScriptAccess="always"
											type="application/x-shockwave-flash"></embed>
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
			<a href="#" class="gototop"><i class="icon-arrow-up"></i> </a>
		</div>
	</body>
	<script type="text/javascript">
		$("a").bind("click",function() {
			var rel = $(this).attr("rel");
			if (rel) {
				var pos = $(rel).offset().top;
				$("html,body").animate( {scrollTop : pos}, 800);
			}
		});
	</script>
</html>
