package com.zhike.sql.servicesImpl;

import java.util.HashMap;
import java.util.List;

import com.zhike.sql.beans.APPBean;
import com.zhike.sql.dao.APPDAO;
import com.zhike.sql.services.APPManagerService;
import com.zhike.utils.TokenUtils;

public class APPManagerServiceImpl implements APPManagerService {

	private static HashMap<String, APPBean> hashMap = null;

	private static Object object = new Object();

	public APPDAO getAppDAO() {
		return appDAO;
	}

	public void setAppDAO(APPDAO appDAO) {
		this.appDAO = appDAO;
	}

	public APPDAO appDAO;

	public static boolean appendAPPKey(APPBean appBean) {
		synchronized (object) {
			if (!hashMap.containsKey(appBean.getId())) {
				hashMap.put(appBean.getId(), appBean);
				return true;
			} else {
				return false;
			}
		}
	}

	public static void removeAPPKey(String key) {
		synchronized (object) {
			if (hashMap.containsKey(key)) {
				hashMap.remove(key);
			}
		}
	}

	public static void removeAPPKey(String string, boolean needConvert) {
		synchronized (object) {
			String key = null;
			if (needConvert) {
				key = TokenUtils.ToGuid(string);
			} else {
				key = string;
			}
			removeAPPKey(key);
		}
	}

	public void initAPPKeys() {
		synchronized (object) {
			List<APPBean> appBeans = appDAO.selectAllAPPS();
			if (hashMap == null) {
				hashMap = new HashMap<String, APPBean>();
			}
			for (APPBean appBean : appBeans) {
				if (!hashMap.containsKey(appBean.getId())) {
					hashMap.put(appBean.getId(), appBean);
				}
			}
		}
	}

	public void updateAPPKeys() {
		synchronized (object) {
			if (hashMap != null) {
				hashMap.clear();
			}
			initAPPKeys();
		}
	}

	public static boolean verifyAPPKey(String string) {
		return hashMap.containsKey(string);
	}

	public static boolean verifyAppKey(String string, boolean needConvert) {
		String key = null;
		if (needConvert) {
			key = TokenUtils.ToGuid(string);
		} else {
			key = string;
		}
		return verifyAPPKey(key);
	}

}
