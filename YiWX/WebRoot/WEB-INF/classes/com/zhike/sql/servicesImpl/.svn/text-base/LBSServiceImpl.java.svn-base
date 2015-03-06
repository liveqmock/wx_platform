package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.dao.LBSDAO;
import com.zhike.sql.services.LBSService;

public class LBSServiceImpl implements LBSService {
	
	public LBSDAO lbsDAO;

	

	public LBSDAO getLbsDAO() {
		return lbsDAO;
	}



	public void setLbsDAO(LBSDAO lbsDAO) {
		this.lbsDAO = lbsDAO;
	}



	public List<LBSBean> selectAllByAppID(LBSBean lbsBean) {
		return lbsDAO.selectAllByAppID(lbsBean);
	}



	public int insertOneLBS(LBSBean lbsBean) {
		return lbsDAO.insertOneLBS(lbsBean);
	}



	public LBSBean selectOneLBSByID(LBSBean lbsBean) {
		return lbsDAO.selectOneLBSByID(lbsBean);
	}



	public int updateOneLBS(LBSBean lbsBean) {
		return  lbsDAO.updateOneLBS(lbsBean);
	}



	public int delOneLBS(LBSBean lbsBean) {
		return lbsDAO.delOneLBS(lbsBean);
	}



	public List<LBSBean> selectAllByAppIDByIsVip(LBSBean lbsBean) {
		return lbsDAO.selectAllByAppIDByIsVip(lbsBean);
	}



	public List<LBSBean> selectLBSByForDistance(LBSBean lbsBean) {
		return lbsDAO.selectLBSByForDistance(lbsBean);
	}
}
