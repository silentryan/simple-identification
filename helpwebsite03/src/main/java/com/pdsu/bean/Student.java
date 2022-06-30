package com.pdsu.bean;
/**
 * 所有的学生信息 - 包括贫困学生信息
 */

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Student implements Serializable {
    /** 针对数据分别为
     *  基本情况： 院系college - 专业major - 年级lesson -班级grade -姓名sname - 性别ssex - 籍贯haddress - 学号sid -身份证号码sident -手机号码stel
     *  家庭情况：家庭人口fNum - 家属号码fTel(只需一个) - 邮政编码posCode - 邮箱semail - [家属编号（外键）rid ]--->移除到多端，学生表作为参照表
     *  恩格尔系数：cid(外键)
     *  材料系数：mid(外键)
     *  用户外键：uid
     *  学生权限：sauth
     *  贫困指数：povertyIndex
     * */

    private String college;
    private String major;
    private String lesson;
    private String grade;
    private String sname;
    private String ssex;
    private String haddress;
    private int sid;
    private String sident;
    private String stel;
    private int fNum;
    private String fTel;
    private int posCode;
    private String semail;
    private int uid;
    private int cid;
    private int mid;
    private int sauth;
    private double povertyIndex;


    // 全参数构造方法
    public Student(String college, String major, String lesson, String grade, String sname, String ssex, String haddress, int sid,String sident, String stel, int fNum, String fTel, int posCode, String semail, int cid, int mid, double povertyIndex) {
        this.college = college;
        this.major = major;
        this.lesson = lesson;
        this.grade = grade;
        this.sname = sname;
        this.ssex = ssex;
        this.haddress = haddress;
        this.sid = sid;
        this.sident = sident;
        this.stel = stel;
        this.fNum = fNum;
        this.fTel = fTel;
        this.posCode = posCode;
        this.semail = semail;
        this.cid = cid;
        this.mid = mid;
        this.povertyIndex = povertyIndex;
    }

    // 基本情况构造方法 - 录入信息
    public Student(String college, String major, String lesson, String grade, String sname, String ssex, String haddress, int sid, String sident, String stel) {
        this.college = college;
        this.major = major;
        this.lesson = lesson;
        this.grade = grade;
        this.sname = sname;
        this.ssex = ssex;
        this.haddress = haddress;
        this.sid = sid;
        this.sident = sident;
        this.stel = stel;
    }

    // 页面权限设置-映射数据构造方法


    public Student(int sid, String sname, String college, String major, String lesson, String grade, String stel, int sauth) {
        this.sid= sid;
        this.college = college;
        this.major = major;
        this.lesson = lesson;
        this.grade = grade;
        this.sname = sname;
        this.stel = stel;
        this.sauth = sauth;
    }

    // 录入信息构造方法
    public Student(String college, String major, String lesson, String grade, String sname, String ssex, String haddress, int sid, String sident, String stel, int fNum, String fTel, int posCode, String semail) {
        this.college = college;
        this.major = major;
        this.lesson = lesson;
        this.grade = grade;
        this.sname = sname;
        this.ssex = ssex;
        this.haddress = haddress;
        this.sid = sid;
        this.sident =sident;
        this.stel = stel;
        this.fNum = fNum;
        this.fTel = fTel;
        this.posCode = posCode;
        this.semail = semail;
    }

    // 空构造方法
    public Student() {
    }



    // getter 和 setter方法
    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getLesson() {
        return lesson;
    }

    public void setLesson(String lesson) {
        this.lesson = lesson;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public String getHaddress() {
        return haddress;
    }

    public void setHaddress(String haddress) {
        this.haddress = haddress;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getfNum() {
        return fNum;
    }

    public void setfNum(int fNum) {
        this.fNum = fNum;
    }

    public int getPosCode() {
        return posCode;
    }

    public void setPosCode(int posCode) {
        this.posCode = posCode;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public double getPovertyIndex() {
        return povertyIndex;
    }

    public void setPovertyIndex(double povertyIndex) {
        this.povertyIndex = povertyIndex;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    public String getSident() {
        return sident;
    }

    public void setSident(String sident) {
        this.sident = sident;
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel;
    }

    public String getfTel() {
        return fTel;
    }

    public void setfTel(String fTel) {
        this.fTel = fTel;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getSauth() {
        return sauth;
    }

    public void setSauth(int sauth) {
        this.sauth = sauth;
    }
}
