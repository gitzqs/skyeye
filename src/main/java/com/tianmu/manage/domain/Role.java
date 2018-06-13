package com.tianmu.manage.domain;

/**
 * 用户权限信息表
 */
public class Role {
    //id
    private String id;
    //权限名称
    private String name;
    //timestamp
    private String reqtime;

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getReqtime() {
        return reqtime;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setReqtime(String reqtime) {
        this.reqtime = reqtime;
    }
}
