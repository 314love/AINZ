<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
  <head>
    <title>AI图像智能识别</title>
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
	  <style>
		  #app{
			  position: relative;
			  left: 118px;
			  top: -78px;
			  height: 50px;
		  }
		  #app1{
			  position: relative;
			  left: -56px;
			  bottom: -1px;
			  width: 240px;
		  }
	  </style>
  </head>
  <body>
	<div class="top bg-light">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-sm d-flex mb-md-0 mb-2">
				</div>
			</div>
		</div>
	</div>
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
						<p class="con"><span>数据中心</span> <span>- 病虫害数据</span></p>
						<p class="con">Preventive measures series</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container d-flex align-items-center">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> 
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item "><a href="about2.jsp" class="nav-link">病虫害识别</a></li>
					<li class="nav-item"><a href="about2.jsp" class="nav-link">动物识别</a></li>
					<li class="nav-item active"><a href="about3.jsp" class="nav-link">植物识别</a></li>
					<li class="nav-item"><a href="knowledge.jsp" class="nav-link">数据中心</a></li>
					<li class="nav-item"><a href="http://typhoon.weather.com.cn/gis/typhoon_m.shtml" class="nav-link">气象检测</a></li>
				</ul>
				<a href="#" class="btn-custom" data-toggle="modal" data-target="#exampleModalCenter">天气预警</a>
			</div>
		</div>
	</nav>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');width: 100%;height: 852px">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">

        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 text-center" id="con">
			  <br><br><br><br>
<%--          	<p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>About us <i class="fa fa-chevron-right"></i></span></p>--%>
            <h1 class="mb-0 bread" style="font-size: 60px;">AI图像智能识别植物</h1>
			  <br>
			  <%--图片检测 start--%>
			  <form action="${pageContext.request.contextPath}/Plant/getPlant" method="post" enctype="multipart/form-data" id="">
				  <input type="file" name="picFile" placeholder="上传图片" class="btn btn-primary" id="app1"/><br/><br/>
				  <input type="submit" value="图片检测" class="btn btn-primary" id="app">
			  </form><br>
			  <%--图片检测 end--%>
          </div>
        </div>
      </div>
    </section>
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
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
  </body>
</html>