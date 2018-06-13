package com.tianmu.openplatform.domain;

import java.util.ArrayList;
import java.util.List;

/**
 * 地区表
 */
public class Area {
    //地区ID
    private Integer areaId;
    //地区名称
    private String areaName;
    //坐标
    private String marker;
    //上级ID
    private Integer parentId;
    //是否有下一级,1-有（代表是省级或者市级），0-无（代表是县级）
    private Integer child;
    //下级列表
    private List<Area> childList;

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getMarker() {
        return marker;
    }

    public void setMarker(String marker) {
        this.marker = marker;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getChild() {
        return child;
    }

    public void setChild(Integer child) {
        this.child = child;
    }

    public List<Area> getChildList() {
        return childList;
    }

    public void setChildList(List<Area> childList) {
        this.childList = childList;
    }
}
