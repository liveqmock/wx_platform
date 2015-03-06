<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zhike.sql.beans.LiuyingInfoBean"%>
 <%
 String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
 List<LiuyingInfoBean> liuyingInfoBeanList  = (List<LiuyingInfoBean>)request.getAttribute("liuyingInfoBeanList");
 for(int i=0;i<liuyingInfoBeanList.size();i++){
	 LiuyingInfoBean liuyingInfoBean = liuyingInfoBeanList.get(i);
	 %>
				 <div class="grid" >
                        <div class="t"><div class="tspan"><%=liuyingInfoBean.getCreatetime() %></div><img src="<%=path%>/weixin/liuying/img/split_dian.jpg" class="dian" /></div>
                        <div class="grid_body">
                            <div class="imgholder"><img onclick="previewImage('<%=liuyingInfoBean.getLiuying() %>')" class="lazy" onload="LoadImgInfo();" src="<%=liuyingInfoBean.getLiuying() %>"  /></div>
                            <div class="grid_box">
                                <img class="img" src="<%=liuyingInfoBean.getHead_img() %>" />
                                <div class="rightinfo">
                                    <div class="username"><%=liuyingInfoBean.getName() %></div>
                                    <div class="text"><%=liuyingInfoBean.getLiuyan() %></div>
                                </div>
                            </div>
                        </div>
                    </div>		
	 <%
 }
 %>
	 		 	