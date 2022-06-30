package com.pdsu.bean;

import java.io.Serializable;

/**
 * 学生消费表 - 用于结算用户的恩格尔系数-消费指数
 */
public class Consumption implements Serializable {
    /**
     * 参数对应 - 代表意义
     *  cid - 主键（与学生表外键cid联系）
     */
    private int cid;
    private double totalConsumption;
    private double foodConsumption;
    private int foodNum;
    private double engelCoefficient;
    private double consumptionIndex;

    // 全参数构造
    public Consumption(int cid, double totalConsumption, double foodConsumption, int foodNum, double engelCoefficient, double consumptionIndex) {
        this.cid = cid;
        this.totalConsumption = totalConsumption;
        this.foodConsumption = foodConsumption;
        this.foodNum = foodNum;
        this.engelCoefficient = engelCoefficient;
        this.consumptionIndex = consumptionIndex;
    }

    // 录入数据构造
    public Consumption(double totalConsumption, double foodConsumption, int foodNum, double engelCoefficient, double consumptionIndex) {
        this.totalConsumption = totalConsumption;
        this.foodConsumption = foodConsumption;
        this.foodNum = foodNum;
        this.engelCoefficient = engelCoefficient;
        this.consumptionIndex = consumptionIndex;
    }

    // 空构造
    public Consumption() {
    }

    // getter 和 setter 方法
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public double getTotalConsumption() {
        return totalConsumption;
    }

    public void setTotalConsumption(double totalConsumption) {
        this.totalConsumption = totalConsumption;
    }

    public double getFoodConsumption() {
        return foodConsumption;
    }

    public void setFoodConsumption(double foodConsumption) {
        this.foodConsumption = foodConsumption;
    }

    public int getFoodNum() {
        return foodNum;
    }

    public void setFoodNum(int foodNum) {
        this.foodNum = foodNum;
    }

    public double getEngelCoefficient() {
        return engelCoefficient;
    }

    public void setEngelCoefficient(double engelCoefficient) {
        this.engelCoefficient = engelCoefficient;
    }

    public double getConsumptionIndex() {
        return consumptionIndex;
    }

    public void setConsumptionIndex(double consumptionIndex) {
        this.consumptionIndex = consumptionIndex;
    }
}
