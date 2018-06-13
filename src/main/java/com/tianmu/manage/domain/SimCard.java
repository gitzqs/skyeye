package com.tianmu.manage.domain;

/**
 * sim卡信息表
 */
public class SimCard {
    private String id;
    private String cardNumber;
    private String status;
    private String reqTime;

    public String getId() {
        return id;
    }

    public String getCardNumber() {
        return cardNumber;
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

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setReqTime(String reqTime) {
        this.reqTime = reqTime;
    }
}
