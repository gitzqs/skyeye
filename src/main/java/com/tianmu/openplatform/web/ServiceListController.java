package com.tianmu.openplatform.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.service.EquipmentService;
import com.tianmu.openplatform.common.utils.ResponseJsonUtils;
import com.tianmu.openplatform.domain.Patrol;
import com.tianmu.openplatform.domain.PatrolPos;
import com.tianmu.openplatform.domain.SimpleUser;
import com.tianmu.openplatform.service.PatrolService;

@Controller
public class ServiceListController {
	private final Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private PatrolService patrolService;
	
	@Autowired
	private EquipmentService equipmentService;
	
	@RequestMapping(value = "/service/manage", method = RequestMethod.GET)
	public ModelAndView queryServiceList(HttpServletRequest request) {
		log.info("/service/list");
		String retPageUrl = "/service-list";
		return new ModelAndView(retPageUrl);
	}
	
	@RequestMapping(value = "/patrolplan/enact", method = RequestMethod.GET)
	public ModelAndView enactPatrol(HttpServletRequest request) {
		log.info("/patrolplan/enact");
		String retPageUrl = "/patrolPlan";
		return new ModelAndView(retPageUrl);
	}
	
	@RequestMapping(value = "/patrol/count", method = RequestMethod.GET)
	public void getPatrolCount(HttpServletRequest request, HttpServletResponse response) {
		log.info("/patrol/count");
		int data = patrolService.getPatrolCount();     
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 分页获取巡检任务列表
	 * */
	@RequestMapping(value = "/patrol/list", method = RequestMethod.GET)
	public void getPatrol(HttpServletRequest request, HttpServletResponse response) {
		log.info("/patrol/list");
		int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		List<Patrol> data = patrolService.getPatrol(pageIndex, pageSize);       
        ResponseJsonUtils.json(response, data);  
	}
	
	@RequestMapping(value = "/patrol/add", method = RequestMethod.POST)
	public void addPatrol(HttpServletRequest request, HttpServletResponse response){
		log.info("/patrol/add");
		Patrol patrol = new Patrol();
		patrol.setTaskName(request.getParameter("taskName"));
		patrol.setStatus(0);
		int userid = Integer.parseInt(request.getParameter("uid"));
		int data = patrolService.addPatrol(patrol, userid);       
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 写入巡检位置信息
	 * 类型type：0：开始巡检，1：中间，2：结束巡检
	 * */
	@RequestMapping(value = "/patrolpos/add", method = RequestMethod.POST)
	public void addPatrolPos(HttpServletRequest request, HttpServletResponse response)
	{
		log.info("/patrolpos/add");
		PatrolPos patrolPos = new PatrolPos();
		patrolPos.setTaskId(Integer.parseInt(request.getParameter("taskId")));
		patrolPos.setType(Integer.parseInt(request.getParameter("type")));
		patrolPos.setPosition(request.getParameter("position"));
		int data = patrolService.addPatrolPos(patrolPos);
        ResponseJsonUtils.json(response, data); 
	}
	
	/*
	 * 获取待处理的巡检任务
	 * */
	@RequestMapping(value = "/patrol/pendinglist", method = RequestMethod.GET)
	public void getPendingPatrol(HttpServletRequest request, HttpServletResponse response)
	{
		log.info("/patrol/pendinglist");
		int userId = Integer.parseInt(request.getParameter("uid"));
		List<Patrol> data = patrolService.getPendingPatrol(userId);
		ResponseJsonUtils.json(response, data); 
	}
	
	@RequestMapping(value = "/equipment/count", method = RequestMethod.GET)
	public void getEquipmentCount(HttpServletRequest request, HttpServletResponse response) {
		log.info("/equipment/count");
		int data = equipmentService.getEquipmentCount();
        ResponseJsonUtils.json(response, data);  
	}
	
	@RequestMapping(value = "/equipment/list", method = RequestMethod.GET)
	public ModelAndView getEquipment(HttpServletRequest request, HttpServletResponse response) {
		log.info("/equipment/list");
		// int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		// int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		int pageIndex = 1;
		int pageSize = 20;
		List<Equipment> data = equipmentService.getEquipmentByPage(pageIndex, pageSize);
		// ResponseJsonUtils.json(response, data);
		return new ModelAndView("/manage/list_equipment", "equipmentList", data);
	}
	
	/*
	 * 设置阀门状态
	 * */
	@RequestMapping(value = "/equipment/setStatus", method = RequestMethod.POST)
	public void setEquipStatus(HttpServletRequest request, HttpServletResponse response) {
		log.info("/equipment/setStatus");
		int id = Integer.parseInt(request.getParameter("id"));
		int status = Integer.parseInt(request.getParameter("status"));
		int data = equipmentService.SetEquipStatus(id, status);
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 设置可巡检人员
	 * */
	@RequestMapping(value = "/patrol/userlist", method = RequestMethod.GET)
	public void getPatrolUser(HttpServletRequest request, HttpServletResponse response) {
		log.info("/patrol/userlist");
		List<SimpleUser> data = patrolService.getPatrolUser(3);
		ResponseJsonUtils.json(response, data);  
	}
	
	@RequestMapping(value = "/patrolpos/list", method = RequestMethod.GET)
	public void getPatrolPosList(HttpServletRequest request, HttpServletResponse response) {
		log.info("/patrolpos/list");
		List<PatrolPos> data = patrolService.getPatrolPos(Integer.parseInt(request.getParameter("taskId")));
		ResponseJsonUtils.json(response, data);  
	}
}
