<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:35
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
    <link rel="stylesheet" href="/css/show.css">

    <!-- JQuery============================================== -->
    <script src="/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <script src="/js/bootstrap.js" charset="utf-8"></script>

    <title>贫困生智能认定系统 - 人员公示</title>
</head>
<body>
<!-- 导航栏-******************************************************************************** -->
<div class="bk-nav">
    <div class="navbar navbar-expand-lg row">
        <ul class="navbar-nav">

            <li class="navbar-item">
                <a class="nav-link" href="/welcome.jsp">首页</a>
            </li>

            <li class="navbar-item">
                <a class="nav-link" href="/help.jsp">补助申请</a>
            </li>

            <li id="nav-one" class="navbar-item ">
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

<!-- 正文内容 -->
<div class="s-bar">
    <!-- 侧边导航栏************************************************************************ -->
    <div class="s-side">
        <ul class="s-sidebar">
            <li><a href="#literature">文学院</a></li>
            <li><a href="#news">新闻与传播学院</a></li>
            <li><a href="#math">数学与信息科学学院</a></li>
            <li><a href="#econamic">经济与管理学院</a></li>
            <li><a href="#electric">电气信息工程学院</a></li>
            <li><a href="#chemistry">化学化工学院</a></li>
            <li><a href="#medical">医学院</a></li>
            <li><a href="#computer">计算机科学与技术学院</a></li>
            <li><a href="#soft">软件学院</a></li>
            <li><a href="#politics">政法学院</a></li>
            <li><a href="#teacher">师范教育学院</a></li>
            <li><a href="#music">音乐学院</a></li>
            <li><a href="#sport">体育学院</a></li>
            <li><a href="#art">艺术与设计学院</a></li>
            <li><a href="#environment">资源与环境科学学院</a></li>
        </ul>
    </div>

    <!-- 正文-公示名单************************************************************************ -->
    <div class="s-context">
        <div id="literature" class="s-model">
            <div class="s-title">
                <span>文学院</span>
                <span></span>
            </div>
            <div class="s-person">

                <div class="per-box per-one">
              <span class="">
                  <img src="/images/back/admin.png" alt="" style="width:100px;height:100px;background-color: white;">
              </span>
                    <!-- 学院-班级 -->
                    <span>
                <h6>学院：</h6>文学院
                <h6>班级：</h6>18语言文学一班
              </span>
                    <!-- 姓名 -->
                    <span>
                <h6>姓名：</h6>古仁
              </span>
                    <!-- 贫困指数 -->
                    <span>
                <h6>贫困指数：</h6>70.00
              </span>
                    <!--  申请理由 - 将学生填写的申请文件放入此处  -->
                    <span>
                <h6>申请理由：</h6>
                <p>10月15日24点，全校高校助学贷款申贷数据录入工作结束。在此之前各学院自行安排时间打印学生贷款信息，至少组织一次贷款学生审核个人信息,
                主要包括是否注册学籍、姓名、身份证号、学制、入学时间、学院、班级、联系电话、家庭住址（省市县镇/乡村五级，不能重复，具体到家庭门牌号。）、
                贷款金额（整百）、生活费最高申请不超过4000元、贷款年限（建议贷款年限选择长一点，见附件5）等信息真实、准确、完整.错误信息修改工作。复审通过后，通过开行国家助学贷款系统报送贷款信息。
                4、10月25日17时前，各学院上交《贷款申请表》。各学院将收齐的学生《贷款申请表》（核对借款人是否签字确认并加盖学院公章）报送至学校资助中心，学校资助中心加盖公章后.</p>
              </span>
                    <span class="per-box_fun">
                <a href="#"><img src="/images/矢量图/show-page/more.png" alt=""></a>
                <a id="per-box_fun_second" href="#"><img src="/images/矢量图/show-page/disagree.png" alt=""></a>
                <a href="#"><img src="/images/矢量图/show-page/support_red.png" alt=""></a>
              </span>
                </div>

                <div class="per-box per-two">
              <span class="">
                 <img src="/images/back/admin.png" alt="" style="width:100px;height:100px;background-color: white;">
              </span>
                    <!-- 学院-班级 -->
                    <span>
                <h6>学院：</h6>文学院
                <h6>班级：</h6>18语言文学一班
              </span>
                    <!-- 姓名 -->
                    <span>
                <h6>姓名：</h6>王铮
              </span>
                    <!-- 贫困指数 -->
                    <span>
                <h6>贫困指数：</h6>65.02
              </span>
                    <!--  申请理由 - 将学生填写的申请文件放入此处  -->
                    <span>
                <h6>申请理由：</h6>
                <p>10月15日24点，全校高校助学贷款申贷数据录入工作结束。在此之前各学院自行安排时间打印学生贷款信息，至少组织一次贷款学生审核个人信息,
                主要包括是否注册学籍、姓名、身份证号、学制、入学时间、学院、班级、联系电话、家庭住址（省市县镇/乡村五级，不能重复，具体到家庭门牌号。）、
                贷款金额（整百）、生活费最高申请不超过4000元、贷款年限（建议贷款年限选择长一点，见附件5）等信息真实、准确、完整.错误信息修改工作。复审通过后，通过开行国家助学贷款系统报送贷款信息。
                4、10月25日17时前，各学院上交《贷款申请表》。各学院将收齐的学生《贷款申请表》（核对借款人是否签字确认并加盖学院公章）报送至学校资助中心，学校资助中心加盖公章后.</p>
              </span>
                    <span class="per-box_fun">
                <a href="#"><img src="/images/矢量图/show-page/more.png" alt=""></a>
                <a id="per-box_fun_second" href="#"><img src="/images/矢量图/show-page/disagree.png" alt=""></a>
                <a href="#"><img src="/images/矢量图/show-page/support_red.png" alt=""></a>
              </span>
                </div>

                <div class="per-box per-three">
              <span class="">
                 <img src="/images/back/admin.png" alt="" style="width:100px;height:100px;background-color: white;">
              </span>
                    <!-- 学院-班级 -->
                    <span>
                <h6>学院：</h6>文学院
                <h6>班级：</h6>18语言文学一班
              </span>
                    <!-- 姓名 -->
                    <span>
                <h6>姓名：</h6>吕昊
              </span>
                    <!-- 贫困指数 -->
                    <span>
                <h6>贫困指数：</h6>68.39
              </span>
                    <!--  申请理由 - 将学生填写的申请文件放入此处  -->
                    <span>
                <h6>申请理由：</h6>
                <p>10月15日24点，全校高校助学贷款申贷数据录入工作结束。在此之前各学院自行安排时间打印学生贷款信息，至少组织一次贷款学生审核个人信息,
                主要包括是否注册学籍、姓名、身份证号、学制、入学时间、学院、班级、联系电话、家庭住址（省市县镇/乡村五级，不能重复，具体到家庭门牌号。）、
                贷款金额（整百）、生活费最高申请不超过4000元、贷款年限（建议贷款年限选择长一点，见附件5）等信息真实、准确、完整.错误信息修改工作。复审通过后，通过开行国家助学贷款系统报送贷款信息。
                4、10月25日17时前，各学院上交《贷款申请表》。各学院将收齐的学生《贷款申请表》（核对借款人是否签字确认并加盖学院公章）报送至学校资助中心，学校资助中心加盖公章后.</p>
              </span>
                    <span class="per-box_fun">
                <a href="#"><img src="/images/矢量图/show-page/more.png" alt=""></a>
                <a id="per-box_fun_second" href="#"><img src="/images/矢量图/show-page/disagree.png" alt=""></a>
                <a href="#"><img src="/images/矢量图/show-page/support_red.png" alt=""></a>
              </span>
                </div>

            </div>
        </div>
    </div>

</div>

</body>
</html>

