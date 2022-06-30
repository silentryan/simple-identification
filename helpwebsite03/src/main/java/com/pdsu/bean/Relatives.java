package com.pdsu.bean;

import java.io.Serializable;

public class Relatives implements Serializable {
    /**
     * 亲属信息
     * 1.页面必填的基本信息：
     *      姓名-rname, 年龄-rage , 身份-rident , 年收入-ryEarn(页面显示信息-单位万元) , 健康情况-healthy
     *      亲属指数结算的四个关键信息 - 年龄，年收入，健康情况，家庭人口
     * 2.页面上不填的信息：
     *      主键-自增-rid , 外键 - sid , 亲属指数-relativeIndex
     */
    private int rid;
    private String rname;
    private int rage;
    private String rident;
    private int ryEarn;
    private int healthy;   // 页面填入健康情况为字符-会进过系统的换算成整型数据，但若父母失去工作能力、残疾，则需要进过管理员审核材料

    private  int sid;
    private double relativeIndex;

    // 全参数构造方法
    public Relatives(int rid, String rname, int rage, String rident, int ryEarn, int healthy, int sid, double relativeIndex) {
        this.rid = rid;
        this.rname = rname;
        this.rage = rage;
        this.rident = rident;
        this.ryEarn = ryEarn;
        this.healthy = healthy;
        this.sid = sid;
        this.relativeIndex = relativeIndex;
    }

    // 页面必填信息构造方法
    public Relatives(String rname, int rage, String rident, int ryEarn, int healthy) {
        this.rname = rname;
        this.rage = rage;
        this.rident = rident;
        this.ryEarn = ryEarn;
        this.healthy = healthy;
    }

    // 空构造方法
    public Relatives() {
    }


    // getter 和 setter 方法
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public int getRage() {
        return rage;
    }

    public void setRage(int rage) {
        this.rage = rage;
    }

    public String getRident() {
        return rident;
    }

    public void setRident(String rident) {
        this.rident = rident;
    }

    public int getRyEarn() {
        return ryEarn;
    }

    public void setRyEarn(int ryEarn) {
        this.ryEarn = ryEarn;
    }

    public int getHealthy() {
        return healthy;
    }

    public void setHealthy(int healthy) {
        this.healthy = healthy;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public double getRelativeIndex() {
        return relativeIndex;
    }

    public void setRelativeIndex(double relativeIndex) {
        this.relativeIndex = relativeIndex;
    }
}
