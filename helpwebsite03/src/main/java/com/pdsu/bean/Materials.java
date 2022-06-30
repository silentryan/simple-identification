package com.pdsu.bean;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 材料指数
 */
public class Materials {
    /**
     * 各参数含义：
     *      mid-主键  mname-材料名（用途） mobj-材料对象  mdate-材料上交时间  degree-材料等级  variety-材料分类
     *      auditResult-审核结果  assessor-审核员（外键）
     *
     *      sid-外键 -谁提交的
     */
    private int mid;
    private String mname;
    private String mobj;
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date mdate;
    private String degree;
    private String variety;
    private String content;
    private boolean auditResult;
    private int assessor;
    private int sid;

    // 全参数构造方法
    public Materials(int mid, String mname, String mobj, Date mdate, String degree, String variety, String content, boolean auditResult, int assessor, int sid) {
        this.mid = mid;
        this.mname = mname;
        this.mobj = mobj;
        this.mdate = mdate;
        this.degree = degree;
        this.variety = variety;
        this.content = content;
        this.auditResult = auditResult;
        this.assessor = assessor;
        this.sid = sid;
    }

    // 前台页面端请求参数
    public Materials(String mname, String mobj, Date mdate, String variety, String content, int sid) {
        this.mname = mname;
        this.mobj = mobj;
        this.mdate = mdate;
        this.variety = variety;
        this.content = content;
        this.sid = sid;
    }

    // 后台页面端请求参数
    public Materials(boolean auditResult, int assessor) {
        this.auditResult = auditResult;
        this.assessor = assessor;
    }

    // 零参数构造方法
    public Materials() {
    }

    // getter 和 setter方法
    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMobj() {
        return mobj;
    }

    public void setMobj(String mobj) {
        this.mobj = mobj;
    }

    public Date getMdate() {
        return mdate;
    }

    public void setMdate(Date mdate) {
        this.mdate = mdate;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getVariety() {
        return variety;
    }

    public void setVariety(String variety) {
        this.variety = variety;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public boolean isAuditResult() {
        return auditResult;
    }

    public void setAuditResult(boolean auditResult) {
        this.auditResult = auditResult;
    }

    public int getAssessor() {
        return assessor;
    }

    public void setAssessor(int assessor) {
        this.assessor = assessor;
    }
}
