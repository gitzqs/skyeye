package com.tianmu.manage.web;

import com.tianmu.manage.domain.Role;
import com.tianmu.manage.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public ModelAndView getRoles(HttpServletRequest request) {
        List<Role> roleList = roleService.getRole();
        return new ModelAndView("/manage/list_role","roleList",roleList);
    }

    @RequestMapping(value = "update")
    public ModelAndView updateRole(String id) {
        Role role = new Role();
        if (id != null && !"".equals(id)) {
            role = roleService.getRoleById(Integer.parseInt(id));
        }
        return new ModelAndView("/manage/update_role","role",role);
    }
    @RequestMapping(value = "save")
    public String saveRole(Role role, String id) {
        if (id == null || "".equals(id)) {//新增保存
            roleService.addRole(role);
        } else {
            roleService.updateRole(role, Integer.parseInt(id));
        }
        return "redirect:/role/list";
    }
}
