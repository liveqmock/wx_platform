package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.LiuyingBean;
import com.zhike.sql.beans.LiuyingInfoBean;
import com.zhike.viewmodels.APPKeyViewModel;

public interface LiuyingService {

	int insertOneLiuying(LiuyingBean liuyingBean);

	List<LiuyingBean> selectAllByAppID(LiuyingBean liuyingBean);

	int selectCountInfosByPage(LiuyingInfoBean liuyingInfoBean);

	List<LiuyingInfoBean> selectInfosByPage(LiuyingInfoBean liuyingInfoBean);

	int delOneInfoById(LiuyingInfoBean liuyingInfoBean);

	int delOneLiuyingById(LiuyingBean liuyingBean);

	int delInfosByServiceId(LiuyingInfoBean liuyingInfoBean);

	LiuyingBean selectOneLiuyingById(LiuyingBean liuyingBean);

	int updateOneLiuyingById(LiuyingBean liuyingBean);

	int selectCountLiuyingByPage(LiuyingInfoBean liuyingInfoBean);

	List<LiuyingInfoBean> selectLiuyingByPage(LiuyingInfoBean liuyingInfoBean);

	int insertOneLiuyingInfo(LiuyingInfoBean liuyingInfoBean);

	LiuyingInfoBean selectOneLiuyingInfoById(LiuyingInfoBean liuyingInfoBean);

	List<LiuyingInfoBean> selectLiuyingInfoByServiceId(LiuyingInfoBean liuyingInfoBean);
}
