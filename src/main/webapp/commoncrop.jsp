<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2022/2/15
  Time: 12:33
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
                        <span class="navbar-page-title" style="font-size: 30px;"> 农作物视图-图表数据 </span>
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
        <!--End 页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>常见农作物六年产量更替图</h3></div>
                            <div id="main" style="width: 1200px;height: 500px;margin-top: 40px;margin-left: 200px;">
                                <script type="text/javascript">
                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('main'));
                                    var option;


                                    option = {
                                        legend: {},
                                        tooltip: {
                                            trigger: 'axis',
                                            showContent: false
                                        },
                                        dataset: {
                                            source: [
                                                ['time', '2016', '2017', '2018', '2019', '2020', '2021'],
                                                ['水稻', 56.5, 82.1, 88.7, 70.1, 53.4, 85.1],
                                                ['玉米', 51.1, 51.4, 55.1, 53.3, 73.8, 68.7],
                                                ['小麦', 40.1, 62.2, 69.5, 36.4, 45.2, 32.5]
                                            ]
                                        },
                                        xAxis: { type: 'category' },
                                        yAxis: { gridIndex: 0 },
                                        grid: { top: '55%' },
                                        series: [
                                            {
                                                type: 'line',
                                                smooth: true,
                                                seriesLayoutBy: 'row',
                                                emphasis: { focus: 'series' }
                                            },
                                            {
                                                type: 'line',
                                                smooth: true,
                                                seriesLayoutBy: 'row',
                                                emphasis: { focus: 'series' }
                                            },
                                            {
                                                type: 'line',
                                                smooth: true,
                                                seriesLayoutBy: 'row',
                                                emphasis: { focus: 'series' }
                                            },
                                            {
                                                type: 'line',
                                                smooth: true,
                                                seriesLayoutBy: 'row',
                                                emphasis: { focus: 'series' }
                                            },
                                            {
                                                type: 'pie',
                                                id: 'pie',
                                                radius: '30%',
                                                center: ['50%', '25%'],
                                                emphasis: {
                                                    focus: 'self'
                                                },
                                                label: {
                                                    formatter: '{b}: {@2012} ({d}%)'
                                                },
                                                encode: {
                                                    itemName: 'time',
                                                    value: '2016',
                                                    tooltip: '2016'
                                                }
                                            }
                                        ]
                                    };
                                    myChart.on('updateAxisPointer', function (event) {
                                        const xAxisInfo = event.axesInfo[0];
                                        if (xAxisInfo) {
                                            const dimension = xAxisInfo.value + 1;
                                            myChart.setOption({
                                                series: {
                                                    id: 'pie',
                                                    label: {
                                                        formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                                                    },
                                                    encode: {
                                                        value: dimension,
                                                        tooltip: dimension
                                                    }
                                                }
                                            });
                                        }
                                    });
                                    myChart.setOption(option);
                                    option && myChart.setOption(option);

                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>谷类作物产量(2021年/不含港澳台)&nbsp;&nbsp;&nbsp; /单位：万吨</h3></div>
                            <div id="main1" style="width: 1200px;height: 500px;margin-top: 20px;margin-left: 200px;">
                                <script type="text/javascript">
                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('main1'));
                                    var option;
                                    // 指定图表的配置项和数据
                                    option = {
                                        dataset: {
                                            source: [
                                                ['score', 'amount', 'product'],
                                                [89.3, 58212, '粟'],
                                                [57.1, 78254, '水稻'],
                                                [74.4, 41032, '玉米'],
                                                [50.1, 12755, '大麦'],
                                                [89.7, 20145, '黑麦'],
                                                [68.1, 79146, '燕麦'],
                                                [19.6, 91852, '高粱'],
                                                [10.6, 101852, '小麦'],
                                                [32.7, 20112, '稷']
                                            ]
                                        },
                                        grid: { containLabel: true },
                                        xAxis: { name: 'amount' },
                                        yAxis: { type: 'category' },
                                        visualMap: {
                                            orient: 'horizontal',
                                            left: 'center',
                                            min: 10,
                                            max: 100,
                                            text: ['高产量', '低产量'],
                                            // Map the score column to color
                                            dimension: 0,
                                            inRange: {
                                                color: ['#65B581', '#FFCE34', '#FD665F']
                                            }
                                        },
                                        series: [
                                            {
                                                type: 'bar',
                                                encode: {
                                                    // Map the "amount" column to X axis.
                                                    x: 'amount',
                                                    // Map the "product" column to Y axis
                                                    y: 'product'
                                                }
                                            }
                                        ]
                                    };
                                    option && myChart.setOption(option);
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>油料作物产量(2021年/不含港澳台)    /单位：万吨</h3></div>
                            <div id="main2" style="width: 1200px;height: 500px;margin-top: 20px;margin-left: 200px;">
                                <script type="text/javascript">
                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('main2'));
                                    var option;
                                    // 指定图表的配置项和数据
                                    option = {
                                        xAxis: {
                                            type: 'category',
                                            data: ['花生', '油菜', '芝麻', '大豆', '向日葵', '橄榄', '油茶']
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [
                                            {
                                                data: [120, 200, 150, 80, 70, 110, 130],
                                                type: 'bar',
                                                showBackground: true,
                                                backgroundStyle: {
                                                    color: 'rgba(180, 180, 180, 0.2)'
                                                }
                                            }
                                        ]
                                    };

                                    option && myChart.setOption(option);

                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header"><h3>蔬菜作物产量(2021年/不含港澳台)    /单位：万吨</h3></div>
                            <div id="main3" style="width: 1200px;height: 500px;margin-top: 20px;margin-left: 200px;">
                                <script type="text/javascript">
                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('main3'));
                                    var option;
                                    // 指定图表的配置项和数据
                                    option = {
                                        xAxis: {
                                            type: 'category',
                                            data: ['西红柿', '茄子', '辣椒', '黄瓜', '丝瓜', '豆角', '萝卜']
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [
                                            {
                                                data: [
                                                    120,
                                                    {
                                                        value: 200,
                                                        itemStyle: {
                                                            color: 'red'
                                                        }
                                                    },
                                                    150,
                                                    80,
                                                    70,
                                                    110,
                                                    130
                                                ],
                                                type: 'bar'
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
        </main>
    </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>

</body>
</html>
