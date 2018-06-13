package com.tianmu.openplatform.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.common.ApiResponse;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.common.ResponseUtil;
import com.tianmu.openplatform.common.enums.ApiResponseStatusCode;
import com.tianmu.openplatform.service.LoginService;

@RestController
@RequestMapping(value = { "/user" })
public class LoginController {

	/**
	 * 跳转模拟数据页面 by haibinwang 2018-2-5 15:43:27
	 */
	@RequestMapping(value = "/test/case", method = RequestMethod.GET)
	public ModelAndView gotoJspPage(HttpServletRequest request) {
		log.info("ModelAndView /test/case");
		return new ModelAndView(ConstantUtil.USERMANAGER_PAGE);
	}

	/**
	 * 跳转到登陆页面 by haibinwang 2017年11月1日 10:46
	 */
	@RequestMapping(value = "/loginInit", method = RequestMethod.GET)
	public ModelAndView gotoJspPage(HttpServletRequest request, Model model) {
		log.info("ModelAndView userLogin");
		/*
		动态一次获取平台名称的最优方案：
		request.getSession().setAttribute("PLATFORM", "测试平台名称");
		<c:set var="PLATFORM__" value="${sessionScope.PLATFORM}"/> 
		${PLATFORM__}
		*/
		return new ModelAndView(ConstantUtil.LOGIN_PAGE);
	}

	/**
	 * 登录:校验用户是否存在
	 */
	@RequestMapping(value = { "/login" }, method = { RequestMethod.POST })
	public ApiResponse login(@RequestBody Map<String, String> params, HttpServletRequest request) {

		log.info("params ===>>> " + params);
		if (params == null) {
			return ResponseUtil.buildResponse(
					ApiResponseStatusCode.HEADERSUCCESS.getCode(), 
					ApiResponseStatusCode.HEADERSUCCESS.getMessage(), 
					ApiResponseStatusCode.DATA_ERROR.getCode(), 
					ApiResponseStatusCode.DATA_ERROR.getMessage(), respData);
		}

		//
		//		RequestHeader requestHeader = ParserUtil.parseHeader(params);
		//		if (requestHeader == null) {
		//			return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADER_ERROR.getCode(), ApiResponseStatusCode.HEADER_ERROR.getMessage());
		//		}
		//
		//		String frtseq = requestHeader.getFrtseq();
		//		if (StringUtils.isBlank(frtseq)) {
		//			return ResponseUtil.buildResponse(ApiResponseStatusCode.FRTSEQ_ISBLANK.getCode(), ApiResponseStatusCode.FRTSEQ_ISBLANK.getMessage());
		//		}
		//
		//		String prcscd = requestHeader.getPrcscd();
		//		if (StringUtils.isBlank(prcscd)) {
		//			return ResponseUtil.buildResponse(ApiResponseStatusCode.SERVTP_ISBLANK.getCode(), ApiResponseStatusCode.SERVTP_ISBLANK.getMessage());
		//		}
		//
		//		if (!InterfUtil.ONLINECODE.getSourceCode().equals(prcscd)) {
		//			return ResponseUtil.buildResponse(ApiResponseStatusCode.SERVTP_ERROR.getCode(), ApiResponseStatusCode.SERVTP_ERROR.getMessage());
		//		}
		//
		//		Map<String, String> inputDataMap = ParserUtil.parseBody(params);
		//		if (inputDataMap == null) {
		//			return ResponseUtil.buildResponse(ApiResponseStatusCode.BODY_ERROR.getCode(), ApiResponseStatusCode.BODY_ERROR.getMessage());
		//		}

		String usname = params.get("usname");
		String inpass = params.get("inpass");
		Map<String, String> respMap = loginService.queryUserCount(usname, inpass);
		
		

		log.info("userLoginRespMap = " + respMap);

		User user = loginService.queryUserInfo(usname, inpass);
		if (user != null) {
			WebUtils.setSessionAttribute(request, ConstantUtil.USERID, user.getId());
			WebUtils.setSessionAttribute(request, ConstantUtil.USERNAME, usname);
			WebUtils.setSessionAttribute(request, ConstantUtil.PASSWORD, inpass);
		}
		return ResponseUtil.buildResponse(
				ApiResponseStatusCode.HEADERSUCCESS.getCode(), 
				ApiResponseStatusCode.HEADERSUCCESS.getMessage(), 
				respMap.get(ConstantUtil.Result.CODE), 
				respMap.get(ConstantUtil.Result.MSG), respData);

	}

	/**
	 * 登陆成功后主界面
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView(ConstantUtil.INDEX_PAGE);
	}

	private final Logger log = LoggerFactory.getLogger(getClass());

	private Map<String, Object> respData = new HashMap<String, Object>();

	@Autowired
	private LoginService loginService;

}
