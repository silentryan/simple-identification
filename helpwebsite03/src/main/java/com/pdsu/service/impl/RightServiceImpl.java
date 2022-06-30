package com.pdsu.service.impl;

import com.pdsu.bean.Admin;
import com.pdsu.bean.Student;
import com.pdsu.mappers.AdminMapper;
import com.pdsu.mappers.StudentMapper;
import com.pdsu.service.RightService;
import com.pdsu.utils.PageHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("rightService")
public class RightServiceImpl implements RightService {
    // 自动注入AdminMapper - StudentMapper
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private StudentMapper studentMapper;
    /*------------------------------------------服务层接口方法实现---------------------------------------------------*/

    /**
     * 增加一个管理员
     * @param admin
     * @return
     */
    @Override
    public int AddAdmin(Admin admin) {
        System.out.println("------------------服务层方法addAdmin已经运行-----------------");
        return adminMapper.addAdmin(admin);
    }

    /**
     * 查询所有管理员 --> 映射到页面上
     * @param currentPage
     * @param pageSize
     * @return
     */
    @Override
    public PageHelp<Admin> selectAll(Integer currentPage, Integer pageSize) {
        List<Admin>  admins = adminMapper.selectAll();
        PageHelp<Admin> pageInfo = new PageHelp<Admin>(admins.size(),currentPage,pageSize);

        //判断是否是最后一页,如果最后一页就显示最后一页的几条，不是最后一页就显示pageSize条
        if(currentPage == pageInfo.getTotalPage())
            pageInfo.setList(admins.subList((currentPage-1)*pageSize, admins.size()));
        else
            pageInfo.setList(admins.subList((currentPage-1)*pageSize, (currentPage-1)*pageSize+pageSize));
        return pageInfo;
    }

    /**
     * 查询所有学生 --> 映射到页面上
     * @param currentPage
     * @param pageSize
     * @return
     */
    @Override
    public PageHelp<Student> selectAllStu(Integer currentPage, Integer pageSize) {
        List<Student> students = studentMapper.selectAll();
        PageHelp<Student> pageInfo = new PageHelp<Student>(students.size(),currentPage,pageSize);

        //判断是否是最后一页,如果最后一页就显示最后一页的几条，不是最后一页就显示pageSize条
        if(currentPage == pageInfo.getTotalPage())
            pageInfo.setList(students.subList((currentPage-1)*pageSize, students.size()));
        else
            pageInfo.setList(students.subList((currentPage-1)*pageSize, (currentPage-1)*pageSize+pageSize));
        return pageInfo;
    }

    /**
     * 根据用户id更新权限
     * @param aid
     * @return
     */
    @Override
    public int updateAuth(int aid) {
        return 0;
    }
}
