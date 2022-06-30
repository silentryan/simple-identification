<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2022/3/16
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored ="false"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <base href="${pageContext.request.contextPath}">
    <!-- LOGO===================== -->
    <link rel="icon" href="../images/logo.png">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Bootstrap4======================================= -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- CSS============================================== -->
    <link rel="stylesheet" href="/css/help.css">

    <!-- JQuery============================================== -->
    <script src="/js/jquery-3.1.1.min.js" charset="utf-8"></script>
    <script src="/js/bootstrap.js" charset="utf-8"></script>

    <!-- VUE================================================= -->
    <script src="/js/vue.js" charset="utf-8"></script>

    <title>贫困生智能认定系统 - 补助申请</title>
</head>
<body>
<!-- 导航栏 -->
<div class="bk-nav">
    <div class="navbar navbar-expand-lg row">
        <ul class="navbar-nav">

            <li class="navbar-item">
                <a class="nav-link" href="/welcome.jsp">首页</a>
            </li>

            <li id="nav-one" class="navbar-item">
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

<!-- 填写框-内容框 -->
<div class="container-fluid  w-bar">

    <div class="container">

        <div class="h-side">
            <button type="button" name="button">
                <a href="#poor">贫困生申请</a>
            </button>

            <div class="h-space"></div>

            <button type="button" name="button">
                <a href="#special">特殊情况申请</a>
            </button>
        </div>

        <!-- 申请填写 -->
        <div class="h-context">

            <!-- 贫困生补助申请******************************************************************************* -->
            <div id="poor" class="poor">
                <!-- 1-基本情况 -->
                <div id="p-one" class="p-one">
                    <div class="p-title">
                        <span><img src="/images/序数/1.png" alt="1">基本情况</span>
                    </div>
                    <div class="p-context">
                        <form class="" action="poorInfo.do" method="post">
                            <table border="0" class="p-basic">
                                <tr class="pb-eve">
                                    <td>院系：<input type="text" name="college" value=""></td>
                                    <td>专业：<input type="text" name="major" value=""></td>
                                    <td>年级：<input type="text" name="lesson" value=""></td>
                                    <td>班级：<input type="text" name="grade" value=""></td>
                                </tr>

                                <tr class="pb-bas-one">
                                    <td>姓名：<input type="text" name="sname" value=""></td>
                                    <td>性别：<input type="radio" name="ssex" value="男">男&nbsp;&nbsp;&nbsp;<input type="radio" name="ssex" value="女">女</td>
                                    <td>籍贯：<input type="text" name="haddress" value=""></td>
                                    <td>学号：<input type="text" name="sid" value=""></td>
                                </tr>

                                <tr class="pb-bas-two">
                                    <td>身份证号码：<input type="text" name="sident" value=""></td>
                                    <td>家庭人口：<input type="number" name="fNum" value=""></td>
                                </tr>

                                <tr class="pb-conn">
                                    <td>手机号码：<input type="text" name="stel" value=""></td>
                                    <td>通讯地址：<input type="text" name="" value=""></td>
                                    <td>家属号码：<input type="text" name="fTel" value=""></td>
                                    <td>邮政编码：<input type="number" name="posCode" value=""></td>
                                    <td>邮箱地址：<input type="text" name="semail" value=""></td>
                                </tr>
                            </table>
                            <input type="submit" name="" value="填写完毕">
                        </form>
                    </div>
                </div>

                <!-- 2-家属情况 -->
                <div id="p-two" class="p-one">
                    <div class="p-title">
                        <span><img src="/images/序数/2.png" alt="1">家属情况</span>
                    </div>
                    <div class="p-context" id="p-basic" >
                        <form class="" action="relaInfo.do" method="post">
                            <button @click="addRela" type="button" name="button" id="pt-btn">
                                <img src="/images/矢量图/加.png" alt="">新增家属
                            </button>
                            <table border="0" class="p-basic">
                                <tr v-for="(r,index) in relatives" :key="index" class="pb-eve">
                                    <th>
                                        家属{{r.id}}：&nbsp;&nbsp;&nbsp;&nbsp;
                                    </th>
                                    <td>{{r.name}}：<input type="text" name="rname" value=""></td>
                                    <td>{{r.age}}：<input type="text" name="rage" value=""></td>
                                    <td>{{r.ident}}：<input type="text" name="rident" value=""></td>
                                    <td>{{r.earn}}：<input type="text" name="ryEarn" value=""></td>
                                    <td>{{r.healthy}}：<input type="text" name="healthy" value=""></td>
                                </tr>
                            </table>
                            <button type="button" name="button">填写完毕</button>
                        </form>
                    </div>
                </div>

                <!-- 3-提交材料 -->
                <div id="p-three" class="p-modle">
                    <div class="p-title">
                        <span><img src="/images/序数/3.png" alt="1">提交材料</span>
                    </div>
                    <div class="p-context">
                        <form class="" action="#" method="post">
                            <!-- 材料信息描述 -->
                            <div class="pc-content">
                                <p class="pcc-one">
                                    材料{{index}}
                                    <button @click="addFile" type="button" name="button">
                                        <img src="/images/矢量图/加.png" alt="">新增材料
                                    </button>
                                </p>
                                <p>材料名：&nbsp;&nbsp;<input type="text" name="mname" value=""></p>
                                <p>材料对象：<input type="text" name="mobj" value=""></p>
                                材料类型：
                                <select class="" name="">
                                    <option value="picture">图片</option>
                                    <option value="mtext">文本</option>
                                </select>
                            </div>

                            <!-- 提交材料 -->
                            <div class="pc-file">
                                <input type="file" multiple name="" value=""><br>
                                <textarea name="content" rows="7" cols="60" placeholder="请简洁填写关于提交材料的描述"></textarea>
                            </div>

                            <a href="#p-three">
                                <input type="submit" name="" value="填写完毕">
                            </a>
                        </form>
                    </div>
                </div>

                <!-- 4-权限授权 -->
                <div id="p-four" class="p-modle">
                    <div class="p-title">
                        <span><img src="/images/序数/4.png" alt="1">权限授权</span>
                    </div>
                    <div class="p-context">
                        <form class="" action="#" method="post">

                            <a href="#p-three">
                                <input type="submit" name="" value="填写完毕">
                            </a>
                        </form>
                    </div>
                </div>
            </div>


            <!-- 特殊情况申请*********************************************************************************** -->
            <div id="special" class="special">

            </div>


        </div>
    </div>
</div>
</body>

<script type="text/javascript">
    const vm = new Vue({
        el: '#p-basic',
        data:{
            num:2,
            relatives:[
                {id:1,name:"姓名" ,age:"年龄", ident:"身份",earn:"年收入", healthy:"健康情况"}
            ]
        },
        methods:{
            addRela(){
                // this.id++;
                // console.log(this.id);
                const r = {id:this.num++,name:"姓名" ,age:"年龄", ident:"身份" ,earn:"年收入", healthy:"健康情况"}
                this.relatives.push(r);  // unshift()是往头部加,push()是尾部加
                console.log("这个方法运行了");
            }
        }
    })

</script>
</html>
