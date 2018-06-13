package com.tianmu.manage.web;

import com.sun.xml.internal.bind.v2.TODO;
import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.domain.SimCard;
import com.tianmu.manage.service.EquipmentService;
import com.tianmu.manage.service.SimCardService;
import com.tianmu.manage.utils.StatusUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 设备充值
 */
@Controller
@RequestMapping("recharge")
public class RechargeController {
    @Autowired
    private EquipmentService equipmentService;
    @Autowired
    private SimCardService simCardService;

    /**
     * 展示列表
     * @return
     */
    @RequestMapping(value = "list")
    public ModelAndView getEquipment() {
        List<Equipment> equipmentList = equipmentService.getEquipmentByStatus(1);
        return new ModelAndView("/manage/list_recharge","equipmentList",equipmentList);
    }

    /**
     * 跳转充值页面
     * @param id
     * @return
     */
    @RequestMapping(value = "update")
    public ModelAndView updateEquipment(String id) {
        Equipment equipment = equipmentService.getEquipmentById(Integer.parseInt(id));
        //返回ModelAndView
        ModelAndView md = new ModelAndView();
        md.setViewName("/manage/update_recharge");
        md.addObject("equipment",equipment);
        return md;
    }

    /**
     * 保存充值记录
     * @param serviceDay
     * @param id
     * @return
     */
    @RequestMapping(value = "save")
    public String saveEquipment(String  serviceDay, String id) {
        Equipment equip = equipmentService.getEquipmentById(Integer.parseInt(id));
        if (equip!=null) {
            equip.setServiceDay(serviceDay);
            String remainDay = equip.getRemainDay() == null ? "0" : equip.getRemainDay();
            remainDay = String.valueOf(Integer.parseInt(remainDay) + Integer.parseInt(serviceDay));
            equip.setRemainDay(remainDay);
            equipmentService.updateEquipment(equip, Integer.parseInt(id));
            //todo:充值记录插入流水表

        }
        return "redirect:/recharge/list";
    }

}
