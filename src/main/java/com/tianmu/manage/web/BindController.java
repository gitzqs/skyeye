package com.tianmu.manage.web;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.tianmu.manage.domain.Company;
import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.domain.SimCard;
import com.tianmu.manage.service.CompanyService;
import com.tianmu.manage.service.EquipmentService;
import com.tianmu.manage.utils.StatusUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

/**
 * 设备绑定
 */
@Controller
@RequestMapping("bind")
public class BindController {
    @Autowired
    private CompanyService companyService;
    @Autowired
    private EquipmentService equipmentService;

    /**
     * 设备绑定列表页
     * @return
     */
    @RequestMapping(value = "list")
    public ModelAndView getBindList() {
        List<Company> companyList = companyService.getCompany();
        ModelAndView md = new ModelAndView();
        md.setViewName("/manage/list_binding");
        md.addObject("companyList", companyList);
        return md;
    }
    /*
     * 获取正常状态的设备列表
     */
    @RequestMapping(value = "getEquipList")
    @ResponseBody
    public JSONArray getEquipList() {
        List<Equipment> equipList = equipmentService.getEquipmentByStatus(0);
        JSONArray list = (JSONArray) JSON.toJSON(equipList);
        return list;
    }
    /*
     * 绑定
     */
    @RequestMapping(value = "doBind")
    @ResponseBody
    public String doBind(String companyId,String equipId) {
        Company company = companyService.getCompanyById(Integer.parseInt(companyId));
        Equipment equipment = equipmentService.getEquipmentById(Integer.parseInt(equipId));
        equipment.setCompany(company);
        equipment.setStatus(StatusUtil.STATUS_USED);
        equipment.setSaleDate(new Date());
        int i = equipmentService.updateEquipment(equipment, Integer.parseInt(equipment.getId()));
        String result = "success";
        if (i <= 0) {
            result = "fail";
        }
        return result;
    }
}
