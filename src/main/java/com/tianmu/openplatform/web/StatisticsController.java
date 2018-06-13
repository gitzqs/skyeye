package com.tianmu.openplatform.web;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.tianmu.manage.utils.DateTimeUtil;
import com.tianmu.openplatform.common.ConstantUtil;
import com.tianmu.openplatform.domain.BgModule;
import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.BgUser;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.domain.DeviceReport;
import com.tianmu.openplatform.domain.singleReport;
import com.tianmu.openplatform.service.StatisticsService;

@Controller
@RequestMapping(value = { "/statistics" })
public class StatisticsController {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private StatisticsService statisticsService;

	/*
	 * 
	 * 数据统计
	 * 
	 * @param page
	 * 
	 * @param pageSize
	 * 
	 * @param comName
	 * 
	 * @return
	 */
	@RequestMapping(value = "/datalist", method = RequestMethod.GET)
	public ModelAndView queryDatalistInfo(HttpServletRequest request) {
		log.info("/statistics/datalist 数据统计开始");
		String retPageUrl = "/statistics/report-tab1";
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
				String cusname = request.getParameter("cusname");
				if (cusname != null) {
					cusname = new String(cusname.getBytes("iso8859-1"), "utf-8");
				}
				Map<String, Object> datamap = statisticsService
						.queryDatalistInfo(Integer.parseInt(page),
								Integer.parseInt(pageSize), cusname, Integer.parseInt(useridObj.toString()));
				return new ModelAndView(retPageUrl, "datamap", datamap);
				// return new ModelAndView(retPageUrl);
			}
			log.info("/statistics/datalist 数据统计列表结束");
		} catch (Exception e) {
			log.error("datalist error:", e);
		}
		log.info("/statistics/datalist 数据统计列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/*
	 * 
	 * 数据统计
	 * 
	 * @param page
	 * 
	 * @param pageSize
	 * 
	 * @param comName
	 * 
	 * @return
	 */
	@RequestMapping(value = "/hisreportlist", method = RequestMethod.GET)
	public ModelAndView hisreportlist(HttpServletRequest request) {
		log.info("/statistics/hisreportlist 历史报警数据统计开始");
		String retPageUrl = "/statistics/report-tab2";
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
				String cusname = request.getParameter("cusname");
				if (cusname != null) {
					cusname = new String(cusname.getBytes("iso8859-1"), "utf-8");
				}
				Map<String, Object> datamap = statisticsService.hisreportlist(
						Integer.parseInt(page), Integer.parseInt(pageSize),
						cusname);
				return new ModelAndView(retPageUrl, "datamap", datamap);
				// return new ModelAndView(retPageUrl);
			}
			log.info("/statistics/datalist 历史报警数据统计列表结束");
		} catch (Exception e) {
			log.error("datalist error:", e);
		}
		log.info("/statistics/datalist 历史报警数据统计列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/*
	 * 
	 * 报警推送
	 * 
	 * @param page
	 * 
	 * @param pageSize
	 * 
	 * @param comName
	 * 
	 * @return
	 */
	@RequestMapping(value = "/pushAlarmList", method = RequestMethod.GET)
	public ModelAndView pushAlarmList(HttpServletRequest request) {
		log.info("/statistics/pushAlarmList 历史报警数据统计开始");
		String retPageUrl = "/statistics/system-setting2";
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
				/*String cusname = request.getParameter("cusname");
				if (cusname != null) {
					cusname = new String(cusname.getBytes("iso8859-1"), "utf-8");
				}
				Map<String, Object> datamap = statisticsService.pushAlarmList(
						Integer.parseInt(page), Integer.parseInt(pageSize),
						cusname);*/
				String cusid = request.getParameter("cusid");
				Map<String, Object> datamap = statisticsService.pushAlarmListByCusid(
						Integer.parseInt(page), Integer.parseInt(pageSize),
						cusid);
				return new ModelAndView(retPageUrl, "datamap", datamap);
				// return new ModelAndView(retPageUrl);
			}
			log.info("/statistics/pushAlarmList 历史报警数据统计列表结束");
		} catch (Exception e) {
			log.error("datalist error:", e);
		}
		log.info("/statistics/pushAlarmList 历史报警数据统计列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/*
	 * 
	 * 报警设置页
	 * 
	 * @param page
	 * 
	 * @param pageSize
	 * 
	 * @param comName
	 * 
	 * @return
	 */
	@RequestMapping(value = "/querypushAlarm", method = RequestMethod.GET)
	public ModelAndView querypushAlarm(HttpServletRequest request) {
		log.info("/statistics/querypushAlarm 历史报警数据统计开始");
		String retPageUrl = "/statistics/setting-alarm-set";
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
				List<BgUser> userlist = statisticsService
						.queryUserByCusId(Integer.parseInt(cusid));
				datamap.put("bgMovement", bgMovement);
				datamap.put("userlist", userlist);

				return new ModelAndView(retPageUrl, "datamap", datamap);
				// return new ModelAndView(retPageUrl);
			}
			log.info("/statistics/querypushAlarm 历史报警数据统计列表结束");
		} catch (Exception e) {
			log.error("datalist error:", e);
		}
		log.info("/statistics/querypushAlarm 历史报警数据统计列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/**
	 * 报警推送设置
	 */
	@RequestMapping(value = "/setAlarmData", method = RequestMethod.POST)
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
				String userid = request.getParameter("userid");

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

	/**
	 * 根据条件查询模块列表统计数据
	 */
	@RequestMapping(value = "/queryModuleDataByWhere", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> queryModuleDataByWhere(
			HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String fieldname = request.getParameter("fieldname");
				String cusid = request.getParameter("cusid");
				if (fieldname == null || fieldname.trim().equals("")) {
					map.put("code", 0);
					return map;
				}
				String page = request.getParameter("page");
				if (page == null || page.trim().equals("")) {
					page = "1";
				}
				String pageSize = request.getParameter("pageSize");
				if (pageSize == null || pageSize.trim().equals("")) {
					pageSize = "10";
				}
				String starttime = request.getParameter("starttime");
				String endtime = request.getParameter("endtime");
				if (starttime == null || endtime.equals("starttime")) {
					starttime = DateTimeUtil
							.formatDate(DateTimeUtil.getAddCalendar(
									Calendar.getInstance(), "DATE", -7));
				}
				if (endtime == null || endtime.equals("")) {
					endtime = DateTimeUtil.formatDate(DateTimeUtil
							.getAddCalendar(Calendar.getInstance(), "DATE", 0));
				}
				Map<String, Object> mapdata = statisticsService
						.queryModuleDataByWhere(Integer.parseInt(cusid),
								Integer.parseInt(page),
								Integer.parseInt(pageSize), fieldname,
								starttime, endtime);
				mapdata.put("code", 1);
				return mapdata;
			}

		} catch (Exception e) {
			log.error("custonlineAdd error:", e);
		}
		map.put("error", 0);
		return map;
	}

	/**
	 * 柱形统计页面
	 */
	@RequestMapping(value = "/queryGraph", method = RequestMethod.GET)
	public ModelAndView queryGraph(HttpServletRequest request) {
		log.info("/reportStatistics/list 监控列表开始");
		String retPageUrl = "/statistics/report-chart-tab1";
		try {
			String username = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERNAME) + "";
			log.info("username = {}", username);

			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);

			if (useridObj != null) {
				String custid = request.getParameter("custid");
				if (custid == null || custid.trim().equals("")) {
					return new ModelAndView(ConstantUtil.ERROR_PAGE);
				}

				Custonline custonline = statisticsService
						.queryCustonlineById(Integer.parseInt(custid));

				List<BgModule> list = statisticsService.queryBgModuleListByDeviceid(custonline.getDeviceid());
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("custonline", custonline);
				map.put("list", list);
				map.put("custid", custid);
				return new ModelAndView(retPageUrl, "map", map);
			}
			log.info("/report/list 监控列表结束");
		} catch (Exception e) {
			log.error("reportList error:", e);
		}
		log.info("/report/list 监控列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}
	
	@RequestMapping(value = "/queryCustModules", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> queryCustModules(HttpServletRequest request) {
		Object useridObj = WebUtils.getSessionAttribute(request,
				ConstantUtil.USERID);
		Map<String, Object> map = new HashMap<String, Object>();
		if (useridObj != null) {
			String custid = request.getParameter("custid");
			if (custid == null || custid.trim().equals("")) {
				map.put("code", 0);
				return map;
			}
			Custonline custonline = statisticsService
					.queryCustonlineById(Integer.parseInt(custid));
			List<BgModule> list = statisticsService.queryBgModuleListByDeviceid(custonline.getDeviceid());
			map.put("code", 1);
			map.put("modules", list);
			return map;
		}
		map.put("code", 0);
		return map;
	}

	/**
	 * 柱形统计页面
	 */
	@RequestMapping(value = "/queryGraphList", method = RequestMethod.GET)
	public ModelAndView queryGraphList(HttpServletRequest request) {
		log.info("/reportStatistics/list 监控列表开始");
		String retPageUrl = "/statistics/report-chart-tab2";
		try {
			String username = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERNAME) + "";
			log.info("username = {}", username);

			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);

			if (useridObj != null) {
				String custid = request.getParameter("custid");
				if (custid == null || custid.trim().equals("")) {
					return new ModelAndView(ConstantUtil.ERROR_PAGE);
				}

				Custonline custonline = statisticsService
						.queryCustonlineById(Integer.parseInt(custid));

				List<BgModule> list = statisticsService.queryBgModuleListByDeviceid(custonline.getDeviceid());
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("custonline", custonline);
				map.put("list", list);
				map.put("custid", custid);
				return new ModelAndView(retPageUrl, "map", map);
			}
			log.info("/report/list 监控列表结束");
		} catch (Exception e) {
			log.error("reportList error:", e);
		}
		log.info("/report/list 监控列表结束");
		return new ModelAndView(ConstantUtil.ERROR_PAGE);
	}

	/**
	 * 根据条件查询图形统计数据
	 */
	@RequestMapping(value = "/queryModuleData", method = RequestMethod.POST)
	public @ResponseBody Map queryModuleData(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String fieldName = request.getParameter("fieldname");
				String custid = request.getParameter("custid");
				if (fieldName == null || fieldName.trim().equals("")
						|| custid == null || custid.trim().equals("")) {
					map.put("code", 0);
					return map;
				}
				String starttime = request.getParameter("starttime");
				String endtime = request.getParameter("endtime");
				if(endtime==null||endtime.equals("")){
					endtime=DateTimeUtil.formatDateTime(DateTimeUtil.getAddCalendar(Calendar.getInstance(),"DATE",0));
				}
				if(starttime==null||starttime.equals("")){
					//Calendar startCal=DateTimeUtil.getCalendarByStr(endtime);
					starttime=DateTimeUtil.formatDateTime(DateTimeUtil.getAddCalendar(Calendar.getInstance(),"HOUR",-3));
				}
				int top = Integer.parseInt(request.getParameter("top"));
				List<singleReport> result = statisticsService
						.queryModuleDataOpt(fieldName, custid, starttime, endtime, top);
				map.put("code", 1);
				map.put("reportlist", result);
				return map;
			}

		} catch (Exception e) {
			log.error("custonlineAdd error:", e);
		}
		map.put("error", 0);
		return map;
	}

	/**
	 * 根据条件查询列表统计数据
	 */
	@RequestMapping(value = "/queryGraphListDataByWhere", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> queryGraphListDataByWhere(
			HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String moduleid = request.getParameter("moduleid");
				String custid = request.getParameter("custid");
				if (moduleid == null || moduleid.trim().equals("")
						|| custid == null || custid.trim().equals("")) {
					map.put("code", 0);
					return map;
				}
				String page = request.getParameter("page");
				if (page == null || page.trim().equals("")) {
					page = "1";
				}
				String pageSize = request.getParameter("pageSize");
				if (pageSize == null || pageSize.trim().equals("")) {
					pageSize = "10";
				}
				String starttime = request.getParameter("starttime");
				String endtime = request.getParameter("endtime");
				if(endtime==null||endtime.equals("")){
					endtime=DateTimeUtil.formatDate(DateTimeUtil.getAddCalendar(Calendar.getInstance(),"DATE",0));
				}
				if(starttime==null||starttime.equals("")){
					Calendar startCal=DateTimeUtil.getCalendarByStr(endtime);
					starttime=DateTimeUtil.formatDate(DateTimeUtil.getAddCalendar(startCal,"DATE",-7));
				}
				Map<String, Object> mapdata = statisticsService
						.queryGraphListDataByWhere(Integer.parseInt(page),
								Integer.parseInt(pageSize),
								Integer.parseInt(custid), moduleid, starttime,
								endtime);
				mapdata.put("code", 1);
				
				return mapdata;
			}

		} catch (Exception e) {
			log.error("custonlineAdd error:", e);
		}
		map.put("error", 0);
		return map;
	}

	/**
	 * 导出数据查询列表
	 */
	@RequestMapping(value = "/exportdata")
	public void exportLogList(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Object useridObj = WebUtils.getSessionAttribute(request,
					ConstantUtil.USERID);
			if (useridObj != null) {
				String comid = request.getParameter("comid");
				String moduleids = request.getParameter("moduleids");

				if (comid == null || comid.trim().equals("")
						|| moduleids == null || moduleids.trim().equals("")) {
					try {
						response.getWriter().print("error");
						return;
					} catch (IOException e) {
						e.printStackTrace();
					}
				} else {
					Custonline custonline = statisticsService
							.queryCustonlineById(Integer.parseInt(comid));
					String starttime = request.getParameter("starttime");
					String endtime = request.getParameter("endtime");
					if (starttime == null || endtime.equals("starttime")) {
						starttime = DateTimeUtil.formatDate(DateTimeUtil
								.getAddCalendar(Calendar.getInstance(), "DATE",
										-29));
					}
					if (endtime == null || endtime.equals("")) {
						endtime = DateTimeUtil.formatDate(DateTimeUtil
								.getAddCalendar(Calendar.getInstance(), "DATE",
										0));
					}
					// 模块查询
					List<BgModule> list = statisticsService.queryBgModuleList();
					String[] split = moduleids.split(",");
					Map<String, String> map = new HashMap<String, String>();
					for (int i = 0; i < split.length; i++) {
						if (split[i] != null && !split[i].trim().equals("")) {
							map.put(split[i].trim(), "1");
						}
					}
					for (BgModule bgModule : list) {
						String fieldname = bgModule.getFieldname();
						String moduleName = bgModule.getModuleName();
						String status = map.get(fieldname.trim());
						if (status != null && status.equals("1")) {
							map.put(fieldname, moduleName);
						}
					}

					List<Map<String, Object>> listmapdata = statisticsService
							.getExportData(custonline.getDeviceid(), starttime,
									endtime);

					HSSFWorkbook workbook = new HSSFWorkbook();
					HSSFSheet sheet = workbook.createSheet("统计");
					HSSFRow headRow = sheet.createRow(0);

					// 这是一些要导出列的标题
					int i = 0;
					for (String value : map.values()) {
						headRow.createCell(i).setCellValue(value);
						i++;
					}
					headRow.createCell(i).setCellValue("时间");
					// 要导出的数据对象集合
					if (listmapdata != null && listmapdata.size() > 0) {
						Integer num = 1;
						for (Map<String, Object> map1 : listmapdata) {
							HSSFRow dataRow = sheet.createRow(sheet
									.getLastRowNum() + 1);
							int m = 0;
							HSSFCellStyle cellStyle = workbook.createCellStyle();
							for (String key : map.keySet()) {
								this.setCellStyle(workbook,cellStyle,
										dataRow.createCell(m), map1.get(key).toString());
								m++;
							}
							Object object = map1.get("reqTime");
							DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
							String str = df.format(object);
							this.setCellStyle(workbook,cellStyle,
									dataRow.createCell(m), str);
							num++;
						}
					}
					sheet.autoSizeColumn(1, true);

					response.reset();
					response.setContentType("application/ms-excel;charset=UTF-8");
					response.setHeader("Content-Disposition",
							"attachment;filename=".concat(String
									.valueOf(URLEncoder.encode(
											custonline.getCustname()
													+ "统计数据.xls", "UTF-8"))));
					try {
						workbook.write(response.getOutputStream());
						response.getOutputStream().flush();
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						if (workbook != null) {
							workbook.close();
						}
						if (response.getOutputStream() != null) {
							response.getOutputStream().close();
						}
					}
				}
			} else {
				try {
					response.getWriter().print("error");
					return;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} catch (Exception ce) {
			ce.printStackTrace();
		}
	}

	public HSSFCell setCellStyle(HSSFWorkbook workbook,HSSFCellStyle cellStyle, HSSFCell cell,
			String value) {
		HSSFDataFormat format = workbook.createDataFormat();
		cellStyle.setDataFormat(format.getFormat("@"));
		cell.setCellStyle(cellStyle);
		cell.setCellValue(value);
		return cell;
	}
}
