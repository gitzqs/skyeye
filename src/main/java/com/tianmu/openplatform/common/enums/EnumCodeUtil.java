package com.tianmu.openplatform.common.enums;

public enum EnumCodeUtil {

	ADMIN_FLAG("0", "管理员用户"), // 已使用
	USER_FLAG("1", "普通用户"), // 已使用
	UPERROR("2", "用户名或密码错误"), // 已使用
	FAIL_SYS("9999", "系统异常");// 已使用

	private String enumKey;

	private String enumVal;

	private EnumCodeUtil(String enumKey, String enumVal) {
		this.enumKey = enumKey;
		this.enumVal = enumVal;
	}

	public String getEnumKey() {
		return enumKey;
	}

	public void setEnumKey(String enumKey) {
		this.enumKey = enumKey;
	}

	public String getEnumVal() {
		return enumVal;
	}

	public void setEnumVal(String enumVal) {
		this.enumVal = enumVal;
	}

}