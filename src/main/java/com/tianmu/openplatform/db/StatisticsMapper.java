package com.tianmu.openplatform.db;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.tianmu.openplatform.domain.BgCompany;
import com.tianmu.openplatform.domain.BgHistoryReport;
import com.tianmu.openplatform.domain.BgModule;
import com.tianmu.openplatform.domain.BgMovement;
import com.tianmu.openplatform.domain.BgUser;
import com.tianmu.openplatform.domain.Custonline;
import com.tianmu.openplatform.domain.MonitorInfo;

@Mapper
public interface StatisticsMapper {

    
	//根据客户名检索，分页获取客户
    @Select("select * from custonline where custname like #{name} limit #{startPage},#{pageSize}")
    List<Custonline> queryDatalistInfoByWhere(@Param("name")String name, @Param("startPage")Integer startPage, @Param("pageSize")Integer pageSize);

    //根据客户名检索，获取客户数量
    @Select("select count(1) from custonline where custname like #{name} ")
    Integer queryDatalistInfoCountByWhere(@Param("name")String name);

    //分页获取客户
    @Select("select * from custonline where companyid = #{companyid} limit #{startPage},#{pageSize}")
    List<Custonline> queryDatalistInfo(@Param("startPage")Integer startPage,@Param("pageSize") Integer pageSize,
    		@Param("companyid")String companyid);

    //获取客户总数
    @Select("select count(1) from custonline where companyid = #{companyid}")
    Integer queryDatalistInfoCount(@Param("companyid")String companyid);

    //获取所有模块
    @Select("select * from bg_module ")
    List<BgModule> queryModuleList();
    
    @Select("select id from bg_module where fieldname = #{fieldname}")
    Integer queryModuleId(@Param("fieldname")String fieldname);

    @Select("SELECT r.*,c.custname from bg_history_report r LEFT JOIN custonline c ON r.custonlineid = c.id where c.custname like #{name} limit #{startPage},#{pageSize}")
    List<BgHistoryReport> hisreportlistByWhere(@Param("name")String name, @Param("startPage")Integer startPage, @Param("pageSize")int pageSize);

    @Select("SELECT count(1) from bg_history_report r LEFT JOIN custonline c ON r.custonlineid = c.id where c.custname like #{name} ")
    Integer hisreportlistCountByWhere(@Param("name")String name);

    @Select("SELECT r.*,c.custname from bg_history_report r LEFT JOIN custonline c ON r.custonlineid = c.id  limit #{startPage},#{pageSize}")
    List<BgHistoryReport> hisreportlist(@Param("startPage")Integer startPage, @Param("pageSize")int pageSize);

    @Select("SELECT count(1) from bg_history_report r LEFT JOIN custonline c ON r.custonlineid = c.id ")
    Integer hisreportlistCount();

    @Select("SELECT b.*,m.moduleName,c.id as cusid,m.id as moduleid from custonline c  LEFT JOIN bg_module m on 1=1 LEFT JOIN bg_movement b on (m.id=b.fieldname and b.custonlineid = c.id) where c.custname like #{name} limit #{startPage},#{pageSize}")
	List<BgMovement> pushAlarmListByWhere(@Param("name")String name, @Param("startPage")Integer startPage,@Param("pageSize")int pageSize);

    @Select("SELECT count(1) from custonline c  LEFT JOIN bg_module m on 1=1 LEFT JOIN bg_movement b on (m.id=b.fieldname and b.custonlineid = c.id) where c.custname like #{name} ")
	Integer pushAlarmListCountByWhere(@Param("name")String name);

    @Select("SELECT b.*,m.moduleName,c.id as cusid,m.id as moduleid from custonline c  LEFT JOIN bg_module m on 1=1 LEFT JOIN bg_movement b on (m.id=b.fieldname and b.custonlineid = c.id) limit #{startPage},#{pageSize}")
	List<BgMovement> pushAlarmList(@Param("startPage")Integer startPage, @Param("pageSize")int pageSize);

    @Select("SELECT count(1)  from custonline c  LEFT JOIN bg_module m on 1=1 LEFT JOIN bg_movement b on (m.id=b.fieldname and b.custonlineid = c.id)")
	Integer pushAlarmListCount();

    @Select("SELECT b.*,m.moduleName,c.id as cusid,m.fieldname as moduleid,c.custname from custonline c LEFT JOIN bg_module m on 1=1  LEFT JOIN bg_movement b on m.fieldname = b.fieldname where c.id=#{cusid} and m.id=#{moduleid}")
	BgMovement querypushAlarm(@Param("cusid")int cusid, @Param("moduleid")int moduleid);

    
    @Select("SELECT u.* from bg_user u LEFT JOIN bg_user_cust c on c.userid = u.id  where c.custid =#{cusid}")
    List<BgUser> queryUserByCusId(@Param("cusid")int cusid);
    
