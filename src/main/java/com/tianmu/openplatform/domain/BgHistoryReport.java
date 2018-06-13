package com.tianmu.openplatform.domain;

import java.sql.Date;
import java.util.Calendar;

public class BgHistoryReport {

    private Integer id;
    private Integer custonlineid;
    private String modulName;
    private Double datainfor;
    private String description;
    private String creattime;
    private String custname;
    private String steelPhone;
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
  
  
    public Double getDatainfor() {
        return datainfor;
    }
    public void setDatainfor(Double datainfor) {
        this.datainfor = datainfor;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public Integer getCustonlineid() {
        return custonlineid;
    }
    public void setCustonlineid(Integer custonlineid) {
        this.custonlineid = custonlineid;
    }
    public String getModulName() {
        return modulName;
    }
    public void setModulName(String modulName) {
        this.modulName = modulName;
    }
    public String getCustname() {
        return custname;
    }
    public void setCustname(String custname) {
        this.custname = custname;
    }
	public String getCreattime() {
		return creattime;
	}
	public void setCreattime(String creattime) {
		this.creattime = creattime;
	}
	public String getSteelPhone() {
		return steelPhone;
	}
	public void setSteelPhone(String steelPhone) {
		this.steelPhone = steelPhone;
	}
    
    
    
}
