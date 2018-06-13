package com.tianmu.openplatform.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 首页地图相关处理
 */

@Service
public class MapService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    //查出每个省的设备数量列表
    private final String sql1 = " SELECT a.areaname,a.areaid,a.marker,COUNT(c.id) as num " +
                                  " FROM (SELECT id,province_id from custonline where userid = ?) as c " +
                                  " LEFT JOIN (SELECT areaid,areaname,marker FROM area WHERE parentid = 0) a on c.province_id = a.areaid " +
                                  " GROUP BY c.province_id";
    //查出省内每个市的设备数量列表
    private final String sql2 = " SELECT a.areaname,a.areaid,a.marker,COUNT(c.id) as num " +
                                  " FROM (SELECT id,city_id from custonline where userid = ?) as c " +
                                  " LEFT JOIN (SELECT areaid,areaname,marker FROM area WHERE parentid = ?) a on c.city_id = a.areaid " +
                                  " GROUP BY c.city_id";
    //查出市内设备列表
    private final String sql3 = "SELECT custname,deviceid,marker from custonline where userid = ? and  city_id = ?";

    public List<Map<String,Object>> sxtj1(int userId) {
        return jdbcTemplate.queryForList(sql1,new Object[]{userId});
    }

    public List<Map<String,Object>> sxtj2(int userId,int areaId) {
        return jdbcTemplate.queryForList(sql2,new Object[]{userId,areaId});
    }

    public List<Map<String,Object>> sxtj3(Integer userId, Integer areaId) {
        return jdbcTemplate.queryForList(sql3,new Object[]{userId,areaId});
    }
}
