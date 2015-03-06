package com.zhike.sql.dao;

import java.util.List;

import com.zhike.sql.beans.PhotoBean;
import com.zhike.sql.beans.PhotobasicBean;

public interface PhotoDAO {
	public int addNewPhoto(PhotoBean photoBean);
	
	public int updatePhoto(PhotoBean photoBean);
	
	public int delOnePhoto(PhotoBean photoBean);
	
	public List<PhotoBean> selectAllPhoto(PhotoBean photoBean);
	
	public List<PhotoBean> selectListPhoto(PhotoBean photoBean);
	
	public int selectCountInfosByPage(PhotoBean photoBean);
	
	public PhotoBean getPhotoBean(PhotoBean photoBean);
	
	
	public int delPhotoByServiceid(PhotobasicBean photobasicBean);
	
	public int addNewPhotobasic(PhotobasicBean photobasicBean);
	
	public int updatePhotobasic(PhotobasicBean photobasicBean);
	
	public int delOnePhotobasic(PhotobasicBean photobasicBean);
	
	public PhotobasicBean getPhotobasicBean(PhotobasicBean photobasicBean);
	
	public List<PhotobasicBean> selectAllPhotobasic(PhotobasicBean photobasicBean);

	public PhotobasicBean selectOnePhotobasic(PhotobasicBean photobasicBean);
}
