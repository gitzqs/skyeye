package com.tianmu.openplatform.web;

import java.util.ArrayList;
import java.util.Arrays;
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
import org.springframework.web.util.WebUtils;

import com.tianmu.manage.service.UserCustService;
import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.common.utils.ResponseJsonUtils;
import com.tianmu.openplatform.domain.Patrol;
import com.tianmu.openplatform.domain.Custonline;

@Controller
public class UserCustController {
	private final Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private UserCustService userCustService;
	
	@RequestMapping(value = "/account/add", method = RequestMethod.GET)
	public ModelAndView vAddAccount(HttpServletRequest request) {
		log.info("/account/add");
		String retPageUrl = "/account-add";
		List<Custonline> custs = new ArrayList<Custonline>();
		Object useridObj = WebUtils.getSessionAttribute(request,
				ConstantUtil.USERID);
		if (useridObj != null) {
			custs = userCustService.getAllCust2(Integer.parseInt(useridObj.toString()));
		}
		return new ModelAndView(retPageUrl, "custs", custs);
	}
	
	@RequestMapping(value = "/account/maintain", method = RequestMethod.GET)
	public ModelAndView vMaintainAccount(HttpServletRequest request) {
		log.info("/account/maintain");
		int uid = Integer.parseInt(request.getParameter("uid"));
		String retPageUrl = "/account-maintain";
		return new ModelAndView(retPageUrl, "uid", uid);
	}
	
	/*
	 * 获取系统设置-账户管理列表
	 * */
	@RequestMapping(value = "/account/list", method = RequestMethod.GET)
	public void getAccountList(HttpServletRequest request, HttpServletResponse response) {
		log.info("/account/list");
		int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		List<User> data = userCustService.getUser(pageIndex, pageSize);   
        ResponseJsonUtils.json(response, data);  
	}
	
	@RequestMapping(value = "/account/count", method = RequestMethod.GET)
	public void getUserCount(HttpServletRequest request, HttpServletResponse response) {
		log.info("/account/count");
		int data = userCustService.getUserCount();   
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 删除用户，用户和客户关系
	 * */
	@RequestMapping(value = "/account/delete", method = RequestMethod.POST)
	public void deleteAccount(HttpServletRequest request, HttpServletResponse response) {
		log.info("/account/delete");
		int uid = Integer.parseInt(request.getParameter("uid"));
		int data= userCustService.deleteUser(uid);   
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 新增用户，用户和客户关系
	 * */
	@RequestMapping(value = "/acc/add", method = RequestMethod.POST)
	public void addAccount(HttpServletRequest request, HttpServletResponse response) {
		log.info("/acc/add");
		Object useridObj = WebUtils.getSessionAttribute(request,
				ConstantUtil.USERID);
		if (useridObj != null) {
			User tmp = userCustService.getOneUser(Integer.parseInt(useridObj.toString()));
			if(tmp != null)
			{
				User user = new User();
				user.setUserName(request.getParameter("uname"));
				user.setPassword(request.getParameter("pass"));
				user.setRealName(request.getParameter("rname"));
				user.setRoleId(request.getParameter("roleId"));
				user.setAuth(Integer.parseInt(request.getParameter("auth")));
				user.setCompanyId(tmp.getCompanyId());
				String custIds = request.getParameter("custids");
				user.setCustIds(Arrays.asList(custIds.split(",")));
				int data = userCustService.addAccount(user); 
				ResponseJsonUtils.json(response, data);  
				return;
			}
		}
		
		ResponseJsonUtils.json(response, -1);
		return;
	}
	
	/*
	 * 查询账户明细，包括角色，权限等
	 * */
	@RequestMapping(value = "/account/detail", method = RequestMethod.GET)
	public void getAccountDetail(HttpServletRequest request, HttpServletResponse response) {
		log.info("/account/detail");
		int uid = Integer.parseInt(request.getParameter("uid"));
		User data = userCustService.GetUserDetail(uid);  
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 获取全部客户信息列表（id和名称）
	 * */
	@RequestMapping(value = "/cust/all", method = RequestMethod.GET)
	public void getAllCust(HttpServletRequest request, HttpServletResponse response) {
		log.info("/cust/all");
		List<Custonline> data = new ArrayList<Custonline>();
		Object useridObj = WebUtils.getSessionAttribute(request,
				ConstantUtil.USERID);
		if (useridObj != null) {
			data = userCustService.getAllCust(Integer.parseInt(useridObj.toString()));
		}
        ResponseJsonUtils.json(response, data);  
	}
	
	/*
	 * 维护账户（更新）
	 * */
	@RequestMapping(value = "/account/update", method = RequestMethod.POST)
	public void updateAccount(HttpServletRequest request, HttpServletResponse response) {
		log.info("/account/update");
		User user = new User();
		user.setRealName(request.getParameter("rname"));
		user.setRoleId(request.getParameter("roleId"));
		user.setAuth(Integer.parseInt(request.getParameter("auth")));
		String custIds = request.getParameter("custids");
		user.setCustIds(Arrays.asList(custIds.split(",")));
		user.setId(request.getParameter("id"));
		int data = userCustService.updateAccount(user);  
        ResponseJsonUtils.json(response, data);  
	}
}
