package com.pdsu.mappers;

import com.pdsu.bean.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {

//    // 测试所用
//    void save(@Param("user") User user);

    /**
     * 根据用户名和密码查询一个用户
     * @param username
     * @param password
     * @return user
     */
//    @Select("select * from user where username=#{username} and password=#{password} ")
    User selectPer(@Param("username") String username, @Param("password") String password);

    /**
     * 根据一个用户id查其身份 -学生？管理员
     * @param uid
     * @return
     */
//    String queryIdent(@Param("uid") String uid);
}
