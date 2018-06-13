package com.tianmu.openplatform.common.enums;

public enum InterfUtil {

	ONLINECODE("online", "0"), // 登录,已使用
	MONITLCODE("monitl", "1"), // 监控列表,已使用
	MONITDCODE("monitd", "2");// 监控已使用

	private String sourceCode;

	private String terminalCode;

	public String getSourceCode() {
		return sourceCode;
	}

	public void setSourceCode(String sourceCode) {
		this.sourceCode = sourceCode;
	}

	public String getTerminalCode() {
		return terminalCode;
	}

	public void setTerminalCode(String terminalCode) {
		this.terminalCode = terminalCode;
	}

	private InterfUtil(String sourceCode, String terminalCode) {
		this.sourceCode = sourceCode;
		this.terminalCode = terminalCode;
	}

}