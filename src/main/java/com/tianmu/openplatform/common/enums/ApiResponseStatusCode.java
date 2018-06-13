package com.tianmu.openplatform.common.enums;

public enum ApiResponseStatusCode {

	HEADERSUCCESS("0000", "交互成功"), //
	BODYSUCCESS("0000", "操作成功"), //
	USER_NOTEXIST("0001", "用户不存在"), //
	PWD_NOTCORRECT("0002", "密码错误"), //
	FRTSEQ_ISBLANK("0003", "交易流水号不能空"), //
	SERVTP_ISBLANK("0004", "交易码不能为空"), //
	SERVTP_ERROR("0005", "交易码错误"), //
	DEVBIND_ERROR("0006", "设备绑定失败"), //

	DATA_ERROR("1001", "请求报文错误"), //
	HEADER_ERROR("1002", "报文头解析错误"), //
	BODY_ERROR("1003", "报文体解析错误"), //
	ERROR("9999", "系统异常");//

	private final String code;

	private final String message;

	private ApiResponseStatusCode(String code, String message) {
		this.code = code;
		this.message = message;
	}

	public String getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}

}
