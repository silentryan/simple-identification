<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/4/14
  Time: 9:17
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
    <link rel="stylesheet" href="/css/politic.css">
    <link rel="stylesheet" href="/css/mana-side.css">
    <link rel="stylesheet" href="/css/ali_iconfont_1.css">
    <link rel="stylesheet" href="/css/ali_iconfont_2.css">
    <link rel="stylesheet" href="/css/ali_iconfont.css">
    <link rel="stylesheet" href="/css/work.css">

    <!-- JQuery============================================== -->
    <script src="/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <title>政策信息</title>
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
            <a href="/poor.jsp">
                <img src="/images/back/icon_side/xueshengdangan.png" alt="">
                贫困学生名单
            </a>
        </li>

        <li class="layui-nav-item">
            <a href="/right.jsp">
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
                        <p>政策信息</p>
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
                                <img src="/images/back/插件.png" alt="">
                                插件中心
                            </button>
                        </a>
                    </li>

                    <li class="layui-nav-item" id="item_img">
                        <a href="#">
                            <!-- 图标徽章 -->
                            <img class="layui-nav-img" src="/images/back/head-logo.jpg" alt="">
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
                    <button type="button" name="button">发布政策</button>
                </li>


            </ul>
        </div>

        <!-- 展现名单区 -->
        <!-- 展现名单区 -->
        <div id="student" class="pbw-show">
            <div class="pbws-content">
                <p>
                    发布板块：
                    <input type="text" name="" value="">
                </p>
                <p>
                    发布内容：
                    <input type="file" name="" value=""><br>
                    <textarea name="name" rows="8" cols="80"></textarea>
                </p>
            </div>
        </div>
    </div>

    <!-- 搜索框就JS代码 -->
    <!-- <script type="text/javascript">
      window.onload = function(){
        var btn = document.getElementById("pbw-btn");
        var item = document.getElementById("pbw-select");

        // 点击事件
        btn.onclick = function(){
          //alert("得到点击事件");
          item.style.display = "inline";
        }
      }
    </script> -->
</div>
</body>
</html>

