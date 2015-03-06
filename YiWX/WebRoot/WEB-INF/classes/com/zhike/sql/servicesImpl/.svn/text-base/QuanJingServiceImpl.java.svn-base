package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.QuanJingBean;
import com.zhike.sql.dao.QuanJingDAO;
import com.zhike.sql.services.QuanJingService;
import com.zhike.viewmodels.QuanJingViewModel;

public class QuanJingServiceImpl implements QuanJingService {
	
	private QuanJingDAO quanjingDAO;

	public QuanJingDAO getQuanjingDAO() {
		return quanjingDAO;
	}

	public void setQuanjingDAO(QuanJingDAO quanjingDAO) {
		this.quanjingDAO = quanjingDAO;
	}

	public boolean addNewQuanJing(QuanJingBean quanJingBean) {
		// TODO Auto-generated method stub
		return quanjingDAO.addNewQuanJing(quanJingBean) > 0;
	}

	public boolean delOneQuanJing(QuanJingViewModel quanjingViewModel) {
		// TODO Auto-generated method stub
		QuanJingBean quanjingBean = new QuanJingBean();
		quanjingBean.setId(quanjingViewModel.getId());
		
		return quanjingDAO.delOneQuanJing(quanjingBean) > 0;
	}

	public List<QuanJingBean> selectAllQuanJing(
			QuanJingViewModel quanjingViewModel) {
		// TODO Auto-generated method stub
		QuanJingBean quanjingBean = new QuanJingBean();
		quanjingBean.setAppid(quanjingViewModel.getAppid());
		quanjingBean.setTitle(quanjingViewModel.getTitle());
		quanjingBean.setFrom(quanjingViewModel.getFrom());
		quanjingBean.setCount(quanjingViewModel.getCount());
		
		return quanjingDAO.selectAllQuanJings(quanjingBean);
	}

	public int selectCountInfosByPage(QuanJingViewModel quanjingViewModel) {
		// TODO Auto-generated method stub
		QuanJingBean quanjingBean = new QuanJingBean();
		quanjingBean.setAppid(quanjingViewModel.getAppid());
		
		return quanjingDAO.selectCountInfosByPage(quanjingBean);
	}

	public boolean updateQuanJing(QuanJingViewModel quanjingViewModel) {
		// TODO Auto-generated method stub
		QuanJingBean quanjingBean = new QuanJingBean();
		quanjingBean.setId(quanjingViewModel.getId());
		quanjingBean.setTitle(quanjingViewModel.getTitle());
		quanjingBean.setUrl1(quanjingViewModel.getUrl1());
		quanjingBean.setUrl2(quanjingViewModel.getUrl2());
		quanjingBean.setUrl3(quanjingViewModel.getUrl3());
		quanjingBean.setUrl4(quanjingViewModel.getUrl4());
		quanjingBean.setUrl5(quanjingViewModel.getUrl5());
		quanjingBean.setUrl6(quanjingViewModel.getUrl6());
		quanjingBean.setText(quanjingViewModel.getText());
		quanjingBean.setKeywords(quanjingViewModel.getKeywords());
		quanjingBean.setImg(quanjingViewModel.getImg());
		
		return quanjingDAO.updateQuanJing(quanjingBean) > 0;
	}
	
	public QuanJingBean getQuanJing(QuanJingBean quanjingBean) {
		return quanjingDAO.getQuanJing(quanjingBean);
	}

}
