package com.tianmu.openplatform.domain;

public class DosageRank {
	private int id;
	private String devId;
	private String custName;
	private double yesterdayDosage;
	private double todayDosage;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getDevId() {
		return devId;
	}
	public void setDevId(String devId) {
		this.devId = devId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public double getTodayDosage() {
		return todayDosage;
	}
	public void setTodayDosage(double todayDosage) {
		this.todayDosage = todayDosage;
	}
	public double getYesterdayDosage() {
		return yesterdayDosage;
	}
	public void setYesterdayDosage(double yesterdayDosage) {
		this.yesterdayDosage = yesterdayDosage;
	}
	
}
