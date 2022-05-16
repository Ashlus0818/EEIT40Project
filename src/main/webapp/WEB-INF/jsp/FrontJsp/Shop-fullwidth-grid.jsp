<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

<head>

<jsp:include page="IncludePage/head.jsp" />
<title>全部商品</title>

<style type="text/css">
.lquorImg {
	height: 296px;
	width: 180px
}
</style>
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
								<li><a href="${contextRoot}/front/front">首頁</a></li>
								<li><a href="#">產品</a></li>
								<li class="blog"><a href="#">全部商品</a></li>
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

						<span class="filter-icon"> <i class="" aria-hidden="true">分類</i>
							<select>
								<option value="volvo">日本</option>
								<option value="saab">英國</option>
								<option value="opel">愛爾蘭</option>
								<option value="audi">台灣</option>
								<option value="audi">美國</option>
						</select>

						</span>
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
							
								<c:forEach var="product" items="${inventortyList }">
								
									<li class="product-item features arrivals">
										<div id="img" class="product-thumb clearfix">
											<a href="${contextRoot}/front/Shop-details?liquorId=${product.id}"
												class="product-thumb"> 
												<img class="lquorImg" src="${contextRoot}/FrontPage/image/ID${product.id }.jpg">
											</a>
										</div>
										<div class="product-info text-center clearfix">
											<span class="product-title">${product.iName }</span>

											<div class="price">
												<ins>
													<span class="amount">${product.iprice }</span>
												</ins>
											</div>
										</div>
									</li>
								</c:forEach>
								<!-- /product-item -->

							</ul>
						</div>

					</div>
					<!-- /col-lg-12 -->
					<div class="blog-pagination text-center">
						<ul class="flat-pagination">
							<li class="prev"><a href="#"
								class=" hvr-shutter-out-horizontal"> <i
									class="fa fa-angle-left" aria-hidden="true"></i>
							</a></li>
							<li><a href="#" class=" hvr-shutter-out-horizontal"> 1 </a></li>
							<li><a href="#" class=" hvr-shutter-out-horizontal"> 2 </a></li>
							<li><a href="#" class=" hvr-shutter-out-horizontal"> 3 </a></li>
							<li class="next"><a href="#"
								class=" hvr-shutter-out-horizontal"> <i
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