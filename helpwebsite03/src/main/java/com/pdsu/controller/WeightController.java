package com.pdsu.controller;


import com.pdsu.bean.Weights;
import com.pdsu.service.WeightService;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WeightController {
    // 自动注入服务层对象
    @Autowired
    @Qualifier("weightService")
    public WeightService weightService;

    // 初始化pageSize
    public Integer pageSize = 20;


    /**************************************处理页面请求*************************************************/

    /**
     * 初始化权重取值
     * @param model
     * @return
     */
    @RequestMapping(value="weightInit.do")
    public String WeightInit(Model model){
        this.pageSize = pageSize;

        // 1.调用服务层方法
        PageHelp<Weights> pageWeights = weightService.selectAll(1,pageSize);

        // 2.将数据添加到model作用域
        model.addAttribute("pageWeights",pageWeights.getList());
        for (Weights weight:pageWeights.getList()) {
            System.out.println(weight.getWid());
        }
        return "weight";
    }

    /**
     * 储存学生亲属贫困指数
     * @param fage
     * @param mage
     * @param totalEarn
     * @param healthy
     * @param mv
     * @return
     */
    @PostMapping(value = "relative.do")
    public ModelAndView insertRelative(int fage, int mage, int totalEarn, int healthy, ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        // 1. 根据信息创建实体
        Weights weights = new Weights(fage,mage,totalEarn,healthy);

        // 3.调用服务层方法
        weightService.insertIndex(1,weights);
        System.out.println("-----------------------权重信息已经录入--------------------------------");

        // 4. 跳转视图41
        mv.setViewName("weight");
        return mv;
    }

    /**
     * 储存材料贫困指数
     * @param degree
     * @param variety
     * @param mv
     * @return
     */
    @PostMapping(value = "material.do")
    public ModelAndView insertMaterial(int degree, int variety,  ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        // 1. 根据信息创建实体
        Weights weights = new Weights(degree,variety);

        // 3.调用服务层方法
        weightService.insertIndex(2,weights);
        System.out.println("-----------------------权重信息已经录入--------------------------------");

        // 4. 跳转视图41
        mv.setViewName("weight");
        return mv;
    }

    /**
     * 储存学生意见贫困指数
     * @param ddegree
     * @param mv
     * @return
     */
    @PostMapping(value = "opinion.do")
    public ModelAndView insertOpinion(int ddegree,  ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        // 1. 根据信息创建实体
        Weights weights = new Weights(ddegree);

        // 3.调用服务层方法
        weightService.insertIndex(3,weights);
        System.out.println("-----------------------权重信息已经录入--------------------------------");

        // 4. 跳转视图41
        mv.setViewName("weight");
        return mv;
    }

    @PostMapping(value = "poverty.do")
    public ModelAndView insertMost(int relativeIndex, int materialIndex, int consumptionIndex, int opinionIndex, ModelAndView mv){
        System.out.println("-----------------页面请求已经接受，正在处理之中！--------------------------");
        // 3.调用服务层方法
        weightService.insertMost(relativeIndex,materialIndex,consumptionIndex,opinionIndex);
        System.out.println("-----------------------权重信息已经录入--------------------------------");

        // 4. 跳转视图41
        mv.setViewName("weight");
        return mv;
    }



}
