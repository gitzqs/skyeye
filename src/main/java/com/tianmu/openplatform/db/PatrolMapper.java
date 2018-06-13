package com.tianmu.openplatform.db;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.domain.User;
import com.tianmu.openplatform.domain.Patrol;
import com.tianmu.openplatform.domain.PatrolPos;

@Mapper
public interface PatrolMapper {
	@Insert("INSERT INTO bg_patrol(taskname,userid,status,posttime) VALUES(#{patrol.taskName},#{userid}" +
            ",#{patrol.status},#{patrol.postTime})")
    public int addPatrol(@Param("patrol") Patrol patrol, @Param("userid") int userid);
	
	@Select("select count(*) from bg_patrol")
	public int getPatrolCount();
	
	@Select("select * from bg_patrol limit #{start}, #{pageSize}")
	public List<Patrol> getPatrol(@Param("start") int start, @Param("pageSize") int pageSize);
	
	@Update("UPDATE bg_patrol set `begintime` = '${beginTime}', status = ${status}  where id = #{id}")
	public int updateStartTime(@Param("beginTime") String startTime, @Param("status") int status, @Param("id") int id);
	 
	@Update("UPDATE bg_patrol set `endtime` = '${endTime}', status = ${status}  where id = #{id}") 
	public int updateEndTime(@Param("endTime") String endTime, @Param("status") int status, @Param("id") int id);
	
	@Select("select * from bg_patrol where userid = #{userid} and status = 0")
	public List<Patrol> getPendingPatrol(@Param("userid") int userid);
	
	@Select("select * from bg_patrol_pos where taskid = #{taskid} and type = 2")
	public PatrolPos getEndPatrolPos(@Param("taskid") int taskid);
	
	@Select("select * from bg_patrol_pos where taskid = #{taskid}")
	public List<PatrolPos> getPatrolPos(@Param("taskid") int taskid);
	
	@Insert("INSERT INTO bg_patrol_pos(taskid,type,position) VALUES(#{patrolPos.taskId},#{patrolPos.type}" +
            ",#{patrolPos.position})")
	public int addPatrolPos(@Param("patrol") PatrolPos patrolPos);
}
