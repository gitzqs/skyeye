package com.tianmu.openplatform.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	private static final String F1 = "yyMMddHHmmss";

	private static final String F2 = "yyyy-MM-dd HH:mm:ss";

	private static final SimpleDateFormat sdf = new SimpleDateFormat(F1);

	private static final SimpleDateFormat sdf2 = new SimpleDateFormat(F2);

	public static String formatDate(String sourceDateStr) throws Exception {
		Date sourceDate = sdf.parse(sourceDateStr);
		return sdf2.format(sourceDate);
	}

	public static void main(String[] args) throws Exception {
		System.out.println(DateUtil.formatDate("180318154043"));
	}

}
