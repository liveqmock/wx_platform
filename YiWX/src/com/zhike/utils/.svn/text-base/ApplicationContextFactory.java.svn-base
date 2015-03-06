package com.zhike.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ApplicationContextFactory {
	private static ApplicationContext context = null;

	public static Object getBean(String beanName) {
		if (context == null) {
			initApplicationContext();
		}
		return context.getBean(beanName);
	}

	private static void initApplicationContext() {
		context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	}
}
