package com.tianmu.openplatform.domain;

public class Custonline {

	private String id;
	private String custname;
	private String deviceid;
	private String contractor;
	private String contractdetail;
	private String custaddress;
	private String onlinetime;
	private String custrole;
	private String custauth;
	private String userid;
	private String companyId;

	//新增区域信息
	private Integer provinceId;
	private Integer cityId;
	private Integer areaId;
	private String marker;

	public Integer getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public Integer getAreaId() {
		return areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}

	public String getMarker() {
		return marker;
	}

	public void setMarker(String marker) {
		this.marker = marker;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getDeviceid() {
		return deviceid;
	}

	public void setDeviceid(String deviceid) {
		this.deviceid = deviceid;
	}

	public String getContractor() {
		return contractor;
	}

	public void setContractor(String contractor) {
		this.contractor = contractor;
	}

	public String getContractdetail() {
		return contractdetail;
	}

	public void setContractdetail(String contractdetail) {
		this.contractdetail = contractdetail;
	}

	public String getCustaddress() {
		return custaddress;
	}

	public void setCustaddress(String custaddress) {
		this.custaddress = custaddress;
	}

	public String getOnlinetime() {
		return onlinetime;
	}

	public void setOnlinetime(String onlinetime) {
		this.onlinetime = onlinetime;
	}

	public String getCustrole() {
		return custrole;
	}

	public void setCustrole(String custrole) {
		this.custrole = custrole;
	}

	public String getCustauth() {
		return custauth;
	}

	public void setCustauth(String custauth) {
		this.custauth = custauth;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

}
