package com.tianmu.openplatform.service;

import com.tianmu.manage.db.IUserMapper;
import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.common.AreaSingleton;
import com.tianmu.openplatform.db.AlarmMapper;
import com.tianmu.openplatform.db.AreaMapper;
import com.tianmu.openplatform.domain.Area;
import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.Custonline;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AreaService {
    private final Logger log = LoggerFactory.getLogger(getClass());
    @Autowired
    private AreaMapper areaMapper;

    /**
     * 地区列表初始化
     * @return
     */
    public List<Area> initAreaList() {
        //查出省级列表
        List<Area> provinceList = areaMapper.queryByParentId(0);
        //遍历得到市级列表
        for (Area province : provinceList) {
            List<Area> cityList = areaMapper.queryByParentId(province.getAreaId());
            for (Area city : cityList) {
                List<Area> areaList = areaMapper.queryByParentId(city.getAreaId());
                city.setChildList(areaList);
            }
            province.setChildList(cityList);
        }
        return provinceList;
    }

    public List<Area> getAreaList(Integer parentId) {
        return areaMapper.queryByParentId(parentId);
    }

    public Area queryById(Integer id) {
        return areaMapper.queryById(id);
    }

}