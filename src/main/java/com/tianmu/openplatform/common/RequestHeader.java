package com.tianmu.openplatform.common;

public class RequestHeader {

	private String frtseq;//交易流水号

	private String prcscd;//交易码

	private String servtp;//渠道

	public String getFrtseq() {
		return frtseq;
	}

	public void setFrtseq(String frtseq) {
		this.frtseq = frtseq;
	}

	public String getPrcscd() {
		return prcscd;
	}

	public void setPrcscd(String prcscd) {
		this.prcscd = prcscd;
	}

	public String getServtp() {
		return servtp;
	}

	public void setServtp(String servtp) {
		this.servtp = servtp;
	}

}
