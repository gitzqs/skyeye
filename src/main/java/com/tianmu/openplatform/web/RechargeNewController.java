package com.tianmu.openplatform.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.tianmu.openplatform.common.ConstantUtil;

@RestController
public class RechargeNewController {

	/**
	 * 跳转到充值列表 2018-4-17 11:15:41
	 */
	@RequestMapping(value = { "/recharge/list/query" }, method = { RequestMethod.GET })
	public ModelAndView queryRechargeList(HttpServletRequest request) {

		log.info("/recharge/list/query");

		String retPageUrl = "/recharge-list";
		try {
			return new ModelAndView(retPageUrl);
		} catch (Exception e) {
			log.error("queryRechargeList error:", e);
		}
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	private final Logger log = LoggerFactory.getLogger(getClass());

	//	@Autowired
	//	private MainService mainService;

}
