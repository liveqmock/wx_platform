package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.sql.dao.APPDAO;
import com.zhike.sql.dao.GuaguakaDAO;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.GuaguakaService;
import com.zhike.viewmodels.APPKeyViewModel;

public class GuaguakaServiceImpl implements GuaguakaService {

	public GuaguakaDAO guaguakaDAO;

	public GuaguakaDAO getGuaguakaDAO() {
		return guaguakaDAO;
	}

	public void setGuaguakaDAO(GuaguakaDAO guaguakaDAO) {
		this.guaguakaDAO = guaguakaDAO;
	}

	//刮刮卡
	public List<GuaguakaBean> selectAllByAppID(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectAllByAppID(guaguakaBean);
	}

	public GuaguakaBean selectServiceByID(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectServiceByID(guaguakaBean);
	}

	public GuaguakaInfoBean selectIsWin(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectIsWin(guaguakaBean);
	}

	public boolean updateInfoForUsed(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForUsed(guaguakaInfoBean)>0;
	}

	public boolean updateInfoForContact(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForContact(guaguakaInfoBean)>0;
	}

	public GuaguakaInfoBean selectOneInfo(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectOneInfo(guaguakaBean);
	}

	public boolean insertOneInfo(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.insertOneInfo(guaguakaBean)>0;
	}

	public List<GuaguakaInfoBean> selectAllOfWin(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectAllOfWin(guaguakaBean);
	}

	public int updateInfoForWin(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForWin(guaguakaInfoBean);
	}

	public int updateInfoForTime(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForTime(guaguakaInfoBean);
	}

	public GuaguakaInfoBean selectOneInfoById(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.selectOneInfoById(guaguakaInfoBean);
	}

	public int insertOneService(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.insertOneService(guaguakaBean);
	}

	public int delOneService(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.delOneService(guaguakaBean);
	}

	public int delInfosByServiceId(GuaguakaBean guaguakaBean) {
		// TODO Auto-generated method stub
		return guaguakaDAO.delInfosByServiceId(guaguakaBean);
	}

	public List<GuaguakaInfoBean> selectAllInfosByServiceId(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectAllInfosByServiceId(guaguakaBean);
	}

	public List<GuaguakaInfoBean> selectInfosByPage(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.selectInfosByPage(guaguakaInfoBean);
	}

	public int selectCountInfosByPage(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.selectCountInfosByPage(guaguakaInfoBean);
	}

	public int updateOneService(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.updateOneService(guaguakaBean);
	}
	//大转盘
	
	public List<GuaguakaBean> selectAllByAppIDForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectAllByAppIDForDazhuanpan(guaguakaBean);
	}

	public GuaguakaBean selectServiceByIDForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectServiceByIDForDazhuanpan(guaguakaBean);
	}

	public GuaguakaInfoBean selectIsWinForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectIsWinForDazhuanpan(guaguakaBean);
	}

	public boolean updateInfoForUsedForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForUsedForDazhuanpan(guaguakaInfoBean)>0;
	}

	public boolean updateInfoForContactForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForContactForDazhuanpan(guaguakaInfoBean)>0;
	}

	public GuaguakaInfoBean selectOneInfoForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectOneInfoForDazhuanpan(guaguakaBean);
	}

	public boolean insertOneInfoForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.insertOneInfoForDazhuanpan(guaguakaBean)>0;
	}

	public List<GuaguakaInfoBean> selectAllOfWinForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectAllOfWinForDazhuanpan(guaguakaBean);
	}

	public int updateInfoForWinForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForWinForDazhuanpan(guaguakaInfoBean);
	}

	public int updateInfoForTimeForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.updateInfoForTimeForDazhuanpan(guaguakaInfoBean);
	}

	public GuaguakaInfoBean selectOneInfoByIdForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.selectOneInfoByIdForDazhuanpan(guaguakaInfoBean);
	}

	public int insertOneServiceForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.insertOneServiceForDazhuanpan(guaguakaBean);
	}

	public int delOneServiceForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.delOneServiceForDazhuanpan(guaguakaBean);
	}

	public int delInfosByServiceIdForDazhuanpan(GuaguakaBean guaguakaBean) {
		// TODO Auto-generated method stub
		return guaguakaDAO.delInfosByServiceIdForDazhuanpan(guaguakaBean);
	}

	public List<GuaguakaInfoBean> selectAllInfosByServiceIdForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.selectAllInfosByServiceIdForDazhuanpan(guaguakaBean);
	}

	public List<GuaguakaInfoBean> selectInfosByPageForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.selectInfosByPageForDazhuanpan(guaguakaInfoBean);
	}

	public int selectCountInfosByPageForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean) {
		return guaguakaDAO.selectCountInfosByPageForDazhuanpan(guaguakaInfoBean);
	}

	public int updateOneServiceForDazhuanpan(GuaguakaBean guaguakaBean) {
		return guaguakaDAO.updateOneServiceForDazhuanpan(guaguakaBean);
	}

}
