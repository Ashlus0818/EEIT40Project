<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						
						<span class="filter-icon">
						<i class=""	aria-hidden="true">分類</i>																						
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
								<li class="product-item features arrivals">
									<div  id="img" class="product-thumb clearfix">
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID1.jpg"
											alt="image" >
										</a>
									</div>
									<div class="product-info text-center clearfix">
										<span class="product-title">三得利 山崎單一麥芽威士忌 43% 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$4000</span>
											</ins>
										</div>										
									</div>
									</li>
								<!-- /product-item -->
								<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> 
										<img src="${contextRoot}/FrontPage/image/ID2.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">三得利 響 Japanese Harmony威士忌 43% 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$4000</span>
									
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
								<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID3.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">三得利山崎18年單一麥芽威士忌 43% 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$42000</span>
									
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
									<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID4.jpg"
											alt="image">
										</a> <span class="new">Sale</span>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">三得利日本知多單一穀物威士忌 43% 0.7L </span>
									
										<div class="price">
											<ins>
												<span class="amount">$1450</span>
													<del>$1650</del>
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
								<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID5.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">英國勞德15年雪莉蘇格蘭威士忌黑金禮盒 1L 40%</span>
									
										<div class="price">
											<ins>
												<span class="amount">$1600</span>
										
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
									<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID6.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">格蘭菲迪22年雪莉酒桶單一麥芽蘇格蘭威士忌 44.3% 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$7400</span>
										
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
									<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID7.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">英國愛倫黃金威士忌奶油香甜酒0.7L New Pack (O)</span>
									
										<div class="price">
											<ins>
												<span class="amount">$740</span>
											
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
									<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID8.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">三得利白州18年單一麥芽威士忌 43% 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$30000</span>
											
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
							</ul>
						</div>
						<div class="product-content product-fourcolumn clearfix">
							<ul class="product style2 isotope-product clearfix">
								<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID9.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">三得利角瓶 40% 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$550</span>
											
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
							<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID10.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">三得利響21年調和威士忌 0.7L</span>
									
										<div class="price">
											<ins>
												<span class="amount">$36842</span>
											
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
								<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID11.jpg"
											alt="image">
										</a>
									</div>
									<div class="product-info clearfix">
										<span class="product-title">日本雲鶴單一麥芽威士忌 0.75L 43%</span>
									
										<div class="price">
											<ins>
												<span class="amount">$4200</span>
											
											</ins>
										</div>										
									</div>								
								</li>
								<!-- /product-item -->
								<li class="product-item features sale">
									<div id="img" class="product-thumb clearfix" >
										<a href="${contextRoot}/front/Shop-details" class="product-thumb"> <img
											src="${contextRoot}/FrontPage/image/ID12.jpg"
											alt="image">
										</a> 
									</div>
									<div class="product-info clearfix">
										<span class="product-title">英國格蘭登納雪莉桶單一麥芽蘇格蘭威士忌 0.7L 40%</span>
									
										<div class="price">
											<ins>
												<span class="amount">$890</span>
												</ins>
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
							<li class="prev">
							<a href="#" class=" hvr-shutter-out-horizontal"> 
							<i	class="fa fa-angle-left" aria-hidden="true"></i>
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