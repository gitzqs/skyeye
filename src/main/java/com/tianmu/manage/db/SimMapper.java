package com.tianmu.manage.db;

import com.tianmu.manage.domain.Role;
import com.tianmu.manage.domain.SimCard;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * sim卡
 */
public interface SimMapper {

    @Insert("INSERT INTO `bg_simcard`(cardNumber) VALUES(#{simCard.cardNumber})")
    public int addSimCard(@Param("simCard") SimCard simCard);

    @Delete("delete from bg_simcard where id=#{id}")
    public int deleteSimCard(@Param("id") int id);

    @Update("update bg_simcard set cardNumber = #{simCard.cardNumber}, status = #{simCard.status} where id = #{id}")
    public int updateSimCard(@Param("simCard") SimCard simCard, @Param("id") int id);

    @Select("select * from bg_simcard where id = #{id}")
    public SimCard getSimCardById(@Param("id") int id);

    @Select("select * from bg_simcard")
    public List<SimCard> getSimCard();

    @Select("select * from bg_simcard where status = #{status}")
    public List<SimCard> getSimCardByStatus(@Param("status") String status);
}
