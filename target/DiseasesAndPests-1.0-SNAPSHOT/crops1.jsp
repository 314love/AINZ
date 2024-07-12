<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<title>病变详情介绍</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/animate.css">

	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">

	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/echarts.min.js"></script>
	<script src = "js/jquery-3.2.1.min.js"></script>
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
					<li class="nav-item active"><a href="about2.jsp" class="nav-link">病虫害识别</a></li>
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
			</div>
		</section>
	</div>
	<section id="container_neirong">
		<div class="container">
			<div class="row">
				<div class="col-md-3 ftco-animate">
					<div class="blog-entry">
						<img src="data:image/png;base64,${imgStr}" class="block-20">
<%--						<a href="blog-single.jsp" class="block-20" style="background-image: url('images/tupian3.png');">--%>
						<div class="text d-block text-center">
							<h3 class="heading">${diseasesPeses.name}</h3>
							<p style="overflow-y:auto;height: 225px;width: 300px">${diseasesPeses.detailsdesc}</p>
							<button style="background-color: #5a8952;border: 8px solid #5a8952;" id="shangchuan"><a href="about1.jsp" style="color: white" >重新检测上传</a></button>
						</div>
					</div>
				</div>
				<div class="col-md-9 ftco-animate">
					<div id="main" style="width: 488px;height: 334px;float:left ">
						<script type="text/javascript">
							// 基于准备好的dom，初始化echarts实例
							var myChart = echarts.init(document.getElementById('main'));
							// 指定图表的配置项和数据
							option = {
								title: {
									text: '病虫害高发季节段',
									left: 'center'
								},
								xAxis: {
									type: 'category',
									data: ['春','夏','秋','冬']
								},
								yAxis: {
									type: 'value'
								},
								series: [
									{
										data: ${hlist},
										type: 'line',
									}
								]
							};
							// 使用刚指定的配置项和数据显示图表。
							myChart.setOption(option);
						</script>
					</div>
					<div id="main1" style="width: 488px;height: 334px;float:left ">
						<script>
							$(function () {
								crops()
							})

							function crops() {
								var url = "${pageContext.request.contextPath}/DiseasesPests/Impact"
								var list = []
								// 基于准备好的dom，初始化echarts实例
								var myChart = echarts.init(document.getElementById('main1'));
								var fn = function (data) {
									data.forEach(impact =>{
										list.push({
											name:impact.name,
											value:impact.proportion
										})
										// 指定图表的配置项和数据
										option = {
											title: {
												text: '对农作物影响最大的病虫害占比',
												left: 'center',

											},
											tooltip: {
												trigger: 'item'
											},
											legend: {
												orient: 'vertical',
												left: 'left',
												top:'20px'
											},
											series: [
												{
													name: 'Season of',
													type: 'pie',
													radius: '70%',
													top:'10px',
													data: list,
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
									})
								}
								$.post(url,fn,"json");
								console.info(list);
							}

						</script>
					</div>
					<div id="main2" style="width: 976px;height: 334px;float:left;margin-top: 40px">
						<script type="text/javascript">
							// 基于准备好的dom，初始化echarts实例
							var myChart = echarts.init(document.getElementById('main2'));
							// 指定图表的配置项和数据
							option = {
								title: {
									text: '防治方法有效分布',
									left: 'center'
								},
								xAxis: {
									type: 'category',
									data: ['农业防治法', '生活防治法', '物理防治法', '化学防治法']
								},
								yAxis: {
									type: 'value'
								},
								series: [
									{
										// data: [
										// 	120,
										// 	{
										// 		value: 200,
										// 		itemStyle: {
										// 			color: '#a90000'
										// 		}
										// 	},
										// 	150,
										// 	80,
										// 	130
										// ],
										data:${elist},
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
	</section>
</body>
</html>
<style>
	#container_neirong{
		width: 1342px;
		margin-left: 350px;
		margin-top: 10px;
	}
	#shangchuan{
		position: relative;
		left: -22px;
		top: 19px;
		width: 314px;
	}
</style>
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>