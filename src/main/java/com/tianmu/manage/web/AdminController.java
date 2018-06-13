package com.tianmu.manage.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 测试：用于进入系统
 */
@Controller
public class AdminController {

    /**
     * 跳转登录页
     * @return
     */
    @RequestMapping(value = "/manage")
    public ModelAndView goLogin() {
        return new ModelAndView("/manage/login");
    }

    /**
     * 跳转首页
     * @return
     */
    @RequestMapping(value = "/manage/doLogin")
    public ModelAndView doLogin() {
        return new ModelAndView("/manage/home");
    }
}
