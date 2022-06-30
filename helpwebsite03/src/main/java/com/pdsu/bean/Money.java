package com.pdsu.bean;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Money implements Serializable {
    /**
     * 参数对应含义
     */
    private int moid;
    private int pid;
    private int colASS; // 校级确认员
    private int scAss;  // 院系确认员
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date suTi;  // 确认时间
    private boolean moSure; // 学生是否确认资金
    private int mvalue;   // 补助金金额

    // 全参数构造
    public Money(int moid, int pid, int colASS, int scAss, Date suTi, boolean moSure, int mvalue) {
        this.moid = moid;
        this.pid = pid;
        this.colASS = colASS;
        this.scAss = scAss;
        this.suTi = suTi;
        this.moSure = moSure;
        this.mvalue = mvalue;
    }

    // getter 和 setter 方法
    public int getMoid() {
        return moid;
    }

    public void setMoid(int moid) {
        this.moid = moid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getColASS() {
        return colASS;
    }

    public void setColASS(int colASS) {
        this.colASS = colASS;
    }

    public int getScAss() {
        return scAss;
    }

    public void setScAss(int scAss) {
        this.scAss = scAss;
    }

    public Date getSuTi() {
        return suTi;
    }

    public void setSuTi(Date suTi) {
        this.suTi = suTi;
    }

    public boolean isMoSure() {
        return moSure;
    }

    public void setMoSure(boolean moSure) {
        this.moSure = moSure;
    }

    public int getMvalue() {
        return mvalue;
    }

    public void setMvalue(int mvalue) {
        this.mvalue = mvalue;
    }
}
