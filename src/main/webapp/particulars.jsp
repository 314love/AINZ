<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2022/2/15
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>常见农作物视图</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords">
    <meta name="description">
    <script src="js/echarts.min.js"></script>
    <link href="css4/bootstrap.min.css" rel="stylesheet">
    <link href="css4/materialdesignicons.min.css" rel="stylesheet">
    <link href="css4/style.min.css" rel="stylesheet">
</head>
<style>
    #sousuo{
        position: relative;
        left: 560px;
        top: 0px;
    }
    .ComData{
        width: 25px;
        height: 25px;
        margin-left: -15px;
        margin-top: -5px;
        margin-right: 3px
    }
</style>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <span style="font-size: 30px;color: #5290c2;"><img src="image/logo.png" title="数据中心" alt="LightYear" style="height: 76px;width: 116px;padding-left: 16px;"/>数据中心</span>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active">
                            <a href="knowledge.jsp" style="font-size: 17px;">
                                <img src="image/c1.png" class="ComData"/>
                                病虫害数据</a>
                        </li>
                        <li class="nav-item active">
                            <a href="commoncrop.jsp" style="font-size: 17px;">
                                <img src="image/c2.png" class="ComData"/>
                                农作物数据</a>
                        </li>
                        <li class="nav-item active">
                            <a href="${pageContext.request.contextPath}/knowledge/selectAll" style="font-size: 17px;">
                                <img src="image/c3.png" class="ComData"/>
                                详情数据查询</a>
                        </li>
                        <li class="nav-item active">
                            <a href="calendartable.jsp" style="font-size: 17px;">
                                <img src="image/c4.png" class="ComData" />
                                常见作物农历表</a>
                        </li>
                        <li class="nav-item active">
                            <a href="${pageContext.request.contextPath}/history/selectAll" style="font-size: 17px;">
                                <img src="image/c5.png" class="ComData" />
                                历史查找记录</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!--End 左侧导航-->
        <!--头部信息-->
        <header class="lyear-layout-header">
            <nav class="navbar navbar-default">
                <div class="topbar">
                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title" style="font-size: 30px;"> 农业知识普及-病虫害详情 </span>
                    </div>
                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="index.jsp"  style="font-size: 22px;">
                                返回首页
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!--End 头部信息-->
        <!--End 页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <a href="cyclopedia.jsp"><button style="background-color: #008689;color: white;width: 94px;height: 38px;border: 1px solid #008689;"><font color="white">返回</font></button></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <center>
                            <div>
                                <font style="color: #776b6b;font-size: 106px;font-family: 华文楷体">
                                    ${knowledgE.name}
                                </font>
                            </div>
                        </center>
                    </div>
                    <div class="col-lg-6">
                        <center>
                        <div style="width: 450px;height: 200px;float: left;margin-right: 20px">
                            <img src="${knowledgE.image}" style="height: 200px;width: 660px">
                        </div>
                        </center>
                    </div>
                    <div class="col-lg-12" style="margin-top: 20px;background-color: #d3dff8;height: 50px">
                        <span style="font-size: 33px;font-weight: bolder;font-family: 华文楷体">危害</span>
                    </div>
                    <div class="col-lg-12" style="margin-top: 20px;height: 50px">
                        <span style="font-size: 25px;font-weight: bolder;font-family: 华文楷体">${knowledgE.harm}</span>
                    </div>
                    <div class="col-lg-12" style="margin-top: 20px;background-color: #d3dff8;height: 50px">
                        <span style="font-size: 33px;font-weight: bolder;font-family: 华文楷体">症状</span>
                    </div>
                    <div class="col-lg-12" style="margin-top: 20px;height: 50px">
                        <span style="font-size: 25px;font-weight: bolder;font-family: 华文楷体">${knowledgE.symptom}</span>
                    </div>
                    <div class="col-lg-12" style="margin-top: 20px;background-color: #d3dff8;height: 50px">
                        <span style="font-size: 33px;font-weight: bolder;font-family: 华文楷体">防治方式</span>
                    </div>
                    <div class="col-lg-12" style="margin-top: 20px;height: 50px">
                        <span style="font-size: 25px;font-weight: bolder;font-family: 华文楷体">${knowledgE.pmethods}</span>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
</body>
</html>
