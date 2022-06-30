<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/14
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored ="false"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <base href="${pageContext.request.contextPath}/">
    <!-- LOGO===================== -->
    <link rel="icon" href="/images/logo.png">
    <!-- CSS============================================== -->
    <link rel="stylesheet" href="/css/login.css">
<%--    ${pageContext.request.contextPath}--%>
    <title>贫困生智能认定系统 - 登录</title>
</head>
<body>

<form class="box" action="login.do" method="post">
    <h1>登录</h1>
    <span style="color: red;">${requestScope.message}</span><br/>
    <input type="text" name="username" placeholder="用户名">
    <input type="password" name="password" placeholder="密码">
    <input type="submit" name="" value="登录">
</form>

</body>
</html>
