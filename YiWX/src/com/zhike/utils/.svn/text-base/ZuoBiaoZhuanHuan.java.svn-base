package com.zhike.utils;

import com.zhike.sql.beans.LBSBean;

public class ZuoBiaoZhuanHuan {
	
    static double pi = 3.14159265358979323;//数据圆周率
    static double a = 6378245.0;//地球半径？
    static double ee = 0.00669342162296594323;//偏心率？
    
	//谷歌坐标 to 百度坐标
	public static LBSBean  google_2_bd(LBSBean lbsBean)  
    
	{  
		
	    double x =Double.parseDouble(lbsBean.getLng()); 
	    double y =Double.parseDouble(lbsBean.getLat()); 
	    double x_pi = pi;
	    double z = Math.sqrt(x * x + y * y) + 0.00002 * Math.sin(y * x_pi);  
	  
	    double theta = Math.atan2(y, x) + 0.000003 * Math.cos(x * x_pi);  
	  
	    double  bd_lon = z * Math.cos(theta) + 0.0065;  
	    double  bd_lat = z * Math.sin(theta) + 0.006;  
	    lbsBean.setLng(String.valueOf(bd_lon));
	    lbsBean.setLat(String.valueOf(bd_lat));
	    //System.out.println(bd_lat+"+"+bd_lon);
	    
	    return lbsBean;
	}  


	//GPS to 谷歌坐标
    public static LBSBean  gps_2_google(LBSBean lbsBean ) {
    	double wgLat = Double.parseDouble(lbsBean.getLat()); 
    	double wgLon = Double.parseDouble(lbsBean.getLng()); 
        double dLat = transformLat(wgLon - 105.0, wgLat - 35.0);
        double dLon = transformLon(wgLon - 105.0, wgLat - 35.0);
        double radLat = wgLat / 180.0 * pi;
        double magic = Math.sin(radLat);
        magic = 1 - ee * magic * magic;
        double sqrtMagic = Math.sqrt(magic);
        dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * pi);
        dLon = (dLon * 180.0) / (a / sqrtMagic * Math.cos(radLat) * pi);
        double mgLat = wgLat + dLat;
        double mgLon = wgLon + dLon;
	    lbsBean.setLng(String.valueOf(mgLon));
	    lbsBean.setLat(String.valueOf(mgLat));
        return lbsBean;
   
    }	
	
    static double transformLat(double x, double y)
    {
    	 double ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * Math.sqrt(Math.abs(x));
         ret += (20.0 * Math.sin(6.0 * x * pi) + 20.0 * Math.sin(2.0 * x * pi)) * 2.0 / 3.0;
         ret += (20.0 * Math.sin(y * pi) + 40.0 * Math.sin(y / 3.0 * pi)) * 2.0 / 3.0;
         ret += (160.0 * Math.sin(y / 12.0 * pi) + 320 * Math.sin(y * pi / 30.0)) * 2.0 / 3.0;
         return ret;
     }

     static double transformLon(double x, double y)
     {
         double ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * Math.sqrt(Math.abs(x));
         ret += (20.0 * Math.sin(6.0 * x * pi) + 20.0 * Math.sin(2.0 * x * pi)) * 2.0 / 3.0;
         ret += (20.0 * Math.sin(x * pi) + 40.0 * Math.sin(x / 3.0 * pi)) * 2.0 / 3.0;
         ret += (150.0 * Math.sin(x / 12.0 * pi) + 300.0 * Math.sin(x / 30.0 * pi)) * 2.0 / 3.0;
         return ret;
     }
	
	
	//测试
	public static void main(String args[]){
		LBSBean lbs = new LBSBean();
		lbs.setLng("116.340210");
		lbs.setLat("39.974521");
		google_2_bd(lbs);
	}
	
	
}
