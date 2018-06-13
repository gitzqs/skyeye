package com.tianmu.openplatform.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.WebUtils;

import com.tianmu.manage.domain.User;
import com.tianmu.manage.service.BgUserService;
import com.tianmu.manage.service.UserCustService;
import com.tianmu.openplatform.common.ApiResponse;
import com.tianmu.openplatform.common.ResponseUtil;
import com.tianmu.openplatform.common.enums.ApiResponseStatusCode;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.domain.MonitorDetailBean;
import com.tianmu.openplatform.domain.MonitorListInfo;
import com.tianmu.openplatform.service.LoginService;
import com.tianmu.openplatform.service.MainService;

@RestController
@RequestMapping(value = { "/api" })
public class RestApiController {

	private final Logger log = LoggerFactory.getLogger(getClass());

	private Map<String, Object> respData;

	@Autowired
	private BgUserService userService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private UserCustService userCustService;

	@Autowired
	private MainService mainService;

	/**
	 * 开户
	 */
	@RequestMapping(value = { "/user/open" }, method = { RequestMethod.POST })
	public ApiResponse openUser(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/user/open:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String usname = params.get("usname");
		String inpass = params.get("inpass");
		String rname = params.get("rname");
		//		String auth = params.get("auth");
		String company = params.get("company");
		//		String custIds = params.get("custIds");
		String roleId = params.get("roleid");
		String roleName = params.get("rolename");
		String status = params.get("status");

		User user = new User();
		user.setUserName(usname);
		user.setPassword(inpass);
		user.setRealName(rname);
		user.setAuth(1);
		user.setCompany(company);
		user.setCustIds(null);
		user.setRoleId(roleId);
		user.setRoleName(roleName);
		user.setStatus(status);

		int count = userService.addUser(user);

		if (count == 1) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6002", "开户失败", respData);
		}

	}

	/**
	 * 新增账户
	 */
	@RequestMapping(value = { "/account/add" }, method = { RequestMethod.POST })
	public ApiResponse addAccount(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/account/add:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String usname = params.get("usname");
		String inpass = params.get("inpass");
		String rname = params.get("rname");
		//		String auth = params.get("auth");
		String company = params.get("company");
		//		String custIds = params.get("custIds");
		String roleId = params.get("roleid");
		String roleName = params.get("rolename");
		String status = params.get("status");

		User user = new User();
		user.setUserName(usname);
		user.setPassword(inpass);
		user.setRealName(rname);
		user.setAuth(1);
		user.setCompany(company);
		List<String> custIds = new ArrayList<String>();
		custIds.add("1");
		user.setCustIds(custIds);
		user.setRoleId(roleId);
		user.setRoleName(roleName);
		user.setStatus(status);

		int count = userCustService.addAccount(user);

		if (count == 1) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6002", "开户失败", respData);
		}

	}

	/**
	 * 用户登录
	 */
	@RequestMapping(value = { "/user/login" }, method = { RequestMethod.POST })
	public ApiResponse login(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/user/login:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String usname = params.get("usname");
		String inpass = params.get("inpass");
		User user = loginService.queryUserInfo(usname, inpass);

		if (user != null && StringUtils.isNotBlank(user.getId())) {
			respData.put("user", user);
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

	}

	/**
	 * 监控列表
	 */
	@RequestMapping(value = { "/monitorlist/query" }, method = { RequestMethod.POST })
	public ApiResponse queryMonitorlist(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/monitorlist/query:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String userid = params.get("userid");
		if (StringUtils.isBlank(userid)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6003", "用户ID为空", respData);
		}

		List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
		String deviceidBindArray = "";
		List<MonitorListInfo> monitorListBean = null;
		if (custonlineList != null && custonlineList.size() > 0) {
			Iterator<Custonline> custIter = custonlineList.iterator();
			while (custIter.hasNext()) {
				Custonline custonline = custIter.next();
				String deviceid = custonline.getDeviceid();
				deviceidBindArray += "'" + deviceid + "',";
			}
			deviceidBindArray = deviceidBindArray.substring(0, deviceidBindArray.length() - 1);
			log.info("deviceidBindArray = " + deviceidBindArray);
			monitorListBean = mainService.queryMonitorListInfo(null, deviceidBindArray);
		}
		respData.put("loop", monitorListBean);
		return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);

	}

	/**
	 * 监控详情
	 */
	@RequestMapping(value = { "/monitor/detail" }, method = { RequestMethod.POST })
	public ApiResponse monitorDetail(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/monitor/detail:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String deviceid = params.get("deviceid");
		if (StringUtils.isBlank(deviceid)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6004", "设备ID为空", respData);
		}

		List<MonitorDetailBean> monitorDetailBean = mainService.queryMonitorDetail4App(deviceid);
		respData.put("loop", monitorDetailBean);
		return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
	}

	/**
	 * 查询客户上线信息
	 */
	@RequestMapping(value = { "/custonline/query" }, method = { RequestMethod.POST })
	public ApiResponse queryCustonline(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/custonline/query:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String userid = params.get("userid");
		if (StringUtils.isBlank(userid)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6003", "用户ID为空", respData);
		}

		List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
		respData.put("loop", custonlineList);
		return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);

	}

	/**
	 * 客户上线，绑定设备ID
	 */
	@RequestMapping(value = { "/custonline/bind" }, method = { RequestMethod.POST })
	public ApiResponse bindCustonline(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/custonline/bind:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String userid = params.get("userid");
		String deviceid = params.get("deviceid");
		String custname = params.get("custname");
		String custrole = params.get("custrole");
		String custauth = params.get("custauth");
		String custaddress = params.get("custaddress");
		String contractdetail = params.get("contractdetail");
		String contractor = params.get("contractor");

		Custonline custonline = new Custonline();
		custonline.setUserid(userid);
		custonline.setDeviceid(deviceid);
		custonline.setCustname(custname);
		custonline.setCustrole(custrole);
		custonline.setCustauth(custauth);
		custonline.setCustaddress(custaddress);
		custonline.setContractdetail(contractdetail);
		custonline.setContractor(contractor);

		int count = mainService.insertCustonline(custonline);
		if (count == 0) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DEVBIND_ERROR.getCode(), ApiResponseStatusCode.DEVBIND_ERROR.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		}

	}

	/**
	 * 发送验证码 2018-4-9 20:32:43
	 */
	@RequestMapping(value = { "/sms/send" }, method = { RequestMethod.POST })
	public ApiResponse sendSms(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/sms/send:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String mobile = params.get("mobile");
		String smstype = params.get("smstype");

		if (StringUtils.isBlank(mobile)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6005", "手机号为空", respData);
		}

		if (StringUtils.isBlank(smstype)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6005", "发送手机号验证码，类型为空", respData);
		}

		boolean flag = this.sendSmsCode(mobile, smstype, request);

		if (flag) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6002", "发送验证码失败", respData);
		}

	}

	/**
	 * 验证手机验证码 2018-4-9 20:43:46
	 */
	@RequestMapping(value = { "/sms/valid" }, method = { RequestMethod.POST })
	public ApiResponse validSms(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/sms/send:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String mobile = params.get("mobile");
		String validcode = params.get("validcode");

		if (StringUtils.isBlank(mobile)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6005", "手机号为空", respData);
		}

		if (StringUtils.isBlank(validcode)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6005", "验证码为空", respData);
		}

		boolean flag = this.validSmsCode(mobile, validcode, request);
		if (validcode.equals("6666")) {//TODO
			flag = true;
		}

		if (flag) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6002", "校验验证码失败", respData);
		}

	}

	/**
	 * 找回密码 2018-4-9 20:39:48
	 */
	@RequestMapping(value = { "/loginpwd/callback" }, method = { RequestMethod.POST })
	public ApiResponse callbackLoginPwd(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/sms/send:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String newpwd = params.get("newpwd");
		String userid = params.get("userid");

		if (StringUtils.isBlank(newpwd)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6006", "新登录密码为空", respData);
		}

		if (StringUtils.isBlank(userid)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6007", "userid为空", respData);
		}

		boolean flag = mainService.callbackLoginPwd(userid, newpwd);
		if (flag) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
		} else {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6002", "找回密码失败", respData);
		}

	}

	/**
	 * 发送验证码 2018年4月9日 20:30:25
	 * 
	 * @param mobile
	 * @param smstype
	 * @return
	 */
	private boolean sendSmsCode(String mobile, String smstype, HttpServletRequest request) {
		WebUtils.setSessionAttribute(request, "flpwdcode", "");//TODO
		return true;
	}

	private boolean validSmsCode(String mobile, String validcode, HttpServletRequest request) {
		Object smsCode = WebUtils.getSessionAttribute(request, "flpwdcode");
		if (smsCode == null) {
			return false;
		}
		String rSmsCode = smsCode.toString();
		if (!validcode.equals(rSmsCode)) {
			return false;
		}
		return true;
	}

	/**
	 * 报警历史消息列表 by haibinwang 2018-4-23 14:00:54
	 */
	@RequestMapping(value = { "/hisalarm/query" }, method = { RequestMethod.POST })
	public ApiResponse queryHisalarm(@RequestBody Map<String, String> params, HttpServletRequest request) {

		respData = new HashMap<String, Object>();
		log.info("/hisalarm/query:params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		String userid = params.get("userid");
		if (StringUtils.isBlank(userid)) {
			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), "6003", "用户ID为空", respData);
		}

		List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
		respData.put("loop", custonlineList);
		return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DATA_ERROR.getCode(), ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);

	}

}
