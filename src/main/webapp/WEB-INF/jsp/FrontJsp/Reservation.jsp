<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

		<head>
			<jsp:include page="IncludePage/head.jsp" />
			<jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
			<!-- 改名 -->
			<link rel="stylesheet" type="text/css" href="${contextRoot}/FrontPage/stylesheets/t1.css">
			<title>Reservation</title>
		</head>

		<body>
			<!-- /.loading-overlay -->
			<div id="loading-overlay">
				<div class="loader"></div>
			</div>
			<header class="style1">
				<div id="site-header">
					<jsp:include page="IncludePage/topBar.jsp" />
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
										<input type="text" class="form-control" placeholder="Phone Number" />
									</div>
									<div>
										<input type="email" class="form-control" placeholder="Your Email" />
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

			<jsp:include page="IncludePage/footer.jsp" />
			
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
			<script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
			<script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
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
			<script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>

		</body>

		</html>