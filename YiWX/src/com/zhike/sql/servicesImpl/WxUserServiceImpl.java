package com.zhike.sql.servicesImpl;

import com.zhike.sql.beans.WxUserBean;
import com.zhike.sql.dao.WxUserDAO;
import com.zhike.sql.services.WxUserService;

public class WxUserServiceImpl implements WxUserService {

	public WxUserDAO wxUserDAO;

	
	public WxUserDAO getWxUserDAO() {
		return wxUserDAO;
	}


	public void setWxUserDAO(WxUserDAO wxUserDAO) {
		this.wxUserDAO = wxUserDAO;
	}


	public WxUserBean selectOneWxUserByOpenId(WxUserBean wxUserBean) {
		return wxUserDAO.selectOneWxUserByOpenId(wxUserBean);
	}


	public int insertOneWxUser(WxUserBean wxUserBean) {
		return wxUserDAO.insertOneWxUser(wxUserBean);
	}


	public WxUserBean selectOneWxUserById(WxUserBean wxUserBean) {
		return wxUserDAO.selectOneWxUserById(wxUserBean);
	}


	public int updateOneWxUserByOpenId(WxUserBean wxUserBean) {
		return wxUserDAO.updateOneWxUserByOpenId(wxUserBean);
	
	}


	public int updateUnionOneWxUserForUpdatetime(WxUserBean wxUserBean) {
		return wxUserDAO.updateUnionOneWxUserForUpdatetime(wxUserBean);
	}


	public int insertUnionOneWxUser(WxUserBean wxUserBean) {
		return wxUserDAO.insertUnionOneWxUser(wxUserBean);
	}


	public int updateOneWxUserForLBS(WxUserBean wxUserBean) {
		return wxUserDAO.updateOneWxUserForLBS(wxUserBean);
	}


}
