package com.pdsu.mappers;

import com.pdsu.bean.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {

    /**
     * 添加一个管理员
     * @param admin
     * @return
     */
    int addAdmin(@Param("admin") Admin admin);

    /**
     * 根据管理员id更新管理员权限
     * @param aid
     * @return
     */
    int updateAuth(@Param("aid") int aid);

    /**
     * 查询所有管理员
     * @return
     */
    List<Admin> selectAll();
}
