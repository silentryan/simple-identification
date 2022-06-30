<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
    <link rel="stylesheet" href="/css/manager.css">
    <!-- <link rel="stylesheet" href="../css/mana-side.css"> -->
    <link rel="stylesheet" href="/css/ali_iconfont.css">

    <!-- JQuery============================================== -->
    <script src="/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <script src="/js/bootstrap.js" charset="utf-8"></script>

    <title>贫困生智能认定系统 - 后台菜单</title>
</head>
<body>
<!-- 后台菜单页面 - 侧边框 -->
<div class="layui-side m-side">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">

            <li class="sidebar_header">
                <a class="sidebar_header_a" href="/manager.jsp">
                    <img src="/images/logo.png" alt="logo" width="50px" height="50px"><br/>
                    贫困生智能认定系统
                </a>
            </li>

            <li class="layui-nav-item sideBar_f">
                <a href="/poorInit.do">
                    <img src="/images/manager_blue/chengyuan.png">
                    贫困学生
                </a>
            </li>
            <li class="layui-nav-item sideBar_f">
                <a href="/money.jsp">
                    <img src="/images/manager_blue/zongzijinfenpei.png">
                    资金分配
                </a>
            </li>
            <li class="layui-nav-item sideBar_f">
                <a href="rightInit.do">
                    <img src="/images/manager_blue/quanxianguanli.png">
                    权限管理
                </a>
            </li>
            <li class="layui-nav-item sideBar_f">
                <a href="/dissent.jsp">
                    <img src="/images/manager_blue/yiyishenhe.png">
                    异议审核
                </a>
            </li>
            <li class="layui-nav-item sideBar_f">
                <a href="/setInit.do">
                    <img src="/images/manager_blue/quanzhong.png">
                    权重校订
                </a>
            </li>

            <li class="layui-nav-item sideBar_f">
                <a href="/mark.jsp">
                    <img src="/images/manager_blue/cundangdantiaocailiao.png">
                    材料盲审
                </a>
            </li>
            <!-- 一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一 -->
            <li class="layui-nav-item sideBar_item sideBar_item_f">
                <a href="/weightInit.do">
                    <img src="/images/矢量图/全部.png" alt="全部" >
                    全部
                </a>
            </li>
            <li class="layui-nav-item sideBar_item">
                <a href="#">
                    <img src="/images/矢量图/加号.png" alt="我创建">
                    我创建的
                </a>
            </li>
        </ul>
    </div>
</div>

<!-- ******************************************主体************************************************* -->
<div class="layui-body m-body">

    <!-- 上导航栏 -->
    <div class="startBox">
        <ul class="layui-nav nav-right Layui-row">
            <li class="layui-nav-item header-p layui-col-md6">
                <p>管理首页</p>
            </li>

            <li class="layui-nav-item startBox-item" id="item_1">
                <a href="#"><div class="iconfont icon-fangzi" title="管理"></div></a>
            </li>
            <li class="layui-nav-item startBox-item">
                <a href="#"><div class="iconfont icon-tongxunlu" title="通讯录"></div></a>
            </li>
            <li class="layui-nav-item startBox-item">
                <a href="#"><div class="iconfont icon-tubiaosvg-" title="站内信"></div></a>
            </li>
            <li class="layui-nav-item startBox-item">
                <a href="#"><div class="iconfont icon-wenhao" title="帮助"></div></a>
            </li>
            <li class="layui-nav-item startBox-item" id="item_button">
                <a href="#">
                    <button type="button" name="button">
                        <img src="/images/back/插件.png" alt="">
                        插件中心
                    </button>
                </a>
            </li>

            <li class="layui-nav-item startBox-item" id="item_img">
                <a href="#">
                    <!-- 图标徽章 -->
                    <img class="layui-nav-img" src="/images/back/head-logo.jpg" alt="">
                </a>
            </li>
        </ul>
    </div>

    <!-- 下内容框 -->
    <div class="m-context">

        <!-- 信息区 -->
        <div class="mc-topInfo">
          <span class="mct-rightBar">
            <div class="layui-card">
              <!-- 卡片头============================= -->
              <div class="layui-card-header sectionHeader">
                <p class="section-first-desc">
                  <img src="/images/back/勾.png" alt="">待办事项</p>
                <p class="section-second-desc">及时清理待办，可以有效提升流程效率</p>
              </div>

                <!-- 卡面主体========================== -->
              <div class="layui-card-body sectionBody">
                <div class="sb-desc">
                  <b>12</b>
                  <a id="sbd-one" href="#">全部待办</a>
                </div>
                <div class="sb-desc">
                  <b>12</b>
                  <a id="sbd-two" href="#">已超时</a>
                </div>
                <div class="sb-desc">
                  <b>12</b>
                  <a id="sbd-three" href="#">即将超时</a>
                </div>
                <div class="sb-desc">
                  <b>12</b>
                  <a id="sbd-four" href="#">催办</a>
                </div>
              </div>
            </div>
          </span>

            <span class="mct-leftBar">
            <p class="rightBar_desc" id="rightBar_f">
              <a href="#"><img src="/images/back/矢量图/写.png" alt="我发起的">我的权限</a>
            </p>
            <hr class="layui-bg-gray">
            <p class="rightBar_desc">
              <a href="#"><img src="/images/back/矢量图/抄送.png" alt="抄送事项">当前事务</a>
            </p>
            <hr class="layui-bg-gray">
            <p class="rightBar_desc">
              <a href="#">  <img src="/images/back/矢量图/草稿箱.png" alt="草稿箱">抄送事项</a>
            </p>
            <hr class="layui-bg-gray">
            <p class="rightBar_desc" id="rightBar_l">
              <a href="#">  <img src="/images/back/矢量图/已办.png" alt="已办事项">已办事项</a>
            </p>
          </span>
        </div>

        <!-- 工作面板区 -->
        <div class="mc-work">
            <div class="mcw-line">
                <span>常用</span>
                <span>
              <button type="button" name="button">
                <img src="/images/back/加号.png" alt="">
                创建
              </button>
            </span>
            </div>

            <!-- 直达工作区菜单面板 -->
            <div class="mcw-menu">
            <span class="mcwm-modle">
              <p class="mcwm-p">
                <img src="/images/back/section/icon_application_people.png" alt="贫困学生名单一览">
                贫困学生名单一览
              </p>
              <p>
                <a href="/poor.jsp">
                  <img class="mcwm-img" src="/images/back/眼睛_黑.png" alt="">
                </a>
              </p>
            </span>

                <span class="mcwm-modle">
              <p class="mcwm-p">
                <img src="/images/back/section/dashboard_money.png" alt="贫困学生名单一览">
                资金进出管理
              </p>
              <p>
                <a href="/money.jsp">
                  <img class="mcwm-img" src="/images/back/眼睛_黑.png" alt="">
                </a>
              </p>
            </span>

                <span class="mcwm-modle">
              <p class="mcwm-p">
                <img src="/images/back/section/icon_application_pen.png" alt="贫困学生名单一览">
                贫困学生文件审核
              </p>
              <p>
                <a href="/mark.jsp">
                  <img class="mcwm-img" src="/images/back/眼睛_黑.png" alt="">
                </a>
              </p>
            </span>
            </div>

        </div>
    </div>

</div>




</body>
</html>

