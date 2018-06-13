package com.tianmu.openplatform.web;

import com.tianmu.manage.domain.User;
import com.tianmu.manage.service.UserCustService;
import com.tianmu.openplatform.common.ApiResponse;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.common.ResponseUtil;
import com.tianmu.openplatform.common.enums.ApiResponseStatusCode;
import com.tianmu.openplatform.common.enums.InterfUtil;
import com.tianmu.openplatform.common.utils.ResponseJsonUtils;
import com.tianmu.openplatform.domain.*;
import com.tianmu.openplatform.service.MainService;
import com.tianmu.openplatform.service.MapService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
public class MainController {

	/**
	 * 根据用户信息查询,得到用户设备信息列表
	 */
	@RequestMapping(value = "/monitor/list", method = RequestMethod.GET)
	public ModelAndView monitorList(HttpServletRequest request) {
		log.info("/monitor/list 监控列表开始");
		String retPageUrl = "/dataMonitoring-list";
		try {
			String username = WebUtils.getSessionAttribute(request, ConstantUtil.USERNAME) + "";
			log.info("username = {}", username);

			Object useridObj = WebUtils.getSessionAttribute(request, ConstantUtil.USERID);
			if (useridObj != null) {
				/*String userid = (String) useridObj;
				List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
				String deviceidBindArray = "";
				if (custonlineList != null && custonlineList.size() > 0) {
					Iterator<Custonline> custIter = custonlineList.iterator();
					while (custIter.hasNext()) {
						Custonline custonline = custIter.next();
						String deviceid = custonline.getDeviceid();
						deviceidBindArray += "'" + deviceid + "',";
					}
					deviceidBindArray = deviceidBindArray.substring(0, deviceidBindArray.length() - 1);
					log.info("deviceidBindArray = " + deviceidBindArray);
					if (InterfUtil.MONITLCODE.getSourceCode().equals(sourceCode)) {
						//List<MonitorListInfo> monitorListBean = mainService.queryMonitorListInfo(InterfUtil.MONITLCODE.getTerminalCode(), deviceidBindArray);
						List<NewMonitorListInfo> monitorListBean = mainService.queryNewMonitorListInfo(InterfUtil.MONITLCODE.getTerminalCode(), deviceidBindArray);
						return new ModelAndView(retPageUrl, "monitorListBean", monitorListBean);
					}
				}*/
				return new ModelAndView(retPageUrl);
			}
			log.info("/monitor/list 监控列表结束");
			return new ModelAndView(retPageUrl);
		} catch (Exception e) {
			log.error("monitorList error:", e);
		}
		log.info("/monitor/list 监控列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}
	
	@RequestMapping(value = "/monitor/custscount", method = RequestMethod.GET)
	public @ResponseBody Map getCustsCount(HttpServletRequest request) {
		log.info("/monitor/custscount");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				int result = mainService.queryCustonlineCount(useridObj.toString());
				map.put("code", 1);
				map.put("count", result);
				return map;
			}

		} catch (Exception e) {
			log.error("getPagedDosageRank error:", e);
		}
		map.put("error", 0);
		return map;
	}
	
