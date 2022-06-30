package com.pdsu.controller;

import com.pdsu.bean.Admin;
import com.pdsu.bean.Relatives;
import com.pdsu.bean.Student;
import com.pdsu.service.PoorInfoService;
import com.pdsu.utils.HealthyDispose;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PoorInfoController {
    // 自动注入服务层对象
    @Autowired
    @Qualifier("poorInfoService")
    PoorInfoService poorInfoService;

    HealthyDispose healthyDispose;
    int pageSize =20;


    /**************************************处理页面请求*************************************************/

    /**
     * 录入学生信息
     * @param college
     * @param major
     * @param lesson
     * @param grade
     * @param sname
     * @param ssex
     * @param haddress
     * @param sid
     * @param sident
     * @param stel
     * @param fNum
     * @param fTel
     * @param posCode
     * @param semail
     * @param mv
     * @return
     */
    @PostMapping(value = "poorInfo.do")
    public ModelAndView poorInfo(String college,String major,String lesson, String grade,String sname,String ssex,String haddress,int sid,String sident,String stel,int fNum, String fTel,int posCode,String semail, ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        Student student = new Student(college,major,lesson,grade,sname,ssex,haddress,sid,sident,stel,fNum,fTel,posCode,semail);
        poorInfoService.addStuInfo(student);
        // 提交完毕之后，将页面跳转到家属情况
        mv.setViewName("help.jsp#p-two");
        System.out.println("------------------------学生信息已经录入--------------------------------");
        return mv;
    }


    /**
     *
     * @param rname
     * @param rage
     * @param rident
     * @param ryEarn
     * @param healthy
     * @param mv
     * @return
     */
    @PostMapping(value = "relaInfo.do")
    public ModelAndView relaInfo(String rname,int rage,String rident,int ryEarn,String healthy, ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        // 1. 处理健康情况- 将填入字符健康情况 - 转换成相应的整型数据
        healthyDispose = new HealthyDispose(healthy);
        int healthyNum = healthyDispose.getHealthy();

        // 2. 根据信息创建实体
        Relatives relative = new Relatives(rname,rage,rident,ryEarn,healthyNum);

        // 3.调用服务层方法
        poorInfoService.addRelInfo(relative);
        System.out.println("------------------------亲属信息已经录入--------------------------------");

        // 4. 跳转视图41
        mv.setViewName("help.jsp#p-three");

        return mv;
    }

    @RequestMapping(value="poorInit.do")
    public String stuInit(Model model){
        this.pageSize = pageSize;

        // 1.调用服务层方法
        PageHelp<Student> pagePoors = poorInfoService.selectPoors(1,pageSize);

        // 2.将数据添加到model作用域
        model.addAttribute("pagePoors",pagePoors.getList());

        return "poor";
    }
}
