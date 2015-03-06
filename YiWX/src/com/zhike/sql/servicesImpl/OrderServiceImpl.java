package com.zhike.sql.servicesImpl;

import java.util.List;
import com.zhike.sql.beans.OrderBean;
import com.zhike.sql.beans.OrderDetailBean;
import com.zhike.sql.dao.OrderDAO;
import com.zhike.sql.services.OrderService;

public class OrderServiceImpl implements OrderService {

	public OrderDAO orderDAO;

	public OrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	public List<OrderBean> selectAllByAppID(OrderBean orderBean) {
		return orderDAO.selectAllByAppID(orderBean);
	}
	public boolean addNewOrder(OrderBean orderBean){
		return orderDAO.addNewOrder(orderBean) > 0;
	}

	public OrderBean selectOrderByUserIdAndAPPId(OrderBean orderBean) {
		return orderDAO.selectOrderByUserIdAndAPPId(orderBean);
	}

	public boolean deleteOrderByUserIdAndAPPId(OrderBean orderBean) {
			return orderDAO.deleteOrderByUserIdAndAPPId(orderBean) > 0;
	}

	public boolean updateOrderByUserIdAndAPPId(OrderBean orderBean) {
		return orderDAO.updateOrderByUserIdAndAPPId(orderBean) > 0;
	}
	
	public OrderBean selectOrderPrewById(OrderBean orderBean){
		return orderDAO.selectOrderPrewById(orderBean);
	}
	
	public boolean addNewWXOrder(OrderDetailBean orderDetailBean){
		return orderDAO.addNewWXOrder(orderDetailBean) > 0 ;
	}
	
	public int  selectWXOrderNumber(OrderDetailBean orderDetailBean){
		return orderDAO.selectWXOrderNumber(orderDetailBean);
	}
	
	public List<OrderDetailBean> selectAllWxOrderByAppIdAndWID(OrderDetailBean orderDetailBean){
		return orderDAO.selectAllWxOrderByAppIdAndWID(orderDetailBean);
	}
	
	public List<OrderDetailBean> selectAllWXOrderDetailsByAppIdAndOrderId(OrderDetailBean orderDetailBean){
		return orderDAO.selectAllWXOrderDetailsByAppIdAndOrderId(orderDetailBean);
	}

	public int selectCountInfosByPage(OrderDetailBean orderDetailBean) {
		return orderDAO.selectCountInfosByPage(orderDetailBean);
	}

	public List<OrderDetailBean> selectInfosByPage(OrderDetailBean orderDetailBean) {
		return orderDAO.selectInfosByPage(orderDetailBean);
	}

	public int updateOrderDetailForUse(OrderDetailBean orderDetailBean) {
		return orderDAO.updateOrderDetailForUse(orderDetailBean);
		
	}

	public int deleteOneOrderDetail(OrderDetailBean orderDetailBean) {
		return orderDAO.deleteOneOrderDetail(orderDetailBean);
	}

	public int deleteOrderDetailByServiceId(OrderBean orderBean) {
		return orderDAO.deleteOrderDetailByServiceId(orderBean);
	}
}
