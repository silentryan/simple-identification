package com.pdsu.bean;

import java.io.Serializable;

public class Poor implements Serializable {
    private int pid;
    private String stel;
    private String sname;
    private int moid;  // 补助金外键
    private int sdegree; // 贫困等级 - 决定了补助金多少
    private String college;
    private String grade;
    private double povertyIndex;

    // 全参数构造 - 页面转存的所有信息
    public Poor(int pid, String stel, String sname, int moid, int sdegree, String college, String grade, double povertyIndex) {
        this.pid = pid;
        this.stel = stel;
        this.sname = sname;
        this.moid = moid;
        this.sdegree = sdegree;
        this.college = college;
        this.grade = grade;
        this.povertyIndex = povertyIndex;
    }

    // getter 和 setter 方法
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getMoid() {
        return moid;
    }

    public void setMoid(int moid) {
        this.moid = moid;
    }

    public int getSdegree() {
        return sdegree;
    }

    public void setSdegree(int sdegree) {
        this.sdegree = sdegree;
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

    public double getPovertyIndex() {
        return povertyIndex;
    }

    public void setPovertyIndex(double povertyIndex) {
        this.povertyIndex = povertyIndex;
    }
}
