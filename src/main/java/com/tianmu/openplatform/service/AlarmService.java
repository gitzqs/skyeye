package com.tianmu.openplatform.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.db.IUserMapper;
import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.db.AlarmMapper;
import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.Custonline;

@Service
public class AlarmService {
	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private AlarmMapper alarmMapper;
	
	@Autowired
	private IUserMapper userMapper;
	
	public List<Custonline> getCustsByManager(String userId)
	{
		User user = userMapper.getUserById(Integer.parseInt(userId));
		List<Custonline> custs = alarmMapper.getCustsByCompany(user.getCompanyId());
		List<Integer> settedCustIds = alarmMapper.getCustsByUserId(Integer.parseInt(userId));
		for(Custonline item : custs){    //将管理员已设置过的客户移除出去
		    if(settedCustIds.indexOf(Integer.parseInt(item.getId())) != -1)
		    {
		    	custs.remove(item);
		    }
		}
		return custs;
	}
	
	public int addUserSettingCust(int userId, int custId, int status)
	{
		int flag = 1;
		if(alarmMapper.getCountByUserCust(userId, custId) == 0)
		{
			flag = alarmMapper.addUserSettingCust(userId, custId, status);
		}
		return flag;
	}
	
	public List<BgMovement> getModuleMovements(int custId)
	{
		return alarmMapper.getModuleMovements(custId);
	}
	
	public int updateAlarmData(int id, double maxlimit, double minlimit, String steelphone, String username, String userid, String custid)
	{
		addUserSettingCust(Integer.parseInt(userid), Integer.parseInt(custid), 1);
		return alarmMapper.updateAlarmData(id, maxlimit, minlimit, steelphone, username, userid);
	}
	
}
