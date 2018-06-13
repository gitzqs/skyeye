package com.tianmu.openplatform.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.db.UserCustMapper;
import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.db.StatisticsMapper;
import com.tianmu.openplatform.domain.BgCompany;
import com.tianmu.openplatform.domain.BgHistoryReport;
import com.tianmu.openplatform.domain.BgModule;
import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.BgUser;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.domain.DeviceReport;
import com.tianmu.openplatform.domain.MonitorInfo;
import com.tianmu.openplatform.domain.singleReport;

@Service
public class StatisticsService {

    
    @Autowired
    private StatisticsMapper statisticsMapper;
    
    @Autowired
    private UserCustMapper userCustMapper;
    
    /**
     * 
     * 数据统计
     * 
     * @param page
     * @param cusname
     * @return
     */
    public Map<String, Object> queryDatalistInfo(Integer page,Integer pageSize, String cusname, int userid) {
        if(page<1){
            page = 1;
        }
        Integer startPage = (page-1)*pageSize;
        List<Custonline> custonlineList =new ArrayList<Custonline>();
        Integer count = 0;
        if(cusname!=null && !cusname.trim().equals("")){
            String  name = "%"+cusname.trim()+"%";
            custonlineList = statisticsMapper.queryDatalistInfoByWhere(name,startPage,pageSize);
            count = statisticsMapper.queryDatalistInfoCountByWhere(name);
        }else{
        	User tmp = userCustMapper.getOneUser(userid);
        	if(tmp != null)
        	{
        		custonlineList = statisticsMapper.queryDatalistInfo(startPage,pageSize,tmp.getCompanyId());
                count = statisticsMapper.queryDatalistInfoCount(tmp.getCompanyId());
        	}
            
        }
        List<BgModule> moduleList = statisticsMapper.queryModuleList();
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("page", page);
        map.put("count", count);
        map.put("cusname", cusname);
        map.put("custonlineList", custonlineList);
        map.put("bgModuleList",moduleList);
        return map;
    }

    /**
     * 
     * 历史报警
     * @param page
     * @param pageSize
     * @param cusname
     * @return
     */
    public Map<String, Object> hisreportlist(int page, int pageSize, String cusname) {
        if(page<1){
            page = 1;
        }
        Integer startPage = (page-1)*pageSize;
        List<BgHistoryReport> hisreportlist =new ArrayList<BgHistoryReport>();
        Integer count = 0;
        if(cusname!=null && !cusname.trim().equals("")){
            String  name = "%"+cusname.trim()+"%";
            hisreportlist = statisticsMapper.hisreportlistByWhere(name,startPage,pageSize);
            count = statisticsMapper.hisreportlistCountByWhere(name);
        }else{
            hisreportlist = statisticsMapper.hisreportlist(startPage,pageSize);
            count = statisticsMapper.hisreportlistCount();
        }
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("page", page);
        map.put("count", count);
        map.put("cusname", cusname);
        map.put("hisreportlist", hisreportlist);
        return map;
    }

