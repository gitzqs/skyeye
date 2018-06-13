package com.tianmu.manage.service;

import com.tianmu.manage.db.RoleMapper;
import com.tianmu.manage.domain.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 角色Service
 */
@Service
public class RoleService {
    @Autowired
    private RoleMapper roleMapper;

    public int addRole(Role role) {
        return roleMapper.addRole(role);
    }

    public int deleteRole(int id){
        return roleMapper.deleteRole(id);
    }

    public int updateRole(Role role,int id) {
        return roleMapper.updateRole(role,id);
    }

    public Role getRoleById(int id){
        return roleMapper.getRoleById(id);
    }

    public List<Role> getRole() {
        return roleMapper.getRole();
    }
}
