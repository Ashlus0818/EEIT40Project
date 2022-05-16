<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
<jsp:include page="IncludePage/head.jsp" />
<title>商品詳細頁面</title>
</head>
<body>
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
								<li><a href="#">首頁</a></li>
								<li><a href="#">產品</a></li>
								<li class="blog"><a href="#">詳細介紹</a></li>
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
													<img
														src="${contextRoot}/FrontPage/image/ID${liquorDetial.id}.jpg"
														alt="Image">
													<div class="search-images">
														<a data-type="iframe"
															href="${contextRoot}/FrontPage/image/ID1.jpg"
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
								<a href="">${liquorDetial.iName }</a>
							</h2>

							<h2 class="dolar">${liquorDetial.iprice}</h2>
							<div class="content-text">
								<p>${liquorDetial.iPlace}</p>
							</div>

							<div class="content-cart clearfix">
								<form class="cart clearfix" method="post">
									<div class="quantity">
										<input type="number" step="1" min="1" name="quantity"
											value="1" title="Qty" class="input-text qty text" size="4"
											id="quantity">
									</div>
									<div class="elm-btn">
										<a href="${contextRoot}/front/showCartList" id="addProduct"
											class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontall"><i
											class="fa fa-shopping-cart" aria-hidden="true"></i>
											ADD TO CART</a>
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

					<!-- 							/post-bottom-second -->

					<!-- 							/comment-respond -->
					<!-- 						</div> -->
					<!-- 					</div> -->

				</div>
			</div>
			<!-- /row-->
			<!-- /container -->
		</section>
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

	<script type="text/javascript">
		$("#addProduct").click(function(event) {
			event.preventDefault();
			let productId = "${liquorDetial.id}";
			let quantity = $("#quantity").val();
			location.replace("${contextRoot}/front/Shop-cart?productId="+productId+"&quantity="+quantity)
			
		})
	</script>
</body>

</html>