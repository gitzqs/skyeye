package com.tianmu.manage.db;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.manage.domain.User;
import com.tianmu.manage.domain.UserCust;
import com.tianmu.openplatform.domain.Custonline;

public interface UserCustMapper {
	@Insert("INSERT INTO `bg_user`(username,password,realname,roleId,auth,companyid) VALUES(#{user.userName}, #{user.password}, #{user.realName}, #{user.roleId}, #{user.auth}, #{user.companyId})")
    public int addUser(@Param("user") User user);
	
	 @Update("UPDATE bg_user set roleId = #{user.roleId},`realname` = '${user.realName}', auth = ${user.auth}  where id = #{id}")
	public int updateUser(@Param("user") User user, @Param("id") int id);

	@Update("UPDATE bg_user set password = #{user.password} where id = #{id}")
	public int updateUserPwd(@Param("user") User user, @Param("id") int id);
	
	@Select("select * from bg_user where roleId = 3 or roleId = 4 limit #{start}, #{pageSize}")
	public List<User> getUser(@Param("start") int start, @Param("pageSize") int pageSize);
	
	@Select("select count(0) from bg_user")
	public int getUserCount();
	
	@Select("select * from bg_user where id = #{id}")
	public User getOneUser(@Param("id") int id);
	
	@Select("select * from bg_user where companyid = #{companyid}")
	public List<User> getAllUser(@Param("companyid") int companyid);
	
	@Delete("delete from bg_user where id=#{id}")
	public int deleteUser(@Param("id") int id);
	
	@Select("select max(id) from bg_user")
	public int getMaxId();
	
	@Insert("INSERT INTO `bg_user_cust`(userid,custid) VALUES(#{userid},#{custid})")
	public int addUserCust(@Param("userid") int userid, @Param("custid") int custid);
	
	@Delete("delete from bg_user_cust where userid=#{userid}")
	public int deleteUserCust(@Param("userid") int userid);
	
	@Select("select * from bg_user_cust where userid=#{userid}")
	public List<UserCust> getCusts(@Param("userid") int userid);
	
	@Select("select b.* from bg_user a inner join custonline b on a.companyid = b.companyid where a.id = #{userid}")
	public List<Custonline> getAllCust(@Param("userid") int userid);
}
