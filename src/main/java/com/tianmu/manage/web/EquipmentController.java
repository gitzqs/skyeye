package com.tianmu.manage.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.domain.SimCard;
import com.tianmu.manage.service.EquipmentService;
import com.tianmu.manage.service.SimCardService;
import com.tianmu.manage.utils.StatusUtil;

@Controller
@RequestMapping("equipment")
public class EquipmentController {
    @Autowired
    private EquipmentService equipmentService;
    @Autowired
    private SimCardService simCardService;

    @RequestMapping(value = "list")
    public ModelAndView getEquipment() {
        List<Equipment> equipmentList = equipmentService.getEquipment();
        return new ModelAndView("/manage/list_equipment","equipmentList",equipmentList);
    }

    @RequestMapping(value = "update")
    public ModelAndView updateEquipment(String id) {
        Equipment equipment = new Equipment();
        List<SimCard> simList = simCardService.getSimCardByStatus(StatusUtil.STATUS_NORMAL);
        if (null != id && !"".equals(id)) {//修改操作
            equipment = equipmentService.getEquipmentById(Integer.parseInt(id));
            //将分配给自己的sim卡信息加入集合用于页面回显
            if (equipment.getSimCard()!=null) {
                simList.add(equipment.getSimCard());
            }
        }
        //返回ModelAndView
        ModelAndView md = new ModelAndView();
        md.setViewName("/manage/update_equipment");
        md.addObject("equipment",equipment);
        md.addObject("simList",simList);
        return md;
    }

    @RequestMapping(value = "save")
    public String saveEquipment(Equipment equipment, String id) {
        if (id == null || "".equals(id)) {
            equipmentService.addEquipment(equipment);
        } else {
            equipmentService.updateEquipment(equipment,Integer.parseInt(id));
        }
        return "redirect:/equipment/list";
    }

}
