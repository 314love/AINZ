<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<title>防范措施推荐</title>
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
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<!-- 框体部分 -->
						<div style="height: 720px; width: auto; background-color:snow;" >
							<div><h2 style="padding-left: 100px; padding-top: 30px;">防治方法</h2></div>
							<div style="text-align: center;"><img src="images/hr_.png" style="width: 1002px;"></div>
							<!-- 防止方法内容 start -->
							<c:forEach items="${plist}" var = "prevent">
								<div style="padding-left: 130px">
									<h2  style="color:#019c08 ;">${prevent.name}</h2>
									<div style="width: 900px;">
										<span>${prevent.preventmethod}</span>
									</div>
								</div>
							</c:forEach>
							<div style="padding-left: 100px;padding-top: 30px">
								<a href="about1.jsp" class="btn btn-primary">重新检测上传</a>
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