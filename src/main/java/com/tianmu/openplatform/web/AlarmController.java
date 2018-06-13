package com.tianmu.openplatform.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.domain.User;
import com.tianmu.manage.service.EquipmentService;
import com.tianmu.manage.service.UserCustService;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.common.utils.ResponseJsonUtils;
import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.BgUser;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.domain.Patrol;
import com.tianmu.openplatform.domain.PatrolPos;
import com.tianmu.openplatform.domain.SimpleUser;
import com.tianmu.openplatform.service.AlarmService;
import com.tianmu.openplatform.service.PatrolService;
import com.tianmu.openplatform.service.StatisticsService;

@Controller
public class AlarmController {
	private final Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private AlarmService alarmService;
	
	@Autowired
	private StatisticsService statisticsService;
	
	@Autowired
	private UserCustService userCustService;
	
	@RequestMapping(value = "/alarmSetting/index", method = RequestMethod.GET)
	public ModelAndView alarmPush(HttpServletRequest request) {
		log.info("/alarmSetting/index");
		String retPageUrl = "/alarm-push";
		return new ModelAndView(retPageUrl);
	}
	
	@RequestMapping(value = "/alarmSetting/queryAlarm", method = RequestMethod.GET)
	public ModelAndView querypushAlarm(HttpServletRequest request) {
		log.info("/alarmSetting/queryAlarm 历史报警数据统计开始");
		String retPageUrl = "/alarm-setting";
		try {
			String username = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERNAME) + "";
			log.info("username = {}", username);

			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String cusid = request.getParameter("cusid");
				String moduleid = request.getParameter("moduleid");
				Map<String, Object> datamap = new HashMap<String, Object>();
				BgMovement bgMovement = statisticsService.querypushAlarm(
						Integer.parseInt(cusid), Integer.parseInt(moduleid));
				//List<BgUser> userlist = statisticsService.getUsersByCustId(Integer.parseInt(cusid));
				List<User> userlist = new ArrayList<User>();
				User tmp = userCustService.getOneUser(Integer.parseInt(useridObj.toString()));
				if(tmp != null)
				{
					userlist = userCustService.getAllUser(Integer.parseInt(tmp.getCompanyId()));
				}
				datamap.put("bgMovement", bgMovement);
				datamap.put("userlist", userlist);

				return new ModelAndView(retPageUrl, "datamap", datamap);
			}
			log.info("/alarmSetting/queryAlarm 历史报警数据统计列表结束");
		} catch (Exception e) {
			log.error("datalist error:", e);
		}
		log.info("/alarmSetting/queryAlarm 历史报警数据统计列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}
	
	@RequestMapping(value = "/alarmSetting/setAlarmData", method = RequestMethod.POST)
	public @ResponseBody Map setAlarmData(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String alarmid = request.getParameter("alarmid");
				String custonlineid = request.getParameter("custonlineid");
				String fieldname = request.getParameter("fieldname");
				String maxlimit = request.getParameter("maxlimit");
				String minlimit = request.getParameter("minlimit");
				String steelphone = request.getParameter("steelphone");
				String username = request.getParameter("username");
				String userid = useridObj.toString();

				if (fieldname == null || fieldname.trim().equals("")
						|| maxlimit == null || maxlimit.trim().equals("")
						|| minlimit == null || minlimit.trim().equals("")
						|| steelphone == null || steelphone.trim().equals("")
						|| userid == null || userid.trim().equals("")
						|| custonlineid == null
						|| custonlineid.trim().equals("")) {
					map.put("code", 2);
					return map;
				}
				if (alarmid == null || alarmid.trim().equals("")) {
					statisticsService.addAlarmData(fieldname,
							Integer.parseInt(custonlineid),
							Double.parseDouble(maxlimit),
							Double.parseDouble(minlimit), steelphone, username,
							userid);
				} else {
					statisticsService.updateAlarmData(
							Integer.parseInt(alarmid),
							Double.parseDouble(maxlimit),
							Double.parseDouble(minlimit), steelphone, username,
							userid);
				}
				map.put("code", 1);
				return map;
			}

		} catch (Exception e) {
			log.error("custonlineAdd error:", e);
		}

		map.put("code", 0);
		return map;
	}
	
	@RequestMapping(value = "/alarmSetting/custList", method = RequestMethod.GET)
	public void getCustsByManager(HttpServletRequest request, HttpServletResponse response) {
		log.info("/alarmSetting/custList");
		Object userIdObj = WebUtils.getSessionAttribute(request,
				ConstantUtil.USERID);
		if(userIdObj == null) {
			ResponseJsonUtils.json(response, -1);
			return;
		} 
		String userId = userIdObj.toString();
		List<Custonline> data = alarmService.getCustsByManager(userId);     
        ResponseJsonUtils.json(response, data);  
	}
	
	@RequestMapping(value = "/alarmSetting/moduleList", method = RequestMethod.GET)
	public void getModuleMovements(HttpServletRequest request, HttpServletResponse response)  {
		log.info("/alarmSetting/moduleList");
		try {
			String username = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERNAME) + "";
			log.info("username = {}", username);

			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String page = request.getParameter("page");
				String pageSize = request.getParameter("pageSize");
				if (page == null || "".equals(page.trim())) {
					page = "1";
				}
				if (pageSize == null || "".equals(pageSize.trim())) {
					pageSize = "10";
				}
				String cusid = request.getParameter("custid");
				Map<String, Object> data = statisticsService.pushAlarmListByCusid(
						Integer.parseInt(page), Integer.parseInt(pageSize),
						cusid);
				ResponseJsonUtils.json(response, data);
			}
		} catch (Exception e) {
			log.error("datalist error:", e);
			ResponseJsonUtils.json(response, -1);
		}
		
	}
	
	@RequestMapping(value = "/alarmSetting/updateAlarm", method = RequestMethod.POST)
	public void updateAlarmData(HttpServletRequest request, HttpServletResponse response) {
		log.info("/alarmSetting/moduleList");
		String id = request.getParameter("id");
		String maxlimit = request.getParameter("maxlimit");
		String minlimit = request.getParameter("minlimit");
		String steelphone = request.getParameter("steelphone");
		String username = request.getParameter("username");
		String userid = request.getParameter("userid");
		String custid = request.getParameter("custid");
		int data = alarmService.updateAlarmData(Integer.parseInt(id), Integer.parseInt(maxlimit), Integer.parseInt(minlimit), 
				steelphone, username, userid, custid);   
        ResponseJsonUtils.json(response, data);  
	}
}
