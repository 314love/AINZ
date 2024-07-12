<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>常见作物农历表</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords">
    <meta name="description">
    <script src="js/echarts.min.js"></script>
    <link href="css4/bootstrap.min.css" rel="stylesheet">
    <link href="css4/materialdesignicons.min.css" rel="stylesheet">
    <link href="css4/style.min.css" rel="stylesheet">
    <style>
        .tdd{
            width: 120px;
            text-align: center;
            font-size: 24px;
            font-family: 华文楷体;
            height: 30px;
            font-weight: bold;
        }
        .tdd1{
            text-align: center;
            font-size: 24px;
            font-family: 华文楷体;
            font-weight: bold;
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
                        <span class="navbar-page-title" style="font-size: 30px;"> 农业知识普及-时节播种期</span>
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
                <div class="row" style="margin-right: 25px;">
                    <table border="1px solid" style="width: 1640px;margin-top: 10px;margin-bottom: 10px">
                        <tr>
                            <td colspan="3" class="tdd">作物</td>
                            <td colspan="3" class="tdd">月份</td>
                            <td colspan="3" class="tdd">一</td>
                            <td colspan="3" class="tdd">二</td>
                            <td colspan="3" class="tdd">三</td>
                            <td colspan="3" class="tdd">四</td>
                            <td colspan="3" class="tdd">五</td>
                            <td colspan="3" class="tdd">六</td>
                            <td colspan="3" class="tdd">七</td>
                            <td colspan="3" class="tdd">八</td>
                            <td colspan="3" class="tdd">九</td>
                            <td colspan="3" class="tdd">十</td>
                            <td colspan="3" class="tdd">十一</td>
                            <td colspan="3" class="tdd">十二</td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                            <td colspan="3" class="tdd1">旬</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                            <td class="tdd1">上</td>
                            <td class="tdd1">中</td>
                            <td class="tdd1">下</td>
                        </tr>
<%--                       水稻--%>
                        <tr style="height: 100px;background-color: #d0cece">
                            <td colspan="3" rowspan="3" class="tdd1"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=水稻">水稻</a></td>
                            <td colspan="3" class="tdd1">生育期</td>
                            <td class="tdd1" colspan="9"></td>
                            <td class="tdd1" colspan="2">播种期</td>
                            <td class="tdd1" colspan="2">出苗</td>
                            <td class="tdd1">插秧</td>
                            <td class="tdd1" colspan="3">分蘖期</td>
                            <td class="tdd1" colspan="2">拔节期</td>
                            <td class="tdd1" colspan="2">孕穗期</td>
                            <td class="tdd1" colspan="3">抽穗开花</td>
                            <td class="tdd1" colspan="2">灌浆</td>
                            <td class="tdd1">成熟收割</td>
                            <td class="tdd1" colspan="9"></td>
                        </tr>
                        <tr style="height: 150px;background-color:#d0cece">
                            <td colspan="3" class="tdd1">农事活动</td>
                            <td class="tdd1" colspan="8"></td>
                            <td class="tdd1">播种，孕秧肥料准备，做秧床</td>
                            <td class="tdd1" colspan="2" style="text-align: left">晒种，选种，消毒，催苗，秧床灌水和消毒播种</td>
                            <td class="tdd1" colspan="2">见绿通风，通风控温，控水，喷移栽灵</td>
                            <td class="tdd1" colspan="2">大田整地及施基肥，放水泡田，移栽</td>
                            <td class="tdd1" colspan="2">追分蘖肥</td>
                            <td class="tdd1" colspan="5">禁止追肥</td>
                            <td class="tdd1" colspan="3">追穗肥</td>
                            <td class="tdd1" colspan="2">收获</td>
                            <td class="tdd1" colspan="9"></td>
                        </tr>
                        <tr style="height: 75px;background-color: #d0cece">
                            <td colspan="3" class="tdd1">病草防止</td>
                            <td class="tdd1" colspan="12"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=水稻纹枯病">水稻纹枯病</a></td>
                            <td class="tdd1" colspan="8">除苔，除草</td>
                            <td class="tdd1" colspan="3"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=稻瘟病">防稻瘟病</a></td>
                            <td class="tdd1" colspan="4"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=水稻白叶枯病">水稻白叶枯病</a></td>
                            <td class="tdd1" colspan="9"></td>
                        </tr>
<%--                       冬小麦 --%>
                        <tr style="height: 100px;">
                            <td colspan="3" rowspan="3" class="tdd1"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=小麦">冬小麦</a></td>
                            <td colspan="3" class="tdd1">生育期</td>
                            <td class="tdd1" colspan="4">越冬期</td>
                            <td class="tdd1" colspan="2">返青拔苗期</td>
                            <td class="tdd1" colspan="3">返青起身期</td>
                            <td class="tdd1" colspan="2">拔节期</td>
                            <td class="tdd1">挑旗</td>
                            <td class="tdd1" colspan="2">抽穗开花</td>
                            <td class="tdd1" colspan="2">灌浆</td>
                            <td class="tdd1" colspan="4">成熟</td>
                            <td class="tdd1" colspan="4"></td>
                            <td class="tdd1" colspan="3">播种期</td>
                            <td class="tdd1" colspan="2">出苗期</td>
                            <td class="tdd1" colspan="3">分蘖期</td>
                            <td class="tdd1" colspan="4">越冬期</td>
                        </tr>
                        <tr style="height: 150px;">
                            <td colspan="3" class="tdd1">农事活动</td>
                            <td class="tdd1" colspan="6"></td>
                            <td class="tdd1" colspan="3">耕地，施肥，除草，化控，田间去杂。壮苗要轻耙，旺苗要重耙，弱苗要结合耙地施返青肥。</td>
                            <td class="tdd1" colspan="2">要及时进行追肥，一般可追施尿素8-10kg/亩</td>
                            <td class="tdd1">追肥后要及时浇水，以防后期倒伏至少要浇二次水</td>
                            <td class="tdd1" colspan="2">田间去杂，抽穗后，要保证麦田湿润</td>
                            <td class="tdd1" colspan="3">根外追肥，进行叶面追肥2-3次</td>
                            <td class="tdd1" colspan="4">最后一次灌水，田间严格去杂1-2次，要明显差异的要连根拔除。成熟收割</td>
                            <td class="tdd1" colspan="3">选择良种，选择地块，可选择施用基磷酸二铵</td>
                            <td class="tdd1" colspan="3">整地，适时浇播前水。采用15cm等行距条播</td>
                            <td class="tdd1" colspan="2">苗期去杂，凡异常者全部拔除。拉网式去杂一次。</td>
                            <td class="tdd1" colspan="3">冬前管理：旺苗要及时耕地，凡属晚播或秋旱形成的弱苗，可在当地表水夜冻日消时进行冬灌。</td>
                            <td class="tdd1" colspan="4"></td>
                        </tr>
                        <tr style="height: 75px;">
                            <td colspan="3" class="tdd1">病草防止</td>
                            <td class="tdd1" colspan="6"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=小麦锈病">小麦锈病</a></td>
                            <td class="tdd1" colspan="8"><a href="${pageContext.request.contextPath}/knowledge/selectAll?name=小麦赤霉病">小麦赤霉病</a>
                                <br/>
                                <a href="${pageContext.request.contextPath}/knowledge/selectAll?name=小麦白粉病">小麦白粉病</a>
                            </td>
                            <td class="tdd1" colspan="4">施肥采用药，肥混喷。防治白粉病，叶枯病，百穗蚜虫等
                            </td>
                            <td class="tdd1" colspan="18"></td>
                        </tr>
<%--                        辣椒--%>
                        <tr style="height: 100px;background-color: #d0cece">
                            <td colspan="3" rowspan="3" class="tdd1">辣椒</td>
                            <td colspan="3" class="tdd1">生育期</td>
                            <td class="tdd1" colspan="3">育苗期</td>
                            <td class="tdd1" colspan="4">苗期</td>
                            <td class="tdd1" colspan="2">定值期</td>
                            <td class="tdd1" colspan="2">分蘖初期</td>
                            <td class="tdd1" colspan="5">分蘖盛期/初花期、盛花期/初果期</td>
                            <td class="tdd1" colspan="5">盛果期</td>
                            <td class="tdd1" colspan="4">红辣椒采收期</td>
                            <td class="tdd1" colspan="12"></td>
                        </tr>
                        <tr style="height: 150px;background-color:#d0cece">
                            <td colspan="3" class="tdd1">农事活动</td>
                            <td colspan="3" class="tdd1">育苗时征露进行土壤消毒</td>
                            <td class="tdd1" colspan="4">进行土壤和种子消毒。出苗后用免劳路防治立枯，蹙倒病</td>
                            <td class="tdd1" colspan="4"></td>
                            <td class="tdd1" colspan="6">用‘勇帅’打青虫和斜纹夜蛾。用征露和帅星预防炭疽，夜斑的发生</td>
                            <td class="tdd1" colspan="3">用1kg勇状+15kg尿素冲施</td>
                            <td class="tdd1" colspan="5">用‘省时本’杀地下害虫</td>
                            <td class="tdd1" colspan="3"></td>
                            <td class="tdd1" colspan="12"></td>
                        </tr>
                        <tr style="height: 75px;background-color: #d0cece">
                            <td colspan="3" class="tdd1">病草防止</td>
                            <td class="tdd1" colspan="8"></td>
                            <td class="tdd1" colspan="3">地下害虫</td>
                            <td class="tdd1" colspan="8">注意防治疫病，青枯，根腐，细菌性病毒，烟青虫等</td>
                            <td class="tdd1" colspan="7"></td>
                            <td class="tdd1" colspan="5">防治杂草，虫害</td>
                            <td class="tdd1" colspan="5"></td>
                        </tr>
                    </table>
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
