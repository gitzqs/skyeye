package com.tianmu.manage.db;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.manage.domain.Platform;
import com.tianmu.manage.domain.User;

public interface PlatformMapper {
	
	@Insert("INSERT INTO bg_platform(name) VALUES(#{platform.name})")
	public int addUser(@Param("platform") Platform platform);

	@Select("select * from bg_platform")
	public List<Platform> getPlatformAll();
	
	@Select("select * from bg_platform where id = #{id}")
	public Platform getPlatformById(@Param("id") int id);
	
	@Update("UPDATE bg_platform set name = #{platform.name} where id = #{id}")
	public int updatePlatform(@Param("platform") Platform platform, @Param("id") int id);
	
	@Select("select * from bg_platform limit 1")
	public Platform getPlatformOne();
}
