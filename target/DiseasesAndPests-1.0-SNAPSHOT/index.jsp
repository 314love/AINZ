<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>首页</title>
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
	<style>
		#s1{
			height: 937px !important;
		}
	</style>

</head>
<body>
<!-- 头部三小图标 -->
	<div class="top bg-light">
		<div class="container">
			<div class="row justify-content-between">
				
				<div class="col-sm d-flex mb-md-0 mb-2">
				</div>
			</div>
		</div>
	</div>
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
					<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item "><a href="about1.jsp" class="nav-link">病虫害识别</a></li>
					<li class="nav-item"><a href="about2.jsp" class="nav-link">动物识别</a></li>
					<li class="nav-item"><a href="about3.jsp" class="nav-link">植物识别</a></li>
					<li class="nav-item"><a href="knowledge.jsp" class="nav-link">数据中心</a></li>
					<li class="nav-item"><a href="http://typhoon.weather.com.cn/gis/typhoon_m.shtml" class="nav-link">气象检测</a></li>
				</ul>
				<a href="#" class="btn-custom" data-toggle="modal" data-target="#exampleModalCenter">拍照式虫情测报</a>
			</div>
		</div>
	</nav>

	<!-- 轮播图部分 -->
	<section class="hero-wrap js-fullheight" id = "s1">
		<div class="overlay"></div>
		<div class="overlay-2"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
				<div class="col-md-8 text-center ftco-animate">
					<div class="mb-5" style="padding-bottom: 60px;position: relative;right: 50px;">
						<span class="subheading">Welcome to AI smart world</span>
						<h1 class="mb-4">AI 农作物病虫害预警系统</h1>
						<h1>智能识别</h1>
						<p class="mb-4">AI intelligent identification and early warning system of crop diseases and insect pests.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="home-slider owl-carousel js-fullheight">
			<div class="slider-item js-fullheight" style="background-image:url(images/bg_1.jpg);" data-stellar-background-ratio="0.5">
			</div>
			<div class="slider-item js-fullheight" style="background-image:url(images/bg_2.jpg);" data-stellar-background-ratio="0.5">
			</div>
			<div class="slider-item js-fullheight" style="background-image:url(images/bg3.jpg);" data-stellar-background-ratio="0.3">
			</div>
		</div>
	</section>

	<!-- 三大模块 -->
	<section class="ftco-section ftco-services ftco-no-pt">
		<div class="container">
			<div class="row">
				<div class="col-md-4 d-flex align-self-stretch ftco-animate">
					<div class="services">
						<div class="p-4">
							<div class="media-body">
								<h3 class="heading mb-3">AI世界 <br>图像上传智能识别</h3>
								<p>图像识别是人工智能的一个重要领域，是指利用计算机对图像进行处理、分析和理解，以识别各种不同模式的目标和对像的技术</p>
							</div>
						</div>
						<div class="img" style="background-image: url(images/services-1.jpg);">
							<a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span></a>
						</div>
					</div>      
				</div>
				<div class="col-md-4 d-flex align-self-stretch ftco-animate">
					<div class="services">
						<div class="p-4">
							<div class="media-body">
								<h3 class="heading mb-3">预警防范 <br>农作物病虫害系列</h3>
								<p>人们通常把为害各种植物的昆虫和螨类等称为害虫，把由它们引起的各种植物伤害称为虫害。虫害的特点是为害速度快，损失程度重，防控难度大。</p>
							</div>
						</div>
						<div class="img" style="background-image: url(images/services-2.jpg);">
							<a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span></a>
						</div>
					</div>      
				</div>
				<div class="col-md-4 d-flex align-self-stretch ftco-animate">
					<div class="services">
						<div class="p-4">
							<div class="media-body">
								<h3 class="heading mb-3">数据中心 <br>病虫害数据</h3>
								<p>调整和改善作物的生长环境，以增强作物对病、虫、草害的抵抗力，创造不利于病原物、害虫和杂草生长发育或传播的条件，以控制、避免或减轻病、虫、草的危害。</p>
							</div>
						</div>
						<div class="img" style="background-image: url(images/services-3.jpg);">
							<a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span></a>
						</div>
					</div>      
				</div>
			</div>
		</div>
	</section>
	<!-- 4张农作物案例 -->
	<section class="ftco-section ftco-no-pt testimony-section">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-6" id="main" style="width: 600px; height: 400px;margin-top: 30px">
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document.getElementById('main'));
						// 指定图表的配置项和数据
						option = {
							title: {
								text: '农作物八大类害虫汇总',
								subtext: '8  major crop pests',
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
									radius: '96%',
									top:'80px',
									data: [
										{ value: 10, name: '地下害虫' },
										{ value: 5, name: '麦类害虫' },
										{ value: 5, name: '禾谷类杂粮害虫' },
										{ value: 7, name: '棉麻虫类' },
										{ value: 8, name: '油料作物害虫' },
										{ value: 2, name: '薯类害虫' },
										{ value: 2, name: '糖类害虫' },
										{ value: 5, name: '储量害虫' }
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
						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
				</div>
				<div class="col-md-6 pl-md-5 d-flex align-items-stretch">
					<div class="carousel-testimony owl-carousel d-flex align-items-center">
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4"> <b style="color:rgb(218, 204, 10)">玉米螟是玉米的主要虫害。</b> 又叫玉米钻心虫，属于鳞翅目，螟蛾科，我国发生的玉米螟有亚洲玉米螟和欧洲玉米螟两种，主要为害玉米、高粱、谷子等，也能为害棉花甘蔗、大麻、向日葵、水稻、甜菜、甘蔗豆类等作物。
										主要分布于北京、东北、河北、河南、四川、广西等地。各地的春、夏、秋播玉米都有不同程度受害，<b style="color:rgb(218, 204, 10)"> 尤以夏播玉米最重。</b>可发危害玉米植株地上的各个部位，使受害部分丧失功能，降低籽粒产量。</p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian3.png)"></div>
										<div class="pl-3">
											<p class="name">玉米螟</p>
											<span class="position">Corn borer</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">
										鳞翅目菜蛾科，<b style="color:rgb(218, 204, 10)">别名:小青虫、两头尖。</b>世界性迁飞害虫，主要为害甘蓝、紫甘蓝、青花菜、薹菜、芥菜、花椰菜、白菜、油菜、萝卜等十字花科植物。
										为害特点:初龄幼虫仅取食叶肉，留下表皮，在菜叶上形成一个个透明的斑，<b style="color:rgb(218, 204, 10)">"开天窗"</b>，3~4龄幼虫可将菜叶食成孔洞和缺刻，严重时全叶被吃成网状。在苗期常集中心叶为害，影响包心。
										在留种株上，危害嫩茎、幼荚和籽粒。
									</p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian2.png)"></div>
										<div class="pl-3">
											<p class="name">小菜蛾</p>
											<span class="position">Diamondback moth</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">美洲斑潜绳属双翅目，潜蝇科。
										是1993年才传人我国的一种<b style="color:rgb(218, 204, 10)">国际性检疫害虫</b>。成、幼虫均可为害，雌成虫飞翔为害，把植 物叶片刺伤，进行取食和产卵，幼虫潜人叶片和叶柄为害，<b style="color:rgb(218, 204, 10)">产生不规则蛇形白色虫道</b>，俗称“鬼画符”。
										它主要祸害的是蔬菜类作物以及土豆、苜蓿等作物。通常斑潜蝇主要能够啃食叶片中的叶绿素细胞，导致作物光合作用降低，且一度导致作物叶片脱落。一般在作物的叶片发现局部<b style="color:rgb(218, 204, 10)">失去水分而变干枯。</b></p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian4.png)"></div>
										<div class="pl-3">
											<p class="name">美洲斑潜蝇</p>
											<span class="position">Liriomyza sativae</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">苹果蠹（读dù）蛾（Cydia pomonella）是<b style="color:rgb(218, 204, 10)">杂食性钻蛀害虫</b>，属鳞翅目卷蛾科，有很强的适应性、抗逆性和繁殖能力，是一类对世界水果生产具有重大影响的有害生物。
										原产于中亚地区，在我国新疆地区被发现。它主要祸害的是<b style="color:rgb(218, 204, 10)">苹果、梨</b>等果类作物。通常蠹虫寄生在树干的纸条末端或者果树的主干枝条，
											<b style="color:rgb(218, 204, 10)">啃食果树的表皮，导致果树的干支出现枯死。</b></p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian5.png)"></div>
										<div class="pl-3">
											<p class="name">苹果蠹虫</p>
											<span class="position">Apple bark beetle</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">也叫"米长蠹"，<b style="color:rgb(218, 204, 10)">贮藏谷物的重要害虫，长蠹科。</b>成虫体长约2.3-3毫米，暗赤褐色至暗褐色，略有光泽，头部隐藏于前胸下面与胸部垂直，触角末端三节膨大呈鳃片状;前胸圆筒形，背面有小瘤突。
										幼虫无足性，体形弯曲，头部细小，胸部肥大，全体疏生淡黄色微毛。一般年生2代。
										成虫及幼虫<b style="color:rgb(218, 204, 10)">为害谷粒、豆类、面粉</b>等。防治法:降低贮粮水分及温度，进行粮食贮藏的科学管理，必要时用<b style="color:rgb(218, 204, 10)">氰酸气、氯化苦、溴甲烷二氯乙烷</b>等药熏蒸。</p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian6.png)"></div>
										<div class="pl-3">
											<p class="name">谷蠹虫
											</p>
											<span class="position">Bark beetle</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">属<b style="color:rgb(218, 204, 10)">鞘翅目瓢虫科</b>，成虫、幼虫在叶背剥食叶肉，仅留表皮，形成许多不规则半透明的细凹纹，状如箩底。主要危害<b style="color:rgb(218, 204, 10)">马铃薯、茄子、青椒、豆类、瓜类、玉米、白菜等蔬菜</b>，分布广泛。
										能将叶吃成孔状，甚至仅存叶脉。严重时受害叶片干枯、变褐，全株死亡。果实被啃食处常常破裂、组织变僵，粗糙、有苦味，不能食用。</p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian7.png)"></div>
										<div class="pl-3">
											<p class="name">马铃薯瓢虫</p>
											<span class="position">Potato ladybug</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">害螨的螨虫也叫<b style="color:rgb(218, 204, 10)">火龙虫、红蜘蛛、黄蜘蛛</b>等，它不是昆虫，属蛛形纲蜱螨目。害螨种类繁多，
										园林植物中危害严重的有史氏始叶螨、麦岩螨、毛白杨瘿螨、朱砂叶螨、呢柳刺皮瘿螨、山楂叶螨等，属叶螨科和瘿螨科。<b style="color:rgb(218, 204, 10)">主要危害</b>苹果、桃、杨、柳、山楂、大叶黄杨、国槐、悬铃木、草坪、月季、玫瑰、白三叶、花椒等<b style="color:rgb(218, 204, 10)">多种园林植物</b>。</p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian8.png)"></div>
										<div class="pl-3">
											<p class="name">害螨虫</p>
											<span class="position">Harmful mite</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap">
								<div class="text">
									<span class="fa">"</span>
									<p class="mb-4">昆虫名为<b style="color:rgb(218, 204, 10)">鞘翅目，鳃金龟科</b>。在中国分布于北起黑龙江、内蒙古、新疆，南至江苏、安徽、湖北、四川，东起前苏联东境，西至甘肃，折入四川。
										寄主于苹果、梨、桃、李、杏、梅、樱桃、核桃以及多种作物。幼虫食害<b style="color:rgb(218, 204, 10)">各种蔬菜苗根</b>，成虫仅<b style="color:rgb(218, 204, 10)">食害树叶及部分作物叶片</b>，幼虫的为害可使蔬菜幼苗致死，造成缺苗断垄。</p>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/tupian9.png)"></div>
										<div class="pl-3">
											<p class="name">大黑鳃金龟</p>
											<span class="position">Big black gill golden turtle</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-intro img" style="background-image: url(images/bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section heading-section-white text-center ftco-animate">
					<h2>农业知识普及</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6">
					<form action="https://baike.baidu.com/item/%E7%99%BE%E5%BA%A6%E7%99%BE%E7%A7%91/85895?fr=aladdin" class="subscribe-form ftco-animate">
						<div class="form-group d-flex">
							<input type="text" class="form-control" placeholder="请输入问题">
							<input type="submit" value="查询" class="submit px-3">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<footer class="ftco-footer">
		<div class="container">
			<div class="row mb-5 justify-content-between">
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2 logo"><a href="#">农田</a></h2>
						<p>田野里，金黄的油菜花夹杂在绿油油的麦田里，组成了一幅幅美丽的春*画卷，使人赞叹不已。</p>
						<ul class="ftco-footer-social list-unstyled mt-2">
							<li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md-4">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">希望</h2>
						<div class="block-21 mb-4 d-flex">
							<a class="img mr-4 rounded" style="background-image: url(images/image_1.jpg);"></a>
							<div class="text">
								<h3 class="heading" style="color: white">农民，是站在历史的肩头，</h3>
								<h3 class="heading" style="color: white">从土地中寻求闪光的太阳。</h3>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="img mr-4 rounded" style="background-image: url(images/image_2.jpg);"></a>
							<div class="text">
								<h3 class="heading" style="color: white">劳动一日,可得一夜的安眠;</h3>
								<h3 class="heading" style="color: white">勤劳一生,可得幸福的长眠。</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-2">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">探索</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>关于我们</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>联系</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>项目</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>服务</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>博客</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">有问题吗?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon fa fa-map marker"></span><span class="text">创新文化节</span></li>
								<li><a href="#"><span class="icon fa fa-phone"></span><span class="text">xxxxxxxxx</span></a></li>
								<li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text"></span>xxxxxx@qq.com</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- loader -->
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