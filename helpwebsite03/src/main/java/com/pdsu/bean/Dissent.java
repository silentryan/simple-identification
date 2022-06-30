package com.pdsu.bean;
/**
 * 收集用户对贫困学生的异议 - 并与贫困学生建立联系
 */

import java.io.Serializable;

public class Dissent implements Serializable {
    /**
     * 参数对应：
     *      1. 异议编号  2. 异议提交者姓名（外键）  3. 异议提交者身份  4. 异议针对对象
     *      5. 异议内容  6. 异议审核结果  7. 异议审核员（外键）
     */
    private int did;
    private String dname;
    private String dident;
    private int sid;
    private String content;
    private int auditResult;  // 1-通过， 0-pass
    private int assessor;

    // 全参数构造
    public Dissent(int did, String dname, String dident, int sid, String content, int auditResult, int assessor) {
        this.did = did;
        this.dname = dname;
        this.dident = dident;
        this.sid = sid;
        this.content = content;
        this.auditResult = auditResult;
        this.assessor = assessor;
    }

    // 页面前台请求参数
    public Dissent(String dname, String dident, int sid, String content) {
        this.dname = dname;
        this.dident = dident;
        this.sid = sid;
        this.content = content;
    }

    // 页面后台请求参数
    public Dissent(int auditResult, int assessor) {
        this.auditResult = auditResult;
        this.assessor = assessor;
    }

    // getter 和 setter 方法
    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDident() {
        return dident;
    }

    public void setDident(String dident) {
        this.dident = dident;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int isAuditResult() {
        return auditResult;
    }

    public void setAuditResult(int auditResult) {
        this.auditResult = auditResult;
    }

    public int getAssessor() {
        return assessor;
    }

    public void setAssessor(int assessor) {
        this.assessor = assessor;
    }
}
