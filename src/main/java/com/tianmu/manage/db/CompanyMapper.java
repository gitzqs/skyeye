package com.tianmu.manage.db;

import com.tianmu.manage.domain.Company;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.PatchMapping;

import java.util.List;

public interface CompanyMapper {

    @Insert("INSERT INTO bg_company (companyName,address,personName,mobile) " +
            " VALUES (#{company.companyName},#{company.address},#{company.personName},#{company.mobile})")
    public int addCompany(@Param("company") Company company);

    @Delete("delete from bg_company where id=#{id}")
    public int deleteCompany(@Param("id") int id);

    @Update("update bg_company set companyName = #{company.companyName},address = #{company.address},personName = #{company.personName}, " +
            " mobile = #{company.mobile} where id = #{id}")
    public int updateCompany(@Param("company") Company company, @Param("id") int id);

    @Select("select * from bg_company where id = #{id}")
    public Company getCompanyById(@Param("id") int id);

    @Select("select * from bg_company ")
    public List<Company> getCompany();
}
