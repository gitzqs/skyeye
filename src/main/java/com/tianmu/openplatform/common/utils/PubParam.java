package com.tianmu.openplatform.common.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * 公共头参数session管理
 */
public class PubParam {

	private HttpServletRequest request;

	public PubParam(HttpServletRequest request) {
		this.request = request;
	}

	/**
	 * 应用版本号
	 */
	public String getAppVersion() {
		Object _acctno = request.getHeader("appVersion");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知版本";
	}

	/**
	 * 手机唯一识别码
	 */
	public String getDeviceId() {
		Object _acctno = request.getHeader("deviceId");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知识别码";
	}

	/**
	 * 手机当前网络
	 */
	public String getNetwork() {
		Object _acctno = request.getHeader("network");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知网络";
	}

	/**
	 * Android/iOS/PC
	 */
	public String getOs() {
		Object _acctno = request.getHeader("os");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知设备";
	}

	/**
	 * 系统版本号
	 */
	public String getOsVersion() {
		Object _acctno = request.getHeader("osVersion");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知系统版本号";
	}

	/**
	 * 手机型号
	 * 
	 * @return
	 */
	public String getModel() {
		Object _acctno = request.getHeader("model");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知手机型号";
	}

	/**
	 * 渠道号
	 */
	public String getChannel() {
		Object _acctno = request.getHeader("channel");
		if (_acctno != null) {
			return String.valueOf(_acctno);
		}
		return "未知渠道号";
	}

	/**
	 * 获取authKey
	 */
	public String getAuthKey() {
		Object authKey = request.getHeader("authKey");
		if (authKey != null) {
			return String.valueOf(authKey);
		}
		return "未知authKey";
	}

	/**
	 * 分辨率
	 */
	public String getDpi() {
		Object dpi = request.getHeader("dpi");
		if (dpi != null) {
			return String.valueOf(dpi);
		}
		return "未知分辨率";
	}

	/**
	 * 服务版本号 默认 1.0
	 */
	public String getApiVersion() {
		Object apiVersion = request.getHeader("apiVersion");
		if (apiVersion != null) {
			return String.valueOf(apiVersion);
		}
		return "未知服务版本号";
	}
}
