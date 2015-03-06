package com.wechat.api;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.zhike.utils.APPManager;
import com.zhike.utils.StringUtils;
import com.zhike.utils.TokenUtils;
import com.zhike.utils.WechatXMLParser;

public class api extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String Token = "choumaolv";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
//		String signature = req.getParameter("signature");
//		String timestamp = req.getParameter("timestamp");
//		String nonce = req.getParameter("nonce");
		String echostr = req.getParameter("echostr");
		String t = req.getParameter("t");// 用户的APP来源
		String appId = null;
		if (!StringUtils.isEmptyString(t) && !StringUtils.isEmptyString(echostr)) {
			appId = TokenUtils.ToGuid(t);
			boolean b = APPManager.verifyAppKey(appId, false);
			if (b) {
				resp.getWriter().print(echostr);
			}
		}
		/*System.out.println("signature=" + signature);// 微信加密签名
		System.out.println("timestamp=" + timestamp);// 时间戳
		System.out.println("nonce=" + nonce);// 随机数
		System.out.println("echostr=" + echostr);// 随机字符串*/

		// 判断来源 加密/校验
		/*String[] ArrTmp = { Token, timestamp, nonce };
		Arrays.sort(ArrTmp);
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < ArrTmp.length; i++) {
			sb.append(ArrTmp[i]);
		}
		String pwd = Encrypt(sb.toString());
		if (pwd.equals(signature)) {
			if (!"".equals(echostr) && echostr != null) {
				resp.getWriter().print(echostr);
			}
		}*/
		//doGetRequest(req, resp);
	}

	protected void doGetRequest(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ByteArrayOutputStream byteOut = null;
		DataInputStream dis = null;
		byte[] bufSource = null;
		byte[] byterquest = new byte[1024];
		ServletInputStream sis = req.getInputStream();
		dis = new DataInputStream(sis);
		int read = 0;
		read = dis.read(byterquest, 0, byterquest.length);
		byteOut = new ByteArrayOutputStream();
		if (read > 0) {
			byteOut.write(byterquest, 0, read);
		}
		bufSource = byteOut.toByteArray();
		resp.setCharacterEncoding("UTF-8");
		resp.getWriter().print("");
	}

	private byte[] readRequestString(HttpServletRequest req)
			throws ServletException, IOException {
		ByteArrayOutputStream byteOut = null;
		DataInputStream dis = null;
		byte[] bufSource = null;
		byte[] byterquest = new byte[1024];
		// String encoding = System.getProperty("file.encoding");// 编码
		ServletInputStream sis = req.getInputStream();
		dis = new DataInputStream(sis);
		int read = 0;
		read = dis.read(byterquest, 0, byterquest.length);
		byteOut = new ByteArrayOutputStream();
		if (read > 0) {
			byteOut.write(byterquest, 0, read);
		}
		bufSource = byteOut.toByteArray();
		return bufSource;
	}

	// 处理微信
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String t = req.getParameter("t");// 用户的APP来源
		String appId = null;
		if (!StringUtils.isEmptyString(t)) {
			appId = TokenUtils.ToGuid(t);
			if (!APPManager.verifyAppKey(appId, false)) {
				return;
			}
		}

		byte[] bufSource = readRequestString(req);
		String requestString = new String(bufSource, "UTF-8");
		resp.setCharacterEncoding("UTF-8");
		/*解析*/
		WechatXMLParser wechatXMLParser = new WechatXMLParser();
		TextBean textBean = wechatXMLParser.textToXml(requestString);
		textBean.setAppid(appId);
		DoWechatReply wechatReply = new DoWechatReply();
		wechatReply.doReply(resp, textBean);
	}

	public String Encrypt(String str) {
		MessageDigest md = null;
		String strDes = null;

		byte[] bt = str.getBytes();
		try {
			md = MessageDigest.getInstance("SHA-1");
			md.update(bt);
			strDes = bytes2Hex(md.digest()); // to HexString
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
		return strDes;
	}

	public String bytes2Hex(byte[] bts) {
		String des = "";
		String tmp = null;
		for (int i = 0; i < bts.length; i++) {
			tmp = (Integer.toHexString(bts[i] & 0xFF));
			if (tmp.length() == 1) {
				des += "0";
			}
			des += tmp;
		}
		return des;
	}
}
