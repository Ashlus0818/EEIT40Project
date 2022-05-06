<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
<jsp:include page="IncludePage/head.jsp" />
<title>Shop-details</title>
</head>
<body>
	<div id="loading-overlay">
		<div class="loader"></div>
	</div>
	<!-- /.loading-overlay -->
	<header class="style1">
		<div id="site-header">
			<jsp:include page="IncludePage/topBar.jsp" />
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
	
	<jsp:include page="IncludePage/footer.jsp" />

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