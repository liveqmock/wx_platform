package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.ClockBean;
import com.zhike.sql.beans.ClockDepartmentBean;
import com.zhike.sql.beans.ClockInfoBean;
import com.zhike.sql.beans.ClockUserBean;
import com.zhike.sql.beans.LBSBean;
import com.zhike.sql.dao.ClockDAO;
import com.zhike.sql.dao.LBSDAO;
import com.zhike.sql.services.ClockService;
import com.zhike.sql.services.LBSService;

public class ClockServiceImpl implements ClockService {
	
	public ClockDAO clockDAO;

	public ClockDAO getClockDAO() {
		return clockDAO;
	}

	public void setClockDAO(ClockDAO clockDAO) {
		this.clockDAO = clockDAO;
	}

	public List<ClockBean> selectAllByAppID(ClockBean clockBean) {
		return clockDAO.selectAllByAppID(clockBean);
	}

	public int insertOneClock(ClockBean clockBean) {
		
		return clockDAO.insertOneClock(clockBean);
	}

	public int insertOneClockDepartment(ClockDepartmentBean cdBean) {
		return clockDAO.insertOneClockDepartment(cdBean);
	}



	public int delOneClock(ClockBean clockBean) {
		return clockDAO.delOneClock(clockBean);
	}

	public int delClockDepartmentByServiceId(ClockBean clockBean) {
		return clockDAO.delClockDepartmentByServiceId(clockBean);
	}

	public ClockBean selectOneClockByID(ClockBean clockBean) {
		return clockDAO.selectOneClockByID(clockBean);
	}

	public List<ClockDepartmentBean> selectClockDepartmentByServiceId(
			ClockBean clockBean) {
		return clockDAO.selectClockDepartmentByServiceId(clockBean);
	}

	public int updateOneClockDepartmentById(
			ClockDepartmentBean cdBean) {
		return clockDAO.updateOneClockDepartmentById(cdBean);
	}

	public int delOneClockDepartmentById(ClockDepartmentBean cdBean) {
		return clockDAO.delOneClockDepartmentById(cdBean);
	}

	public int updataeOneClock(ClockBean clockBean) {
		return clockDAO.updataeOneClock(clockBean);
	}

	public ClockUserBean selectOneClockUser(ClockUserBean clockUserBean) {
		return clockDAO.selectOneClockUser(clockUserBean);
	}

	public int insertOneClockUser(ClockUserBean clockUserBean) {
		return clockDAO.insertOneClockUser(clockUserBean);
	}

	public ClockInfoBean selectClockInfoByUserIdForToday(
			ClockInfoBean clockInfoBean) {
		return clockDAO.selectClockInfoByUserIdForToday(clockInfoBean);
	}

	public int insertOneClockInfoForOnWork(ClockInfoBean clockInfoBean) {
		return clockDAO.insertOneClockInfoForOnWork(clockInfoBean);
	}

	public int updateOneClockInfoForOffWork(ClockInfoBean clockInfoBean) {
		return clockDAO.updateOneClockInfoForOffWork(clockInfoBean);
	}

	public int delClockInfoByServiceId(ClockBean clockBean) {
		return clockDAO.delClockInfoByServiceId(clockBean);
	}

	public int delClockUserByServiceId(ClockBean clockBean) {
		return clockDAO.delClockUserByServiceId(clockBean);
	}

	public int selectCountUserByPage(ClockUserBean clockUserBean) {
		return clockDAO.selectCountUserByPage(clockUserBean);
	}

	public List<ClockUserBean> selectUserByPage(ClockUserBean clockUserBean) {
		return clockDAO.selectUserByPage(clockUserBean);
	}

	public int updateOneClockDepartmentByIdForLeader(
			ClockDepartmentBean clockDepartmentBean) {
		return clockDAO.updateOneClockDepartmentByIdForLeader(clockDepartmentBean);
	}

	public int updateClockDepartmentByLeader(ClockUserBean clockUserBean) {
		return clockDAO.updateClockDepartmentByLeader(clockUserBean);
	}

	public ClockUserBean selectOneClockUserById(ClockUserBean clockUserBean) {
		return clockDAO.selectOneClockUserById(clockUserBean);
	}

	public int selectCountInfoByPage(ClockUserBean clockUserBean) {
		return clockDAO.selectCountInfoByPage(clockUserBean);
	}

	public List<ClockInfoBean> selectInfoByPage(ClockUserBean clockUserBean) {
		return clockDAO.selectInfoByPage(clockUserBean);
	}

	public int delClockInfoByUserId(ClockUserBean clockUserBean) {
		return clockDAO.delClockInfoByUserId(clockUserBean);
	}

	public int delOneClockUserById(ClockUserBean clockUserBean) {
		return clockDAO.delOneClockUserById(clockUserBean);
	}


}
