package com.zhike.sql.dao;

import java.util.List;
import com.zhike.sql.beans.OrderBean;
import com.zhike.sql.beans.OrderDetailBean;

public interface OrderDAO {

	public List<OrderBean> selectAllByAppID(OrderBean orderBean);

	public int addNewOrder(OrderBean orderBean);

	public OrderBean selectOrderByUserIdAndAPPId(OrderBean orderBean);

	public int deleteOrderByUserIdAndAPPId(OrderBean orderBean);

	public int updateOrderByUserIdAndAPPId(OrderBean orderBean);
	
	public OrderBean selectOrderPrewById(OrderBean orderBean);
	
	public int addNewWXOrder(OrderDetailBean orderDetailBean);
	
	public int  selectWXOrderNumber(OrderDetailBean orderDetailBean);
	
	public List<OrderDetailBean> selectAllWxOrderByAppIdAndWID(OrderDetailBean orderDetailBean);
	
	public List<OrderDetailBean> selectAllWXOrderDetailsByAppIdAndOrderId(OrderDetailBean orderDetailBean);

	public int selectCountInfosByPage(OrderDetailBean orderDetailBean);

	public List<OrderDetailBean> selectInfosByPage(OrderDetailBean orderDetailBean);

	public int updateOrderDetailForUse(OrderDetailBean orderDetailBean);

	public int deleteOneOrderDetail(OrderDetailBean orderDetailBean);

	public int deleteOrderDetailByServiceId(OrderBean orderBean);

}
