package com.tianmu.openplatform.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class CommonUtil {

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

	public static String createOrderId() {
		String dateStr = sdf.format(new Date());
		int hashCodeV = UUID.randomUUID().toString().hashCode();
		if (hashCodeV < 0) {// 有可能是负数
			hashCodeV = -hashCodeV;
		}
		String orderId = dateStr + String.format("%015d", hashCodeV);// 0 代表前面补充0 15代表长度为15 ,d 代表参数为正数型
		System.out.println(orderId);
		return orderId;
	}

	public static void main(String[] args) {
		for (int i = 0; i < 100; i++) {
			CommonUtil.createOrderId();
		}
	}

}
