package com.pdsu.bean;

import java.io.Serializable;

/**
 * 管理员实体表
 */
public class Admin implements Serializable {
    // 字段代表 - 编号-姓名-负责学院-负责班级-权限-用户编号（外键）

    private int aid;
    private String aname;
    private String apass;
    // 管理员负责学院
    private String college;
    // 管理员负责班级
    private String grade;
    private int auth;
    private int uid;

    // 全参数构造方法
    public Admin(int aid, String aname, String apass, String college, String grade, int auth, int uid) {
        this.aid = aid;
        this.aname = aname;
        this.apass = apass;
        this.college = college;
        this.grade = grade;
        this.auth = auth;
        this.uid = uid;
    }

    // 页面输入数据构造方法 - 当新建一个管理员时，同时也必须新建一个用户
    public Admin(String aname, String apass, String college, String grade, int auth) {
        this.aname = aname;
        this.apass = apass;
        this.college = college;
        this.grade = grade;
        this.auth = auth;
    }

    // 传入数据构造方法 - 查询管理员映射到页面的信息
    public Admin(String aname, String college, String grade, int auth) {
        this.aname = aname;
        this.college = college;
        this.grade = grade;
        this.auth = auth;
    }

    // getter 和 setter 方法
    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public int getAuth() {
        return auth;
    }

    public void setAuth(int auth) {
        this.auth = auth;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getApass() {
        return apass;
    }

    public void setApass(String apass) {
        this.apass = apass;
    }
}
