<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2022/2/15
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>病害</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords">
    <meta name="description">
    <link href="css4/bootstrap.min.css" rel="stylesheet">
    <link href="css4/materialdesignicons.min.css" rel="stylesheet">
    <link href="css4/style.min.css" rel="stylesheet">
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
</head>
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
                        <span class="navbar-page-title" style="font-size: 30px;"> 农业知识普及-历史记录查找 </span>
                        <span style="font-size: 17px;color: #c4c4c3"> 我们的足迹，我们的关怀 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="${pageContext.request.contextPath}/index.jsp"  style="font-size: 22px;">
                                返回首页
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!--End 头部信息-->
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12" style="background-color: #f2f2f2">

                    </div>
                    <div style="background-color: #f2f2f2;width: 1433px;float: left;margin-left: 127px;margin-top: 20px">
                 <table border="1px solid #f2f2f2" style="margin-left: 50px;background-color: white;margin-top: 50px">
                     <tr>
                         <th style="width: 280px;text-align: center;height: 45px">
                             ID
                         </th>
                         <th style="width: 350px;text-align: center">
                             病虫害名称
                         </th>
                         <th style="width: 350px;text-align: center">
                             搜索时间
                         </th>
                         <th style="width: 350px;text-align: center">
                             搜索次数
                         </th>
                     </tr>
                     <c:if test="${empty pageInfo.list}">
                         <center>
                             <a href="${pageContext.request.contextPath}/index.jsp"><img src="image/error.png" alt="">
                                 <div style="font-family: 华文楷体;color: black;font-size: 43px">
                                     不好意思。暂无搜索记录,点击返回主页
                                 </div>
                             </a>
                         </center>
                     </c:if>
                     <c:if test="${!empty pageInfo.list}">
                         <c:forEach items="${pageInfo.list}" var="record">
                             <tr>
                                 <th style="width: 200px;text-align: center;height: 45px;font-size: 20px">
                                     ${record.did}
                                 </th>
                                 <th style="width: 200px;text-align: center;font-size: 20px">
                                         ${record.name}
                                 </th>
                                 <th style="width: 200px;text-align: center;font-size: 20px">
                                         ${record.time}

                                 </th>
                                 <th style="width: 200px;text-align: center;font-size: 20px">
                                         ${record.count}
                                 </th>
                             </tr>
                         </c:forEach>
                     </c:if>
                 </table>
                        <div style="margin-top: 20px">
                            <center>
                            <ul class="pagination" style="text-align:center; margin-top:10px;">
                                <!--todo 当前页为第一页时，不显示首页和上一页-->
                                <c:if test="${pageInfo.pageNum>1}">
                                    <a href="${pageContext.request.contextPath}/history/selectAll?pagenum=1" style="font-size: 30px">首页</a>
                                    <a href="${pageContext.request.contextPath}/history/selectAll?pagenum=${pageInfo.pageNum-1}" style="font-size: 30px">上一页</a>
                                </c:if>
                                <%--todo 遍历页码--%>
                                <c:forEach  begin="1" end="${pageInfo.pages}" var="num">
                                    <a href="${pageContext.request.contextPath}/history/selectAll?pagenum=${num}" style="font-size: 30px">${num}</a>
                                </c:forEach>
                                <!--todo 当前页为最后一页时，不显示下一页和尾页-->
                                <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                                    <a href="${pageContext.request.contextPath}/history/selectAll?pagenum=${pageInfo.pageNum+1}" style="font-size: 30px">下一页</a>
                                    <a href="${pageContext.request.contextPath}/history/selectAll?pagenum=${pageInfo.pages}" style="font-size: 30px">尾页</a>
                                </c:if>
                            </ul>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
</body>
</html>
