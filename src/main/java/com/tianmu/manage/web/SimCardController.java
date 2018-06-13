package com.tianmu.manage.web;

import com.tianmu.manage.domain.Role;
import com.tianmu.manage.domain.SimCard;
import com.tianmu.manage.service.RoleService;
import com.tianmu.manage.service.SimCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("simCard")
public class SimCardController {
    @Autowired
    private SimCardService simCardService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public ModelAndView getRoles(HttpServletRequest request) {
        List<SimCard> simList = simCardService.getSimCard();
        return new ModelAndView("/manage/list_simCard","simList",simList);
    }

    @RequestMapping(value = "update")
    public ModelAndView updateSimCard(String id) {
        SimCard simCard = new SimCard();
        if (id != null && !"".equals(id)) {
            simCard = simCardService.getSimCardById(Integer.parseInt(id));
        }
        return new ModelAndView("/manage/update_simCard","simCard",simCard);
    }

    @RequestMapping(value = "save")
    public String saveSimCard(SimCard simCard, String id) {
        if (id == null || "".equals(id)) {//新增保存
            simCardService.addSimCard(simCard);
        } else {
            simCardService.updateSimCard(simCard, Integer.parseInt(id));
        }
        return "redirect:/simCard/list";
    }
}
