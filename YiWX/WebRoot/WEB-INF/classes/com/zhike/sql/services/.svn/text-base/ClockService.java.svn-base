package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.ClockDepartmentBean;
import com.zhike.sql.beans.ClockInfoBean;
import com.zhike.sql.beans.ClockUserBean;
import com.zhike.sql.beans.LBSBean;

public interface ClockService {

	List<ClockBean> selectAllByAppID(ClockBean clockBean);

	int insertOneClock(ClockBean clockBean);

	int insertOneClockDepartment(ClockDepartmentBean cdBean);

	int delOneClock(ClockBean clockBean);

	int delClockDepartmentByServiceId(ClockBean clockBean);

	ClockBean selectOneClockByID(ClockBean clockBean);

	List<ClockDepartmentBean> selectClockDepartmentByServiceId(
			ClockBean clockBean);

	int updateOneClockDepartmentById(ClockDepartmentBean clockDepartmentBean);

	int delOneClockDepartmentById(ClockDepartmentBean clockDepartmentBean);

	int updataeOneClock(ClockBean clockBean);

	ClockUserBean selectOneClockUser(ClockUserBean clockUserBean);

	int insertOneClockUser(ClockUserBean clockUserBean);

	ClockInfoBean selectClockInfoByUserIdForToday(ClockInfoBean clockInfoBean);

	int insertOneClockInfoForOnWork(ClockInfoBean clockInfoBean);

	int updateOneClockInfoForOffWork(ClockInfoBean clockInfoBean);

	int delClockUserByServiceId(ClockBean clockBean);

	int delClockInfoByServiceId(ClockBean clockBean);

	int selectCountUserByPage(ClockUserBean clockUserBean);

	List<ClockUserBean> selectUserByPage(ClockUserBean clockUserBean);

	int updateOneClockDepartmentByIdForLeader(
			ClockDepartmentBean clockDepartmentBean);

	int updateClockDepartmentByLeader(ClockUserBean clockUserBean);

	ClockUserBean selectOneClockUserById(ClockUserBean clockUserBean);

	int selectCountInfoByPage(ClockUserBean clockUserBean);

	List<ClockInfoBean> selectInfoByPage(ClockUserBean clockUserBean);

	int delOneClockUserById(ClockUserBean clockUserBean);

	int delClockInfoByUserId(ClockUserBean clockUserBean);








}