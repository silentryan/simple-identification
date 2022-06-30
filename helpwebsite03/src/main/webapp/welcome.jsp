<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/14
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored ="false"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <!-- LOGO===================== -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Bootstrap4======================================= -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- CSS============================================== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/welcome.css">

    <!-- JQuery============================================== -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js" charset="utf-8"></script>

    <title>贫困生智能认定系统 - 主页</title>
</head>
<body>
<!-- 页头 -->
<!-- <header>
  <h7>平顶山学院 - 贫困生智能认定系统</h7>
</header> -->

<!-- 导航栏-->
<div class="bk-nav">
    <div class="navbar navbar-expand-lg row">
        <ul class="navbar-nav">

            <li class="navbar-item">
                <a id="nav-one" class="nav-link" href="${pageContext.request.contextPath}/welcome.jsp">首页</a>
            </li>

            <li class="navbar-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/help.jsp">补助申请</a>
            </li>

            <li class="navbar-item ">
                <a class="nav-link" href="${pageContext.request.contextPath}/show.jsp">人员公示</a>
            </li>

            <!-- <li class="navbar-item">
              <a class="nav-link" href="./school.html">校内捐献</a>
            </li> -->

            <li class="navbar-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/social.jsp">社会捐助</a>
            </li>

            <li class="navbar-item last_item">
                <!-- bootstrap下拉菜单注意事项 - 先引入jquery，后引入bootstrap.js，否则无法下拉 -->
                <div class="dropdown">
                    <div class="headGroup btn-group">
                        <a href="${pageContext.request.contextPath}/login.jsp">
                            <button type="button" class="">
                                <img id="headImg" class="mx-auto d-block img-fluid img-thumbnai" src="${pageContext.request.contextPath}/images/head.png" alt="">
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

