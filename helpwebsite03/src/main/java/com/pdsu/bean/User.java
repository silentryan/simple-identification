package com.pdsu.bean;
/**
 * 作用 ： 对应系统用户表，将登录单独拉出来，降低耦合
 */

import java.io.Serializable;

public class User implements Serializable {
    /**
     * username - 用户名
     * password - 密码
     * ident - 身份-外键
     */
    private  int uid;
    private String username;
    private String password;
    private String ident;



    // 创建全参数构造器
    public User(int uid, String username, String password, String ident) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.ident = ident;

    }

    // 创建五参数构造器
    public User(String username, String password, String ident) {
        this.username = username;
        this.password = password;
        this.ident = ident;

    }

    // getter 和 setter方法
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdent() {
        return ident;
    }

    public void setIdent(String ident) {
        this.ident = ident;
    }
}
