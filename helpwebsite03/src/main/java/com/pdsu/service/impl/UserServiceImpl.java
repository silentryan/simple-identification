package com.pdsu.service.impl;

import com.pdsu.bean.User;
import com.pdsu.mappers.UserMapper;
import com.pdsu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
    // 自动注入UserMapper
    @Autowired
    private UserMapper userMapper;

    /*------------------------------------------服务层接口方法实现---------------------------------------------------*/


    /**
     * login接口方法实现
     * @param username
     * @param password
     * @return 持久层查询用户
     */
    @Override
    public User login(String username, String password) {
        System.out.println("---------------服务层方法已运行---------------------------");
        System.out.println(userMapper.selectPer(username,password));
        return userMapper.selectPer(username,password);
    }

//    @Override
////    public void save(User user) {
////        System.out.println("---------------服务层方法已运行---------------------------");
////        userMapper.save(user);
////    }
}
