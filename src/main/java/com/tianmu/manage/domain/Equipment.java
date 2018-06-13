package com.tianmu.manage.domain;

import java.util.Date;

/*
* 设备表
* */
public class Equipment {
    private String id;
    private SimCard simCard;
    private String name;
    private String equipCode;
    private Company company;
    private Date saleDate;
    private String serviceDay;
    private String remainDay;
    private String status;
    private String reqTime;;

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEquipCode() {
        return equipCode;
    }

    public Date getSaleDate() {
        return saleDate;
    }

    public String getServiceDay() {
        return serviceDay;
    }

    public String getRemainDay() {
        return remainDay;
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

    public void setName(String name) {
        this.name = name;
    }

    public void setEquipCode(String equipCode) {
        this.equipCode = equipCode;
    }

    public void setSaleDate(Date saleDate) {
        this.saleDate = saleDate;
    }

    public void setServiceDay(String serviceDay) {
        this.serviceDay = serviceDay;
    }

    public void setRemainDay(String remainDay) {
        this.remainDay = remainDay;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setReqTime(String reqTime) {
        this.reqTime = reqTime;
    }

    public SimCard getSimCard() {
        return simCard;
    }

    public Company getCompany() {
        return company;
    }

    public void setSimCard(SimCard simCard) {
        this.simCard = simCard;
    }

    public void setCompany(Company company) {
        this.company = company;
    }
}
