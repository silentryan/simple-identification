<%@ page import="org.springframework.web.context.request.RequestScope" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <base href="${pageContext.request.contextPath}">
    <!-- LOGO================================================ -->
    <link rel="icon" href="/images/logo.png">

    <!-- LayUI=============================================== -->
    <link rel="stylesheet" href="/css/layui.css">
    <script src="/js/layui.js"></script>

    <!-- CSS================================================= -->
    <link rel="stylesheet" href="/css/right.css">
    <link rel="stylesheet" href="/css/mana-side.css">
    <link rel="stylesheet" href="/css/ali_iconfont_1.css">
    <link rel="stylesheet" href="/css/ali_iconfont_2.css">
    <link rel="stylesheet" href="/css/ali_iconfont.css">
    <link rel="stylesheet" href="/css/work.css">

    <!-- JQuery============================================== -->
    <script src="/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <script src="/js/vue.js" charset="utf-8"></script>

    <style media="screen">
        .show{
            display: inline-block;
        }
        .hidden{
            display: none;
        }
    </style>

    <title>用户权限</title>
    <!-- 分配权限-查看所有的用户 -->
</head>
<body>
<!-- 左侧导航区域 -->
<div class="navbar p-side">
    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="test">
        <li id="ps-main" class="layui-nav-item">
            <a href="/manager.jsp">
                <img src="/images/back/icon_side/shouye.png" alt="">
                首页
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="weightInit.do">
                <img src="/images/back/icon_side/tequanzhi.png" alt="">
                初始化权值
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/politic.jsp">
                <img src="/images/back/icon_side/zhengcexinxi.png" alt="">
                政策信息发布
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/poorInit.do">
                <img src="/images/back/icon_side/xueshengdangan.png" alt="">
                贫困学生名单
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="rightInit.do">
                <img src="/images/back/icon_side/fenghuangxiangmutubiao_quanxian.png" alt="">
                权限管理
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/money.jsp">
                <img src="/images/back/icon_side/zijin.png" alt="">
                资金管理
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/setInit.do">
                <img src="/images/back/icon_side/quanzhong.png" alt="">
                权重校订
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/dissent.jsp">
                <img src="/images/back/icon_side/yiyichuli.png" alt="">
                用户异议审核
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/mark.jsp">
                <img src="/images/back/icon_side/caifang-cailiaoshuoming.png" alt="">
                材料盲审
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="#">
                <img src="/images/back/icon_side/qiapian.png" alt="">
                其他功能
            </a>
        </li>
    </ul>
</div>

</div>

<!-- 右侧主体区域++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div class="layui-body p-body">
    <!-- 上册直达工作区 -->
    <div class="pb-section" name= "贫困学生名单一览">
        <div class="layui-card">
            <div class="layui-card-header">
                <ul class="layui-nav nav-right Layui-row">

                    <li class="layui-nav-item header-p layui-col-md1" id="item_1">
                        <p>分配权限</p>
                    </li>

                    <li class="layui-nav-item">
                        <a href="#"><div class="iconfont icon-love" title="常用"></div></a>
                    </li>

                    <li class="layui-nav-item">
                        <a href="#"><div class="iconfont icon-xiuli" title="编辑"></div></a>
                    </li>

                    <li class="layui-nav-item">
                        <a href="#"><div class="iconfont icon-omit" title="更多"></div></a>
                    </li>

                    <li class="layui-nav-item" id="item_guanli">
                        <a href="#"><div class="iconfont icon-fangzi" title="管理"></div></a>

                    </li>

                    <li class="layui-nav-item">
                        <a href="#"><div class="iconfont icon-tongxunlu" title="通讯录"></div></a>
                    </li>

                    <li class="layui-nav-item">
                        <a href="#"><div class="iconfont icon-tubiaosvg-" title="站内信"></div></a>
                    </li>

                    <li class="layui-nav-item">
                        <a href="#"><div class="iconfont icon-wenhao" title="帮助"></div></a>
                    </li>

                    <li class="layui-nav-item" id="item_button">
                        <a href="#">
                            <button type="button" name="button">
                                <img src="../images/back/插件.png" alt="">
                                插件中心
                            </button>
                        </a>
                    </li>

                    <li class="layui-nav-item" id="item_img">
                        <a href="#">
                            <!-- 图标徽章 -->
                            <img class="layui-nav-img" src="../images/back/head-logo.jpg" alt="">
                        </a>
                    </li>
                </ul>
            </div>

            <!--卡片主体 -->
            <div class="layui-card-body">
                <a href="./add.html" >
                    <button class="button1" type="button" name="button">发起新的</button>
                </a>
                <a href="#">
                    <button class="button2" type="button" name="button">导入</button>
                </a>
                <li class="layui-nav-item"><a href="">待办事项</a></li>
                <li class="layui-nav-item"><a href="">已办事项</a></li>
                <li class="layui-nav-item"><a href="">抄送事项</a></li>
                <li class="layui-nav-item"><a href="">我发起的</a></li>
                <li class="layui-nav-item"><a href="">全部数据</a></li>
                <li class="layui-nav-item"><a href="">概览</a></li>
                <li class="layui-nav-item"><a href="">统计报表</a></li>
            </div>


        </div>
    </div>

    <!-- 工作区 -->
    <div class="pb-work">
        <div class="pbw-header">
            <ul class="pbw-nav">
                <li class="">
                    <span class="iconfont icon-share"></span>
                    <button type="button" name="button">导入</button>
                </li>

                <li @click=changeAdd class="">
                    <img src="/images/back/add_admin.png" alt="">
                    <button type="button" name="button">添加管理员</button>
                </li>

                <li  @click=changeStudent class="">
                    <img src="/images/back/student.png" alt="">
                    <button type="button" name="button">
                        学生权限
                    </button>
                </li>

                <li @click=changeAdmin class="">
