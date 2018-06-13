package com.tianmu.manage.db;

import com.tianmu.manage.domain.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 角色
 */
public interface RoleMapper  {

    /**
     * 新增角色
     * @param role
     * @return
     */
    @Insert("INSERT INTO `bg_role`(name) VALUES(#{role.name})")
    public int addRole(@Param("role")Role role);

    /**
     * 删除角色
     * @param id
     * @return
     */
    @Delete("delete from bg_role where id=#{id}")
    public int deleteRole(@Param("id") int id);

    /**
     * 修改角色
     * @param role
     * @param id
     * @return
     */
    @Update("update bg_role set name = #{role.name} where id = #{id}")
    public int updateRole(@Param("role") Role role,@Param("id") int id);

    /**
     * 根据ID获取角色
     * @param id
     * @return
     */
    @Select("select * from bg_role where id = #{id}")
    public Role getRoleById(@Param("id") int id);

     /* 获取所有角色
     * @param id
     * @return
     */
    @Select("select * from bg_role ")
    public List<Role> getRole();
}
