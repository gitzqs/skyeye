package com.tianmu.openplatform.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.openplatform.db.PatrolMapper;
import com.tianmu.manage.db.IUserMapper;
import com.tianmu.openplatform.domain.Patrol;
import com.tianmu.openplatform.domain.PatrolPos;
import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.common.utils.ListUtil;
import com.tianmu.openplatform.domain.SimpleUser;

@Service
public class PatrolService {
	@Autowired
	private PatrolMapper patrolMapper;
	
	@Autowired
	private IUserMapper userMapper;
	
	public int addPatrol(Patrol patrol, int userId)
	{
		patrol.setPostTime(ListUtil.getNow());
		return patrolMapper.addPatrol(patrol, userId);
	}
	
	public int getPatrolCount(){
		return patrolMapper.getPatrolCount();
	}
	
	public List<Patrol> getPatrol(int pageIndex, int pageSize)
	{
		int start = (pageIndex - 1) * pageSize;
		List<Patrol> patrols = patrolMapper.getPatrol(start, pageSize);
		List<Integer> userIds = new ArrayList<Integer>();
		
		for(Patrol item : patrols){
		    if(userIds.indexOf(item.getUserId()) == -1)
		    {
		    	userIds.add(item.getUserId());
		    }
		}
	    List<User> users = userMapper.getUserByIds(ListUtil.IlistToString(userIds));
	    
	    for(Patrol item : patrols){
		    User user = ListUtil.GetUser(users, item.getUserId());
		    if(user != null)
		    {
		    	item.setRealName(user.getRealName());
		    }
		}
		
		return patrols;
	}
	
	public List<Patrol> getPendingPatrol(int userid)
	{
		return patrolMapper.getPendingPatrol(userid);
	}
	
	public List<PatrolPos> getPatrolPos(int taskid)
	{
		List<PatrolPos> patrolPosList = patrolMapper.getPatrolPos(taskid);
		int size = patrolPosList.size();
		if(size <= 3) return patrolPosList;
		List<PatrolPos> result = new ArrayList<PatrolPos>();
		result.add(patrolPosList.get(0));
		Random rand = new Random();
		int num = rand.nextInt(size - 2) + 1;
		result.add(patrolPosList.get(num));
		result.add(patrolPosList.get(size - 1));
		return result;
	}
	
	public int addPatrolPos(PatrolPos patrolPos)
	{
		if(patrolPos.getType() == 0) //开始巡检，更新巡检表开始巡检时间，更新状态为进行中1
		{
			patrolMapper.updateStartTime(ListUtil.getNow(), 1, patrolPos.getTaskId());
		}
		else if(patrolPos.getType() == 2) {  //结束巡检，更新巡检表结束巡检时间，更新状态为已完成2
			patrolMapper.updateEndTime(ListUtil.getNow(), 2, patrolPos.getTaskId());
		}
		return patrolMapper.addPatrolPos(patrolPos);
	}
	
	public List<SimpleUser> getPatrolUser(int roleId)
	{
		List<SimpleUser> simpleUsers = new ArrayList<SimpleUser>();
		List<User> users = userMapper.getPatrolUser(roleId);
		for(User item : users){
		    SimpleUser su = new SimpleUser();
		    su.setId(item.getId());
		    su.setUserName(item.getUserName());
		    su.setRealName(item.getRealName());
		    simpleUsers.add(su);
		}
		return simpleUsers;
	}
}
