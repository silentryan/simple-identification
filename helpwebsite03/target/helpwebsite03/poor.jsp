<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:37
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
    <link rel="stylesheet" href="/css/poor.css">
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

    <title>贫困学生名单</title>
    <!-- 功能：查看学生的贫困指数，以及所有项的评分情况 - 最高权限才能查看 -->
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
            <a href="poorInit.do">
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


<!-- 右侧主体区域++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div class="layui-body p-body">
    <!-- 上册直达工作区 -->
    <div class="pb-section" name= "贫困学生名单一览">
        <div class="layui-card">
            <div class="layui-card-header">
                <ul class="layui-nav nav-right Layui-row">

                    <li class="layui-nav-item header-p layui-col-md1" id="item_1">
                        <p>贫困学生名单</p>
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
                <a href="/add.jsp" >
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
                    <button type="button" name="button">导出</button>
                </li>

                <li @click=setPoor class="">
                    <img src="/images/back/add_admin.png" alt="">
                    <button type="button" name="button">设定人员</button>
                </li>

                <li @click=showStudent class="">
                    <img src="/images/back/student.png" alt="">
                    <button type="button" name="button">贫困学生</button>
                </li>
                <li @click=showPoor class="">
                    <img src="/images/back/student.png" alt="">
                    <button type="button" name="button">公式名单</button>
                </li>
                <li @click=showCharts class="">
                    <img src="/images/back/图表.png" alt="">
                    <button type="button" name="button">图表</button>
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
                            <option value="grade">班级</option>
                            <option value="sid">学号</option>
                        </select>
                        <input type="text" name="context" placeholder="查询内容">
                        <input type="submit" value="查询">
                    </form>
                </li>
            </ul>
        </div>

        <!-- 展现名单区 -->
        <div id="pbw-main" class="pbw-show">
            <!-- 贫困学生 -->
            <div id="student" class="pbw-table" :class="student">
                <table border="1">
                    <tr class="pbwt-title">
                        <th></th><!-- 标头-选择 -->
                        <th>学号</th>
                        <th>学院</th>
                        <th>专业</th>
                        <th>年级</th>
                        <th>班级</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>手机号码</th>
                        <th>家庭人口</th>
                        <th>家属号码</th>
                        <th>家庭住址</th>
                        <th>贫困指数</th>
                    </tr>
<%--                    <c:forEach items="${requestScope.pagePoors}" var="student">--%>
<%--                        <tr style="height: 35px;font-size: 12px;text-align: center;">--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">--%>
<%--                                <input type="radio" name="selectPoors" value="">--%>
<%--                            </td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.sid}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.college}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.major}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.lesson}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.grade}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.sname}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.ssex}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.stel}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.fNum}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.fTel}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">${student.haddress}</td>--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;color: red;">${student.poveryIndex}</td>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>
                    <tr class="pbwt-content">
                        <td>
                            <input type="radio" name="select" value="">
                        </td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">181530252</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">软件学院</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">软件工程</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">18级</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">软工二班</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">陈玉军</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">男</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">18256625713</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">4</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">15201848028</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">安徽省池州市</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">52.34</td>
                    </tr>
                </table>
            </div>

            <!-- 公示名单-->
            <div id="poor" class="pbw-table" :class="poor">
                <table border="1">
                    <tr class="pbwt-title">
                        <th></th><!-- 标头-选择 -->
                        <th>学号</th>
                        <th>学院</th>
                        <th>班级</th>
                        <th>姓名</th>
                        <th>手机号码</th>
                        <th>贫困等级</th>
                        <th>贫困指数</th>
                        <th>支持人数</th>
                        <th>反对人数</th>
                        <th>公示</th>
                    </tr>
                    <tr class="pbwt-content">
                        <td>
                            <input type="radio" name="select" value="">
                        </td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">181530252</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">软件学院</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">软工二班</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">陈玉军</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">18256625713</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">2</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">52.34</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">0</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">0</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">
                            <button type="button" name="button" style="background-color: #1E9FFF;margin-left: 8px;">
                                <img src="/images/back/admin.png" alt="">公示
                            </button>
                        </td>
                    </tr>
                </table>
            </div>

            <!-- 图表-->
            <div id="charts" class="" :class="charts">
            </div>
            <!-- 设定人员-->
            <div id="pers" class="pers" :class="pers">
                <form class="" action="#" method="post">
                    <button @click=addDegree type="button" name="button">新增贫困等级</button>
                    <p class="p-modle">
                    <p>贫困等级1</p>
                    <p>
                        资助人数：
                        <input type="number" name="nums" value="">
                    </p>
                    <p>
                        资助金额：
                        <input type="number" name="nums" value="">
                    </p>
                    </p>
                    <hr>
                    <p class="p-modle">
                    <p>贫困等级2</p>
                    <p>
                        资助人数：
                        <input type="number" name="nums" value="">
                    </p>
                    <p>
                        资助金额：
                        <input type="number" name="nums" value="">
                    </p>
                    </p>
                    <hr>
                    <p class="p-modle">
                    <p>贫困等级3</p>
                    <p>
                        资助人数：
                        <input type="number" name="nums" value="">
                    </p>
                    <p>
                        资助金额：
                        <input type="number" name="nums" value="">
                    </p>
                    </p>
                    <input type="submit" name="" value="确定贫困人数">
                </form>
            </div>
        </div>

    </div>
</div>

</body>
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
            student:'hidden',
            poor:'hidden',
            charts:'hidden',
            pers:'hidden',
        },
        methods:{
            setPoor(){
                this.pers="show";
                this.poor = "hidden";
                this.charts = "hidden";
                this.student = "hidden";
            },
            showStudent(){
                this.poor = "hidden";
                this.charts = "hidden";
                this.student = "show";
                this.pers="hidden";
            },
            showPoor(){
                this.poor = "show";
                this.charts = "hidden";
                this.student = "hidden";
                this.pers="hidden";
            },
            showCharts(){
                this.poor = "hidden";
                this.charts = "show";
                this.student = "hidden";
                this.pers="hidden";
            },
            addDegree(){
                console.log("使用了这个方法");
            }
        }
    })
</script>
</html>

