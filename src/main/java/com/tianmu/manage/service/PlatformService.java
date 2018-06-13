package com.tianmu.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.db.PlatformMapper;
import com.tianmu.manage.domain.Platform;

@Service
public class PlatformService {
	
	@Autowired
	private PlatformMapper  platformMapper;
	
	public List<Platform> getPlayformList() {
//		Platform platform = new Platform();
//		platform.setId("1");
//		platform.setName("东正捷燃气运营监控平台");		
		return platformMapper.getPlatformAll();
	}
	
	public void addPlatform(Platform platform) {
		platformMapper.addUser(platform);
	}
	
	public void updatePlatform(Platform platform,int id) {
		platformMapper.updatePlatform(platform, id);
	}
	
	public Platform getPlatformById(int id) {
		return platformMapper.getPlatformById(id);
	}
	
	public Platform getPlatformOne() {
		return platformMapper.getPlatformOne();
	}
	
}
