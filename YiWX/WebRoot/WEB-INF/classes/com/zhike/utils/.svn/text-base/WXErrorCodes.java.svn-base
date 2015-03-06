package com.zhike.utils;

import java.util.HashMap;
import java.util.Map;

public class WXErrorCodes {
	public static Map<Integer, String> maps = new HashMap<Integer, String>();

	static {
		maps.put(-1, "系统繁忙");
		maps.put(0, "请求成功");
		maps.put(40001, "获取access_token时AppSecret错误，或者access_token无效");
		maps.put(40002, "不合法的凭证类型");
		maps.put(40003, "不合法的OpenID");
		maps.put(40013, "不合法的APPID");
		maps.put(40014, "不合法的access_token");
		maps.put(40015, "不合法的菜单类型");
		maps.put(40016, "不合法的按钮个数");
		maps.put(40017, "不合法的按钮个数");
		maps.put(40018, "不合法的按钮名字长度");
		maps.put(40019, "不合法的按钮KEY长度");
		maps.put(40020, "不合法的按钮URL长度");
		maps.put(40021, "不合法的菜单版本号");
		maps.put(40022, "不合法的子菜单级数");
		maps.put(40023, "不合法的子菜单按钮个数");
		maps.put(40024, "不合法的子菜单按钮类型");
		maps.put(40025, "不合法的子菜单按钮名字长度");
		maps.put(40026, "不合法的子菜单按钮KEY长度");
		maps.put(40027, "不合法的子菜单按钮URL长度");
		maps.put(40028, "不合法的自定义菜单使用用户");
		maps.put(41001, "缺少access_token参数");
		maps.put(41002, "缺少appid参数");
		maps.put(41004, "缺少secret参数");
	}

	public static String get(int code) {
		if (maps.containsKey(code)) {
			return maps.get(code);
		} else {
			return null;
		}
	}
}
