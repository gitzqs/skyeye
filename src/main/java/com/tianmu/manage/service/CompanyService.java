package com.tianmu.manage.service;

import com.tianmu.manage.db.CompanyMapper;
import com.tianmu.manage.domain.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyService {
    @Autowired
    private CompanyMapper companyMapper;

    public int addCompany(Company company) {
        return companyMapper.addCompany(company);
    }

    public int deleteCompany(int id) {
        return companyMapper.deleteCompany(id);
    }

    public int updateCompany(Company company, int id) {
        return companyMapper.updateCompany(company, id);
    }

    public Company getCompanyById(int id) {
        return companyMapper.getCompanyById(id);
    }

    public List<Company> getCompany() {
        return companyMapper.getCompany();
    }

}
