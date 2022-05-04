﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<title>Wizym-Templae</title>

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
<link rel="stylesheet" type="text/css" href="stylesheets/animate.css">

<!-- Favicon and touch icons  -->
<link href="${contextRoot}/FrontPage/icon/icon.png"
	rel="apple-touch-icon-precomposed" sizes="48x48">
<link href="${contextRoot}/FrontPage/icon/icon.png"
	rel="apple-touch-icon-precomposed">
<link href="${contextRoot}/FrontPage/icon/icon.png" rel="shortcut icon">
</head>
<body>
	<div id="loading-overlay">
		<div class="loader"></div>
	</div>
	<!-- /.loading-overlay -->
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
				<div class="nav-wrap ">
					<nav id="mainnav" class="mainnav">
						<ul class="menu">
							<li class="active"><a
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
								</ul>
								<!-- /.sub-menu --></li>
							<li class="active a"><a href="#" title="">PRODUCTS</a>
								<ul class="sub-menu">
									<li><a
										href="${contextRoot}/FrontPage/Shop-fullwidth-list.html"
										title="">Shop Full Width List</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Shop-fullwidth-grid.html"
										title="">Shop Full Width Grid</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Shop-right-slidebar-list.html"
										title="">Shop Right Slidebar List</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Shop-right-slidebar-grid.html"
										title="">Shop Right Slidebar Grid</a></li>
									<li><a
										href="${contextRoot}/FrontPage/Shop-details-slidebar.html"
										title="">Shop Details Slidebar</a></li>
									<li class="active"><a
										href="${contextRoot}/FrontPage/Shop-details.html" title="">Shop
											Details </a></li>
									<li><a
										href="${contextRoot}/FrontPage/Shop-order-tracking.html"
										title="">Shop Order Tracking</a></li>
									<li><a href="${contextRoot}/FrontPage/Shop-cart.html"
										title="">Shop Cart</a></li>
								</ul>
								<!-- /.sub-menu --></li>
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
								</ul>
								<!-- /.sub-menu --></li>
							<li class="active"><a href="#" title="">CONTACT US</a>
								<ul class="sub-menu">
									<li><a href="${contextRoot}/FrontPage/contact-1.html"
										title="">Contact Us 1</a></li>
									<li><a href="${contextRoot}/FrontPage/Contact-2.html"
										title="">Contact Us 2</a></li>
								</ul>
								<!-- /.sub-menu --></li>
						</ul>
					</nav>
				</div>
				<!-- /.nav-wrap -->

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
							</ul>
							<!-- /.sub-menu --></li>
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
	<div class="page-title parallax parallax1 ">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-title-content text-center">
						<div class="breadcrumbs">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">Product</a></li>
								<li class="blog"><a href="#">Product Details</a></li>
							</ul>
						</div>
						<div class="page-title-heading">
							<h2 class="title">
								<a href="#">PRODUCT DETAILS</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.page-title -->
	<div class="main-shop-detail-review">
		<section class="main-shop-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="image-wrap">
							<div class="image-rallary mg-bottom-45">
								<div
									class="themesflat-gallery  style-2 has-arrows arrow-center arrow-circle offset-v-82 has-thumb w170  clearfix"
									data-gap="0" data-column="1" data-column2="1" data-column3="1"
									data-auto="false">
									<div class="owl-carousel owl-theme">
										<div class="gallery-item">
											<div class="inner">
												<div class="thumb">
													<img src="${contextRoot}/FrontPage/image/homepage152.png"
														alt="Image">
													<div class="search-images">
														<a data-type="iframe"
															href="${contextRoot}/FrontPage/image/homepage127.png"
															class="zoom-pic"> <i class="icon_zoom-in_alt "
															aria-hidden="true"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
										<div class="gallery-item">
											<div class="inner">
												<div class="thumb">
													<img src="${contextRoot}/FrontPage/image/homepage152.png"
														alt="Image">
													<div class="search-images">
														<a data-type="iframe"
															href="${contextRoot}/FrontPage/image/homepage127.png"
															class="zoom-pic"> <i class="icon_zoom-in_alt "
															aria-hidden="true"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
										<div class="gallery-item active">
											<div class="inner">
												<div class="thumb">
													<img src="${contextRoot}/FrontPage/image/homepage152.png"
														alt="Image">
													<div class="search-images">
														<a data-type="iframe"
															href="${contextRoot}/FrontPage/image/homepage127.png"
															class="zoom-pic"> <i class="icon_zoom-in_alt "
															aria-hidden="true"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- /.themesflat-cousel-box -->
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="content-wrap">
							<h2 class="heading">
								<a href="">Vivonne sauvignon 1988</a>
							</h2>
							<div class="post-rating">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i>
							</div>
							<h2 class="dolar">$19.99</h2>
							<div class="content-text">
								<p>A New Generation of Winernakers Lorem ipsum dolor sit
									amet sectetu adipiscing elit. Aenean commodo ligula eget dolor.</p>
							</div>
							<div class="info-content">
								<ul>
									<li><span> <span class="note">SKU: </span> 01NA55
									</span></li>
									<li><span> <span class="note">Categories:</span>
											Wines, Grapes
									</span></li>
									<li><span> <span class="note">Tags:</span>
											Champange, Wine, Red
									</span></li>
								</ul>
							</div>
							<div class="size">
								<span>Size</span> <select>
									<option value="volvo">Choosing Bottle Sizes</option>
									<option value="saab">Saab</option>
									<option value="opel">Opel</option>
									<option value="audi">Audi</option>
								</select>
							</div>
							<div class="content-cart clearfix">
								<form class="cart clearfix" method="post">
									<div class="quantity">
										<input type="number" step="1" min="1" name="quantity"
											value="1" title="Qty" class="input-text qty text" size="4">
									</div>
									<div class="elm-btn">
										<a href="#"
											class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontall"><i
											class="fa fa-shopping-cart" aria-hidden="true"></i> ADD TO
											CART</a>
									</div>
									<div class="heart">
										<i class="fa fa-heart" aria-hidden="true"></i>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-11">
						<div class="woocommerce-tabs wc-tabs-wrapper">
							<ul class="tabs">
								<li><a class="tab active" data-id='#tab-description'
									href="#">Description</a></li>
								<li><a class="tab" data-id='#tab-reviews' href="#">Reviews
										(1)</a></li>
							</ul>
							<div id="tab-description" class="tab-content">
								<p>This wine is deeply coloured and brightly scented with
									intense aromas of cassis, dark cherries and dried herbs
									underpinned by chocolate and mocha-like oak.</p>
								<p>- Size: 500ml, 750ml, 1,5L</p>
								<p>- Vintage: 1897, 1988</p>
								<p>- Taste: Lorem ipsum dolor sit amet, consectetur
									adipisicing elit.</p>
								<p>This wine was blended from two parcels of fruit grown by
									a fourth-generation vigneron. The vines are aged from 10 to 15
									years and are trained on a vertical shoot positioning trellis.</p>
							</div>
							<div id="tab-reviews" class="tab-content">
								<div id="reviews" class="woocommerce-Reviews">
									<div class="post-bottom-second post-bottom">
										<div class="avatar">
											<img src="${contextRoot}/FrontPage/image/comment1.jpg"
												alt="image">
											<div class="post-rating">
												<i class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i>
											</div>
										</div>
										<div class="post-comment">
											<div class="comment-meta comment">
												<a href="#"> May 28, 2018</a>
											</div>
											<div class="comment-title comment">
												<a href="#">Brandon Kelley</a>
											</div>
											<div class="comment-text comment">
												<a href="#">Vasse Felix chief executive, Paul Holmes a
													Court said no plans have yet been made for the buildings on
													the property</a>
											</div>
										</div>
									</div>
									<!-- /post-bottom-second -->
									<div class="comment-respond">
										<form class="comment-form">
											<p>
												<a href="#">Add Preview</a>
											</p>
											<p class="comment-form-author">
												<!-- <label>Name *</label> -->
												<input name="author" type="text" placeholder="Name"
													required="required">
											</p>
											<p class="comment-form-email">
												<!-- <label>Email *</label> -->
												<input name="email" type="email" placeholder="Email"
													required="required">
											</p>
											<div class="clearfix"></div>
											<p class="your-rating">
												<a href="#">Your Rating</a>
											</p>
											<div class="post-rating">
												<i class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i> <i
													class="fa fa-star" aria-hidden="true"></i>
											</div>
											<p class="comment-form-comment">
												<!-- <label>Comment</label>  -->
												<textarea name="comment" placeholder="Comment"
													required="required"></textarea>
											</p>
											<p class="submit-form">
												<button name="submit" type="submit"
													class="submit btn btn-styl hvr-shutter-out-horizontal">SUBMIT</button>
											</p>
										</form>
									</div>
									<!-- /comment-respond -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /row-->
			</div>
			<!-- /container -->
		</section>
		<!-- /main-shop-detail -->
		<section class="flat-products style2">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-section">
							<h3 class="our-product-title">
								<a href="#"> Our Products </a>
							</h3>
							<h1 class="our-product-main">
								<a href="#"> Popular This Month </a>
							</h1>
							<div class="our-product-image">
								<img src="${contextRoot}/FrontPage/image/homepage14.png"
									alt="image">
							</div>
						</div>
						<!-- /title-section -->
						<div class="product-content product-fourcolumn clearfix">
							<ul class="product style2 isotope-product clearfix">
								<li class="product-item features arrivals">
									<div class="product-thumb clearfix">
										<a href="#" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/homepage55.png"
											alt="image">
										</a>
									</div>
									<div class="product-info text-center clearfix">
										<span class="product-title">Laboure Chardonnay</span>
										<div class="price">
											<ins>
												<span class="amount">$19.99</span>
											</ins>
										</div>

									</div>
									<div class="product-review">
										<div class="add-cart">
											<a href="#" class="like1"><i class="fa fa-refresh"
												aria-hidden="true"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like2"><i class="fa fa-heart-o"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like3"><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</li>
								<!-- /product-item -->
								<li class="product-item features sale">
									<div class="product-thumb clearfix">
										<a href="#" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/homepage150.png"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">Josh Cellars Cabarnet</span>
										<div class="price">
											<ins>
												<span class="amount">$29.99</span>
												<del>$38.99</del>
											</ins>
										</div>

									</div>
									<div class="product-review">
										<div class="add-cart">
											<a href="#" class="like1"><i class="fa fa-refresh"
												aria-hidden="true"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like2"><i class="fa fa-heart-o"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like3"><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</li>
								<!-- /product-item -->
								<li class="product-item features">
									<div class="product-thumb clearfix">
										<a href="#" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/homepage57.png"
											alt="image">
										</a>

									</div>
									<div class="product-info clearfix">
										<span class="product-title">Dark Horse Rosé</span>
										<div class="price">
											<ins>
												<span class="amount">$38.49</span>
											</ins>
										</div>
									</div>
									<div class="product-review">
										<div class="add-cart">
											<a href="#" class="like1"><i class="fa fa-refresh"
												aria-hidden="true"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like2"><i class="fa fa-heart-o"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like3"><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</li>
								<!-- /product-item -->
								<li class="product-item arrivals">
									<div class="product-thumb clearfix">
										<a href="#" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/homepage150.png"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">Dark Hose Rosé</span>
										<div class="price">
											<ins>
												<span class="amount">$38.49</span>
											</ins>
										</div>

									</div>
									<div class="product-review">
										<div class="add-cart">
											<a href="#" class="like1"><i class="fa fa-refresh"
												aria-hidden="true"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like2"><i class="fa fa-heart-o"></i></a>
										</div>
										<div class="add-cart">
											<a href="#" class="like3"><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</li>
								<!-- /product-item -->
							</ul>
						</div>
					</div>
					<!-- /col-lg-12 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</section>
		<!-- /flat-products-->
	</div>
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
	<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/javascript/owl.carousel2.thumbs.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-fancybox.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
</body>
</html>