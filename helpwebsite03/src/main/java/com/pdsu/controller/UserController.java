package com.pdsu.controller;

import com.pdsu.bean.User;
import com.pdsu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    /**
     * 自动注入服务层类
     */
    @Autowired
    @Qualifier("userService")
    private UserService userService;

    /**************************************处理页面请求*************************************************/

    @PostMapping(value = "login.do")
    public ModelAndView login(String username, String password, ModelAndView mv, HttpSession session) {
        System.out.println("---------用户名：" + username + "---密码：" + password + "--------");
        User user = userService.login(username, password);
        System.out.println("------------" + user + "-------------------------");
        // 判断用户是否存在
        if (user != null) {
            // 用户存在
            System.out.println("用户存在--->用户名：" + username + "---密码：" + password);
            // 将user对象设置到httpSession作用域
            session.setAttribute("user", user);
            String ident = user.getIdent();
            if ("学生".equals(ident)) {
                System.out.println("用户身份----->学生");
                // 转发页面
                mv.setView(new RedirectView("welcome.jsp"));
            } else {
                System.out.println("用户身份----->管理员");
                // 转发页面
                mv.setView(new RedirectView("manager.jsp"));
            }
        } else {
            // 登录失败
            mv.addObject("message", "用户名或者密码错误，请重新输入！");
            mv.setViewName("login");
        }
        return mv;
    };


}

