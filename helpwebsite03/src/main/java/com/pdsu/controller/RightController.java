package com.pdsu.controller;

import com.pdsu.bean.Admin;
import com.pdsu.bean.Student;
import com.pdsu.service.PoorInfoService;
import com.pdsu.service.RightService;
import com.pdsu.utils.HealthyDispose;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 权限设置控制类
 */
@Controller
public class RightController {
    // 自动注入服务层对象
    @Autowired
    @Qualifier("rightService")
    RightService rightService;

    // 初始化pageSize
     public Integer pageSize = 20;


    /**************************************处理页面请求*************************************************/

    /**
     * 初始化学生和管理员权限
     * @param model
     * @return
     */
    @RequestMapping(value="rightInit.do")
    public String perInit(Model model){
        this.pageSize = pageSize;

        // 1.调用服务层方法
        PageHelp<Admin> pageAdmins = rightService.selectAll(1,pageSize);
        PageHelp<Student> pageStudents= rightService.selectAllStu(1,pageSize);

        // 2.将数据添加到model作用域
        model.addAttribute("pageAdmins",pageAdmins.getList());
        model.addAttribute("pageStudents",pageStudents.getList());

        return "right";
    }


    /**
     * 添加一个管理员
     * @param aname
     * @param apass
     * @param college
     * @param grade
     * @param auth
     * @param mv
     * @return
     */
    @PostMapping(value = "addAdmin.do")
    public ModelAndView addAdmin(String aname,String apass,String college,String grade,int auth,ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        // 1. 根据输入信息创建管理员
        Admin admin = new Admin(aname,apass,college,grade,auth);

        // 2.调用服务层方法
        rightService.AddAdmin(admin);

        // 3.提交完毕之后，将页面跳转到家属情况
        mv.setViewName("redirect:right.jsp");
        System.out.println("------------------------管理员信息已经录入--------------------------------");
        return mv;
    }

}
