package com.tianmu.openplatform.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.tianmu.openplatform.common.utils.DateUtil;
import com.tianmu.openplatform.db.LTMapper;
import com.tianmu.openplatform.domain.BgMovement;

@Service("businessService")
public class BusinessService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private LTMapper businessMapper;

	/**
	 * 接收监控列表数据 by haibinwang 2017-10-31 16:23:23
	 */
	@SuppressWarnings("unchecked")
	public void process_business(Map<String, Object> inputMap) throws Exception {

		log.info("inputMap ====>>>> {}", inputMap);

		String deviceId = inputMap.get("deviceid") + "";
		String devname = inputMap.get("devname") + "";
		String type = inputMap.get("type") + "";
		String cmd = inputMap.get("cmd") + "";
		String msgid = inputMap.get("msgid") + "";
		String datatype = inputMap.get("datatype") + "";
		String usr = inputMap.get("usr") + "";
		String pwd = inputMap.get("pwd") + "";
		String ver = inputMap.get("softver") + "";
		// String data = inputMap.get("data");
		String data = JSON.toJSON(inputMap.get("data")) + "";

		Map<String, Object> dataMap = JSON.parseObject(JSON.toJSON(data).toString(), Map.class);
		String timestamp = inputMap.get("timestamp") + "";
		timestamp = DateUtil.formatDate(timestamp);

		int count = businessMapper.query_businessRecordCount(deviceId);
		if (count == 0) {
			businessMapper.insert_business(deviceId, devname, type, cmd, msgid, datatype, usr, pwd, ver, timestamp, dataMap.get("1") + "", dataMap.get("2") + "", dataMap.get("3") + "", dataMap.get("4") + "", dataMap.get("5") + "", dataMap.get("6") + "", dataMap.get("7") + "", dataMap.get("8") + "",
					dataMap.get("9") + "", dataMap.get("10") + "", dataMap.get("11") + "", dataMap.get("12") + "", dataMap.get("13") + "", dataMap.get("14") + "", dataMap.get("15") + "", dataMap.get("16") + "", dataMap.get("17") + "", dataMap.get("18") + "", dataMap.get("19") + "");
		} else {
			businessMapper.update_business(deviceId, devname, type, cmd, msgid, datatype, usr, pwd, ver, timestamp, dataMap.get("1") + "", dataMap.get("2") + "", dataMap.get("3") + "", dataMap.get("4") + "", dataMap.get("5") + "", dataMap.get("6") + "", dataMap.get("7") + "", dataMap.get("8") + "",
					dataMap.get("9") + "", dataMap.get("10") + "", dataMap.get("11") + "", dataMap.get("12") + "", dataMap.get("13") + "", dataMap.get("14") + "", dataMap.get("15") + "", dataMap.get("16") + "", dataMap.get("17") + "", dataMap.get("18") + "", dataMap.get("19") + "");
		}

		businessMapper.insert_business_his(deviceId, devname, type, cmd, msgid, datatype, usr, pwd, ver, timestamp, dataMap.get("1") + "", dataMap.get("2") + "", dataMap.get("3") + "", dataMap.get("4") + "", dataMap.get("5") + "", dataMap.get("6") + "", dataMap.get("7") + "", dataMap.get("8") + "",
				dataMap.get("9") + "", dataMap.get("10") + "", dataMap.get("11") + "", dataMap.get("12") + "", dataMap.get("13") + "", dataMap.get("14") + "", dataMap.get("15") + "", dataMap.get("16") + "", dataMap.get("17") + "", dataMap.get("18") + "", dataMap.get("19") + "");

		//根据报警设置判断写入报警信息
		process_alarm(deviceId, dataMap);
	}
	
	public void process_alarm(String deviceId, Map<String, Object> dataMap)
	{
		List<BgMovement> alarmSettings = businessMapper.getAlarmSettings(deviceId);
		if(alarmSettings != null && alarmSettings.size() > 0)
		{
			for(BgMovement item : alarmSettings){
				Double moduleValue = Double.parseDouble(dataMap.get(item.getModuleid()) +"");
	        	if(moduleValue < item.getMinlimit())  
	        	{
	        		businessMapper.addBgHistoryReport(item.getCustonlineid(), item.getModuleName(), dataMap.get(item.getModuleid()) +"", "低于最低值");
	        	}
	        	else if(moduleValue > item.getMaxlimit())
	        	{
	        		businessMapper.addBgHistoryReport(item.getCustonlineid(), item.getModuleName(), dataMap.get(item.getModuleid()) +"", "高于最高值");
	        	}
	        }
		}
	}
}
