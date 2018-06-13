package com.tianmu.openplatform.db;

import com.tianmu.openplatform.domain.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface MainMapper {

	@Select("SELECT d.deviceid as deviceid, d.devname as devname, d.reqtime as reqtime, c.contractor as contractor, c.custname as custname, c.contractdetail as contractdetail, c.onlinetime as onlinetime, c.custaddress as custaddress, ( SELECT TIMESTAMPDIFF(MINUTE, d.reqtime, NOW()) ) AS devstatus FROM deviceinfo d, custonline c WHERE d.deviceid = c.deviceid and  c.deviceid in (${deviceid})")
	List<MonitorListInfo> queryMonitorListInfo(@Param("deviceid") String deviceid);

	@Select("select d.*, c.custname as custname from deviceinfo d, custonline c where d.deviceid=#{deviceid} and d.deviceid=c.deviceid")
	MonitorInfo queryMonitorDetailInfo(@Param("deviceid") String deviceid);

	@Select("select * from custonline where userid=#{userid}")
	List<Custonline> queryCustonlineInfo(String userid);

	@Select("SELECT id,custname,deviceid,contractor,contractdetail,custaddress,onlinetime,custrole,custauth,userid," +
			"companyid as companyId,province_id as provinceId,city_id as cityId,area_id as areaId,marker  from custonline " +
			"WHERE id = #{id} ")
	Custonline queryCustonlineById(String id);
	
	@Select("select * from custonline where userid=#{userid} limit #{startIndex}, #{pageSize}")
	List<Custonline> queryPagedCustonlineInfo(@Param("userid") String userid, @Param("startIndex") int startIndex,
			@Param("pageSize") int pageSize);
	
	@Select("select count(*) from custonline where userid=#{userid}")
	int queryCustonlineCount(String userid);

	@Insert("insert into custonline (custname, deviceid, contractor, contractdetail, custaddress, custrole, custauth, userid,province_id,city_id,area_id,marker) values (#{custname}, #{deviceid}, #{contractor}, #{contractdetail}, #{custaddress}, #{custrole}, #{custauth}, #{userid}, #{provinceId}, #{cityId}, #{areaId}, #{marker})")
	int insertCustonlineInfo(@Param("custname") String custname, @Param("deviceid") String deviceid, @Param("contractor") String contractor, @Param("contractdetail") String contractdetail, @Param("custaddress") String custaddress, @Param("custrole") String custrole,
			@Param("custauth") String custauth, @Param("userid") String userid, @Param("provinceId") Integer provinceId, @Param("cityId") Integer cityId
            , @Param("areaId") Integer areaId, @Param("marker") String marker);

    @Update("UPDATE `custonline` SET `custname`=#{custonline.custname}, `deviceid`=#{custonline.deviceid}, `contractor`=#{custonline.contractor}, `contractdetail`=#{custonline.contractdetail}, `custaddress`=#{custonline.custaddress}, `custrole`=#{custonline.custrole}, `custauth`=#{custonline.custauth}, `userid`=#{custonline.userid}, `province_id`=#{custonline.provinceId}, `city_id`=#{custonline.cityId}, `area_id`=#{custonline.areaId}, `marker`=#{custonline.marker} WHERE `id`=#{id}")
    int updateCustonlineInfo(@Param("custonline") Custonline custonline, @Param("id") String id);

	@Select("select d.devId, d.custname, d.yesterdayDosage, f.todayDosage from (select c.deviceid as devId, b.custname, (max(c.lljljll) - min(c.lljljll)) as yesterdayDosage from bg_user a inner join custonline b on a.companyid = b.companyid inner join deviceinfo_his c on b.deviceid = c.deviceid where a.id = #{userid} and c.reqTime >= #{yestStartTime} and c.reqTime <= #{yestEndTime} group by c.deviceid, b.custname order by yesterdayDosage desc limit #{startIndex}, #{pageSize}) d inner join (select e.deviceid as devId, (max(e.lljljll) - min(e.lljljll)) as todayDosage from deviceinfo_his e where e.reqTime >= #{todayStartTime} and e.reqTime <= #{todayEndTime} group by e.deviceid order by todayDosage desc ) f on d.devId = f.devId")
	List<DosageRank> getPagedRankDosage(@Param("userid") int userid, @Param("yestStartTime") String yestStartTime, @Param("yestEndTime") String yestEndTime,
			@Param("startIndex") int startIndex, @Param("pageSize") int pageSize, @Param("todayStartTime") String todayStartTime, @Param("todayEndTime") String todayEndTime);
	
	@Select("select d.devId, d.custname, d.yesterdayDosage, f.todayDosage from (select c.deviceid as devId, b.custname, (max(c.lljljll) - min(c.lljljll)) as yesterdayDosage from bg_user a inner join custonline b on a.companyid = b.companyid inner join deviceinfo_his c on b.deviceid = c.deviceid where a.id = #{userid} and c.reqTime >= #{yestStartTime} and c.reqTime <= #{yestEndTime} group by c.deviceid, b.custname order by yesterdayDosage desc) d inner join (select e.deviceid as devId, (max(e.lljljll) - min(e.lljljll)) as todayDosage from deviceinfo_his e where e.reqTime >= #{todayStartTime} and e.reqTime <= #{todayEndTime} group by e.deviceid order by todayDosage desc ) f on d.devId = f.devId")
	List<DosageRank> getTotalRankDosage(@Param("userid") int userid, @Param("yestStartTime") String yestStartTime, @Param("yestEndTime") String yestEndTime,
		    @Param("todayStartTime") String todayStartTime, @Param("todayEndTime") String todayEndTime);
	
	@Select("select b.id from bg_user a inner join custonline b on a.companyid = b.companyid where a.id = #{userid} limit #{startIndex}, #{pageSize}")
	List<Integer> querypagedCusts(@Param("userid") int userid, @Param("startIndex") int startIndex,
			@Param("pageSize") int pageSize);
	
	@Select("select count(DISTINCT(b.deviceid)) from bg_user a inner join custonline b on a.companyid = b.companyid inner join deviceinfo_his c on b.deviceid = c.deviceid where a.id = #{userid}")
	int getCustDosageCount(@Param("userid") int userid);
	
	@Select("select c.*, b.custname from custonline b inner join bg_history_report c on b.id = c.custonlineid where c.custonlineid = #{custid} order by creattime desc limit 1")
	BgHistoryReport getCustNewestAlarm(@Param("custid") int custid);
	
	@Select("select c.*, b.custname from bg_user a inner join custonline b on a.companyid = b.companyid inner join bg_history_report c on b.id = c.custonlineid where a.id = #{userid} order by c.creattime desc limit #{startIndex}, #{pageSize}")
	List<BgHistoryReport> getAlarmList(@Param("userid") int userid, @Param("startIndex") int startIndex, @Param("pageSize") int pageSize);
	
	@Select("select b.steelphone from bg_module a INNER JOIN bg_movement b on a.fieldname = b.fieldname where a.moduleName = #{moduleName} and b.custonlineid = #{custonlineid}")
	String getAlarmSetting(@Param("moduleName") String moduleName, @Param("custonlineid") int custonlineid);
	
	@Select("select * from deviceinfo_his where deviceid=#{deviceid}")
	List<MonitorInfo> getDevDetail(@Param("deviceid") String deviceid);
	
	@Select("select * from custonline where deviceid in (${deviceid})")
	List<Custonline> getCustomer(@Param("deviceid") String deviceid);

}
