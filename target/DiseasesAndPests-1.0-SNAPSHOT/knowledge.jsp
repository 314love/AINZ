<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2022/2/15
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>数据中心</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="author" content="yinqi">
    <link href="css4/bootstrap.min.css" rel="stylesheet">
    <link href="css4/materialdesignicons.min.css" rel="stylesheet">
    <link href="css4/style.min.css" rel="stylesheet">
    <script src = "js/jquery.min.js"></script>
    <script src = "js/echarts.min.js"></script>
    <style>
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
                        <span class="navbar-page-title" style="font-size: 30px;">病虫害数据</span>
                    </div>
                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="index.jsp" style="font-size: 22px;">
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
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>全国病虫害数据分布&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数据来源：全国农业植物检疫性有害生物分布行政区名录（截止2021年4月15日）</h3></div>
                            <div class="card-body">
                                <canvas id="chart-line-1" width="700" height="250"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>全国各省级行政区昆虫+细菌分布——前十名</h3></div>
                            <div class="card-body">
                                <canvas id="chart-line-2" width="700" height="250"></canvas>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>全国农作物农作物病害+虫害分布</h3></div>
                            <div class="card-body">
                                <canvas id="chart-line-3" width="700" height="250"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>全国农业植物检疫性有害生物分布——省级行政区数量占比</h3></div>
                            <div class="card-body">
                                <canvas id="chart-area-1" width="700" height="250"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>全国农业植物检疫性有害生物占比</h3></div>
                            <div class="card-body" style="margin-left: 480px;">
                                <div id = "main" style="width: 600px; height: 500px;">
                                    <script>
                                        var myChart = echarts.init(document.getElementById('main'))

                                        var option;

                                        option = {
                                            title: {
                                                text: '全国有害病虫害占比',
                                                subtext: '数据来源：全国农业植物检疫性有害生物分布行政区名录（截止2021年4月15日）',
                                                left: 'center'
                                            },
                                            tooltip: {
                                                trigger: 'item'
                                            },
                                            legend: {
                                                orient: 'vertical',
                                                left: 'left'
                                            },
                                            series: [
                                                {
                                                    name: 'Access From',
                                                    type: 'pie',
                                                    radius: '50%',
                                                    data: [
                                                        { value: 9, name: '昆虫' },
                                                        { value: 3, name: '线虫' },
                                                        { value: 7, name: '细菌' },
                                                        { value: 6, name: '真菌' },
                                                        { value: 3, name: '病害' },
                                                        { value: 1, name: '杂草' },
                                                        { value: 2, name: '植物' }

                                                    ],
                                                    emphasis: {
                                                        itemStyle: {
                                                            shadowBlur: 10,
                                                            shadowOffsetX: 0,
                                                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                        }
                                                    }
                                                }
                                            ]
                                        };

                                        option && myChart.setOption(option);

                                    </script>
                                </div>
                            </div>
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
<script type="text/javascript" src="js/Chart.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript">

    //全国病虫害数据
    new Chart($("#chart-line-1"), {
        type: 'line',
        data: {
            labels: ["新疆", "西藏", "青海", "内蒙古","云南", "四川", "甘肃", "宁夏","黑龙江", "吉林", "辽宁", "河北","北京", "天津", "陕西", "山西","山东","河南", "安徽", "江苏","湖北", "湖南", "江西", "浙江","上海", "福建", "广东", "广西","贵州","重庆","海南"],
            datasets: [{
                label: "病虫害",
                fill: false,
                borderWidth: 3,
                pointRadius: 4,
                borderColor: "#36a2eb",
                backgroundColor: "#36a2eb",
                pointBackgroundColor: "#36a2eb",
                pointBorderColor: "#36a2eb",
                pointHoverBackgroundColor: "#fff",
                pointHoverBorderColor: "#36a2eb",
                data: [6,0,0,4,7,5,6,3,5,6,4,6,1,6,3,1,3,3,5,3,6,7,6,7,3,6,5,7,6,4,4]
            }]
        },
        options: {}
    });

    //全国各省级行政区昆虫+细菌分布前十名
    new Chart($("#chart-line-2"), {
        type: 'bar',
        data: {
            labels: ["广西壮族自治区", "云南省", "贵州省","江西省","浙江省","湖南省","湖北省","新疆维吾尔自治区","吉林省","福建省"],
            datasets: [{
                label: "昆虫",
                backgroundColor: "#36a2eb",
                borderColor: "#36a2eb",
                hoverBackgroundColor: "#36a2eb",
                hoverBorderColor: "#36a2eb",
                data: [4,5,4,3,3,4,3,4,4,3]
            },
                {
                    label: "细菌",
                    backgroundColor: "#ff6384",
                    borderColor: "#ff6384",
                    hoverBackgroundColor: "#ff6384",
                    hoverBorderColor: "#ff6384",
                    data: [3,2,2,3,4,3,3,2,2,3]
                }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    //全国农业植物检疫性有害生物分布在省级行政区的数量占比
    new Chart($("#chart-area-1"), {
        type: 'line',
        data: {
            labels: ["昆虫","线虫","细菌","真菌", "病毒", "杂草", "植物"],
            datasets: [{
                label: "数量占比",
                backgroundColor: "rgba(51,202,185,0.5)",
                borderWidth: 0,
                borderColor: "rgba(0,0,0,0)",
                data: [29,13,26,18,15,8,15]
            }]
        },
        options: {
            legend: {
                display: false
            },
        }
    });

    //各省农作物病害+虫害
    new Chart($("#chart-line-3"), {
        type: 'line',
        data: {
            labels: ["新疆", "西藏", "青海", "内蒙古","云南", "四川", "甘肃", "宁夏","黑龙江", "吉林", "辽宁", "河北","北京", "天津", "陕西", "山西","山东","河南", "安徽", "江苏","湖北", "湖南", "江西", "浙江","上海", "福建", "广东", "广西","贵州","重庆","海南"],
            datasets: [{
                label: "虫害",
                fill: false,
                borderWidth: 3,
                pointRadius: 5,
                borderColor: "#36a2eb",
                backgroundColor: "#36a2eb",
                pointBackgroundColor: "#36a2eb",
                pointBorderColor: "#36a2eb",
                pointHoverBackgroundColor: "#36a2eb",
                pointHoverBorderColor: "#36a2eb",
                data: [4,0,0,2,5,3,1,2,3,4,2,2,1,3,2,1,2,2,2,1,3,4,3,3,1,3,3,4,4,3,1]
            },
                {
                    label: "病害",
                    fill: false,
                    borderWidth: 3,
                    pointRadius: 5,
                    borderColor: "#ff6384",
                    backgroundColor: "#ff6384",
                    pointBackgroundColor: "#ff6384",
                    pointBorderColor: "#ff6384",
                    pointHoverBackgroundColor: "#ff6384",
                    pointHoverBorderColor: "#ff6384",
                    data: [2,0,0,2,2,2,3,1,2,2,2,2,0,1,1,0,1,0,3,2,3,3,3,4,2,3,2,3,2,1,3]
                }]
        },
        options: {}
    });
</script>
</body>
</html>
