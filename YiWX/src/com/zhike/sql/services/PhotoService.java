package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.PhotoBean;
import com.zhike.sql.beans.PhotobasicBean;
import com.zhike.viewmodels.PhotoViewModel;
import com.zhike.viewmodels.PhotobasicViewModel;

public interface PhotoService {

	public boolean addNewPhoto(PhotoViewModel photoViewModel);
	
	public boolean updatePhoto(PhotoViewModel photoViewModel);
	
	public boolean delOnePhoto(PhotoViewModel photoViewModel);
	
	public int selectCountInfosByPage(PhotoBean photoBean);
	
	public List<PhotoBean> selectAllPhoto(PhotoViewModel photoViewModel);
	
	public List<PhotoBean> selectListPhoto(PhotoBean photoBean);
	
	public PhotoBean getPhotoBean(PhotoBean photoBean);
	
	
	public boolean addNewPhotobasic(PhotobasicBean photobasicBean);
	
	public boolean updatePhotobasic(PhotobasicBean photobasicBean);
	
	public boolean delOnePhotobasic(PhotobasicBean photobasicBean);
	
	public PhotobasicBean getPhotobasicBean(PhotobasicBean photobasicBean);
	
	public List<PhotobasicBean> selectAllPhotobasic(PhotobasicViewModel photobasicViewModel);

	public PhotobasicBean selectOnePhotobasic(PhotobasicBean photobasicBean);

	public int delPhotoByServiceid(PhotobasicBean photobasicBean);

}
