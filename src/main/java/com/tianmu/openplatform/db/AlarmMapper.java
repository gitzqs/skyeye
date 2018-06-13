package com.tianmu.openplatform.db;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.Custonline;

@Mapper
public interface AlarmMapper {
	//获取一个公司所有客户
	@Select("select * from custonline where companyid=#{companyId}")
	List<Custonline> getCustsByCompany(@Param("companyId") String companyId);
	
	//获取管理员已设置的客户列表
	@Select("select custid from bg_user_setting_cust where userid=#{userId}")
	List<Integer> getCustsByUserId(@Param("userId") int userId);
	
	//根据用户id和客户id获取数量
	@Select("select count(*) from bg_user_setting_cust where userid=#{userId} and custid=#{custId}")
	int getCountByUserCust(@Param("userId") int userId, @Param("custId") int custId);
	
	//写入管理员设置的客户
	@Insert("INSERT INTO bg_user_setting_cust(userid,custid,status) VALUES(#{userId},#{custId},#{status})")
	int addUserSettingCust(@Param("userId") int userId, @Param("custId") int custId, @Param("status") int status);
	
	//根据客户id获取模块列表
	@Select("select * from bg_movement where custonlineid=#{custId}")
	List<BgMovement> getModuleMovements(@Param("custId") int custId);
	
	//根据客户id和模块id更新模块上下限信息
	@Select("update bg_movement set maxlimit=#{maxlimit}, minlimit=#{minlimit}, steelphone=#{steelphone},username=#{username}, userid=#{userid} WHERE id=#{id}")
    int updateAlarmData(@Param("id")int id,@Param("maxlimit")double maxlimit,
			@Param("minlimit")double minlimit, @Param("steelphone")String steelphone, @Param("username")String username, @Param("userid")String userid);
	
}
