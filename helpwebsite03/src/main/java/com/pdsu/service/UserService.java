package com.pdsu.service;

import com.pdsu.bean.User;

public interface UserService {
    /**
     *
     * @param username
     * @param password
     * @return
     */
    User login(String username, String password);

//    // 测试
//    void save(User user);
}