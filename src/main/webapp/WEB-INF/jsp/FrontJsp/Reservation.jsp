<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<title>Home</title>

<meta name="author" content="themesflat.com">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Bootstrap  -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/stylesheets/bootstrap.css">

<!-- Theme Style -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/stylesheets/style.css">

<!-- Responsive -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/stylesheets/responsive.css">

<!-- Colors -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/stylesheets/colors/color1.css"
	id="colors">

<!-- Animation Style -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/stylesheets/animate.css">

<!-- Favicon and touch icons  -->
<link href="${contextRoot}/FrontPage/icon/icon.png"
	rel="apple-touch-icon-precomposed" sizes="48x48">
<link href="${contextRoot}/FrontPage/icon/icon.png"
	rel="apple-touch-icon-precomposed">
<link href="${contextRoot}/FrontPage/icon/icon.png" rel="shortcut icon">
<!-- Slider Revolution CSS Files -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/rev-slider/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/rev-slider/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/rev-slider/css/navigation.css">
<!-- 改名 -->
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/FrontPage/stylesheets/t1.css">
</head>

<body>
	<!-- /.loading-overlay -->
	<div id="loading-overlay">
		<div class="loader"></div>
	</div>
	<header class="style1">
		<div id="site-header">
			<div class="container-fluid">
				<a href="${contextRoot}/FrontPage/index.html" class="logo"><img
					src="${contextRoot}/FrontPage/image/logo.png" alt="image"
					width="129" height="37" data-retina="image/logo-2x.png"
					data-width="147" data-height="21"></a>
				<div class="mobile-button">
					<span></span>
				</div>
				<!-- /.nav-wrap -->
				<div class="nav-wrap ">
					<nav id="mainnav" class="mainnav">
						<ul class="menu">
							<li class="active a"><a
								href="${contextRoot}/FrontPage/index.html" title="">HOME</a></li>
							<li class="active"><a
								href="${contextRoot}/FrontPage/about.html" title="">FEATURES</a>
								<ul class="sub-menu">

									<li><a href="${contextRoot}/FrontPage/Event.html" title="">Event</a></li>
									<li><a href="${contextRoot}/FrontPage/Coming-soon.html"
										title="">Coming Soon</a></li>
									<li><a href="${contextRoot}/FrontPage/404-page.html"
										title="">404 Page</a></li>
									<li><a href="${contextRoot}/FrontPage/Wish-list.html"
										title="">Wish List</a></li>
								</ul> <!-- /.sub-menu --></li>
							<li class="active"><a href="#" title="">商品</a>
								<ul class="sub-menu">
								<li><a href="${contextRoot}/FrontPage/Shop-fullwidth-grid.jsp" title="">商品總覽</a></li>
                                 <li><a href="${contextRoot}/FrontPage/Shop-details.jsp" title="">商品詳細 </a></li>
                                 <li><a href="${contextRoot}/FrontPage/Shop-order-tracking.jsp" title="">訂單追蹤</a></li>
                                 <li><a href="${contextRoot}/FrontPage/Shop-cart.jsp" title="">購物車</a></li>
								</ul> <!-- /.sub-menu --></li>
							<li class="active"><a href="#" title="">BLOG</a>
								<ul class="sub-menu">
									<li><a
										href="${contextRoot}/FrontPage/Blog-grid-3column.html"
										title="">Blog Grid 3Column</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Blog-grid-2column.html"
										title="">Blog Grid 2Column</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Blog-Right-Slidebar.html"
										title="">Blog Right Slidebar</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Blog-details-slidebar.html"
										title="">Blog Details Slidebar</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Blog-details-fullwidth.html"
										title="">Blog Details FullWidth</a></li>
								</ul> <!-- /.sub-menu --></li>
							<li class="active"><a href="#" title="">CONTACT US</a>
								<ul class="sub-menu">
									<li><a href="${contextRoot}/FrontPage/contact-1.html"
										title="">Contact Us 1</a></li>
									<li><a href="${contextRoot}/FrontPage/Contact-2.html"
										title="">Contact Us 2</a></li>
								</ul> <!-- /.sub-menu --></li>
						</ul>
					</nav>
				</div>
				<div class="search clearfix">
					<ul>
						<li><input type="search" id="search" placeholder="Search..."></li>
						<li><a href="#" class="header-search-icon"><i
								class="ti-search" aria-hidden="true"></i></a></li>
						<li><a href="#"> <i class="ti-align-justify"
								aria-hidden="true"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="${contextRoot}/FrontPage/projects1.html"
									title="">Login/ Register</a></li>
								<li><a href="${contextRoot}/FrontPage/projects1.html"
									title="">My Account</a></li>
								<li><a href="${contextRoot}/FrontPage/projects1.html"
									title="">My Wishlist</a></li>
								<li><a href="${contextRoot}/FrontPage/projects1.html"
									title="">My Cart</a></li>
								<li><a href="${contextRoot}/FrontPage/projects1.html"
									title="">Tracking Orders</a></li>
								<li class="language"><a
									href="${contextRoot}/FrontPage/projects1.html" title="">LANGUAGE</a></li>
								<li class="flag"><a
									href="${contextRoot}/FrontPage/projects1.html" title=""> <span><img
											src="${contextRoot}/FrontPage/image/flash3.png" alt="image"></span>
										<span><img
											src="${contextRoot}/FrontPage/image/flash1.png" alt="image"></span>
										<span><img
											src="${contextRoot}/FrontPage/image/flash2.png" alt="image"></span>
								</a></li>
							</ul> <!-- /.sub-menu --></li>
					</ul>
					<form class="header-search-form" role="search" method="get"
						action="#">
						<input type="text" value="" name="#" class="header-search-field"
							placeholder="Search...">
						<button type="submit" class="header-search-submit" title="Search">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>
			<!-- /container -->
		</div>
	</header>

	<!-- book section -->
	<section class="book_section layout_padding">
		<div class="container">
			<div class="heading_container">
				<h2>Book A Table</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form_container">
						<form action="">
							<div>
								<input type="text" class="form-control" placeholder="Your Name" />
							</div>
							<div>
								<input type="text" class="form-control"
									placeholder="Phone Number" />
							</div>
							<div>
								<input type="email" class="form-control"
									placeholder="Your Email" />
							</div>
							<div>
								<select class="form-control nice-select wide">
									<option value="" disabled selected>How many persons?</option>
									<option value="">2</option>
									<option value="">3</option>
									<option value="">4</option>
									<option value="">5</option>
								</select>
							</div>
							<div>
								<input type="date" class="form-control">
							</div>
							<div class="btn_box">
								<button>Book Now</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6">
					<div class="map_container ">
						<div id="googleMap"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end book section -->

	<footer class="style3">
		<div class="container">
			<div class="footer-widgets">
				<div class="widget widget-logo">
					<a href="${contextRoot}/FrontPage/index.html" class="logo"><img
						src="${contextRoot}/FrontPage/image/logo.png" alt="image"
						width="129" height="37" data-retina="image/logo-2x.png"
						data-width="147" data-height="21"></a>
				</div>
				<!-- /widget-logo -->
				<div class="widget widget-icon">
					<ul>
						<li class="active"><a href="#"> <i class="fa fa-facebook"
								aria-hidden="true"></i>
						</a></li>
						<li><a href="#"> <i class="fa fa-twitter"
								aria-hidden="true"></i>
						</a></li>
						<li><a href="#"> <i class="fa fa-instagram"
								aria-hidden="true"></i>
						</a></li>
						<li><a href="#"> <i class="fa fa-skype"
								aria-hidden="true"></i>
						</a></li>
						<li><a href="#"> <i class="fa fa-wordpress"
								aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<!-- /widget-icon -->
				<div class="widget widget-title">
					<h2>Get news & offers</h2>
				</div>
				<!-- /widget-title -->
				<div class="widget widget-contact">
					<input type="search" id="search-footer" placeholder="Your Email">
					<button type="submit">
						<i class="fa fa-location-arrow" aria-hidden="true"></i>
					</button>
				</div>
				<!-- /widget-contact -->
				<div class="widget widget-menu">
					<ul>
						<li class="active"><a
							href="${contextRoot}/FrontPage/About.html"> About Us </a></li>
						<li><a
							href="${contextRoot}/FrontPage/Shop-fullwidth-grid.html">
								Customer Service </a></li>
						<li><a href="${contextRoot}/FrontPage/Homepage2.html">
								Terms & Conditions </a></li>
						<li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html">
								Privacy Policy </a></li>
						<li class="contact"><a
							href="${contextRoot}/FrontPage/contact-1.html"> Contact </a></li>
					</ul>
				</div>
				<!-- /widget-about -->
				<div class="widget widget-text">
					<span>Copyright &copy; 2019.Company name All rights
						reserved.<a target="_blank"
						href="https://shop194286523.taobao.com/">狮王素材-淘宝店</a>
					</span>
				</div>
			</div>
			<!-- /footer-widgets -->
		</div>
		<!-- /container -->
	</footer>
	<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
	<!-- /#scroll-top -->

	<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/main.js"></script>

	<!-- custom js -->
	<script src="${contextRoot}/FrontPage/javascript/custom.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
	<!-- End Google Map -->
	<!-- Slider -->
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
	<!-- Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading -->
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>

</body>

</html>