	public Map<String, Object> pushAlarmList(int page, int pageSize,
			String cusname) {
		if(page<1){
            page = 1;
        }
        Integer startPage = (page-1)*pageSize;
        List<BgMovement> pushAlarmList =new ArrayList<BgMovement>();
        Integer count = 0;
        if(cusname!=null && !cusname.trim().equals("")){
            String  name = "%"+cusname.trim()+"%";
            pushAlarmList = statisticsMapper.pushAlarmListByWhere(name,startPage,pageSize);
            count = statisticsMapper.pushAlarmListCountByWhere(name);
        }else{
        	pushAlarmList = statisticsMapper.pushAlarmList(startPage,pageSize);
            count = statisticsMapper.pushAlarmListCount();
        }
        if(pushAlarmList!=null&&pushAlarmList.size()>0){
            for (BgMovement bgMovement : pushAlarmList) {
                String steelphone = bgMovement.getSteelphone();
                if(steelphone!=null&&!steelphone.trim().equals("")){
                    String steel = "";
                    if (steelphone.indexOf("0")!=-1){
                        steel = "app";
                    }
                    if (steelphone.indexOf("1")!=-1){
                        if(steel.equals("")){
                            steel = "短信";
                        }else{
                            steel += ",短信";
                        }
                       
                    }
                    bgMovement.setSteelphone(steel);
                }
                String userid = bgMovement.getUserid();
                
                if(userid!=null&&!userid.trim().equals("")){
                    String[] split = userid.split(",");
                    String username = "";
                    for (String id : split) {
                        if(id==null || id.trim().equals("")){
                            continue;
                        }
                        BgUser bgUser = statisticsMapper.queryUserById(id);
                        if(bgUser!=null){
                            username+=bgUser.getUsername()+",";
                        }
                    }
                    bgMovement.setUsername(username);
                }
            }
        }

        Map<String,Object> map = new HashMap<String,Object>();
        map.put("page", page);
        map.put("count", count);
        map.put("cusname", cusname);
        map.put("pushAlarmList", pushAlarmList);
        return map;
	}

	
	public Map<String, Object> pushAlarmListByCusid(int page, int pageSize,
			String cusid) {
		if(page<1){
            page = 1;
        }
        Integer startPage = (page-1)*pageSize;
        List<BgMovement> pushAlarmList =new ArrayList<BgMovement>();
        List<BgMovement> newAlarmList = new ArrayList<BgMovement>();
        Integer count = 0;
        if(cusid!=null && !cusid.trim().equals("")){
            pushAlarmList = statisticsMapper.pushAlarmListByCusId(Integer.parseInt(cusid),startPage,pageSize);
            count = statisticsMapper.pushAlarmListCountByCusId(Integer.parseInt(cusid));
            Custonline cust = statisticsMapper.queryCustonlineById(Integer.parseInt(cusid));
            MonitorInfo monitorInfo = statisticsMapper.queryDeviceinfoByDevId(cust.getDeviceid());

	        if(pushAlarmList!=null&&pushAlarmList.size()>0){
	            for (BgMovement bgMovement : pushAlarmList) {
	            	bgMovement.setModuleVal(GetModuleVal(Integer.parseInt(bgMovement.getModuleid()), monitorInfo)); 
	                String steelphone = bgMovement.getSteelphone();
	                if(steelphone!=null&&!steelphone.trim().equals("")){
	                    /*String steel = "";
	                    if (steelphone.indexOf("0")!=-1){
	                        steel = "app";
	                    }
	                    if (steelphone.indexOf("1")!=-1){
	                        if(steel.equals("")){
	                            steel = "短信";
	                        }else{
	                            steel += ",短信";
	                        }
	                       
	                    }*/
	                    bgMovement.setSteelphone(steelphone);
	                }
	                String userid = bgMovement.getUserid();
	                
	                ArrayList<String> unameList = new ArrayList<String>();
	                if(userid!=null&&!userid.trim().equals("")){
	                    String[] split = userid.split(",");
	                    String username = "";
	                    for (String id : split) {
	                        if(id==null || id.trim().equals("")){
	                            continue;
	                        }
	                        BgUser bgUser = statisticsMapper.queryUserById(id);
	                        if(bgUser!=null){
	                            username+=bgUser.getUsername()+",";
	                            unameList.add(bgUser.getUsername());
	                        }
	                    }
	                    bgMovement.setUsername(username);
	                    bgMovement.setUsernameList(unameList);
	                }
	                
	                if(bgMovement.getModuleVal()!=null && !bgMovement.getModuleVal().equals("null"))  
	            	{
	            		newAlarmList.add(bgMovement);
	            	}
	            }
	            
	        }
        }
        List<Custonline> custonlineList = statisticsMapper.queryCustonlineDatalist();
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("page", page);
        map.put("count", count);
        map.put("cusid", cusid);
        map.put("pushAlarmList", newAlarmList);
        map.put("custonlineList", custonlineList);
        return map;
	}
	
