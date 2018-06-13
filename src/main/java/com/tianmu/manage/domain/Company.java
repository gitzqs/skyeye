package com.tianmu.manage.domain;

/**
 * 运营商信息
 */
public class Company {
    private String id;
    private String companyName;
    private String address;
    private String personName;
    private String mobile;
    private String status;
    private String reqTime;

    public String getId() {
        return id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public String getAddress() {
        return address;
    }

    public String getPersonName() {
        return personName;
    }

    public String getMobile() {
        return mobile;
    }

    public String getStatus() {
        return status;
    }

    public String getReqTime() {
        return reqTime;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPersonName(String personName) {
        this.personName = personName;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setReqTime(String reqTime) {
        this.reqTime = reqTime;
    }
}
