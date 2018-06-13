package com.tianmu.openplatform.common;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.alibaba.fastjson.JSONObject;
import com.tianmu.openplatform.common.utils.RandomUtil;

/**
 * 处理api返回的通用工具类
 */
public class ResponseUtil {

	private static final Log log = LogFactory.getLog(ResponseUtil.class);

	//	public static ApiResponse buildResponse(boolean succ, Map<String, String> respData) {
	//		ApiResponse tApiResponse = new ApiResponse();
	//		if (succ) {
	//			tApiResponse.setRespCode(ApiResponseStatusCode.SUCCESS.getCode());
	//			tApiResponse.setRespMsg(ApiResponseStatusCode.SUCCESS.getMessage());
	//			tApiResponse.setRespData(respData);
	//		} else {
	//			tApiResponse.setRespCode(ApiResponseStatusCode.ERROR.getCode());
	//			tApiResponse.setRespMsg(ApiResponseStatusCode.ERROR.getMessage());
	//		}
	//		return tApiResponse;
	//	}

	//	public static ApiResponse buildResponse(String bodyCode, String bodyMsg) {
	//
	//		ApiResponse tApiResponse = new ApiResponse();
	//
	//		Map<String, String> respData = new HashMap<String, String>();
	//		respData.put(ConstantUtil.Result.CODE, bodyCode);
	//		respData.put(ConstantUtil.Result.MSG, bodyMsg);
	//		respData.put(ConstantUtil.Result.TRANSNO, RandomUtil.createSerial());
	//		tApiResponse.setRespData(respData);
	//
	//		log.info("apiResponse ===>>> " + JSONObject.toJSONString(tApiResponse));
	//
	//		return tApiResponse;
	//	}

	public static ApiResponse buildResponse(String headerCode, String headerMsg, String bodyCode, String bodyMsg, Map<String, Object> respData) {
		
		ApiResponse tApiResponse = new ApiResponse();

		tApiResponse.setHeaderCode(headerCode);
		tApiResponse.setHeaderMsg(headerMsg);
		respData.put(ConstantUtil.Result.CODE, bodyCode);
		respData.put(ConstantUtil.Result.MSG, bodyMsg);
		respData.put(ConstantUtil.Result.TRANSNO, RandomUtil.createSerial());
		tApiResponse.setRespData(respData);

		log.info("apiResponse ===>>> " + JSONObject.toJSONString(tApiResponse));

		return tApiResponse;
	}

}
