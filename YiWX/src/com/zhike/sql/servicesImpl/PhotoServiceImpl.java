package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.PhotoBean;
import com.zhike.sql.beans.PhotobasicBean;
import com.zhike.sql.dao.PhotoDAO;
import com.zhike.sql.services.PhotoService;
import com.zhike.viewmodels.PhotoViewModel;
import com.zhike.viewmodels.PhotobasicViewModel;

public class PhotoServiceImpl implements PhotoService {
	
	private PhotoDAO photoDAO;

	public PhotoDAO getPhotoDAO() {
		return photoDAO;
	}

	public void setPhotoDAO(PhotoDAO photoDAO) {
		this.photoDAO = photoDAO;
	}

	public boolean addNewPhoto(PhotoViewModel photoViewModel) {
		PhotoBean photoBean = new PhotoBean();
		photoBean.setId(photoViewModel.getId());
		photoBean.setAppid(photoViewModel.getAppid());
		photoBean.setTitle(photoViewModel.getTitle());
		photoBean.setUrl(photoViewModel.getUrl());
		photoBean.setKeywords(photoViewModel.getKeywords());
		photoBean.setUid(photoViewModel.getUid());
		photoBean.setDescs(photoViewModel.getDescs());
		photoBean.setImg(photoViewModel.getImg());
		return photoDAO.addNewPhoto(photoBean) > 0;
	}

	public boolean delOnePhoto(PhotoViewModel photoViewModel) {
		PhotoBean photoBean = new PhotoBean();
		photoBean.setId(photoViewModel.getId());
		photoBean.setUid(photoViewModel.getUid());
		photoBean.setAppid(photoViewModel.getAppid());
		return photoDAO.delOnePhoto(photoBean) > 0;
	}

	public List<PhotoBean> selectAllPhoto(PhotoViewModel photoViewModel) {
		PhotoBean photoBean = new PhotoBean();
//		photoBean.setAppid(photoViewModel.getAppid());
//		photoBean.setTitle(photoViewModel.getTitle());
		photoBean.setId(photoViewModel.getId());
		photoBean.setCount(photoViewModel.getCount());
		photoBean.setFrom(photoViewModel.getFrom());
		photoBean.setUid(photoViewModel.getUid());
		photoBean.setAppid(photoViewModel.getAppid());
		return photoDAO.selectAllPhoto(photoBean);
	}
	
	public List<PhotoBean> selectListPhoto(PhotoBean photoBean) {
		return photoDAO.selectListPhoto(photoBean);
	}

	public int selectCountInfosByPage(PhotoBean photoBean) {
//		PhotoBean photoBean = new PhotoBean();
//		photoBean.setAppid(photoViewModel.getAppid());
		
		return photoDAO.selectCountInfosByPage(photoBean);
	}

	public boolean updatePhoto(PhotoViewModel photoViewModel) {
		PhotoBean photoBean = new PhotoBean();
		photoBean.setId(photoViewModel.getId());
		photoBean.setTitle(photoViewModel.getTitle());
		photoBean.setKeywords(photoViewModel.getKeywords());
		photoBean.setUrl(photoViewModel.getUrl());
		photoBean.setUid(photoViewModel.getUid());
		photoBean.setDescs(photoViewModel.getDescs());
		photoBean.setAppid(photoViewModel.getAppid());
		photoBean.setImg(photoViewModel.getImg());
		return photoDAO.updatePhoto(photoBean) > 0;
	}
	
	public PhotoBean getPhotoBean(PhotoBean photoBean) {
		return photoDAO.getPhotoBean(photoBean);
	}

	public boolean addNewPhotobasic(PhotobasicBean photobasicBean) {

		
		return photoDAO.addNewPhotobasic(photobasicBean) > 0;
	}

	public boolean delOnePhotobasic(PhotobasicBean photobasicBean) {
		// TODO Auto-generated method stub
		
		return photoDAO.delOnePhotobasic(photobasicBean) > 0 ;
	}

	public PhotobasicBean getPhotobasicBean(PhotobasicBean photobasicBean) {
		// TODO Auto-generated method stub
		return photoDAO.getPhotobasicBean(photobasicBean);
	}

	public List<PhotobasicBean> selectAllPhotobasic(
			PhotobasicViewModel photobasicViewModel) {
		// TODO Auto-generated method stub
		PhotobasicBean photobasicBean = new PhotobasicBean();
		photobasicBean.setAppid(photobasicViewModel.getAppid());
		photobasicBean.setUid(photobasicViewModel.getUid());
		
		return photoDAO.selectAllPhotobasic(photobasicBean);
	}

	public boolean updatePhotobasic(PhotobasicBean photobasicBean) {
		
		return photoDAO.updatePhotobasic(photobasicBean) > 0;
	}

	public PhotobasicBean selectOnePhotobasic(PhotobasicBean photobasicBean) {
		return photoDAO.selectOnePhotobasic(photobasicBean);
	}

	public int delPhotoByServiceid(PhotobasicBean photobasicBean) {
		return photoDAO.delPhotoByServiceid(photobasicBean);
	}
	

}
