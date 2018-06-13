package com.tianmu.openplatform.db;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.manage.domain.User;

@Mapper
public interface UserMapper {

	@Select("SELECT DEVICEID FROM lt_pubinfo WHERE USR=#{USR} AND PWD=#{PWD} ")
	String queryDeviceId(@Param("USR") String usr, @Param("PWD") String pwd);

	@Select("SELECT count(1) FROM bg_user WHERE username=#{usr} AND password=#{pwd} ")
	int queryUserCount(@Param("usr") String usr, @Param("pwd") String pwd);

	@Select("SELECT * FROM bg_user WHERE username=#{usr} AND password=#{pwd} ")
	User queryUserInfo(@Param("usr") String usr, @Param("pwd") String pwd);

	@Update("update bg_user set password=#{password} where id=#{userid}")
	int updateUserPwd(@Param("userid") String userid, @Param("password") String password);

}
