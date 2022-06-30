package com.pdsu.constant;

/**
 * 亲属健康常量 - 健康程度
 * 参考论文：[1]赵广才, 体质健康分级评价标准与健康风险干预措施研究. 广东省,广州市体育科学研究所,2019-10-11.
 * 参考文档：classpath:referenceDocument/healthy.txt
 */
public class Healthy {
    /**
     * 健康评级标准：
     *  STRONG : 身体健康，年龄不大，有良好的工作能力
     *  GOOD : 年龄偏大，有工作能力，并仍在工作
     *  COMMON : 有小病，并不影响生命，可以工作
     *  ------------------ 以下级别，需要在服务层进行审核 ----------------------------------------
     *  UNWORKABLE： 身体残疾，不能工作，或工作工资极少。
     *  NEEDCARE： 有大病，或极大残疾，需要人照顾
     */

    public static final int STRONG = 0;
    public static final int GOOD = 1;
    public static final int COMMON = 2;
    public static final int UNWORKABLE = 3;
    public static final int NEEDCARE = 4;

}