    @Select("select b.* from custonline a INNER JOIN bg_user b on a.userid = b.id where a.id = #{cusid}")
    List<BgUser> getUsersByCustId(@Param("cusid")int cusid);

    @Select("insert into bg_movement (fieldname,custonlineid,maxlimit,minlimit,steelphone,username,userid) values (#{fieldname},#{custonlineid},#{maxlimit},#{minlimit},#{steelphone},#{username}, #{userid})")
    void addAlarmData(@Param("fieldname")String fieldname,@Param("custonlineid")Integer custonlineid,@Param("maxlimit") double maxlimit,@Param("minlimit") double minlimit,
    		@Param("steelphone")String steelphone, @Param("username")String username, @Param("userid")String userid);
    
    @Select("update bg_movement set maxlimit=#{maxlimit}, minlimit=#{minlimit}, steelphone=#{steelphone},username=#{username}, userid=#{userid} WHERE id=#{id}")
    void updateAlarmData(@Param("id")int id,@Param("maxlimit")double maxlimit,
			@Param("minlimit")double minlimit, @Param("steelphone")String steelphone, @Param("username")String username, @Param("userid")String userid);

    @Select("select * from bg_user where id= #{ids} ")
    BgUser queryUserById(@Param("ids")String userid);

    @Select("SELECT * from custonline where id=#{custid}")
    Custonline queryCustonlineById(@Param("custid")int custid);

    @Select("select * from deviceinfo_his where deviceid=#{deviceid} and reqTime>=#{starttime} and reqTime<=#{endtime}")
    List<MonitorInfo> queryModuleData(@Param("deviceid")String devId,@Param("starttime")String starttime, @Param("endtime")String endtime);
    
    @Select("select * from deviceinfo_his where deviceid=#{deviceid} and reqTime>=#{starttime} and reqTime<=#{endtime} limit #{top}")
    List<MonitorInfo> queryModuleDataOpt(@Param("deviceid")String devId,@Param("starttime")String starttime, @Param("endtime")String endtime, @Param("top")int top);

    @Select("select * from deviceinfo_his where deviceid=#{deviceid} and reqTime>=#{starttime} and reqTime<=#{endtime} order by reqTime desc limit #{startPage},#{pageSize}")
    List<Map> queryGraphListDataByWhere(@Param("deviceid")String deviceid, @Param("startPage")Integer startPage, @Param("pageSize")int pageSize,
            @Param("starttime")String starttime, @Param("endtime") String endtime);

    @Select("select * from deviceinfo_his where deviceid=#{deviceid} and reqTime>=#{starttime} and reqTime<=#{endtime}")
    List<Map<String,Object>> getExportData(@Param("deviceid")String deviceid, @Param("starttime")String starttime,@Param("endtime") String endtime);

    @Select("select count(1) from deviceinfo_his where deviceid=#{deviceid} and reqTime>=#{starttime} and reqTime<=#{endtime} ")
	Integer queryGraphListDataCountByWhere(@Param("deviceid")String deviceid, @Param("startPage")Integer startPage,
			@Param("pageSize")int pageSize, @Param("starttime")String starttime, @Param("endtime")String endtime);

    @Select("SELECT * from deviceinfo where deviceid=#{deviceid}")
	Map<String, Object> queryDeviceinfoByDeviceid(@Param("deviceid")String deviceid);

    @Select("SELECT b.*,m.moduleName,c.id as cusid,m.id as moduleid from custonline c  LEFT JOIN bg_module m on 1=1 LEFT JOIN bg_movement b on (m.fieldname=b.fieldname and b.custonlineid = c.id) where c.id=#{id} limit #{startPage},#{pageSize}")
	List<BgMovement> pushAlarmListByCusId(@Param("id")int id, @Param("startPage")Integer startPage,
			@Param("pageSize")int pageSize);

    @Select("SELECT count(1) from custonline c  LEFT JOIN bg_module m on 1=1 LEFT JOIN bg_movement b on (m.id=b.fieldname and b.custonlineid = c.id) where c.id=#{id} ")
	Integer pushAlarmListCountByCusId(@Param("id")int id);

    
    @Select("select * from custonline")
    List<Custonline> queryCustonlineDatalist();

   // @Select("select * from deviceinfo_his  where  deviceid= #{deviceid} and createtime>=#{starttime} and createtime<=#{endtime} limit #{startPage},#{pageSize}")
   // List<Map> queryModuleDataByWhere(@Param("deviceid")String deviceid,@Param("startPage")Integer startPage,@Param("pageSize") int pageSize,
//	        @Param("starttime")String starttime, @Param("endtime")String endtime);
    
    @Select("SELECT * from deviceinfo where deviceid=#{deviceid}")
	MonitorInfo queryDeviceinfoByDevId(@Param("deviceid")String deviceid);
    
}
