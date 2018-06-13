package com.tianmu.openplatform.db;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.openplatform.domain.BgMovement;

@Mapper
public interface LTMapper {

	@Select("select count(1) from deviceinfo where deviceid=#{deviceid} ")
	int query_businessRecordCount(@Param("deviceid") String deviceId);

	//	@Insert("insert into business_his (deviceid, devname, type, cmd, msgid, datatype, usr, pwd, ver,timestamp, bdata) values (#{deviceid}, #{devname}, #{type}, #{cmd}, #{msgid}, #{datatype}, #{usr}, #{pwd}, #{ver}, #{timestamp}, #{bdata})")
	//	void insert_business_his(@Param("deviceid") String deviceid, @Param("devname") String devname, @Param("type") String type, @Param("cmd") String cmd, @Param("msgid") String msgid,
	//			@Param("datatype") String datatype, @Param("usr") String usr, @Param("pwd") String pwd, @Param("ver") String ver, @Param("timestamp") String timestamp,
	//			@Param("bdata") String bdata);
	//
	//	@Insert("insert into business (deviceid, devname, type, cmd, msgid, datatype, usr, pwd, ver,timestamp, bdata) values (#{deviceid}, #{devname}, #{type}, #{cmd}, #{msgid}, #{datatype}, #{usr}, #{pwd}, #{ver}, #{timestamp}, #{bdata})")
	//	void insert_business(@Param("deviceid") String deviceid, @Param("devname") String devname, @Param("type") String type, @Param("cmd") String cmd, @Param("msgid") String msgid,
	//			@Param("datatype") String datatype, @Param("usr") String usr, @Param("pwd") String pwd, @Param("ver") String ver, @Param("timestamp") String timestamp, @Param("bdata") String bdata);
	//
	//	@Update("update business set devname=#{devname}, type=#{type}, cmd=#{cmd}, msgid=#{msgid}, datatype=#{datatype}, usr=#{usr}, pwd=#{pwd}, ver=#{ver}, timestamp=#{timestamp}, bdata=#{bdata} where deviceid=#{deviceid}")
	//	void update_business(@Param("devname") String devname, @Param("type") String type, @Param("cmd") String cmd, @Param("msgid") String msgid, @Param("datatype") String datatype,
	//			@Param("usr") String usr, @Param("pwd") String pwd, @Param("ver") String ver, @Param("timestamp") String timestamp, @Param("bdata") String bdata, @Param("deviceid") String deviceid);

	@Insert("insert into deviceinfo (deviceid, devname, type, cmd, msgid, datatype, usr, pwd, ver,timestamp, cgyw, cgyl, ckwd, ckyl, hjwd, rqbj1, rqbj2, rqbj3,rqbj4, cyfzt, jyfzt, zyfzt, lljwd, lljyl, lljssll, lljljll, icksyl, ickljcz,ickczl) values (#{deviceid}, #{devname}, #{type}, #{cmd}, #{msgid}, #{datatype}, #{usr}, #{pwd}, #{ver}, #{timestamp}, #{cgyw}, #{cgyl}, #{ckwd}, #{ckyl}, #{hjwd}, #{rqbj1}, #{rqbj2}, #{rqbj3}, #{rqbj4}, #{cyfzt}, #{jyfzt}, #{zyfzt}, #{lljwd}, #{lljyl}, #{lljssll}, #{lljljll}, #{icksyl}, #{ickljcz}, #{ickczl})")
	void insert_business(@Param("deviceid") String deviceid, @Param("devname") String devname, @Param("type") String type, @Param("cmd") String cmd, @Param("msgid") String msgid,
			@Param("datatype") String datatype, @Param("usr") String usr, @Param("pwd") String pwd, @Param("ver") String ver, @Param("timestamp") String timestamp, @Param("cgyw") String cgyw,
			@Param("cgyl") String cgyl, @Param("ckwd") String ckwd, @Param("ckyl") String ckyl, @Param("hjwd") String hjwd, @Param("rqbj1") String rqbj1, @Param("rqbj2") String rqbj2,
			@Param("rqbj3") String rqbj3, @Param("rqbj4") String rqbj4, @Param("cyfzt") String cyfzt, @Param("jyfzt") String jyfzt, @Param("zyfzt") String zyfzt, @Param("lljwd") String lljwd,
			@Param("lljyl") String lljyl, @Param("lljssll") String lljssll, @Param("lljljll") String lljljll, @Param("icksyl") String icksyl, @Param("ickljcz") String ickljcz,
			@Param("ickczl") String ickczl);

