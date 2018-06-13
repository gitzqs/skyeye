package com.tianmu.openplatform.web;

import com.tianmu.openplatform.common.ApiResponse;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.common.ResponseUtil;
import com.tianmu.openplatform.common.enums.ApiResponseStatusCode;
import com.tianmu.openplatform.domain.Area;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.service.AreaService;
import com.tianmu.openplatform.service.MainService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SystemSetingController {

	/**
	 * 根据用户信息查询,得到用户设备信息列表
	 */
	@RequestMapping(value = "/acctmanage/query", method = RequestMethod.GET)
	public ModelAndView queryAcctInfo(HttpServletRequest request) {
		log.info("/acct/manage");
		String retPageUrl = "/system-setting";
		// try {
		// Object useridObj = WebUtils.getSessionAttribute(request,
		// ConstantUtil.USERID);
		// if (useridObj != null) {
		// String userid = (String) useridObj;
		// List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
		// return new ModelAndView(retPageUrl, "custonlineList", custonlineList);
		// }
		// } catch (Exception e) {
		// log.error("queryCustonlineInfo error:", e);
		// }
		// return new ModelAndView(ConstantUtil.ERROR_PAGE);
		request.setAttribute("fhFlag", request.getParameter("fh"));
		return new ModelAndView(retPageUrl);
	}

	// /**
	// * 根据用户信息查询, 得到用户设备信息列表
	// */
	// @RequestMapping(value = "/custonline/query", method = RequestMethod.GET)
	// public ModelAndView queryCustonlineInfo(HttpServletRequest request) {
	// log.info("/custonline/query");
	// String retPageUrl = "/custonline";
	// try {
	// Object useridObj = WebUtils.getSessionAttribute(request, ConstantUtil.USERID);
	// if (useridObj != null) {
	// String userid = (String) useridObj;
	// List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
	// return new ModelAndView(retPageUrl, "custonlineList", custonlineList);
	// }
	// } catch (Exception e) {
	// log.error("queryCustonlineInfo error:", e);
	// }
	// return new ModelAndView(ConstantUtil.ERROR_PAGE);
	// }

	/**
	 * 根据用户信息查询, 得到用户设备信息列表
	 */
	@RequestMapping(value = "/syssetting/custonline/query", method = RequestMethod.GET)
	public ModelAndView queryCustonlineInfo(HttpServletRequest request) {
		log.info("/syssetting/custonline/query");
		String retPageUrl = "/custonlineList";
		try {
			Object useridObj = WebUtils.getSessionAttribute(request, ConstantUtil.USERID);
			if (useridObj != null) {
				String userid = (String) useridObj;
				List<Custonline> custonlineList = mainService.queryCustonlineInfo(userid);
				return new ModelAndView(retPageUrl, "custonlineList", custonlineList);
			}
		} catch (Exception e) {
			log.error("queryCustonlineInfo error:", e);
		}
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/**
	 * 跳转到设备与客户绑定页面
	 */
	@RequestMapping(value = "/custonline/addInit", method = RequestMethod.GET)
	public ModelAndView custonlineAddInit(HttpServletRequest request,String id) {
		log.info("/custonline/addInit");
        Custonline custonline = new Custonline();
        ModelAndView md = new ModelAndView();
        if (null != id && !"".equals(id)) {
            //修改操作
            custonline = mainService.queryCustonlineById(id);
			if (custonline.getCityId() != null && custonline.getCityId() != 0) {
                List<Area> cityList = areaService.getAreaList(custonline.getProvinceId());
                md.addObject("cityList",cityList);
            }
            if (custonline.getAreaId() != null && custonline.getAreaId() != 0) {
                List<Area> areaList = areaService.getAreaList(custonline.getCityId());
                md.addObject("areaList",areaList);
            }
        }
        //省级下拉列表
        List<Area> provinceList = areaService.getAreaList(0);
        //返回ModelAndView
        md.setViewName("/customer-add-from");
        md.addObject("custonline",custonline);
        md.addObject("provinceList",provinceList);
		return md;
	}

	/**
	 * 设备与客户绑定
	 */
	@RequestMapping(value = "/custonline/add", method = RequestMethod.POST)
	public @ResponseBody ApiResponse custonlineAdd(HttpServletRequest request, Custonline custonline) {
		try {
			Object useridObj = WebUtils.getSessionAttribute(request, ConstantUtil.USERID);
			if (useridObj != null) {
				String userid = (String) useridObj;
				custonline.setUserid(userid);
			}
			//保存地理坐标(默认保存区县级坐标，如果为空则保存市级坐标)
			Integer areaId = custonline.getAreaId();
			if (areaId == null) {
				areaId = custonline.getCityId();
			}
			Area area = areaService.queryById(areaId);
			custonline.setMarker(area.getMarker());
            int count = 0;
            if (custonline != null && custonline.getId() != null && !"".equals(custonline.getId())) {
                count = mainService.updateCustonlineInfo(custonline);
            }else {
               count = mainService.insertCustonline(custonline);
            }
            if (count == 0) {
				return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.DEVBIND_ERROR.getCode(), ApiResponseStatusCode.DEVBIND_ERROR.getMessage(), respData);
			} else {
				return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.BODYSUCCESS.getCode(), ApiResponseStatusCode.BODYSUCCESS.getMessage(), respData);
			}
		} catch (Exception e) {
			log.error("custonlineAdd error:", e);
		}
		return ResponseUtil.buildResponse(ApiResponseStatusCode.HEADERSUCCESS.getCode(), ApiResponseStatusCode.HEADERSUCCESS.getMessage(), ApiResponseStatusCode.ERROR.getCode(), ApiResponseStatusCode.ERROR.getMessage(), respData);
	}

	/**
	 * 根据用户信息查询,得到用户设备信息列表
	 */
	@RequestMapping(value = "/custonline/modify", method = RequestMethod.GET)
	public ModelAndView sysSeting(HttpServletRequest request) {
		log.info("/custonline/modify");
		String retPageUrl = "/dataMonitoring-list";
		try {
			// String username = WebUtils.getSessionAttribute(request, ConstantUtil.USERNAME) + "";
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

	private final Logger log = LoggerFactory.getLogger(getClass());

	private Map<String, Object> respData = new HashMap<String, Object>();

	@Autowired
	private MainService mainService;
	@Autowired
	private AreaService areaService;

}
