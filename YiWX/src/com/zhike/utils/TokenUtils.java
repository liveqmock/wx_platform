package com.zhike.utils;


import org.apache.commons.codec.binary.Base64;

public class TokenUtils {

	public static String createGuid() {
		long currentTime = System.currentTimeMillis();
		System.out.println(currentTime);
		return Shrink(String.valueOf(currentTime));
	}

	public static String Shrink(String guid) {
		String base64 = Base64.encodeBase64String(guid.getBytes());
		return base64;
	}
	
	
	public static String ToGuid(String target){
		String base64 = new String(Base64.decodeBase64(target));
		return base64;
	}
}
