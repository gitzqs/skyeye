package com.tianmu.manage.web;

import com.tianmu.manage.domain.Company;
import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.service.CompanyService;
import com.tianmu.manage.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("company")
public class CompanyController {
    @Autowired
    private CompanyService companyService;
    @Autowired
    private EquipmentService equipmentService;

    @RequestMapping(value = "list")
    public ModelAndView getCompany() {
        List<Company> companyList = companyService.getCompany();
        return new ModelAndView("/manage/list_company","companyList",companyList);
    }

    @RequestMapping(value = "update")
    public ModelAndView updateCompany(String id) {
        Company company = new Company();
        if (null != id && !"".equals(id)) {
            company = companyService.getCompanyById(Integer.parseInt(id));
        }
        return new ModelAndView("/manage/update_company", "company", company);
    }

    @RequestMapping(value = "save")
    public String saveCompany(Company company, String id) {
        if (id == null || "".equals(id)) {
            companyService.addCompany(company);
        } else {
            companyService.updateCompany(company,Integer.parseInt(id));
        }
        return "redirect:/company/list";
    }
}
