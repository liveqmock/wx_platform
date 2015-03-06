package com.zhike.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimestampToDate {

	public static long getTimestamp(String dateString)  {  
		long temp=0;
		 try {  
	       Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateString);
	       temp = date.getTime()/1000;
		   } catch(Exception ex) {  
			   System.out.println("String转换Date错误，请确认数据可以转换！");  
		   } 
		   return temp;	
		}  
	
	public static String getDate(String unixDate) {  
	    
		   SimpleDateFormat fm1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		   long unixLong = 0;  
		   String date = "";  
		   try {  
		   unixLong = Long.parseLong(unixDate) * 1000;  
		   } catch(Exception ex) {  
		   System.out.println("String转换Long错误，请确认数据可以转换！");  
		   }  
		   try {  
		   date = fm1.format(unixLong); 
		   } catch(Exception ex) {  
		   System.out.println("String转换Date错误，请确认数据可以转换！");  
		   }  
		   return date; 
	}  
	
}
