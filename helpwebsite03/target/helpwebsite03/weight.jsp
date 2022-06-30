<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:59
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
    <link rel="stylesheet" href="/css/weight.css">
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
    <title>初始化权重</title>
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
                        <p>初始化权重</p>
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
                <a href="./add.jsp" >
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
    <!-- 工作区 -->
    <div class="pb-work">
        <div class="pbw-header">
            <ul class="pbw-nav">
                <li class="">
                    <span class="iconfont icon-share"></span>
                    <button type="button" name="button">导入</button>
                </li>

                <li @click=showWeight>
                    <img src="/images/back/眼睛_黑.png" alt="" style="width:18px;height:18px;">
                    <button type="button" name="button">
                        已有方案
                    </button>
                </li>

                <li @click=setWeight>
                    <img src="/images/back/sheding.png" alt="">
                    <button type="button" name="button">
                        设定权重
                    </button>
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
            <div class="pbw-table" :class="show">
                <table border="1">
                    <tr class="pbwt-title">
                        <th>选择</th><!-- 标头-选择 -->
                        <th>方案号</th>
                        <th>设立人</th>
                        <th>父亲年龄%</th>
                        <th>母亲年龄%</th>
                        <th>家庭收入%</th>
                        <th>父母健康%</th>
                        <th>材料等级%</th>
                        <th>材料分类%</th>
                        <th>异议等级%</th>
                        <th>消费指数%</th>
                        <th>材料指数%</th>
                        <th>亲属指数%</th>
                        <th>异议指数%</th>
                    </tr>
<%--                    <c:forEach items="${requestScope.pageWeights}" var="weight">--%>
<%--                        <tr style="height: 35px;font-size: 12px;text-align: center;">--%>
<%--                            <td style="padding-top: 10px;padding-bottom: 10px;">--%>
<%--                                <input type="radio" name="selectWeight" value="">--%>
<%--                            </td>--%>
<%--                            <td >${weight.wid}</td>--%>
<%--                            <td >${weight.aid}</td>--%>
<%--                            <td >${weight.fage}</td>--%>
<%--                            <td >${weight.mage}</td>--%>
<%--                            <td >${weight.totalEarn}</td>--%>
<%--                            <td >${weight.healthy}</td>--%>
<%--                            <td >${weight.degree}</td>--%>
<%--                            <td >${weight.variety}</td>--%>
<%--                            <td >${weight.ddegree}</td>--%>
<%--                            <td >${weight.consumptionIndex}</td>--%>
<%--                            <td >${weight.materialIndex}</td>--%>
<%--                            <td >${weight.relativeIndex}</td>--%>
<%--                            <td >${weight.opinionIndex}</td>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>
                    <tr class="pbwt-content">
                        <td>
                            <input type="radio" name="select" value="">
                        </td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">1</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">root</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">20</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">20</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">30</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">30</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">50</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">50</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">100</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">25</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">25</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">25</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">25</td>
                        <td style="padding-top: 10px;padding-bottom: 10px; text-align: center;">25</td>
                    </tr>·

                </table>
            </div>

            <div class="pbwm-from" :class="set">

              <span id="relative" class="doBox">
                <p>亲属贫困指数（单位：百分）</p>
                <form class="" action="relative.do" method="post">
                  <span>
                    父亲年龄<input type="number" name="fage" value="">
                  </span>
                  <span>
                    母亲年龄<input type="number" name="mage" value="">
                  </span>
                  <span>
                    家庭收入<input type="number" name="totalEarn" value="">
                  </span>
                  <span>
                    亲属健康<input type="number" name="healthy" value="">
                  </span>
                  <input type="submit" name="" value="计算贫困指数">
                </form>
              </span>

                <span id="material" class="doBox">
                <p>材料贫困指数（单位：百分）</p>
                <form class="" action="material.do" method="post">
                  <span>
                    材料等级<input type="number" name="degree" value="">
                  </span>
                  <span>
                    材料种类<input type="number" name="variety" value="">
                  </span>
                  <input type="submit" name="" value="计算材料指数">
                </form>
              </span>

                <span id="opinion" class="doBox">
                <p>异议贫困指数（单位：百分）</p>
                <form class="" action="opinion.do" method="post">
                  <span>
                    异议等级<input type="ddegree" name="" value="">
                  </span>
                  <input type="submit" name="" value="计算异议指数">
                </form>
              </span>

                <span id="poverty" class="finalBox">
                <p>学生贫困指数（单位：百分）</p>
                <form class="" action="poverty.do" method="post">
                  <span>
                    亲属贫困指数<input type="number" name="relativeIndex" value="">
                  </span>
                  <span>
                    材料贫困指数<input type="number" name="materialIndex" value="">
                  </span><br>
                  <span>
                    消费贫困指数<input type="number" name="consumptionIndex" value="">
                  </span>
                  <span>
                    异议贫困指数<input type="number" name="opinionIndex" value="">
                  </span>
                  <input type="submit" name="" value="开启智能认定">
                </form>
              </span>
            </div>

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
            show:'hidden',
            set:'hidden'
        },
        methods:{
            showWeight(){
                console.log("点击了");
                this.set = "hidden";
                this.show="show";
            },
            setWeight(){
                this.set = "show";
                this.show="hidden";
            }
        }
    })
</script>
</body>
</html>

