package com.tianmu.openplatform.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class WebUtil {

	public static final String SESSION_KEY = "_SESSION_KEY";

	/**
	 * 获取公共参数的访问入口
	 */
	public static PubParam getPubParam(HttpServletRequest request) {
		PubParam tPubParam = new PubParam(request);
		return tPubParam;
	}

	/**
	 * 判断当前请求是否有会话
	 */
	public static boolean isLogon(HttpServletRequest request) {
		Object sessionOjb = WebUtil.getSession(request).getAttribute(WebUtil.SESSION_KEY);
		if (sessionOjb == null) {
			return false;
		}
		return true;
	}

	public static HttpSession getSession(HttpServletRequest request) {
		return request.getSession(true);
	}

	public static void setRequestAttribute(HttpServletRequest request, String keyObj, Object valueObj) {
		if (request != null) {
			request.setAttribute(keyObj, valueObj);
		}
	}

}
