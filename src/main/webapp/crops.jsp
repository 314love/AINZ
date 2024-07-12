<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<title>基本检测结果</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="js/echarts.min.js"></script>
    <script src = "js/jquery-3.2.1.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/style.css">
	<style>
		.crops{
			font-size: 20px;
			color: black;
		}
	</style>
</head>
<body>
    <!-- 头部三小图标 -->
	<!-- 导航栏 -->
	<div class="pt-4 pb-5">
		<div class="container">
			<div class="row d-flex align-items-start align-items-center px-3 px-md-0">
				
				<div class="col-md-4 d-flex topper mb-md-0 mb-2 align-items-center">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="fa fa-map"></span>
					</div>
					<div class="pr-md-4 pl-md-3 pl-3 text">
						<p class="con"><span>AI技术</span> <span>- 图像智能识别</span></p>
						<p class="con"> Image intelligent recognition</p>
					</div>
				</div>
				
				<div class="col-md-4 d-flex topper mb-md-0 mb-2 align-items-center">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="fa fa-map"></span>
					</div>
					<div class="pr-md-4 pl-md-3 pl-3 text">
						<p class="con"><span>预防预警</span> <span>- 农作物病虫害系列</span></p>
						<p class="con">Crop diseases and insect pests series</p>
					</div>
				</div>
				<div class="col-md-4 d-flex topper mb-md-0 mb-2 align-items-center">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="fa fa-map"></span>
					</div>
					<div class="pr-md-4 pl-md-3 pl-3 text">
						<p class="con"><span>统筹集锦</span> <span>- 病虫害数据</span></p>
						<p class="con">Preventive measures series</p>
					</div>
				</div>
			</div>
		</div>
	</div>

    <!-- 导航条按钮 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container d-flex align-items-center">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span>
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="about1.jsp" class="nav-link">病虫害识别</a></li>
					<li class="nav-item"><a href="about3.jsp" class="nav-link">动物识别</a></li>
					<li class="nav-item"><a href="about2.jsp" class="nav-link">植物识别</a></li>
					<li class="nav-item"><a href="knowledge.jsp" class="nav-link">数据中心</a></li>
					<li class="nav-item"><a href="http://typhoon.weather.com.cn/gis/typhoon_m.shtml" class="nav-link">气象检测</a></li>
				</ul>
				<a href="#" class="btn-custom" data-toggle="modal" data-target="#exampleModalCenter">拍照式虫情测报</a>
			</div>
		</div>
	</nav>

    <!--  信息展示 -->
	<div>
		<section class="ftco-section">
			<div class="container" style="padding-top: 55px;">
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row mb-5">
								<a href="crops.jsp">
									<div class="col-md-4">
										<div class="dbox w-100 text-center">
											<div class="icon d-flex align-items-center justify-content-center">
												<span class="fa fa-paper-plane"></span>
											</div>
											<div class="text">
												<p><span><a href="crops.jsp">基本检测结果</a></span></p>
											</div>
										</div>					
									</div>
								</a>

								<a href="crops1.jsp">
									<div class="col-md-4">
										<div class="dbox w-100 text-center">
											<div class="icon d-flex align-items-center justify-content-center">
												<span class="fa fa-globe"></span>								
											</div>
											<div class="text">
												<p><span><a href="crops1.jsp">详情检测结果</a></span></p>
											</div>
										</div>
									</div>
								</a>
								<a href="crops2.jsp">
									<div class="col-md-4">
										<div class="dbox w-100 text-center">
											<div class="icon d-flex align-items-center justify-content-center">
												<span class="fa fa-paper-plane"></span>
											</div>
											<div class="text">
												<p><span><a href="crops2.jsp">防范措施推荐</a></span></p>
											</div>
										</div>
									</div>
								</a>							
							</div>
						</div>
					</div>
				</div>
				<div class="row no-gutters">
					<div class="col-md-12">
						<div class="contact-wrap w-100 p-md-5 p-4">
							<h3 class="mb-4">基本检测结果</h3>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label class="label crops" >中文名</label>
										<p placeholder="Name" >${diseasesPeses.name}</p>
									</div>
									<div class="form-group">
										<label class="label crops" >俗名</label>
										<p placeholder="Name">${diseasesPeses.name}</p>
									</div>
									<div class="form-group">
										<label class="label crops" >性质</label>
										<p placeholder="Name">
											${diseasesPeses.nature}
										</p>
									</div>
									<div class="form-group">
										<label class="label crops" >形态/症状</label>
										<p placeholder="Name">
											${diseasesPeses.symptoms}
										</p>
									</div>
								</div>
								<div class="col-md-4" style="margin-left: -90px;margin-right: 60px">
									<!-- 图表插入 -->
									<div id="main1" style="width: 450px;height: 334px;float:left ">
										<script type="text/javascript">
                                            var url = "${pageContext.request.contextPath}/DiseasesPests/harm";
                                            var list = [];
                                            // 基于准备好的dom，初始化echarts实例
                                            var myChart = echarts.init(document.getElementById('main1'));
                                            var fn = function (data) {
                                                data.forEach(Diseases =>{
                                                    list.push({
                                                        name:Diseases.name,
                                                        value:Diseases.score
                                                    })
                                                });
                                                // 指定图表的配置项和数据
                                                option = {
                                                    title: {
                                                        text: '病虫害占比',
                                                        subtext: 'Possibility',
                                                        left: 'center',

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
                                                            radius: '85%',
                                                            top:'70px',
                                                            // data: [
                                                            // 	{ value: 80, name: '稻瘟病' },
                                                            // 	{ value: 15, name: '水稻白叶枯病' },
                                                            // 	{ value: 5, name: '水稻纹枯病' },
                                                            // ],
                                                            data:list,
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
                                                myChart.setOption(option);
                                            };
                                            $.post(url,fn,"json");
                                            console.log(list)
										</script>
									</div>	
								</div>
								<div class="col-md-5 d-flex align-items-stretch" style="margin-left: -40px">
									<div class="info-wrap img">
										<img src="data:image/png;base64,${imgStr}" style="height: 340px;width: 400px;">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label class="label crops" >简介</label>
										<p type="email" name="email" id="email" placeholder="Email">
											${diseasesPeses.basicdesc}
										</p>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label class="label crops">防治方法</label>
										<p name="message" id="message" cols="30" rows="4" placeholder="Message">
											${diseasesPeses.dmethods}
										</p>
									</div>
								</div>
								<div class="col-md-12" style="padding-top: 33px">
									<div class="form-group">
										<a href="about1.jsp" class="btn btn-primary">重新检测上传</a>
										<div class="submitting"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>