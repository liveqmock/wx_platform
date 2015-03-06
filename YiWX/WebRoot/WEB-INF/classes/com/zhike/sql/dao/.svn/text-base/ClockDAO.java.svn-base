package com.zhike.sql.dao;

import java.util.List;

import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.ClockDepartmentBean;
import com.zhike.sql.beans.ClockInfoBean;
import com.zhike.sql.beans.ClockUserBean;
import com.zhike.sql.beans.LBSBean;

public interface ClockDAO{

	List<ClockBean> selectAllByAppID(ClockBean clockBean);

	int insertOneClock(ClockBean clockBean);

	int insertOneClockDepartment(ClockDepartmentBean cdBean);

	int delOneClock(ClockBean clockBean);

	int delClockDepartmentByServiceId(ClockBean clockBean);

	ClockBean selectOneClockByID(ClockBean clockBean);

	List<ClockDepartmentBean> selectClockDepartmentByServiceId(
			ClockBean clockBean);

	int updateOneClockDepartmentById(ClockDepartmentBean cdBean);

	int insertOneClockDepartmentById(ClockDepartmentBean cdBean);

	int delOneClockDepartmentById(ClockDepartmentBean cdBean);

	int updataeOneClock(ClockBean clockBean);

	ClockUserBean selectOneClockUser(ClockUserBean clockUserBean);

	int insertOneClockUser(ClockUserBean clockUserBean);

	ClockInfoBean selectClockInfoByUserIdForToday(ClockInfoBean clockInfoBean);

	int insertOneClockInfoForOnWork(ClockInfoBean clockInfoBean);

	int updateOneClockInfoForOffWork(ClockInfoBean clockInfoBean);

	int delClockInfoByServiceId(ClockBean clockBean);

	int delClockUserByServiceId(ClockBean clockBean);

	int selectCountUserByPage(ClockUserBean clockUserBean);

	List<ClockUserBean> selectUserByPage(ClockUserBean clockUserBean);

	int updateOneClockDepartmentByIdForLeader(
			ClockDepartmentBean clockDepartmentBean);

	int updateClockDepartmentByLeader(ClockUserBean clockUserBean);

	ClockUserBean selectOneClockUserById(ClockUserBean clockUserBean);

	int selectCountInfoByPage(ClockUserBean clockUserBean);

	List<ClockInfoBean> selectInfoByPage(ClockUserBean clockUserBean);

	int delClockInfoByUserId(ClockUserBean clockUserBean);

	int delOneClockUserById(ClockUserBean clockUserBean);


}
