package com.tianmu.manage.web;

import com.tianmu.manage.domain.Role;
import com.tianmu.manage.domain.User;
import com.tianmu.manage.service.BgUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private BgUserService userService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public ModelAndView getUser(HttpServletRequest request) {
        List<User> userList = userService.getUser();
        return new ModelAndView("/manage/list_user","userList",userList);
    }

    @RequestMapping(value = "update")
    public ModelAndView updateUser(String id) {
        User user = new User();
        if (id != null && !"".equals(id)) {
            user = userService.getUserById(Integer.parseInt(id));
        }
        return new ModelAndView("/manage/update_user","user",user);
    }

    @RequestMapping(value = "save")
    public String saveUser(User user, String id) {
        if (id == null || "".equals(id)) {//新增保存
            userService.addUser(user);
        } else {
            userService.updateUser(user, Integer.parseInt(id));
        }
        return "redirect:/user/list";
    }
}
