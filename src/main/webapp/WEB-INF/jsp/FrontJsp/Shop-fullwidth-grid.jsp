<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

		<head>
			<jsp:include page="IncludePage/head.jsp" />
			<title>Shop-fullwidth-grid</title>
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
										<li class="blog"><a href="#">Shop Full Width</a></li>
									</ul>
								</div>
								<div class="page-title-heading">
									<h2 class="title">
										<a href="#">ARCHIVES PRODUCTS</a>
									</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.page-title -->
			<div class="main-shop-fullwidth-grid">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="filter-shop clearfix">
								<ul>
									<li class="grid active"><a href="#"><i class="fa fa-th-large"
												aria-hidden="true"></i></a></li>
									<li class="list"><a href="#"><i class="fa fa-list" aria-hidden="true"></i></a></li>
								</ul>
								<span class="filter-icon"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
								<span class="filter-right">Sort by
									price: low to high</span>
							</div>
						</div>
					</div>
				</div>
				<section class="flat-products style3">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="product-content product-fourcolumn clearfix">
									<ul class="product style2 isotope-product clearfix">
										<li class="product-item features arrivals">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage55.png" alt="image">
												</a>
											</div>
											<div class="product-info text-center clearfix">
												<span class="product-title">Laboure Chardonnay</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$19.99</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
														src="${contextRoot}/FrontPage/image/homepage61.png" alt="image">
												</a> <span class="new">Sale</span>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Josh Cellars Cabarnet</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$29.99</span>
														<del>$38.99</del>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
														src="${contextRoot}/FrontPage/image/homepage57.png" alt="image">
												</a>

											</div>
											<div class="product-info clearfix">
												<span class="product-title">Dark Horse Rosé</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$38.49</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
														src="${contextRoot}/FrontPage/image/homepage58.png" alt="image">
												</a>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Dark Hose Rosé</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$38.49</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
								<div class="product-content product-fourcolumn clearfix">
									<ul class="product style2 isotope-product clearfix">
										<li class="product-item sale">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage59.png" alt="image">
												</a>
											</div>
											<div class="product-info text-center clearfix">
												<span class="product-title">Point Red Wine Trio</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$33.99</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
										<li class="product-item arrivals sale">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage60.png" alt="image">
												</a>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Adelaide Hills Chardonnay</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat !</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$29.99</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
										<li class="product-item sale">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage61.png" alt="image">
												</a> <span class="new">Sale</span>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Dreaming Wine Trio</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$38.99</span>
														<del>$38.99</del>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
										<li class="product-item arrivals features">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage62.png" alt="image">
												</a>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Bertrand Cap Insula Red</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$28.49</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
								<div class="product-content product-fourcolumn clearfix">
									<ul class="product style2 isotope-product clearfix">
										<li class="product-item sale">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage59.png" alt="image">
												</a>
											</div>
											<div class="product-info text-center clearfix">
												<span class="product-title">Point Red Wine Trio</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$33.99</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
										<li class="product-item arrivals sale">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage60.png" alt="image">
												</a>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Adelaide Hills Chardonnay</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat !</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$29.99</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
										<li class="product-item sale">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage61.png" alt="image">
												</a> <span class="new">Sale</span>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Dreaming Wine Trio</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$38.99</span>
														<del>$38.99</del>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
										<li class="product-item arrivals features">
											<div class="product-thumb clearfix">
												<a href="#" class="product-thumb"> <img
														src="${contextRoot}/FrontPage/image/homepage62.png" alt="image">
												</a>
											</div>
											<div class="product-info clearfix">
												<span class="product-title">Bertrand Cap Insula Red</span>
												<div class="product-content">
													<span>A fabulous sipper with slightly rich flavours of
														juicy peach and citrus. Enjoy in the heat of summer and on
														cool fall nights!</span>
												</div>
												<div class="price">
													<ins>
														<span class="amount">$28.49</span>
													</ins>
												</div>
												<div class="elm-btn">
													<a href="#"
														class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">BUY
														NOW</a>
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
							<div class="blog-pagination text-center">
								<ul class="flat-pagination">
									<li class="prev"><a href="#" class=" hvr-shutter-out-horizontal"> <i
												class="fa fa-angle-left" aria-hidden="true"></i>
										</a></li>
									<li><a href="#" class=" hvr-shutter-out-horizontal"> 1 </a></li>
									<li><a href="#" class=" hvr-shutter-out-horizontal"> 2 </a></li>
									<li><a href="#" class=" hvr-shutter-out-horizontal"> 3 </a></li>
									<li class="next"><a href="#" class=" hvr-shutter-out-horizontal"> <i
												class="fa fa-angle-right" aria-hidden="true"></i>
										</a></li>
								</ul>
							</div>
						</div>
						<!-- /row -->
					</div>
					<!-- /container-->
				</section>
			</div>
			<!-- / main-shop-fullwidth-grid -->
			
			<jsp:include page="IncludePage/footer.jsp" />

			<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<!-- /#scroll-top -->

			<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
		</body>

		</html>