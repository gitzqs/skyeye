package com.tianmu.openplatform.web;

import com.tianmu.manage.domain.SimCard;
import com.tianmu.manage.service.SimCardService;
import com.tianmu.openplatform.domain.Area;
import com.tianmu.openplatform.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("area")
public class AreaController {
    @Autowired
    private AreaService areaService;

    @RequestMapping(value = "query")
    @ResponseBody
    public List<Area> updateSimCard(Integer parentId) {
        return areaService.getAreaList(parentId);
    }

}
