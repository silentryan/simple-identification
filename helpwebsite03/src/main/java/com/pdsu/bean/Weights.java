package com.pdsu.bean;

import java.io.Serializable;

/**
 * 权值权重表 - 会根据此表的内容结算成贫困指数
 */
public class Weights implements Serializable {
    /**
     * 参数对应：
     *      1. wid:方案号-主键
     *      2. aid:谁设立此套权值。
     *      3. 方案参数:
     *      4. 用于审视的这套方案是否科学的评： dNum-收到异议数量
     */
    private int wid;
    private int aid;
    private int num;
    private int fage;
    private int mage;
    private int totalEarn;
    private int healthy;
    private int degree;
    private int variety;
    private int ddegree; // 异议等级
    private int consumptionIndex;
    private int materialIndex;
    private int relativeIndex;
    private int opinionIndex;
    private int dNum;

    // 全参数构造方法
    public Weights(int wid, int aid, int num, int fage, int mage, int totalEarn, int healthy, int degree, int variety, int consumptionIndex, int materialIndex, int relativeIndex, int opinionIndex, int dNum) {
        this.wid = wid;
        this.aid = aid;
        this.num = num;
        this.fage = fage;
        this.mage = mage;
        this.totalEarn = totalEarn;
        this.healthy = healthy;
        this.degree = degree;
        this.variety = variety;
        this.consumptionIndex = consumptionIndex;
        this.materialIndex = materialIndex;
        this.relativeIndex = relativeIndex;
        this.opinionIndex = opinionIndex;
        this.dNum = dNum;
    }

    // 亲属贫困指数
    public Weights(int fage, int mage, int totalEarn, int healthy) {
        this.fage = fage;
        this.mage = mage;
        this.totalEarn = totalEarn;
        this.healthy = healthy;
    }

    // 材料贫困指数
    public Weights(int degree, int variety) {
        this.degree = degree;
        this.variety = variety;
    }

    // 异议贫困指数
    public Weights(int ddegree) {
        this.ddegree = ddegree;
    }


    // 空参数构造方法
    public Weights() {
    }


    // getter 和 setter 方法
    public int getDdegree() {
        return ddegree;
    }

    public void setDdegree(int ddegree) {
        this.ddegree = ddegree;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getFage() {
        return fage;
    }

    public void setFage(int fage) {
        this.fage = fage;
    }

    public int getMage() {
        return mage;
    }

    public void setMage(int mage) {
        this.mage = mage;
    }

    public int getTotalEarn() {
        return totalEarn;
    }

    public void setTotalEarn(int totalEarn) {
        this.totalEarn = totalEarn;
    }

    public int getHealthy() {
        return healthy;
    }

    public void setHealthy(int healthy) {
        this.healthy = healthy;
    }

    public int getDegree() {
        return degree;
    }

    public void setDegree(int degree) {
        this.degree = degree;
    }

    public int getVariety() {
        return variety;
    }

    public void setVariety(int variety) {
        this.variety = variety;
    }

    public int getConsumptionIndex() {
        return consumptionIndex;
    }

    public void setConsumptionIndex(int consumptionIndex) {
        this.consumptionIndex = consumptionIndex;
    }

    public int getMaterialIndex() {
        return materialIndex;
    }

    public void setMaterialIndex(int materialIndex) {
        this.materialIndex = materialIndex;
    }

    public int getRelativeIndex() {
        return relativeIndex;
    }

    public void setRelativeIndex(int relativeIndex) {
        this.relativeIndex = relativeIndex;
    }

    public int getOpinionIndex() {
        return opinionIndex;
    }

    public void setOpinionIndex(int opinionIndex) {
        this.opinionIndex = opinionIndex;
    }

    public int getdNum() {
        return dNum;
    }

    public void setdNum(int dNum) {
        this.dNum = dNum;
    }
}
