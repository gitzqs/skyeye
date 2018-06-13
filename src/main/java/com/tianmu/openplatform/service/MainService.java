package com.tianmu.openplatform.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.tianmu.openplatform.common.enums.DataCodeEnum;
import com.tianmu.openplatform.db.MainMapper;
import com.tianmu.openplatform.db.StatisticsMapper;
import com.tianmu.openplatform.db.UserMapper;
import com.tianmu.openplatform.domain.BgHistoryReport;
import com.tianmu.openplatform.domain.BgModule;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.domain.DeviceReport;
import com.tianmu.openplatform.domain.DosageRank;
import com.tianmu.openplatform.domain.MonitorDetailBean;
import com.tianmu.openplatform.domain.MonitorInfo;
import com.tianmu.openplatform.domain.MonitorListInfo;
import com.tianmu.openplatform.domain.NewMonitorListInfo;
import com.tianmu.openplatform.domain.Patrol;

@Service
public class MainService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private MainMapper mainMapper;

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private StatisticsMapper statisticsMapper;

	/**
	 * 根据登录信息查询监控列表
	 * 
	 * @param type
	 *            接口类型
	 * @param username
	 *            用户名
	 */
	public List<MonitorListInfo> queryMonitorListInfo(String type, String deviceidBindArray) {
		log.info("queryMonitorListInfo start");
		// List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		List<MonitorListInfo> monitorListInfo = mainMapper.queryMonitorListInfo(deviceidBindArray);
		// if ((monitorListInfo != null) && (monitorListInfo.size() > 0)) {
		// Iterator<MonitorInfo> monitorIter = monitorListInfo.iterator();
		// while (monitorIter.hasNext()) {
		// MonitorInfo monitorInfo = monitorIter.next();
		//
		// String deviceId = monitorInfo.getDeviceid();
		// String devname = monitorInfo.getDevname();
		// String cmd = monitorInfo.getCmd();
		// String msgid = monitorInfo.getMsgid();
		// String datatype = monitorInfo.getDatatype();
		// String usr = monitorInfo.getUsr();
		// String pwd = monitorInfo.getPwd();
		// String ver = monitorInfo.getVer();
		//
		// String businessData = monitorInfo.getBdata();
		// log.info("businessData ===>>> {}", businessData);
		// if (StringUtils.isNotBlank(businessData)) {
		// @SuppressWarnings("unchecked")
		// Map<String, String> dataMap = JSON.parseObject(JSON.toJSON(businessData).toString(), Map.class);
		//
		// dataMap.put("deviceId", deviceId);
		// dataMap.put("devname", devname);
		// dataMap.put("cmd", cmd);
		// dataMap.put("msgid", msgid);
		// dataMap.put("datatype", datatype);
		// dataMap.put("usr", usr);
		// dataMap.put("pwd", pwd);
		// dataMap.put("ver", ver);
		//
		// list.add(dataMap);
		// }
		// }
		// }
		// return list;
		return monitorListInfo;
	}
	
	public List<NewMonitorListInfo> queryNewMonitorListInfo(String deviceidBindArray)
	{
		List<MonitorListInfo> monitorListInfo = mainMapper.queryMonitorListInfo(deviceidBindArray);
		
		List<NewMonitorListInfo> newMonitorListInfos = new ArrayList<NewMonitorListInfo>();
		for(MonitorListInfo item : monitorListInfo){
			MonitorInfo monitorInfo = statisticsMapper.queryDeviceinfoByDevId(item.getDeviceid());
			List<BgModule> bgModules = statisticsMapper.queryModuleList();
			List<String> result = GetModuleRealDataList(monitorInfo, bgModules);
			NewMonitorListInfo newMonitorListInfo = new NewMonitorListInfo();
			newMonitorListInfo.setId(item.getId());
			newMonitorListInfo.setDeviceid(item.getDeviceid());
			newMonitorListInfo.setDevname(item.getDevname());
			newMonitorListInfo.setReqtime(item.getReqtime());
			newMonitorListInfo.setContractor(item.getContractor());
			newMonitorListInfo.setCustname(item.getCustname());
			newMonitorListInfo.setCustaddress(item.getCustaddress());
			newMonitorListInfo.setContractdetail(item.getContractdetail());
			newMonitorListInfo.setDevstatus(item.getDevstatus());
			newMonitorListInfo.setOnlinetime(item.getOnlinetime());
			//实际数据放入新实体
			newMonitorListInfo.setModule1(result.size() > 0 ? result.get(0) : "");
			newMonitorListInfo.setModule2(result.size() > 1 ? result.get(1) : "");
			newMonitorListInfo.setModule3(result.size() > 2 ? result.get(2) : "");
			newMonitorListInfo.setModule4(result.size() > 3 ? result.get(3) : "");
			newMonitorListInfo.setModule5(result.size() > 4 ? result.get(4) : "");
			newMonitorListInfo.setModule6(result.size() > 5 ? result.get(5) : "");
			
			newMonitorListInfos.add(newMonitorListInfo);
		}
		
		return newMonitorListInfos;
	}
	
	public List<String> GetModuleRealDataList(MonitorInfo monitorInfo, List<BgModule> bgModules)
	{
		List<String> result = new ArrayList<String>();
		for(int i=1; i< 20;i++)
		{
			String tmp = GetModuleData(i, monitorInfo, bgModules);
			if(!"".equals(tmp))
			{
				result.add(tmp);
			}
		}
		return result;
	}
	
	public String GetModuleData(int moduleId, MonitorInfo monitorInfo, List<BgModule> bgModules)
	{
		switch(moduleId)
		{
			case 1:  //储罐液位cgyw
				if(StringUtils.isNotBlank(monitorInfo.getCgyw()) && !"null".equals(monitorInfo.getCgyw()))
				{
					return monitorInfo.getCgyw() + bgModules.get(0).getNuitname();
				}
				return "";
			case 2:  //储罐压力cgyl
				if(StringUtils.isNotBlank(monitorInfo.getCgyl()) && !"null".equals(monitorInfo.getCgyl()))
				{
					return monitorInfo.getCgyl() + bgModules.get(1).getNuitname();
				}
				return "";
			case 3:  //出口温度ckwd
				if(StringUtils.isNotBlank(monitorInfo.getCkwd()) && !"null".equals(monitorInfo.getCkwd()))
				{
					return monitorInfo.getCkwd() + bgModules.get(2).getNuitname();
				}
				return "";
			case 4:   //出口压力ckyl
				if(StringUtils.isNotBlank(monitorInfo.getCkyl()) && !"null".equals(monitorInfo.getCkyl()))
				{
					return monitorInfo.getCkyl() + bgModules.get(3).getNuitname();
				}
				return "";
			case 5:  //环境温度hjwd
				if(StringUtils.isNotBlank(monitorInfo.getHjwd()) && !"null".equals(monitorInfo.getHjwd()))
				{
					return monitorInfo.getHjwd() + bgModules.get(4).getNuitname();
				}
				return "";
			case 6:  //燃气报警1 rqbj1
				if(StringUtils.isNotBlank(monitorInfo.getRqbj1()) && !"null".equals(monitorInfo.getRqbj1()))
				{
					return monitorInfo.getRqbj1() + bgModules.get(5).getNuitname();
				}
				return "";
			case 7:  //燃气报警2 rqbj2
				if(StringUtils.isNotBlank(monitorInfo.getRqbj2()) && !"null".equals(monitorInfo.getRqbj2()))
				{
					return monitorInfo.getRqbj2() + bgModules.get(6).getNuitname();
				}
				return "";
			case 8:   //燃气报警3 rqbj3
				if(StringUtils.isNotBlank(monitorInfo.getRqbj3()) && !"null".equals(monitorInfo.getRqbj3()))
				{
					return monitorInfo.getRqbj3() + bgModules.get(7).getNuitname();
				}
				return "";
			case 9:  //燃气报警4 rqbj4
				if(StringUtils.isNotBlank(monitorInfo.getRqbj4()) && !"null".equals(monitorInfo.getRqbj4()))
				{
					return monitorInfo.getRqbj4() + bgModules.get(8).getNuitname();
				}
				return "";
			case 10:  //出液阀状态cyfzt
				if(StringUtils.isNotBlank(monitorInfo.getCyfzt()) && !"null".equals(monitorInfo.getCyfzt()))
				{
					return monitorInfo.getCyfzt() + bgModules.get(9).getNuitname();
				}
				return "";
			case 11:  //进液阀状态jyfzt
				if(StringUtils.isNotBlank(monitorInfo.getJyfzt()) && !"null".equals(monitorInfo.getJyfzt()))
				{
					return monitorInfo.getJyfzt() + bgModules.get(10).getNuitname();
				}
				return "";
			case 12:  //增压阀状态zyfzt
				if(StringUtils.isNotBlank(monitorInfo.getZyfzt()) && !"null".equals(monitorInfo.getZyfzt()))
				{
					return monitorInfo.getZyfzt() + bgModules.get(11).getNuitname();
				}
				return "";
			case 13:  //流量计温度lljwd
				if(StringUtils.isNotBlank(monitorInfo.getLljwd()) && !"null".equals(monitorInfo.getLljwd()))
				{
					return monitorInfo.getLljwd() + bgModules.get(12).getNuitname();
				}
				return "";
			case 14:  //流量计压力lljyl
				if(StringUtils.isNotBlank(monitorInfo.getLljyl()) && !"null".equals(monitorInfo.getLljyl()))
				{
					return monitorInfo.getLljyl() + bgModules.get(13).getNuitname();
				}
				return "";
			case 15:  //流量计瞬时流量lljssll
				if(StringUtils.isNotBlank(monitorInfo.getLljssll()) && !"null".equals(monitorInfo.getLljssll()))
				{
					return monitorInfo.getLljssll() + bgModules.get(14).getNuitname();
				}
				return "";
			case 16:  //流量计累计流量lljljll
				if(StringUtils.isNotBlank(monitorInfo.getLljljll()) && !"null".equals(monitorInfo.getLljljll()))
				{
					return monitorInfo.getLljljll() + bgModules.get(15).getNuitname();
				}
				return "";
			case 17:  //ic卡剩余量icksyl
				if(StringUtils.isNotBlank(monitorInfo.getIcksyl()) && !"null".equals(monitorInfo.getIcksyl()))
				{
					return monitorInfo.getIcksyl() + bgModules.get(16).getNuitname();
				}
				return "";
			case 18:  //ic卡累计充值ickljcz
				if(StringUtils.isNotBlank(monitorInfo.getIckljcz()) && !"null".equals(monitorInfo.getIckljcz()))
				{
					return monitorInfo.getIckljcz() + bgModules.get(17).getNuitname();
				}
				return "";
			case 19:  //ic卡充值量ickczl
				if(StringUtils.isNotBlank(monitorInfo.getIckczl()) && !"null".equals(monitorInfo.getIckczl()))
				{
					return monitorInfo.getIckczl() + bgModules.get(18).getNuitname();
				}
				return "";
			default:
				return "";
		}
	}

	/**
	 * 根据设备ID,查询设备详情信息
	 * 
	 * @param deviceId
	 *            设备ID
	 */
	@SuppressWarnings("unchecked")
	public Map<String, Object> queryMonitorDetailInfo(String deviceId) {
		log.info("queryMonitorDetailInfo start");
		Map<String, Object> retDataMap = new HashMap<String, Object>();
		//Map<String, Object> retUploadDataMap = new HashMap<String, Object>();
		List<MonitorDetailBean> monitorDetailList = new ArrayList<MonitorDetailBean>();
		MonitorInfo monitorDetailInfo = mainMapper.queryMonitorDetailInfo(deviceId);
		//retDataMap.put("monitorDetailInfo", monitorDetailInfo);
		if (monitorDetailInfo != null) {
			Map<String, String> dataMap = JSON.parseObject(JSON.toJSON(monitorDetailInfo).toString(), Map.class);
			log.info("queryMonitorDetailInfo dataMap = " + dataMap);
			if (dataMap != null && dataMap.size() > 0) {
				Set<String> k = dataMap.keySet();
				Iterator<String> it = k.iterator();
				while (it.hasNext()) {
					String key = it.next();
					if (StringUtils.isNotBlank(dataMap.get(key)) && !"null".equals(dataMap.get(key))) {
						if (StringUtils.isNotBlank(DataCodeEnum.getName(key))) {
							//retUploadDataMap.put(DataCodeEnum.getName(key), dataMap.get(key));
							MonitorDetailBean monitorDetailBean = new MonitorDetailBean();
						 	monitorDetailBean.setMonitorname(DataCodeEnum.getName(key));
						 	monitorDetailBean.setMonitorvalue(dataMap.get(key));
						 	monitorDetailBean.setMonitorunit(DataCodeEnum.getUnit(key));
						 	monitorDetailBean.setMonitorstatus("");
						 	monitorDetailList.add(monitorDetailBean);
						}
					}
				}
			}
		}
		//retDataMap.put("uploadDataMap", retUploadDataMap);
		retDataMap.put("custname", monitorDetailInfo.getCustname());
	 	retDataMap.put("timestamp", monitorDetailInfo.getTimestamp());
	 	
	 	retDataMap.put("monitorDetail", monitorDetailList);
		return retDataMap;
	}
	
	/**
	 * 根据设备ID,查询设备详情信息，提供给APP
	 * 
	 * @param deviceId
	 *            设备ID
	 */
	@SuppressWarnings("unchecked")
	public List<MonitorDetailBean> queryMonitorDetail4App(String deviceId) {
		log.info("queryMonitorDetailInfo start");
		List<MonitorDetailBean> monitorDetailList = new ArrayList<MonitorDetailBean>();
		MonitorInfo monitorDetailInfo = mainMapper.queryMonitorDetailInfo(deviceId);
		if (monitorDetailInfo != null) {
			Map<String, String> dataMap = JSON.parseObject(JSON.toJSON(monitorDetailInfo).toString(), Map.class);
			log.info("queryMonitorDetailInfo dataMap = " + dataMap);
			if (dataMap != null && dataMap.size() > 0) {
				Set<String> k = dataMap.keySet();
				Iterator<String> it = k.iterator();
				while (it.hasNext()) {
					String key = it.next();
					if (StringUtils.isNotBlank(dataMap.get(key)) && !"null".equals(dataMap.get(key))) {
						if (StringUtils.isNotBlank(DataCodeEnum.getName(key))) {
							MonitorDetailBean monitorDetailBean = new MonitorDetailBean();
							monitorDetailBean.setMonitorname(DataCodeEnum.getName(key));
							monitorDetailBean.setMonitorvalue(dataMap.get(key));
							monitorDetailBean.setMonitorunit(DataCodeEnum.getUnit(key));
							monitorDetailBean.setMonitorstatus("");
							monitorDetailList.add(monitorDetailBean);
						}
					}
				}
			}
		}
		return monitorDetailList;
	}

	public List<Custonline> queryCustonlineInfo(String userid) {
		List<Custonline> custonlineList = mainMapper.queryCustonlineInfo(userid);
		return custonlineList;
	}
	
	public List<Custonline> queryPagedCustonlineInfo(String userid, int pageIndex, int pageSize)
	{
		int startIndex = (pageIndex - 1) * pageSize;
		return mainMapper.queryPagedCustonlineInfo(userid, startIndex, pageSize);
	}

	public Custonline queryCustonlineById(String id) {
		return mainMapper.queryCustonlineById(id);
	}
	
	public int queryCustonlineCount(String userid)
	{
		return mainMapper.queryCustonlineCount(userid);
	}

	public int insertCustonline(Custonline custonline) {
		try {
			if (custonline != null) {
				String custname = custonline.getCustname();
				String deviceid = custonline.getDeviceid();
				String contractor = custonline.getContractor();
				String contractdetail = custonline.getContractdetail();
				String custaddress = custonline.getCustaddress();
				String custrole = custonline.getCustrole();
				String custauth = custonline.getCustauth();
				String userid = custonline.getUserid();
                Integer provinceId = custonline.getProvinceId();
                Integer cityId = custonline.getCityId();
                Integer areaId = custonline.getAreaId();
                String marker = custonline.getMarker();
                return mainMapper.insertCustonlineInfo(custname, deviceid, contractor, contractdetail, custaddress, custrole, custauth, userid,provinceId,cityId,areaId,marker);
			}
		} catch (Exception e) {
			log.error("insertCustonline error:", e);
		}
		return 0;
	}

    public int updateCustonlineInfo(Custonline custonline) {
        return mainMapper.updateCustonlineInfo(custonline,custonline.getId());
    }

    public List<DosageRank> getPagedRankDosage(int userid, String yestStartTime, String yestEndTime,
			int pageIndex, int pageSize, String todayStartTime, String todayEndTime)
	{
		int startIndex = (pageIndex - 1) * pageSize;
		return mainMapper.getPagedRankDosage(userid, yestStartTime, yestEndTime, startIndex, pageSize, todayStartTime, todayEndTime);
	}
	
	public List<DosageRank> getTotalRankDosage(int userid, String yestStartTime, String yestEndTime,
		    String todayStartTime, String todayEndTime)
	{
		return mainMapper.getTotalRankDosage(userid, yestStartTime, yestEndTime, todayStartTime, todayEndTime);
	}
	
	public List<BgHistoryReport> getAlarmList(int userid, int pageIndex, int pageSize)
	{
		int startIndex = (pageIndex - 1) * pageSize;
		List<Integer> custids = mainMapper.querypagedCusts(userid, startIndex, pageSize);
		List<BgHistoryReport> hisReports = new ArrayList<BgHistoryReport>();
		for(Integer item : custids){
			BgHistoryReport tmp = mainMapper.getCustNewestAlarm(item);
			if(tmp != null)
			{
				hisReports.add(tmp);
			}
		}
		//List<BgHistoryReport> hisReports = mainMapper.getAlarmList(userid, startIndex, pageSize);
		if(hisReports.size() > 0)
		{
			hisReports.get(0).setSteelPhone(mainMapper.getAlarmSetting(hisReports.get(0).getModulName(), hisReports.get(0).getCustonlineid()));
		}
		return hisReports;
	}
	
	public int getCustDosageCount(int userid)
	{
		return mainMapper.getCustDosageCount(userid);
	}
	
	public List<DeviceReport> getDevDetail(String devId)
	{
		List<MonitorInfo> monitorInfos = mainMapper.getDevDetail(devId);
		List<DeviceReport> deviceReports = new ArrayList<DeviceReport>();
		for(MonitorInfo item : monitorInfos){
			DeviceReport devReport = new DeviceReport();
			devReport.setCgyw(item.getCgyw());
		    devReport.setCgyl(item.getCgyl());
		    devReport.setCkwd(item.getCkwd());
		    devReport.setCkyl(item.getCkyl());
		    devReport.setHjwd(item.getHjwd());
		    devReport.setRqbj1(item.getRqbj1());
		    devReport.setRqbj2(item.getRqbj2());
		    devReport.setRqbj3(item.getRqbj3());
		    devReport.setRqbj4(item.getRqbj4());
		    devReport.setLljwd(item.getLljwd());
		    devReport.setLljyl(item.getLljyl());
			// devReport.setLljssll(item.getLljssll());
			// devReport.setLljljll(item.getLljljll());
		    devReport.setIcksyl(item.getIcksyl());
		    devReport.setIckljcz(item.getIckljcz());
		    devReport.setIckczl(item.getIckczl());
		    devReport.setReqTime(item.getReqTime());
		    deviceReports.add(devReport);
		}
		
		return deviceReports;
	}

	public boolean callbackLoginPwd(String userid, String newpwd) {
		int count = userMapper.updateUserPwd(userid, newpwd);
		if (count == 1) {
			return true;
		}
		return false;
	}

}