	@Update("update deviceinfo set devname=#{devname}, type=#{type}, cmd=#{cmd}, msgid=#{msgid}, datatype=#{datatype}, usr=#{usr}, pwd=#{pwd}, ver=#{ver}, timestamp=#{timestamp},cgyw=#{cgyw}, cgyl=#{cgyl}, ckwd=#{ckwd}, ckyl=#{ckyl}, hjwd=#{hjwd}, rqbj1=#{rqbj1}, rqbj2=#{rqbj2}, rqbj3=#{rqbj3}, rqbj4=#{rqbj4} , cyfzt=#{cyfzt}, jyfzt=#{jyfzt}, zyfzt=#{zyfzt}, lljwd=#{lljwd}, lljyl=#{lljyl}, lljssll=#{lljssll}, lljljll=#{lljljll}, icksyl=#{icksyl}, ickljcz=#{ickljcz} , ickczl=#{ickczl} where deviceid=#{deviceid}")
	void update_business(@Param("deviceid") String deviceid, @Param("devname") String devname, @Param("type") String type, @Param("cmd") String cmd, @Param("msgid") String msgid,
			@Param("datatype") String datatype, @Param("usr") String usr, @Param("pwd") String pwd, @Param("ver") String ver, @Param("timestamp") String timestamp, @Param("cgyw") String cgyw,
			@Param("cgyl") String cgyl, @Param("ckwd") String ckwd, @Param("ckyl") String ckyl, @Param("hjwd") String hjwd, @Param("rqbj1") String rqbj1, @Param("rqbj2") String rqbj2,
			@Param("rqbj3") String rqbj3, @Param("rqbj4") String rqbj4, @Param("cyfzt") String cyfzt, @Param("jyfzt") String jyfzt, @Param("zyfzt") String zyfzt, @Param("lljwd") String lljwd,
			@Param("lljyl") String lljyl, @Param("lljssll") String lljssll, @Param("lljljll") String lljljll, @Param("icksyl") String icksyl, @Param("ickljcz") String ickljcz,
			@Param("ickczl") String ickczl);

	@Insert("insert into deviceinfo_his (deviceid, devname, type, cmd, msgid, datatype, usr, pwd, ver,timestamp, cgyw, cgyl, ckwd, ckyl, hjwd, rqbj1, rqbj2, rqbj3,rqbj4, cyfzt, jyfzt, zyfzt, lljwd, lljyl, lljssll, lljljll, icksyl, ickljcz,ickczl) values (#{deviceid}, #{devname}, #{type}, #{cmd}, #{msgid}, #{datatype}, #{usr}, #{pwd}, #{ver}, #{timestamp}, #{cgyw}, #{cgyl}, #{ckwd}, #{ckyl}, #{hjwd}, #{rqbj1}, #{rqbj2}, #{rqbj3}, #{rqbj4}, #{cyfzt}, #{jyfzt}, #{zyfzt}, #{lljwd}, #{lljyl}, #{lljssll}, #{lljljll}, #{icksyl}, #{ickljcz}, #{ickczl})")
	void insert_business_his(@Param("deviceid") String deviceid, @Param("devname") String devname, @Param("type") String type, @Param("cmd") String cmd, @Param("msgid") String msgid,
			@Param("datatype") String datatype, @Param("usr") String usr, @Param("pwd") String pwd, @Param("ver") String ver, @Param("timestamp") String timestamp, @Param("cgyw") String cgyw,
			@Param("cgyl") String cgyl, @Param("ckwd") String ckwd, @Param("ckyl") String ckyl, @Param("hjwd") String hjwd, @Param("rqbj1") String rqbj1, @Param("rqbj2") String rqbj2,
			@Param("rqbj3") String rqbj3, @Param("rqbj4") String rqbj4, @Param("cyfzt") String cyfzt, @Param("jyfzt") String jyfzt, @Param("zyfzt") String zyfzt, @Param("lljwd") String lljwd,
			@Param("lljyl") String lljyl, @Param("lljssll") String lljssll, @Param("lljljll") String lljljll, @Param("icksyl") String icksyl, @Param("ickljcz") String ickljcz,
			@Param("ickczl") String ickczl);
	
	@Select("select b.*, c.id as moduleid, c.moduleName as moduleName from custonline a inner join bg_movement b on a.id = b.custonlineid inner join bg_module c on b.fieldname = c.fieldname where a.deviceid = #{deviceid}")
	List<BgMovement> getAlarmSettings(@Param("deviceid") String deviceid);
	
	@Insert("INSERT INTO bg_history_report(custonlineid, modulName, datainfor, description) VALUES (#{custonlineid}, #{modulName}, #{datainfor}, #{description})")
	void addBgHistoryReport(@Param("custonlineid") int custonlineid, @Param("modulName") String modulName, 
			@Param("datainfor") String datainfor, @Param("description") String description);

}
