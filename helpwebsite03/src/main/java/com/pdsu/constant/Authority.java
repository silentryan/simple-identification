package com.pdsu.constant;

/**
 * 权限常量类
 */
public class Authority {
    /**
     * 五级权限
     *  最低权限：学生和一般教学老师拥有查看公示名单，补助政策等观看的权限 - VIEW = 0
     *  一级权限：贫困生申请期间对所有学生开放，拥有填写申请的权限 - APPLY = 1
     *  二级权限：院系管理员老师拥有审核学生材料给归类打分的权限  - EXAMINE = 2
     *  三级权限：院系负责人及以上拥有查看贫苦学生资料以及资金管理的权限 -  MODIFY = 3
     *  四级权限：最高权限，可以授予其他用户权限 - HILLTOP = 4
     */
    public static final int VIEW = 0;
    public static final int APPLY= 1;
    public static final int EXAMINE= 2;
    public static final int MODIFY= 3;
    public static final int HILLTOP= 4;
}
