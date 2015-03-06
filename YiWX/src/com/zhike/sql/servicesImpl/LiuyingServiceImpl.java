package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.LiuyingBean;
import com.zhike.sql.beans.LiuyingInfoBean;
import com.zhike.sql.dao.APPDAO;
import com.zhike.sql.dao.LiuyingDAO;
import com.zhike.sql.services.APPService;
import com.zhike.sql.services.LiuyingService;
import com.zhike.viewmodels.APPKeyViewModel;

public class LiuyingServiceImpl implements LiuyingService {
	

	public LiuyingDAO liuyingDAO;

	public LiuyingDAO getLiuyingDAO() {
		return liuyingDAO;
	}

	public void setLiuyingDAO(LiuyingDAO liuyingDAO) {
		this.liuyingDAO = liuyingDAO;
	}

	public int insertOneLiuying(LiuyingBean liuyingBean) {
		return liuyingDAO.insertOneLiuying(liuyingBean);
	}

	public List<LiuyingBean> selectAllByAppID(LiuyingBean liuyingBean) {
		return liuyingDAO.selectAllByAppID(liuyingBean);
	}

	public int selectCountInfosByPage(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.selectCountInfosByPage(liuyingInfoBean);
	}

	public List<LiuyingInfoBean> selectInfosByPage(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.selectInfosByPage(liuyingInfoBean);
	}

	public int delOneInfoById(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.delOneInfoById(liuyingInfoBean);
	}

	public int delOneLiuyingById(LiuyingBean liuyingBean) {
		return liuyingDAO.delOneLiuyingById(liuyingBean);
	}

	public int delInfosByServiceId(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.delInfosByServiceId(liuyingInfoBean);
	}

	public LiuyingBean selectOneLiuyingById(LiuyingBean liuyingBean) {
		return liuyingDAO.selectOneLiuyingById(liuyingBean);
	}

	public int updateOneLiuyingById(LiuyingBean liuyingBean) {
		return liuyingDAO.updateOneLiuyingById(liuyingBean);
	}

	public int selectCountLiuyingByPage(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.selectCountLiuyingByPage(liuyingInfoBean);
	}

	public List<LiuyingInfoBean> selectLiuyingByPage(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.selectLiuyingByPage(liuyingInfoBean);
	}

	public int insertOneLiuyingInfo(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.insertOneLiuyingInfo(liuyingInfoBean);
	}

	public LiuyingInfoBean selectOneLiuyingInfoById(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.selectOneLiuyingInfoById(liuyingInfoBean);
	}

	public List<LiuyingInfoBean> selectLiuyingInfoByServiceId(LiuyingInfoBean liuyingInfoBean) {
		return liuyingDAO.selectLiuyingInfoByServiceId(liuyingInfoBean);
	}

	
}
