package com.tianmu.openplatform.common;

import java.util.Map;

public class ApiResponse {

	private String headerCode;

	private String headerMsg;

	private Map<String, Object> respData;

	public Map<String, Object> getRespData() {
		return respData;
	}

	public void setRespData(Map<String, Object> respData) {
		this.respData = respData;
	}

	public String getHeaderCode() {
		return headerCode;
	}

	public void setHeaderCode(String headerCode) {
		this.headerCode = headerCode;
	}

	public String getHeaderMsg() {
		return headerMsg;
	}

	public void setHeaderMsg(String headerMsg) {
		this.headerMsg = headerMsg;
	}

}
