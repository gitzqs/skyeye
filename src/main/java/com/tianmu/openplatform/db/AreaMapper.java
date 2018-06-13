package com.tianmu.openplatform.db;

import com.tianmu.openplatform.domain.*;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AreaMapper {

	@Select("SELECT areaid as areaId,areaname as areaName,parentid as parentId,marker,child FROM `area`")
	List<Area> queryAll();

    @Select("SELECT areaid as areaId,areaname as areaName,parentid as parentId,marker,child FROM `area` WHERE areaid = #{areaId}" )
    Area queryById(@Param("areaId") int areaId);

    @Select("SELECT areaid as areaId,areaname as areaName,parentid as parentId,marker,child FROM `area` WHERE parentid = #{parentId}" )
    List<Area> queryByParentId(@Param("parentId") int parentId);

}
