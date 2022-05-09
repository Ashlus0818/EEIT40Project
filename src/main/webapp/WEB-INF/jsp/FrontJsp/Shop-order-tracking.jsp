<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

		<head>
			<jsp:include page="IncludePage/head.jsp" />
			<title>Shop-order-tracking</title>
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
										<li class="blog"><a href="#">Tracking</a></li>
									</ul>
								</div>
								<div class="page-title-heading">
									<h2 class="title">
										<a href="#">ORDER TRACKING</a>
									</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.page-title -->
			<div class="main-order-tracking">
				<section class="flat-order-tracking">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="title-section">
									<h1 class="our-product-main">
										<a href="#"> Order Tracking </a>
									</h1>
									<div class="our-product-image">
										<img src="${contextRoot}/FrontPage/image/homepage14.png" alt="image">
									</div>
								</div>
								<!-- /title-section -->
								<div class="text-order">
									<p>To track your order please enter your Order ID in the box
										below and press the "Track" button. This was given to you on
										your receipt and in the con firmation email you should have
										received.</p>
								</div>
							</div>
							<div class="col-lg-3"></div>
							<div class="col-lg-6">
								<form class="comment-form">
									<p>
										<a href="#">Order ID</a>
									</p>
									<p class="comment-form-author">
										<input name="author" type="text" placeholder="Name" required="required">
									</p>
									<p>
										<a href="#">Billing Email</a>
									</p>
									<p class="comment-form-email">
										<input name="email" type="email" placeholder="Email" required="required">
									</p>
									<p class="submit-form">
										<button name="submit" type="submit"
											class="submit btn btn-styl hvr-shutter-out-horizontal">TRACKING</button>
									</p>
								</form>
							</div>
							<div class="col-lg-3"></div>
						</div>
					</div>
				</section>
			</div>
			<!-- /main-order-tracking -->
			
			<jsp:include page="IncludePage/footer.jsp" />

			<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<!-- /#scroll-top -->

			<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
			<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
		</body>

		</html>