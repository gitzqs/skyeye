package com.tianmu.openplatform.common.utils;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.tianmu.openplatform.common.RequestHeader;

public class ParserUtil {

	private static final Log log = LogFactory.getLog(ParserUtil.class);

	@SuppressWarnings("unchecked")
	public static RequestHeader parseHeader(Map<String, String> params) {

		RequestHeader requestHeader = null;
		try {
			// 解析报文头
			log.info("解析报文头开始...");
			String sysDataStr = params.get("sys");
			if (StringUtils.isBlank(sysDataStr)) {
				return requestHeader;
			}
			Map<String, String> sysDataMap = JSON.parseObject(JSON.toJSON(sysDataStr).toString(), Map.class);
			log.info("sysDataMap ===>>> " + sysDataMap);
			requestHeader = JSON.parseObject(JSON.toJSON(sysDataMap).toString(), RequestHeader.class);
		} catch (Exception e) {
			log.error("parseHeader error:", e);
		}
		return requestHeader;

	}

	@SuppressWarnings("unchecked")
	public static Map<String, String> parseBody(Map<String, String> params) {

		Map<String, String> inputDataMap = null;
		try {
			// 解析报文体
			log.info("解析报文体开始...");
			String inputDataStr = params.get("input");
			inputDataMap = JSON.parseObject(JSON.toJSON(inputDataStr).toString(), Map.class);
			log.info("inputDataMap ===>>> " + inputDataMap);
		} catch (Exception e) {
			log.error("parseBody error:", e);
		}
		return inputDataMap;

	}

	public static boolean isJson(String content) {
		try {
			JSONObject.parseObject(content);
			return true;
		} catch (Exception e) {
			log.info("bad json: " + content);
			return false;
		}
	}

}
