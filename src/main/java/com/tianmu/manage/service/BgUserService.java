package com.tianmu.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.db.IUserMapper;
import com.tianmu.manage.domain.Role;
import com.tianmu.manage.domain.User;

/**
 * 角色Service
 */
@Service
public class BgUserService {
	@Autowired
	private IUserMapper userMapper;

	@Autowired
	private RoleService roleService;

	public int addUser(User user) {
		user.setRoleId("1");// TODO ...
		user.setStatus("0");// TODO ...
		return userMapper.addUser(user);
	}

	public int deleteUser(int id) {
		return userMapper.deleteUser(id);
	}

	public int updateUser(User user, int id) {
		return userMapper.updateUser(user, id);
	}

	public User getUserById(int id) {
		return userMapper.getUserById(id);
	}

	public List<User> getUser() {
		List<User> userList = userMapper.getUser();
		for (User user : userList) {
			String roleId = user.getRoleId();
			Role role = roleService.getRoleById(Integer.parseInt(roleId));
			if (role != null) {
				user.setRoleName(role.getName());
			}
		}
		return userList;
	}
}
