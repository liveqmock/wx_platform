package com.data.crawler;

import java.util.Timer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class CrawlerServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final long delay = 1000; 
	private static final long period = 1800*1000;

	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("already start!");
		//Timer timer = new Timer();
		//timer.schedule(new CrawlerExecute(), delay,period);
	}	
}
