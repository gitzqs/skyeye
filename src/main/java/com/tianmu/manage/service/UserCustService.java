package com.tianmu.manage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.db.UserCustMapper;
import com.tianmu.manage.domain.User;
import com.tianmu.manage.domain.UserCust;
import com.tianmu.openplatform.domain.Custonline;

@Service
public class UserCustService {
	@Autowired
	private UserCustMapper userCustMapper;
	
	public List<User> getUser(int pageIndex, int pageSize)
	{
		int start = (pageIndex - 1) * pageSize;
		List<User> users = userCustMapper.getUser(start, pageSize);
		return users;
	}
	
	public int getUserCount()
	{
		return userCustMapper.getUserCount();
	}
	
	public User getOneUser(int id)
	{
		return userCustMapper.getOneUser(id);
	}
	
	public List<User> getAllUser(int companyid)
	{
		return userCustMapper.getAllUser(companyid);
	}
	
	public int deleteUser(int id)
	{
		 User user = userCustMapper.getOneUser(id);
		 int result = userCustMapper.deleteUser(id);
		 if(user.getAuth() == 1)
		 {
			 if(result > 0)
			 {
				 result = userCustMapper.deleteUserCust(id);
			 }
		 }
		 
		 return result;
	}
	
	public List<Custonline> getAllCust(int userid)
	{
		return userCustMapper.getAllCust(userid);
	}
	
	public List<Custonline> getAllCust2(int userid)
	{
		List<Custonline> result = new ArrayList<Custonline>();
		Custonline tmp = new Custonline();
		tmp.setId("0");
		tmp.setCustname("全部客户");
		result.add(tmp);
		result.addAll(userCustMapper.getAllCust(userid));
		return result;
	}
	
	public int addAccount(User user)
	{
		int result = userCustMapper.addUser(user);
		if(result < 1) return 0;
		int userId = userCustMapper.getMaxId();
		if(user.getAuth() == 1) //管理部分客户
		{
			return batchAddUserCust(user.getCustIds(), userId);
		}
		return 1;
	}
	
	public int updateAccount(User user)
	{
		int userId = Integer.parseInt(user.getId());
		User originUser = userCustMapper.getOneUser(userId);
		//先更新用户表，再更新用户客户关系表
		int result = userCustMapper.updateUser(user, userId);
		if(result < 1) return 0;
		int rst = 1;
		if(originUser.getAuth() == 0 && user.getAuth() == 1)
		{
			rst = batchAddUserCust(user.getCustIds(), userId);
		}
		else if(originUser.getAuth() == 1 && user.getAuth() == 0)
		{
			rst = userCustMapper.deleteUserCust(userId);
		}
		else if(originUser.getAuth() == 1 && user.getAuth() == 1)
		{
			userCustMapper.deleteUserCust(userId);
			rst = batchAddUserCust(user.getCustIds(), userId);
		}
		return rst;
	}
	
	public int updateAccountPwd(User user) {
		int userId = Integer.parseInt(user.getId());
		//先更新用户表，再更新用户客户关系表
		int result = userCustMapper.updateUserPwd(user, userId);
		if (result < 1)
			return 0;
		int rst = 1;
		return rst;
	}

	public int batchAddUserCust(List<String> list, int userId)
	{
		int count = 0;
		//写入用户客户关系表
		for(String item : list){
		    count += userCustMapper.addUserCust(userId, Integer.parseInt(item));
		}
		if(count != list.size()) return 0;
		return 1;
	}
	
	public User GetUserDetail(int id)
	{
		User user = userCustMapper.getOneUser(id);
		List<String> custIds = new ArrayList<String>();
		if(user.getAuth() == 0)
		{
			custIds.add("0");
			user.setCustIds(custIds);
		}
		else
		{
			List<UserCust> userCusts = userCustMapper.getCusts(id);
			
			for(UserCust item : userCusts){
			    custIds.add(Integer.toString(item.getCustid()));
			}
			user.setCustIds(custIds);
		}
		return user;
	}
	
}
