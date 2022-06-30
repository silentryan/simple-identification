package com.pdsu.service.impl;

import com.pdsu.bean.Admin;
import com.pdsu.bean.Relatives;
import com.pdsu.bean.Student;
import com.pdsu.mappers.RelativeMapper;
import com.pdsu.mappers.StudentMapper;
import com.pdsu.service.PoorInfoService;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("poorInfoService")
public class PoorInfoServiceImpl implements PoorInfoService {

    // 自动注入实体
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    RelativeMapper relativeMapper;

    /*========================================接口方法实现==========================================*/

    /**
     * 录入学生信息 - 设置一道审核关卡
     * @param student
     * @return
     */
    @Override
    public int addStuInfo(Student student) {
        System.out.println("------------------服务层方法addStuInfo已经运行-----------------");
        return studentMapper.insertStuInfo(student);
    }

    /**
     * 录入亲属信息 - 并在此结算亲属的权值系数
     * @param relative
     * @return
     */
    @Override
    public int addRelInfo(Relatives relative) {
        System.out.println("------------------服务层方法addRleInfo已经运行-----------------");
        return relativeMapper.insertRelInfo(relative);
    }

    /**
     * 查询所有贫困学生
     * @param currentPage
     * @param pageSize
     * @return
     */
    @Override
    public PageHelp<Student> selectPoors(Integer currentPage, Integer pageSize) {
        List<Student> poors = studentMapper.selectPoors();
        PageHelp<Student> pageInfo = new PageHelp<Student>(poors.size(),currentPage,pageSize);

        //判断是否是最后一页,如果最后一页就显示最后一页的几条，不是最后一页就显示pageSize条
        if(currentPage == pageInfo.getTotalPage())
            pageInfo.setList(poors.subList((currentPage-1)*pageSize, poors.size()));
        else
            pageInfo.setList(poors.subList((currentPage-1)*pageSize, (currentPage-1)*pageSize+pageSize));
        return pageInfo;
    }
}
