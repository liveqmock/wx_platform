package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.GuaguakaInfoBean;
import com.zhike.sql.beans.PageBean;
import com.zhike.viewmodels.APPKeyViewModel;

public interface GuaguakaService {
	//刮刮卡
	List<GuaguakaBean> selectAllByAppID(GuaguakaBean guaguakaBean);

	GuaguakaBean selectServiceByID(GuaguakaBean guaguakaBean);

	GuaguakaInfoBean selectIsWin(GuaguakaBean guaguakaBean);

	boolean updateInfoForUsed(GuaguakaInfoBean guaguakaInfoBean);

	boolean updateInfoForContact(GuaguakaInfoBean guaguakaInfoBean);

	GuaguakaInfoBean selectOneInfo(GuaguakaBean guaguakaBean);

	boolean insertOneInfo(GuaguakaBean guaguakaBean);

	List<GuaguakaInfoBean> selectAllOfWin(GuaguakaBean guaguakaBean);

	int updateInfoForWin(GuaguakaInfoBean guaguakaInfoBean);

	int updateInfoForTime(GuaguakaInfoBean guaguakaInfoBean);

	GuaguakaInfoBean selectOneInfoById(GuaguakaInfoBean guaguakaInfoBean);

	int insertOneService(GuaguakaBean guaguakaBean);

	int delOneService(GuaguakaBean guaguakaBean);

	int delInfosByServiceId(GuaguakaBean guaguakaBean);

	List<GuaguakaInfoBean> selectAllInfosByServiceId(GuaguakaBean guaguakaBean);

	List<GuaguakaInfoBean> selectInfosByPage(GuaguakaInfoBean guaguakaInfoBean);

	int selectCountInfosByPage(GuaguakaInfoBean guaguakaInfoBean);

	int updateOneService(GuaguakaBean guaguakaBean);
	//大转盘
	List<GuaguakaBean> selectAllByAppIDForDazhuanpan(GuaguakaBean guaguakaBean);

	GuaguakaBean selectServiceByIDForDazhuanpan(GuaguakaBean guaguakaBean);

	GuaguakaInfoBean selectIsWinForDazhuanpan(GuaguakaBean guaguakaBean);

	boolean updateInfoForUsedForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	boolean updateInfoForContactForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	GuaguakaInfoBean selectOneInfoForDazhuanpan(GuaguakaBean guaguakaBean);

	boolean insertOneInfoForDazhuanpan(GuaguakaBean guaguakaBean);

	List<GuaguakaInfoBean> selectAllOfWinForDazhuanpan(GuaguakaBean guaguakaBean);

	int updateInfoForWinForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	int updateInfoForTimeForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	GuaguakaInfoBean selectOneInfoByIdForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	int insertOneServiceForDazhuanpan(GuaguakaBean guaguakaBean);

	int delOneServiceForDazhuanpan(GuaguakaBean guaguakaBean);

	int delInfosByServiceIdForDazhuanpan(GuaguakaBean guaguakaBean);

	List<GuaguakaInfoBean> selectAllInfosByServiceIdForDazhuanpan(GuaguakaBean guaguakaBean);

	List<GuaguakaInfoBean> selectInfosByPageForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	int selectCountInfosByPageForDazhuanpan(GuaguakaInfoBean guaguakaInfoBean);

	int updateOneServiceForDazhuanpan(GuaguakaBean guaguakaBean);
}
