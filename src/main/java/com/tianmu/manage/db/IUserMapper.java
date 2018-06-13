package com.tianmu.manage.db;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.manage.domain.User;

/**
 * 用户
 */
public interface IUserMapper {

	@Insert("INSERT INTO `bg_user`(username,password,roleId,status,company) VALUES(#{user.userName}, #{user.password}, #{user.roleId}, #{user.status}, #{user.company})")
	public int addUser(@Param("user") User user);

	@Delete("delete from bg_user where id=#{id}")
	public int deleteUser(@Param("id") int id);

	@Update("UPDATE bg_user set username = #{user.userName},`password` = #{user.password},roleId = #{user.roleId},`status` = ${user.status} where id = #{id}")
	public int updateUser(@Param("user") User user, @Param("id") int id);

	@Select("select * from bg_user where id = #{id}")
	public User getUserById(@Param("id") int id);

	@Select("select * from bg_user")
	public List<User> getUser();

	@Select("select * from bg_user where id in (${ids})")
	public List<User> getUserByIds(@Param("ids") String ids);

	@Select("select * from bg_user where roleId = #{roleId}")
	public List<User> getPatrolUser(@Param("roleId") int roleId);
}