<!-- 主容器 -->
<div class=" container-fluid ">
    <div class=" main container">
        <!-- 主内容================================================================================================================== -->
        <div class=" mainBar row">
            <!-- 政策法规栏 -->
            <span class="politic">
            <!-- 标头 -->
            <div class="po-head">
              <img class="iconfont" id="icon-xinxi" src="${pageContext.request.contextPath}/images/矢量图/xinxi.png" alt="" title="信息">最新政策
              <a href="#">MORE···</a>
            </div>

                <!-- 信息栏============================================================================================================== -->
            <div class="po-info" >
              <ul>
                <li id="first" style="margin-bottom: 10px;">
                  <a href="#" title="家庭经济困难学生" style="font-weight:bold;color:#ed0e37;">关于做好2021-2022学年家庭经济困难学生认定工作的通知</a>

                  <p>为做好家庭经济困难学生资助工作，增强资助的针对性和有效性，切实保证各项资助政策落到实处，根据《河南省教育厅等七部门<关于印发河南省家庭经济困难学生认定工作实施办法>的通知》（豫教财〔2019〕84号）</p>
                </li>
                <hr>

                <li class="po-info-item">
                  <span class="date fr">2022-02-20</span>
                  <a href="#" title="相关事宜的通知" style="font-weight:bold;color: #ed0e37;">关于做好2021-2022学年家庭经济困难学生认定工作的通知</a>
                </li>
                <li class="po-info-item">
                  <span class="date fr">2022-02-20</span>
                  <a href="#" title="相关事宜的通知" style="font-weight:bold;color: #444;">为做好家庭经济困难学生资助工作，增强资助的针对性和有效性</a>
                </li>
                <li class="po-info-item">
                  <span class="date fr">2022-02-20</span>
                  <a href="#" title="相关事宜的通知" style="font-weight:bold;color: #444;">为做好家庭经济困难学生资助工作，增强资助的针对性和有效性</a>
                </li>
                <li class="po-info-item">
                  <span class="date fr">2022-02-20</span>
                  <a href="#" title="相关事宜的通知" style="font-weight:bold;color: #444;">为做好家庭经济困难学生资助工作，增强资助的针对性和有效性</a>
                </li>
                <li class="po-info-item">
                  <span class="date fr">2022-02-20</span>
                  <a href="#" title="相关事宜的通知" style="font-weight:bold;color: #444;">为做好家庭经济困难学生资助工作，增强资助的针对性和有效性</a>
                </li>

              </ul>
            </div>

          </span>


            <!-- 最新通知公告栏 -->
            <span class="notice">
            <div class="po-head">
              <img class="iconfont" id="icon-xinxi" src="${pageContext.request.contextPath}/images/矢量图/xinxi.png" alt="" title="信息">通知公告
              <a href="#">MORE···</a>
            </div>

            <ul>
              <li class="no-item">
                <div class="no-fl">
                  <span class="md">02-20</span>
                  <span class="year">2022</span>
                </div>
                <div class="no-text">
                  <a href="#" title="通知" style="font-weight:bold;color:#ed0e37;">关于做好2021-2022学年家庭经济困难学生认定工作的通知...</a>
                </div>
              </li>

              <li class="no-item">
                <div class="no-fl">
                  <span class="md">02-20</span>
                  <span class="year">2022</span>
                </div>
                <div class="no-text">
                  <a href="#" title="通知" style="font-weight:bold;color:#444;">关于做好2021-2022学年家庭经济困难学生认定工作的通知...</a>
                </div>
              </li>

              <li class="no-item">
                <div class="no-fl">
                  <span class="md">02-20</span>
                  <span class="year">2022</span>
                </div>
                <div class="no-text">
                  <a href="#" title="通知" style="font-weight:bold;color:#444;">关于做好2021-2022学年家庭经济困难学生认定工作的通知...</a>
                </div>
              </li>

              <li class="no-item">
                <div class="no-fl">
                  <span class="md">02-20</span>
                  <span class="year">2022</span>
                </div>

                <div class="no-text">
                  <a href="#" title="通知" style="font-weight:bold;color:#444;">关于做好2021-2022学年家庭经济困难学生认定工作的通知...</a>
                </div>
              </li>

            </ul>



          </span>

        </div>

        <!-- 中置信息导航-*********************** -->
        <div class="centerBar row">
          <span class="col-md-4 ce-one">
            <img src="${pageContext.request.contextPath}/images/矢量图/link_icon_01.png" alt="">
            <h4>国家方针</h4>
          </span>
            <span class="col-md-4 ce-two">
            <img src="${pageContext.request.contextPath}/images/矢量图/link_icon_02.png" alt="">
            <h4>政策展示</h4>
          </span>
            <span class="col-md-4 ce-three">
            <img src="${pageContext.request.contextPath}/images/矢量图/link_icon_03.png" alt="">
            <h4>信息公开</h4>
          </span>
        </div>

        <!-- 个性内容框*************************** -->
        <div class="specificBar row">
            <div class="sp-text">
                <p>
                    “我们的人民热爱生活，期盼有更好的教育、更稳定的工作、更满意的收入……
                    期盼孩子们能成长得更好、工作得更好、生活得更好。人民对美好生活的向往，就是我们的奋斗目标。”
                </p>
                <p>
                    “只要从小就沿着正确道路走，学到一点，就实践一点，努力做最好的我、在自己最好的方面，人生就会迎来一路阳光。”
                </p>
            </div>
            <div class="sp-img">
                <img src="${pageContext.request.contextPath}/images/习大大.png" alt="">
            </div>
        </div>
    </div>
</div>

<footer class="footBar">
    <div class="foot-box">
        <div class="foot_bq"><!-- 版权内容请在本组件"内容配置-版权"处填写 -->
            <p>地址：河南省平顶山市新华区未来路南段 &nbsp; 邮政编码：467000<br>版权所有©平顶山学院&nbsp; &nbsp; &nbsp; 豫ICP备<a href="#" target="_self">
                <span style="color: #ffffff">05002430</span></a>号-1&nbsp; &nbsp; &nbsp;豫公网安备
                <a title="联网备案信息" href="#" target="_blank" style="text-decoration: none; color: #ffffff"></a>
            </p>
        </div>

    </div>
</footer>




</body>
</html>

