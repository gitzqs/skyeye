package com.tianmu.openplatform.domain;

import java.util.Calendar;

public class BgCompany {

    
    private Integer id;
    private String companyName;  //客户公司名称
    private String address;   //公司地址
    private String personName;  //公司联系人
    private String mobile;   //联系人电话
    private Integer status;
    private Calendar reqTime;
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getCompanyName() {
        return companyName;
    }
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPersonName() {
        return personName;
    }
    public void setPersonName(String personName) {
        this.personName = personName;
    }
    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    public Integer getStatus() {
        return status;
    }
    public void setStatus(Integer status) {
        this.status = status;
    }
    public Calendar getReqTime() {
        return reqTime;
    }
    public void setReqTime(Calendar reqTime) {
        this.reqTime = reqTime;
    }
    
}
