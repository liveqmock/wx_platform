<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.finals.Constat"%>
<%@page import="com.zhike.sql.beans.APPBean"%>
<%@page import="com.zhike.sql.beans.CheckLoginBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
				<div class="account_setting_area" id="settingArea">
					<%
						List<APPBean> appBeans = (List<APPBean>) session.getAttribute(Constat.APPKEYS);
					%>
					<table class="ListProduct" border="0" cellspacing="0"
						cellpadding="0" width="100%">
						<thead>
							<tr>
								<th>
									公众号名称
								</th>
								<th>
									VIP等级
								</th>
								<th>
									创建时间/到期时间
								</th>
								<th>
									已定义/上限
								</th>
								<th>
									请求数
								</th>
								<th>
									操作
								</th>
							</tr>
						</thead>
						<tbody>
						<%
							for(APPBean appBean : appBeans)
							{
						%>
							<tr></tr>
							<tr>
								<td>
									<p>
										<a
											href="/wx/uploads/index.php?g=User&amp;m=Function&amp;a=index"
											title="点击进入功能管理">
										<img src="<%=appBean.getWx_header_url() %>"
												width="40" height="40"> </a>
									</p>
									<p>
										<%=appBean.getWx_name() %>
									</p>
								</td>
								<td align="center">
									3
								</td>
								<td>
									<p>
										创建时间:<%=appBean.getCreatetime() %>
									</p>
									<!--<p>
										  到期时间:2013-11-09
									</p>
									<p>
										<a
											href="/wx/uploads/index.php?g=User&amp;m=Alipay&amp;a=index"
											id="smemberss" class="green"><em>续费</em> </a>
									</p>-->
								</td>
								<td>
									<p>
										图文：0/5000
									</p>
								</td>
								<td>
									<p>
										总请求数:0
									</p>
									<p>
										本月请求数:5000
									</p>
								</td>

								<!--  <td class="norightborder">
									<a
										href="/wx/uploads/index.php?g=User&amp;m=Index&amp;a=edit&amp;id=1">编辑</a>
									<a
										href="/wx/uploads/index.php?g=User&amp;m=Index&amp;a=del&amp;id=1;">删除</a>
									<a
										href="/wx/uploads/index.php?g=User&amp;m=Function&amp;a=index&amp;id=1&amp;token=我叫MT攻略资料"
										class="btnGreens">功能管理</a>
									<a
										href="/wx/uploads/index.php?g=Home&amp;m=Index&amp;a=help&amp;id=1&amp;token=我叫MT攻略资料"
										class="btnGreens">API接口</a>
								</td>-->
								
								
								<td class="norightborder">
                                   <a href="/wechat/addaccount/aid/26891" class="btn" rel="tooltip" title="编辑"><i class="icon-edit"></i></a>
                                   <a href="javascript:G.ui.tips.confirm('您确定要删除此公众帐号吗?', '/wechat/delaccount/aid/26891');" class="btn" rel="tooltip" title="删除"><i class="icon-remove"></i></a>
                                   <a href="javascript:void(0)" onclick="parent.location.href='/wechat/index/aid/26891'" class="btn" rel="tooltip" title="管理"><i class="icon-cog"></i></a>
                                </td>
							</tr>
						<%	
							}
						%>
						</tbody>
					</table>
				</div>