	public String GetModuleVal(int moduleId, MonitorInfo monitorInfo)
	{
		switch(moduleId)
		{
			case 1:   //cgyw
				return monitorInfo.getCgyw();
			case 2:   //cgyl
				return monitorInfo.getCgyl();
			case 3:   //ckwd
				return monitorInfo.getCkwd();
			case 4:  //ckyl
				return monitorInfo.getCkyl();
			case 5:  //hjwd
				return monitorInfo.getHjwd();
			case 6:  //rqbj1
				return monitorInfo.getRqbj1();
			case 7:  //rqbj2
				return monitorInfo.getRqbj2();
			case 8:  //rqbj3
				return monitorInfo.getRqbj3();
			case 9:  //rqbj4
				return monitorInfo.getRqbj4();
			case 10:  //cyfzt
				return monitorInfo.getCyfzt();
			case 11:  //jyfzt
				return monitorInfo.getJyfzt();
			case 12:  //zyfzt
				return monitorInfo.getZyfzt();
			case 13:  //lljwd
				return monitorInfo.getLljwd();
			case 14:  //lljyl
				return monitorInfo.getLljyl();
			case 15:  //lljssll
				return monitorInfo.getLljssll();
			case 16:  //lljljll
				return monitorInfo.getLljljll();
			case 17:   //icksyl
				return monitorInfo.getIcksyl();
			case 18:  //ickljcz
				return monitorInfo.getIckljcz();
			case 19:  //ickczl
				return monitorInfo.getIckczl();
			default:
				return null;
		}
	}

	/**
	 * 查询报警推送详情
	 * @param parseInt
	 * @param parseInt2
	 * @return
	 */
	public BgMovement querypushAlarm(int cusid, int moduleid) {
		
		BgMovement bgMovement = statisticsMapper.querypushAlarm(cusid,moduleid);
		return bgMovement;
	}
	/**
	 * 根据客户id查询用户
	 * @param parseInt
	 * @param parseInt2
	 * @return
	 */
	public List<BgUser> queryUserByCusId(int cusid) {
		
		List<BgUser> userlist = statisticsMapper.queryUserByCusId(cusid);
		return userlist;
	}
	
	public List<BgUser> getUsersByCustId(int cusid){
		List<BgUser> userlist = statisticsMapper.getUsersByCustId(cusid);
		return userlist;
	}

	/**
	 * 新增设置
	 * 
	 * @param fieldname
	 * @param parseDouble
	 * @param parseDouble2
	 * @param steelphone
	 * @param username
	 * @param userid
	 */
	public void addAlarmData(String fieldname, Integer custonlineid,double maxlimit,
			double minlimit, String steelphone, String username,
			String userid) {
		
	        statisticsMapper.addAlarmData(fieldname,custonlineid,maxlimit,minlimit,steelphone,username,userid);
	}

	/**
	 * 修改设置
	 * 
	 * @param parseInt
	 * @param fieldname
	 * @param parseDouble
	 * @param parseDouble2
	 * @param steelphone
	 * @param username
	 * @param userid
	 */
	public void updateAlarmData(int id,double maxlimit, double minlimit, String steelphone,
			String username, String userid) {
		statisticsMapper.updateAlarmData(id,maxlimit,minlimit,steelphone,username,userid);
		
	}

	public Map<String, Object> queryModuleDataByWhere(Integer cusid,int page, int pageSize,
			String fieldname, String starttime, String endtime) {
		
	    //根据客户id查询设备
    	    String deviceid = null;
    	    if(page<1){
    	        page = 1;
            }
            Integer startPage = (page-1)*pageSize;
    		//List<Map> maplist = statisticsMapper.queryModuleDataByWhere(deviceid,startPage,pageSize,starttime,endtime);
            return null;
	}

    public Custonline queryCustonlineById(int custid) {
        
        Custonline custonline = statisticsMapper.queryCustonlineById(custid);
        return custonline;
    }