<%--                    <a href="selectAdmin.do">--%>
                        <img src="/images/back/admin.png" alt="">
                        <button type="button" name="button">
                            管理员权限
                        </button>
<%--                    </a>--%>
                </li>

                <li class="">
                    <img src="/images/back/批量.png" alt="">
                    <button type="button" name="button">批量操作</button>
                </li>
                <li class="" id="pbw-btn">
                    <button type="button" name="button" id="table_item_button">
                        <img src="/images/back/搜索.png" alt="">
                        搜索
                    </button>
                </li>
                <li class="" id="pbw-select" style="display:none;">
                    <form class="form_select" action="" method="post">
                        <select name="select">
                            <option value="null">选择查询</option>
                            <option value="college">学院</option>
                            <option value="lesson">年级</option>
                        </select>
                        <input type="text" name="context" placeholder="查询内容">
                        <input type="submit" value="查询">
                    </form>
                </li>
            </ul>
        </div>

        <!-- 展现名单区 -->
        <div id="pbw-main" class="pbw-show">

            <div id="addAdmin" class="suspend" :class="add">
                <p>添加管理员</p>
                <form class="" action="addAdmin.do" method="post">
                    <table>
                        <tr>
                            <td>姓名：</td>
                            <td>
                                <input type="text" name="aname" value="">
                            </td>
                        </tr>
                        <tr>
                            <td>密码：</td>
                            <td>
                                <input type="text" name="apass" value="">
                            </td>
                        </tr>
                        <tr>
                            <td>负责学院：</td>
                            <td>
                                <input type="text" name="college" value="">
                            </td>
                        </tr>
                        <tr>
                            <td>负责班级：</td>
                            <td>
                                <input type="text" name="grade" value="">
                            </td>
                        </tr>
                        <tr>
                            <td>当前权限：</td>
                            <td>
                                <input type="number" name="auth" value="">
                            </td>
                        </tr>
                    </table>
                    <input @click=close type="submit" name="" value="提交数据">
                </form>
            </div>

            <div id="student" class="pbw-table" :class="student">
                <table border="1">
                    <tr class="pbwt-title">
                        <th></th><!-- 标头-选择 -->
                        <th>学号</th>
                        <th>姓名</th>
                        <th>学院</th>
                        <th>专业</th>
                        <th>年级</th>
                        <th>班级</th>
                        <th>手机号码</th>
                        <th>学生权限</th>
                    </tr>
                    <c:forEach items="${requestScope.pageStudents}" var="student">
                        <tr style="height: 35px;font-size: 12px;text-align: center;">
                            <td style="padding-top: 10px;padding-bottom: 10px;">
                                <input type="radio" name="selectStudent" value="">
                            </td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.sid}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.sname}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.college}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.major}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.lesson}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.grade}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.stel}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">
                                    ${student.sauth}
                                <button type="button" name="button" style="background-color: #1E9FFF;margin-left: 8px;">
                                    <img src="/images/back/批量.png" alt="">修改
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

            <div id="admin" :class="admin" class="pbw-table">
<%--                <span>${requestScope.pageAdmins}</span>--%>
                <table border="1">
                    <tr class="pbwt-title">
                        <th></th><!-- 标头-选择 -->
                        <th>姓名</th>
                        <th>学院</th>
                        <th>班级</th>
                        <th>管理员权限</th>
                        <th>修改权限</th>
                    </tr>
<%--                    <jsp:useBean id="pageAdmins" scope="request" type="java.util.List"/>--%>
                    <c:forEach items="${requestScope.pageAdmins}" var="admin">
                        <tr style="height: 35px;font-size: 12px;text-align: center;">
                            <td style="padding-top: 10px;padding-bottom: 10px;">
                                <input type="radio" name="selectAdmin" value="">
                            </td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${admin.aname}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${admin.college}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${admin.grade}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">${admin.auth}</td>
                            <td style="padding-top: 10px;padding-bottom: 10px;">
                                <button type="button" name="button" style="background-color: #1E9FFF;">
                                    <img src="/images/back/批量.png" alt="">修改
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
<%--                <div class="am-fr">--%>
<%--                    <ul class="am-pagination">--%>
<%--                        <li ><a href="Admin?currentPage=${pageAdmin.currentPage-1 }">«</a></li>--%>
<%--                        <c:forEach begin="${pageAdmin.currentPage }"  end="${pageAdmin.pageNo }" var="i">--%>
<%--                            <li><a href="Admin?currentPage=${i }">${i }</a></li>--%>
<%--                        </c:forEach>--%>
<%--                        <li><a href="#">»</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
            </div>
        </div>

    </div>

    <!-- 搜索框就JS代码 -->
    <script type="text/javascript">
        window.onload = function(){
            var btn = document.getElementById("pbw-btn");
            var item = document.getElementById("pbw-select");

            // 点击事件
            btn.onclick = function(){
                //alert("得到点击事件");
                item.style.display = "inline";
            }
        }

        const vm  = new Vue({
            el:'.pb-work',
            data:{
                add:'hidden',
                student:'hidden',
                admin:'hidden'
            },
            methods:{
                changeStudent(){
                    console.log("点击了");
                    this.admin = "hidden";
                    this.student="show";
                },
                changeAdmin(){
                    this.admin = "show";
                    this.student="hidden";
                },
                changeAdd(){
                    this.add="show";
                },
                close(){
                    this.add="hidden";
                }
            }
        })
    </script>
</div>
</body>
</html>

