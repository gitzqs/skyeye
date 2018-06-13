package com.tianmu.openplatform.common.enums;

public enum DataCodeEnum {

	CGYW("cgyw", "储罐液位", "mmH2O"), // 已使用
	CGYL("cgyl", "储罐压力", "kPa"), // 已使用
	CKWD("ckwd", "出口温度", "摄氏度"), // 已使用
	CKYL("ckyl", "出口压力", "kPa"), // 已使用
	HJWD("hjwd", "环境温度", "摄氏度"), // 已使用
	RQBJ1("rqbj1", "燃气报警", ""), // 已使用
	RQBJ2("rqbj2", "燃气报警", ""), // 已使用
	RQBJ3("rqbj3", "燃气报警", ""), // 已使用
	RQBJ4("rqbj4", "燃气报警", ""), // 已使用
	CYFZT("cyfzt", "出液阀状态", ""), // 已使用
	JYFZT("jyfzt", "进液阀状态", ""), // 已使用
	ZYFZT("zyfzt", "增压阀状态", ""), // 已使用
	LLJWD("lljwd", "流量计温度", "摄氏度"), // 已使用
	LLJYL("lljyl", "流量计压力", "kPa"), // 已使用
	LLJSSLL("lljssll", "流量计瞬时流量", "m3/s"), // 已使用
	LLJLJLL("lljljll", "流量计累计流量", "m3"), // 已使用
	ICKSYL("icksyl", "ic卡剩余量", "m3"), // 已使用
	ICKLJCZ("ickljcz", "ic卡累计充值", "m3"), // 已使用
	ICKCZL("ickczl", "ic卡充值量", "m3"); // 已使用

	//成员变量
	private String index;
	private String name;
	private String unit;

	//构造方法
	private DataCodeEnum(String index, String name, String unit) {
		this.index = index;
		this.name = name;
		this.unit = unit;
	}

	//普通方法
	public static String getName(String key) {
		for (DataCodeEnum c : DataCodeEnum.values()) {
			if (c.getIndex().equals(key)) {
				return c.name;
			}
		}
		return "";
	}

	//单位的单元
	public static String getUnit(String key) {
		for (DataCodeEnum c : DataCodeEnum.values()) {
			if (c.getIndex().equals(key)) {
				return c.unit;
			}
		}
		return "";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIndex() {
		return index;
	}

	public void setIndex(String index) {
		this.index = index;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

}