package com.tianmu.openplatform.common;

/**
 * 常量类：初始化配置文件信息,定义常量等 by haibinwang 2017-11-1 14:01:57
 */
public class ConstantUtil {

	public static final String USER_FLAG = "userflag";// 用户标识常量
	public static final String UPERROR = "uperror";// 用户登录信息常量

	public static final String USERNAME = "username";// 用户标识常量
	public static final String USERID = "userid";// 用户标识常量
	public static final String PASSWORD = "password";// 用户登录信息常量
	public static final String DEVICEID = "deviceId";// 用户标识常量

	public static final String LOGIN_PAGE = "login";// 登录后普通用户主页面常量
	public static final String ERROR_PAGE = "errorPage";// 错误页面常量
	public static final String MAIN_PAGE = "main";// 登录后普通用户主页面常量
	public static final String INDEX_PAGE = "index";// 登录后普通用户主页面常量
	public static final String USERMANAGER_PAGE = "userManager";// 登录后管理员用户主页面常量

	/**
	 * 基本类型的默认值 用于初始化变量
	 */
	public static final class DefaultValue {
		public static final String STR_DV = "";
		public static final String RETCODE = "retCode";
		public static final String RETMSG = "retMsg";
	}

	public static final class Result {
		public static final String CODE = "bodyCode";
		public static final String MSG = "bodyMsg";
		public static final String TRANSNO = "transno";
	}

}
