package com.pdsu.service;

import com.pdsu.bean.Admin;
import com.pdsu.bean.Student;
import com.pdsu.utils.PageHelp;

public interface RightService {
    /**
     * 添加一个管理员
     * @param admin
     * @return
     */
    int AddAdmin(Admin admin);

    /**
     * 查询所有管理员
     * @return
     */
    PageHelp<Admin> selectAll(Integer currentPage, Integer pageSize);

    /**
     * 查询所有学生
     * @return
     */
    PageHelp<Student> selectAllStu(Integer currentPage, Integer pageSize);
    /**
     * 根据管理员id查询用户
     * @param aid
     * @return
     */
    int updateAuth(int aid);
}
