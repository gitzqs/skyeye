package com.tianmu.openplatform.service;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.common.enums.ApiResponseStatusCode;
import com.tianmu.openplatform.db.UserMapper;

@Service
public class LoginService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private UserMapper userMapper;

	public String queryDeviceId(String usr, String pwd) {
		log.info("queryDeviceId start");
		return userMapper.queryDeviceId(usr, pwd);
	}

	public Map<String, String> queryUserCount(String usr, String pwd) {
		Map<String, String> respMap = new HashMap<String, String>();
		try {
			int userCount = userMapper.queryUserCount(usr, pwd);
			if (userCount == 1) {
				respMap.put(ConstantUtil.Result.CODE, ApiResponseStatusCode.BODYSUCCESS.getCode());
				respMap.put(ConstantUtil.Result.MSG, ApiResponseStatusCode.BODYSUCCESS.getMessage());
			} else {
				respMap.put(ConstantUtil.Result.CODE, ApiResponseStatusCode.USER_NOTEXIST.getCode());
				respMap.put(ConstantUtil.Result.MSG, ApiResponseStatusCode.USER_NOTEXIST.getMessage());
			}
		} catch (Exception e) {
			respMap.put(ConstantUtil.Result.CODE, ApiResponseStatusCode.ERROR.getCode());
			respMap.put(ConstantUtil.Result.MSG, ApiResponseStatusCode.ERROR.getMessage());
			log.error("queryUserCount error:", e);
		}
		return respMap;
	}

	public User queryUserInfo(String usr, String pwd) {
		try {
			User user = userMapper.queryUserInfo(usr, pwd);
			return user;
		} catch (Exception e) {
			log.error("queryUserInfo error:", e);
			return null;
		}
	}

}
