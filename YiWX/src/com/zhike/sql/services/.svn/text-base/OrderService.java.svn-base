package com.zhike.sql.services;

import java.util.List;
import com.zhike.sql.beans.OrderBean;
import com.zhike.sql.beans.OrderDetailBean;

public interface OrderService {

	public List<OrderBean> selectAllByAppID(OrderBean orderBean);
	
	public boolean addNewOrder(OrderBean orderBean);
	
	public OrderBean selectOrderByUserIdAndAPPId(OrderBean orderBean);

	public boolean deleteOrderByUserIdAndAPPId(OrderBean orderBean);

	public boolean updateOrderByUserIdAndAPPId(OrderBean orderBean);
	
	public OrderBean selectOrderPrewById(OrderBean orderBean);
	
	public boolean addNewWXOrder(OrderDetailBean orderDetailBean);
	
	public int  selectWXOrderNumber(OrderDetailBean orderDetailBean);
	
	public List<OrderDetailBean> selectAllWxOrderByAppIdAndWID(OrderDetailBean orderDetailBean);
	
	public List<OrderDetailBean> selectAllWXOrderDetailsByAppIdAndOrderId(OrderDetailBean orderDetailBean);

	public int selectCountInfosByPage(OrderDetailBean orderDetailBean);

	public List<OrderDetailBean> selectInfosByPage(OrderDetailBean orderDetailBean);

	public int updateOrderDetailForUse(OrderDetailBean orderDetailBean);

	public int deleteOneOrderDetail(OrderDetailBean orderDetailBean);

	public int deleteOrderDetailByServiceId(OrderBean orderBean);

}