package com.tianmu.openplatform.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class RandomUtil {

	public static Random random = new Random();

	public static String getRandom(int length) {
		StringBuilder ret = new StringBuilder();
		for (int i = 0; i < length; i++) {
			boolean isChar = ((RandomUtil.random.nextInt(2) % 2) == 0);// 输出字母还是数字
			if (isChar) { // 字符串
				int choice = (RandomUtil.random.nextInt(2) % 2) == 0 ? 65 : 97; // 取得大写字母还是小写字母
				ret.append((char) (choice + RandomUtil.random.nextInt(26)));
			} else { // 数字
				ret.append(Integer.toString(RandomUtil.random.nextInt(10)));
			}
		}
		return ret.toString();
	}

	public static String createSerial() {
		String date = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
		return date + getRandom(6);
	}

	public static void main(String[] args) {
		System.out.println(RandomUtil.createSerial());
	}

}
