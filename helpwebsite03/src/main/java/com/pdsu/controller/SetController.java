package com.pdsu.controller;

import com.pdsu.bean.Weights;
import com.pdsu.service.WeightService;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SetController {
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
    @RequestMapping(value="setInit.do")
    public String WeightInit(Model model){
        this.pageSize = pageSize;

        // 1.调用服务层方法
        PageHelp<Weights> pageWeights = weightService.selectAll(1,pageSize);

        // 2.将数据添加到model作用域
        model.addAttribute("pageWeights",pageWeights.getList());

        return "set";
    }
}