    public List<BgModule> queryBgModuleListByDeviceid(String deviceid) {
        
    	Map<String,Object> map = statisticsMapper.queryDeviceinfoByDeviceid(deviceid);
    	Map<String,Object> mapdate = new HashMap<String, Object>();
    	if(map!=null){
	    	for (String in : map.keySet()) {
	    		 Object value = map.get(in);
	    		 if(value!=null&&!value.toString().equals("null")){
	    			mapdate.put(in, "1");
	    		 }
	    	}
    	}
        List<BgModule> moduleList = statisticsMapper.queryModuleList();
        List<BgModule> ml = new ArrayList<BgModule>();
        if(moduleList!=null&&moduleList.size()>0){
        	for (BgModule bgModule : moduleList) {
        		String fieldname = bgModule.getFieldname();
        		if(mapdate==null || mapdate.get(fieldname)!=null){
        			ml.add(bgModule);
        		}
			}
        }
        return ml;
    }
    
    public List<BgModule> queryBgModuleList() {
        
        List<BgModule> moduleList = statisticsMapper.queryModuleList();
        return moduleList;
    }
    
    public List<singleReport> queryModuleDataOpt(String fieldName, String custid, String starttime,
            String endtime, int top) {
        
    	int moduleId = statisticsMapper.queryModuleId(fieldName);
        //查询设备id
        Custonline custonline = statisticsMapper.queryCustonlineById(Integer.parseInt(custid));
        
        List<MonitorInfo> monitorInfos = statisticsMapper.queryModuleDataOpt(custonline.getDeviceid(),starttime,endtime,top);
        List<singleReport> singleReports = new ArrayList<singleReport>();
        int i = 0;
        for(MonitorInfo item : monitorInfos){
        	i++;
        	if(i == 4)
        	{
        		i = 0;
        		singleReport entity = new singleReport();
            	entity.setData(GetModuleVal(moduleId, item));
            	entity.setReqTime(item.getReqTime());
            	singleReports.add(entity);
        	}
        }
        return singleReports;
    }

    public List<DeviceReport> queryModuleData(String moduleid, String custid, String starttime,
            String endtime) {
        
        //查询设备id
        Custonline custonline = statisticsMapper.queryCustonlineById(Integer.parseInt(custid));
        
        List<MonitorInfo> monitorInfos = statisticsMapper.queryModuleData(custonline.getDeviceid(),starttime,endtime);
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
            devReport.setLljssll(item.getLljssll());
            devReport.setLljljll(item.getLljljll());
            devReport.setIcksyl(item.getIcksyl());
            devReport.setIckljcz(item.getIckljcz());
            devReport.setIckczl(item.getIckczl());
            devReport.setReqTime(item.getReqTime());
            deviceReports.add(devReport);
        }
        
        return deviceReports;
    }

    public Map<String, Object> queryGraphListDataByWhere(int page, int pageSize,
            int custid, String moduleid, String starttime, String endtime) {
    	Map<String, Object> mapdata = new HashMap<String, Object>();
        if(page<1){
            page = 1;
        }
        Integer startPage = (page-1)*pageSize;
        //查询设备id
        Custonline custonline = statisticsMapper.queryCustonlineById(custid);
        List<Map> monitorInfos = statisticsMapper.queryGraphListDataByWhere(custonline.getDeviceid(),startPage,pageSize,starttime,endtime);
        List<Map> deviceReports = new ArrayList<Map>();
        for(Map map : monitorInfos){
            String moduledata = map.get(moduleid)==null?"":map.get(moduleid).toString();
            String moduletime = map.get("reqTime")==null?"":map.get("reqTime").toString();
            Map<String,Object> m = new HashMap<String, Object>();
            m.put("moduledata", moduledata);
            m.put("moduletime", moduletime);
            deviceReports.add(m);
        }
        Integer count = statisticsMapper.queryGraphListDataCountByWhere(custonline.getDeviceid(),startPage,pageSize,starttime,endtime);
        mapdata.put("list", deviceReports);
        mapdata.put("count", count);
        return mapdata;
        
    }

    public List<Map<String,Object>> getExportData(String deviceid, String starttime, String endtime) {
        
        List<Map<String,Object>> maplist = statisticsMapper.getExportData(deviceid,starttime,endtime);
        return maplist;
    }

}
