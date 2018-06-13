package com.tianmu.manage.db;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianmu.manage.domain.Equipment;

public interface EquipmentMapper {

    @Insert("INSERT INTO bg_equipment(simId,name,equipCode,companyId,saleDate,serviceDay,remainDay) VALUES(#{equipment.simCard.id},#{equipment.name}" +
            ",#{equipment.equipCode},#{equipment.company.id},#{equipment.saleDate},#{equipment.serviceDay},#{equipment.remainDay})")
    public int addEquipment(@Param("equipment") Equipment equipment);

    @Delete("delete from bg_equipment where id=#{id}")
    public int deleteEquipment(@Param("id") int id);

	@Update("update bg_equipment set simId = #{equipment.simCard.id},name = #{equipment.name}, " +
            " companyId = #{equipment.company.id},saleDate = #{equipment.saleDate},serviceDay = #{equipment.serviceDay} " +
            " ,remainDay = #{equipment.remainDay},status = #{equipment.status} where id = #{id}")
    public int updateEquipment(@Param("equipment") Equipment equipment, @Param("id") int id);

    @Select("select * from bg_equipment where id = #{id}")
    @Results({
            @Result(property = "simCard",column = "simId",one = @One(select = "com.tianmu.manage.db.SimMapper.getSimCardById")),
            @Result(property = "company",column = "companyId",one = @One(select = "com.tianmu.manage.db.CompanyMapper.getCompanyById"))
    })
    public Equipment getEquipmentById(@Param("id") int id);

    @Select("select * from bg_equipment ")
    @Results({
        @Result(property = "simCard",column = "simId",one = @One(select = "com.tianmu.manage.db.SimMapper.getSimCardById")),
        @Result(property = "company",column = "companyId",one = @One(select = "com.tianmu.manage.db.CompanyMapper.getCompanyById"))
    })
    public List<Equipment> getEquipment();
    
    @Select("select * from bg_equipment limit #{start}, #{pageSize}")
    @Results({
        @Result(property = "simCard",column = "simId",one = @One(select = "com.tianmu.manage.db.SimMapper.getSimCardById")),
        @Result(property = "company",column = "companyId",one = @One(select = "com.tianmu.manage.db.CompanyMapper.getCompanyById"))
    })
    public List<Equipment> getEquipmentByPage(@Param("start") int start, @Param("pageSize") int pageSize);
    
    @Select("select count(*) from bg_equipment")
    public int getEquipmentCount();

    @Select("select * from bg_equipment where status = #{status}")
    @Results({
            @Result(property = "simCard",column = "simId",one = @One(select = "com.tianmu.manage.db.SimMapper.getSimCardById")),
            @Result(property = "company",column = "companyId",one = @One(select = "com.tianmu.manage.db.CompanyMapper.getCompanyById"))
    })
    public List<Equipment> getEquipmentByStatus(@Param("status") int status);
    
    @Update("update bg_equipment set status = #{status} where id = #{id}")
    public int SetEquipStatus(@Param("id") int id, @Param("status") int status);
}