	@RequestMapping(value = "/monitor/custsdata", method = RequestMethod.GET)
	public @ResponseBody Map getCustsData(HttpServletRequest request) {
		log.info("/monitor/custsdata");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				int pageSize = Integer.parseInt(request.getParameter("pageSize"));
				List<Custonline> custonlineList = mainService.queryPagedCustonlineInfo(useridObj.toString(), pageIndex, pageSize);
				String deviceidBindArray = "";
				List<NewMonitorListInfo> result = new ArrayList<NewMonitorListInfo>();
				if (custonlineList != null && custonlineList.size() > 0) {
					Iterator<Custonline> custIter = custonlineList.iterator();
					while (custIter.hasNext()) {
						Custonline custonline = custIter.next();
						String deviceid = custonline.getDeviceid();
						deviceidBindArray += "'" + deviceid + "',";
					}
					deviceidBindArray = deviceidBindArray.substring(0, deviceidBindArray.length() - 1);
					log.info("deviceidBindArray = " + deviceidBindArray);
					
					result = mainService.queryNewMonitorListInfo(deviceidBindArray);
				}
				map.put("code", 1);
				map.put("reportlist", result);
				return map;
			}

		} catch (Exception e) {
			log.error("getPagedDosageRank error:", e);
		}
		map.put("error", 0);
		return map;
	}
	

	/**
	 * 根据用户信息查询,得到用户设备信息列表
	 */
	@RequestMapping(value = "/monitor/detail/{deviceid}", method = RequestMethod.GET)
	public ModelAndView monitorDetail(HttpServletRequest request, @PathVariable("deviceid") String deviceid) {
		log.info("/monitor/detail 监控详情开始");
		String retPageUrl = "/dataMonitoring-detail";
		try {
			// TODO 校验用户登录信息是否过期
			// 1.TODO 解析报文,得到接口标识 monitd

			String sourceCode = "monitd";
			log.info("deviceid = {} ", deviceid);

			// 2.根据报文类型(type),上传的数据中类型为监控信息的数据 select * from table where type='1' and username='xxx'
			if (InterfUtil.MONITDCODE.getSourceCode().equals(sourceCode)) {
				Map<String, Object> monitorDetailBean = mainService.queryMonitorDetailInfo(deviceid);
				log.info("monitorDetailBean = " + monitorDetailBean);
				return new ModelAndView(retPageUrl, "monitorDetailBean", monitorDetailBean);
			}
			log.info("/monitor/detail 监控详情结束");
			return new ModelAndView("404");
		} catch (Exception e) {
			log.error("monitorDetail error:", e);
		}
		log.info("/monitor/detail 监控详情结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/**
	 * 根据用户信息查询,得到用户设备信息列表
	 */
	@RequestMapping(value = "/system/setting", method = RequestMethod.GET)
	public ModelAndView sysSeting(HttpServletRequest request) {
		log.info("/system/setting 系统设置");
		String retPageUrl = "/system-setting";
		try {
			String username = WebUtils.getSessionAttribute(request, ConstantUtil.USERNAME) + "";
			log.info("username = {}", username);
			// List<MonitorInfo> monitorListBean =
			// mainService.queryMonitorListInfo(InterfUtil.MONITLCODE.getTerminalCode(), username);
			// log.info("monitorListBean = " + monitorListBean);
			// return new ModelAndView(retPageUrl, "monitorListBean", monitorListBean);
			return new ModelAndView(retPageUrl);
		} catch (Exception e) {
			log.error("monitorList error:", e);
		}
		log.info("/monitor/list 监控列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/*
	 * 获取首页公司用量排名
	 * 
	@RequestMapping(value = "/main/dosagerank", method = RequestMethod.GET)
	public void getDosageRank(HttpServletRequest request, HttpServletResponse response) {
		log.info("/main/dosagerank");
		int top = Integer.parseInt(request.getParameter("top"));
		//List<DosageRank> data = mainService.getRankDosage(top);     
		int data = -1;
        ResponseJsonUtils.json(response, data);  
	}*/
	
	/*
	 * 分页获取首页客户昨日用量排名
	 * */
	@RequestMapping(value = "/main/dosagerank", method = RequestMethod.POST)
	public @ResponseBody Map getPagedDosageRank(HttpServletRequest request) {
		log.info("/main/dosagerank");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				int pageSize = Integer.parseInt(request.getParameter("pageSize"));
				String yestStartTime = request.getParameter("yestStartTime");
				String yestEndTime = request.getParameter("yestEndTime");
				String todayStartTime = request.getParameter("todayStartTime");
				String todayEndTime = request.getParameter("todayEndTime");
				int userid = Integer.parseInt(useridObj.toString());
				List<DosageRank> result = mainService.getPagedRankDosage(userid, yestStartTime, yestEndTime,
						pageIndex, pageSize, todayStartTime, todayEndTime);
				map.put("code", 1);
				map.put("reportlist", result);
				return map;
			}

		} catch (Exception e) {
			log.error("getPagedDosageRank error:", e);
		}
		map.put("error", 0);
		return map;
	}
	
	@RequestMapping(value = "/main/viewDosageTotal", method = RequestMethod.GET)
	public ModelAndView enactPatrol(HttpServletRequest request) {
		log.info("/main/viewDosageTotal");
		String retPageUrl = "/dosage-rank-total";
		return new ModelAndView(retPageUrl);
	}
	
	@RequestMapping(value = "/main/custdosagecount", method = RequestMethod.POST)
	public @ResponseBody Map getCustDosageCount(HttpServletRequest request) {
		log.info("/main/custdosagecount");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				
				int userid = Integer.parseInt(useridObj.toString());
				int result = mainService.getCustDosageCount(userid);
				map.put("code", 1);
				map.put("reportlist", result);
				return map;
			}

		} catch (Exception e) {
			log.error("getTotalDosageRank error:", e);
		}
		map.put("error", 0);
		return map;
	}
	
	/*
	 * 获取全部客户昨日用量排名
	 * */
	@RequestMapping(value = "/main/totaldosagerank", method = RequestMethod.POST)
	public @ResponseBody Map getTotalDosageRank(HttpServletRequest request) {
		log.info("/main/totaldosagerank");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String yestStartTime = request.getParameter("yestStartTime");
				String yestEndTime = request.getParameter("yestEndTime");
				String todayStartTime = request.getParameter("todayStartTime");
				String todayEndTime = request.getParameter("todayEndTime");
				int userid = Integer.parseInt(useridObj.toString());
				List<DosageRank> result = mainService.getTotalRankDosage(userid, yestStartTime, yestEndTime, todayStartTime, todayEndTime);
				map.put("code", 1);
				map.put("reportlist", result);
				return map;
			}

		} catch (Exception e) {
			log.error("getTotalDosageRank error:", e);
		}
		map.put("error", 0);
		return map;
	}

	
	/*
	 * 获取报警通知列表
	 * */
	@RequestMapping(value = "/main/alarmList", method = RequestMethod.POST)
	public @ResponseBody Map getAlarmList(HttpServletRequest request) {
		log.info("/main/alarmList");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				int userid = Integer.parseInt(useridObj.toString());
				int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				int pageSize = Integer.parseInt(request.getParameter("pageSize"));
				List<BgHistoryReport> result = mainService.getAlarmList(userid, pageIndex, pageSize);
				map.put("code", 1);
				map.put("reportlist", result);
				return map;
			}

		} catch (Exception e) {
			log.error("getAlarmList error:", e);
		}
		map.put("error", 0);
		return map;
	}
	
	/*
	 * 获取客户设备详细信息参数
	 * */
	@RequestMapping(value = "/main/devdetail", method = RequestMethod.GET)
	public void getDevDetail(HttpServletRequest request, HttpServletResponse response) {
		log.info("/main/devdetail");
		String devId = request.getParameter("devId");
		String startTime = request.getParameter("starttime");
		String endTime = request.getParameter("endtime");
		List<DeviceReport> data = mainService.getDevDetail(devId);       
        ResponseJsonUtils.json(response, data);  
	}
	
	@RequestMapping(value = "/report/chart/{deviceid}", method = RequestMethod.GET)
	public ModelAndView reportChart(HttpServletRequest request, HttpServletResponse response, @PathVariable("deviceid") String deviceid) {
		log.info("/report/chart");
		String retPageUrl = "/report-chart-tab";
		return new ModelAndView(retPageUrl, "deviceid", deviceid);
	}

	/**
	 * 开户
	 */
	@RequestMapping(value = { "/user/lpwd/update" }, method = { RequestMethod.POST })
	public ApiResponse openUser(@RequestBody Map<String, String> params, HttpServletRequest request) {

		Map<String, Object> respData = new HashMap<String, Object>();
		log.info("/user/open:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String opwd = params.get("opwd");
		String npwd = params.get("npwd");
		String ncpwd = params.get("ncpwd");

		if (StringUtils.isBlank(opwd) || StringUtils.isBlank(npwd) || StringUtils.isBlank(ncpwd) || !npwd.equals(ncpwd)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "1234", "修改参数错误", respData);
		}

		User user = new User();
		user.setPassword(ncpwd);

		Object userObj = WebUtils.getSessionAttribute(request, ConstantUtil.USERID);

		if (userObj == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "9999", "未取到用户ID", respData);
		}
		user.setId(userObj + "");

		int count = userCustService.updateAccountPwd(user);

		if (count == 1) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6002", "开户失败", respData);
		}

	}

	/**
	 * 首页地图-上线统计
	 */
	@RequestMapping(value = { "/map/sxtj" }, method = { RequestMethod.POST,RequestMethod.GET })
    @ResponseBody
	public List<Map<String, Object>> sxtj1(HttpServletRequest request) {
        Object useridObj = WebUtils.getSessionAttribute(request, ConstantUtil.USERID);
        String type = request.getParameter("type");
        String areaId = request.getParameter("areaId");
        switch (type) {
            case "province":
                return mapService.sxtj1(Integer.valueOf(useridObj.toString()));
            case "city":
                return mapService.sxtj2(Integer.valueOf(useridObj.toString()),Integer.valueOf(areaId));
            case "area":
                return mapService.sxtj3(Integer.valueOf(useridObj.toString()),Integer.valueOf(areaId));
            default:
                return new ArrayList<>();
        }
	}

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private MainService mainService;

	@Autowired
	private UserCustService userCustService;

	@Autowired
	private MapService mapService;

}
