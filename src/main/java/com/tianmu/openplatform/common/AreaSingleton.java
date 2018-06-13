package com.tianmu.openplatform.common;

import com.tianmu.openplatform.db.AreaMapper;
import com.tianmu.openplatform.domain.Area;
import com.tianmu.openplatform.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 地区信息-单例
 */
public class AreaSingleton {
    @Autowired
    private AreaService areaService;

    private static AreaSingleton areaSingleton;

    public List<Area> areaList = null;

    private AreaSingleton() {
        if (areaList == null) {
            areaList = areaService.initAreaList();
        }
    }
    public static synchronized AreaSingleton getInstance() {
        if (areaSingleton == null) {
            areaSingleton = new AreaSingleton();
        }
        return areaSingleton;
    }
}
