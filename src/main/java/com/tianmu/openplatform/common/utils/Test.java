package com.tianmu.openplatform.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {

	public static void main(String[] args) throws Exception {
		// 180318154043
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date ss = sdf.parse("180318154043");
		System.out.println(sdf2.format(ss));
	}

}
