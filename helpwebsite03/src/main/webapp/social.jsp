<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <base href="${pageContext.request.contextPath}">
    <!-- LOGO===================== -->
    <link rel="icon" href="/images/logo.png">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Bootstrap4======================================= -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- CSS============================================== -->
    <link rel="stylesheet" href="/css/help.css">

    <!-- JQuery============================================== -->
    <script src="/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <script src="/js/bootstrap.js" charset="utf-8"></script>

    <title>贫困生智能认定系统 - 社会援助</title>
    <title></title>
</head>
<body>
<div class="bk-nav">
    <div class="navbar navbar-expand-lg row">
        <ul class="navbar-nav">

            <li class="navbar-item">
                <a class="nav-link" href="/welcome.jsp">首页</a>
            </li>

            <li class="navbar-item">
                <a class="nav-link" href="/help.jsp">补助申请</a>
            </li>

            <li class="navbar-item ">
                <a class="nav-link" href="/show.jsp">人员公示</a>
            </li>

            <!-- <li class="navbar-item">
              <a class="nav-link" href="./school.html">校内捐献</a>
            </li> -->

            <li class="navbar-item">
                <a class="nav-link" href="/social.jsp">社会捐助</a>
            </li>

            <li class="navbar-item last_item">
                <!-- bootstrap下拉菜单注意事项 - 先引入jquery，后引入bootstrap.js，否则无法下拉 -->
                <div class="dropdown">
                    <div class="headGroup btn-group">
                        <a href="/login.jsp">
                            <button type="button" class="">
                                <img id="headImg" class="mx-auto d-block img-fluid img-thumbnai" src="/images/head.png" alt="">
                            </button>
                        </a>
                        <!-- <button type="button" class="dropdown-toggle" data-toggle="dropdown"></button>
                        <div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuLink">
                          <a class="dropdown-item" href="#">个人主页</a>
                          <a class="dropdown-item" href="#">信息认证</a>

                        </div> -->

                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>

