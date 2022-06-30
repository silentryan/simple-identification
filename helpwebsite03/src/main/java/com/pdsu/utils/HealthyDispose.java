package com.pdsu.utils;

import org.apache.ibatis.annotations.Case;

/**
 * 健康字符处理类 - 将页面传入的参数转成整型数据
 * 实现的前提 - 页面可以填入健康情况必须是可选的参数
 */
public class HealthyDispose {
    private int healthy;

    // 构造方法
    public HealthyDispose(String healthy){
        this.dispose(healthy);
    }

    // 处理方法：
    public void dispose(String healthy){
        switch (healthy){
            case "健康" :
                this.setHealthy(0);
                break;
            case "良好" :
                this.setHealthy(1);
                break;
            case "一般" :
                this.setHealthy(2);
                break;
            case "残疾" :
                this.setHealthy(3);
                break;
            case "需要照顾" :
                this.setHealthy(4);
                break;
        }
    }

    public int getHealthy() {
        return healthy;
    }

    public void setHealthy(int healthy) {
        this.healthy = healthy;
    }
}
