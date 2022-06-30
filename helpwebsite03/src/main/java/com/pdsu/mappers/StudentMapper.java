package com.pdsu.mappers;

import com.pdsu.bean.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {

    /**
     * 录入学生信息
     * @param student
     * @return
     */
    int insertStuInfo(@Param("student") Student student);

    /**
     * 查询所有学生权限
     * @return
     */
    List<Student> selectAll();


    /**
     * 根据用户id删除一个用户
     * @param sid
     * @return
     */
    int deleteStu(@Param("sid") int sid);

    /**
     * 根据用户更新用户贫困信息
     * @param sid
     * @return
     */
    int updateStu(@Param("sid") int sid);


    /**
     * 查询所有贫困学生
     * @return
     */
    List<Student> selectPoors();

}
