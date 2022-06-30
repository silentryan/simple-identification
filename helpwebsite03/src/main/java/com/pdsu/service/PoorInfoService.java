package com.pdsu.service;

import com.pdsu.bean.Relatives;
import com.pdsu.bean.Student;
import com.pdsu.utils.PageHelp;

public interface PoorInfoService {

    // 录入学生信息
    int addStuInfo(Student student);

    // 录入亲属信息
    int addRelInfo(Relatives relatives);

    // 查询所有贫困学生
    PageHelp<Student> selectPoors(Integer currentPage, Integer pageSize);

}
