package com.tianmu.manage.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tianmu.manage.domain.Platform;
import com.tianmu.manage.service.PlatformService;

@Controller
@RequestMapping("platform")
public class PlatformController {
	
	@Autowired
	private PlatformService platformService;
	
	
    /**
     * 展示列表
     * @return
     */
    @RequestMapping(value = "list")
    public ModelAndView getEquipment() {
    	List<Platform> platformList = platformService.getPlayformList();
        return new ModelAndView("/manage/list_platform","platformList",platformList);
    }
    
    /**
     * 跳转充值页面
     * @param id
     * @return
     */
    @RequestMapping(value = "update")
    public ModelAndView updatePlatform(String id) {
    	Platform platform = platformService.getPlatformById(Integer.parseInt(id));
        //返回ModelAndView
        ModelAndView md = new ModelAndView();
        md.setViewName("/manage/update_platform");
        md.addObject("platform",platform);
        return md;
    }
    
    @RequestMapping(value = "save")
    public String savePlatform(Platform platform, String id) {
        if (id == null || "".equals(id)) {        	
        	platformService.addPlatform(platform);
        } else {
        	platformService.updatePlatform(platform, Integer.parseInt(id));
        }
        
        return "redirect:/platform/list";
    }
    
    @RequestMapping(value = "getPlatform")
    @ResponseBody
    public String getPlatformOne() {
    	Platform platform = platformService.getPlatformOne() ;
        return platform.getName();
    }
    
    

}
