<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

<head>
<jsp:include page="IncludePage/head.jsp" />
<title>購物車</title>
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
								<li><a href="#">Home</a></li>
								<li><a href="#">Product</a></li>
								<li class="blog"><a href="#">Shopping Cart</a></li>
							</ul>
						</div>
						<div class="page-title-heading">
							<h2 class="title">
								<a href="#">Cart</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.page-title -->
	</div>
	<div class="main-shop-cart">
		<section class="flat-cart">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="woocommerce-tabs wc-tabs-wrapper">
							<ul class="tabs">
								<li><a class="tab active" data-id='#tab-description'
									href="#"><i class="  icon_bag" aria-hidden="true"></i>SHOPPING
										CART</a></li>


							</ul>
							<div class="cart-wrap">
								<div id="tab-description" class="tab-content">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Image</th>
												<th>Product Name</th>
												<th>Price</th>
												<!-- 												<th>Quantity</th> -->
												<!-- 												<th>Total</th> -->
												<th class="delete">×</th>
											</tr>
										</thead>
										<tbody>


											<c:forEach var="inventortyList" items="${myList}">
												
												<tr>
													<td class="text-center"><img src="${contextRoot}/FrontPage/image/ID${inventortyList.shopInventory.id}.jpg"
														alt="image" style="width: 30px; height: 60px"></td>
													<td class="list text">${inventortyList.shopInventory.iName}</td>
													<td class="text-center list price subTotal">${inventortyList.shopInventory.iprice}</td>
													<td><input
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="deleteButton${inventortyList.shopInventory.id}" type="button" value="x"
								onclick="deleteForm(${inventortyList.shopInventory.id})"></td>
												</tr> 
												
											</c:forEach>
										</tbody>
									</table>



									<div class="cart-btn">
										<div class="btn-continue">
											<div class="elm-btn">
												<a href="${contextRoot}/front/Shop-fullwidth-grid"
													class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">繼續購買</a>
											</div>
										</div>
										<div class="btn-clear">
											<ul>
												<li>
													<div class="elm-btn">
														<a href="#"
															class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">刪除商品</a>
													</div>
												</li>
												<li></li>
											</ul>
										</div>
									</div>
									<div id="tab-reviews" class="tab-content">
										<div class="check-out">
											<h3 class="heading-check">Billing Address</h3>
											<form class="form-checkout ">
												<div class="row-input-wrap clearfix">
													<div class="input-wrap float-left-50 pd-right-10">
														<label>First name<span> *</span></label> <input
															type="text" name="name" required="" class="width-100">
													</div>
													<div class="input-wrap float-right-50 pd-left-10">
														<label>Last name<span> *</span></label> <input type="text"
															name="name" required="" class="width-100">
													</div>
												</div>
												<div class="input-wrap">
													<label>Company Name <span> *</span></label> <input
														type="text" required="" class="width-100">
												</div>
												<div class="input-wrap">
													<label>Country<span> *</span></label> <input type="text"
														required="" placeholder="United States" class="width-100">
												</div>
												<div class="input-wrap">
													<label>Address<span> *</span></label> <input type="text"
														class="mg-bottom-25 width-100" required=""
														placeholder="100A 8th St, Los Angeles, CA 90014">
												</div>
												<div class="input-wrap">
													<label>POSTCODE/ZIP<span> *</span></label> <input
														type="text" class="mg-bottom-25 width-100" required="">
												</div>
												<div class="input-wrap">
													<label>TOWN/CITY<span> *</span></label> <input type="text"
														class="mg-bottom-25 width-100" required="">
												</div>
												<div class="row-input-wrap clearfix">
													<div class="input-wrap float-left-50 pd-right-10">
														<label>Email Address <span> *</span></label> <input
															type="text" class="mg-bottom-25 width-100" required="">
													</div>
													<div class="input-wrap float-right-50 pd-left-10">
														<label>Phone Number <span> *</span></label> <input
															type="text" class="mg-bottom-25 width-100" required="">
													</div>
												</div>
												<div class="row-check clearfix">
													<div class="input-wrap ">
														<input type="checkbox" name="check-ship"
															class="mg-right-15">Create an account?
													</div>
													<div class="input-wrap ">
														<input type="checkbox" name="check-create"
															class="mg-right-15"> Ship to different address?
													</div>
												</div>
												<div class="input-wrap ">
													<label>Order note <span> *</span></label>
													<textarea name="messages" required=""></textarea>
												</div>
											</form>
										</div>
										<div class="review-order">
											<h3>Your Order</h3>
											<table class="order-table">
												<tbody>
													<tr class="cart-subtotal cart-title-details">
														<td class="product-name">Product</td>
														<td class="total" data-title="Subtotal"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol"></span>Total</span></td>
													</tr>
													<tr class="cart-subtotal">
														<td class="product-name">Bougrier Rose d'Anjou</td>
														<td class="total" data-title="Subtotal"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">$</span>29.99</span></td>
													</tr>
													<tr class="order-total">
														<td class="product-name">Olema Rose Cotes De</td>
														<td class="total" data-title="Total"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">$</span>36.89</span></td>
													</tr>
													<tr class="order-total">
														<td class="product-name">Total</td>
														<td class="total text-d90000 font-weight-500"
															data-title="Total"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol ">$</span>66.88</span>
														</td>
													</tr>
													<tr class="order-total">
														<td class="product-name">Shipping</td>
														<td class="total" data-title="Total">Free Shipping</td>
													</tr>
													<tr class="order-total">
														<td class="title product-name">ORDER TOTAL</td>
														<td class="total text-d90000 font-weight-500"
															data-title="Total"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">$</span>66.88</span></td>
													</tr>
												</tbody>
											</table>
											<div class="wrap-check mg-top-20">
												<div class="input-wrap mg-bottom-15">
													<input type="checkbox" name="bank"> DIRECT BANK
													TRANSFER
												</div>
												<div class="wrap-check-text">
													<p>Make your payment directly into our bank account.
														Please use your Order ID as the pay ments reference. Your
														order will not be shipped until the funds have cleared in
														our account.</p>
												</div>
												<div class="input-wrap mg-bottom-15 ">
													<input type="checkbox" name="payment"> CHECK
													PAYMENTS
												</div>
												<div class="input-wrap mg-bottom-15">
													<input type="checkbox" name="paypal"> PAYPAL<img
														src="${contextRoot}/FrontPage/image/homepage136.png"
														alt="image">
												</div>

												<div class="wc-proceed-to-checkout text-center pd-top-20">
													<div class="elm-btn">
														<a href="#"
															class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">PROCEED
															TO CHECK OUR</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="tab-order" class="tab-content">
										<div class="order-complete">
											<p class="heading-order">Thank you. Your order has been
												received</p>
											<div class="order-wrap">
												<ul class="order-menu">
													<li>
														<h3>Order number:</h3>
														<p>1599</p>
													</li>
													<li>
														<h3>Date:</h3>
														<p>December 11, 2018</p>
													</li>
													<li>
														<h3>Total:</h3>
														<p>$88.95</p>
													</li>
													<li>
														<h3>Payment methob:</h3>
														<p>Cash on delivery</p>
													</li>
												</ul>
											</div>
											<div class="order-details">
												<h1>
													<a href="#">Order details</a>
												</h1>
												<div class="order-table">
													<table class="order-table">
														<tbody>
															<tr class="cart-subtotal">
																<td class="product-name">PRODUCT</td>
																<td class="total" data-title="Subtotal"><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">$</span>TOTAL</span>
																</td>
															</tr>
															<tr class="cart-subtotal">
																<td class="product-name">Bougrier Rose dAnjou</td>
																<td class="total" data-title="Subtotal"><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">$</span>29.99</span>
																</td>
															</tr>
															<tr class="order-total">
																<td class="product-name">Olema Rose Cotes De</td>
																<td class="total" data-title="Total"><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">$</span>36.89</span>
																</td>
															</tr>
															<tr class="order-total">
																<td class="product-name">Total</td>
																<td class="total text-d90000 font-weight-500"
																	data-title="Total"><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol ">$</span>66.88</span>
																</td>
															</tr>
															<tr class="order-total">
																<td class="product-name">Shipping</td>
																<td class="total" data-title="Total">Free Shipping
																</td>
															</tr>
															<tr class="order-total">
																<td class="product-name">Payment methob:</td>
																<td class="total" data-title="Total">Cash on
																	delivery</td>
															</tr>
															<tr class="order-total">
																<td class="title product-name">ORDER TOTAL</td>
																<td class="total text-d90000 font-weight-500"
																	data-title="Total"><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">$</span>69.99</span>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="wrap-discount-estimate-cart">


						<div class="col-lg-4 col-md-4 cart">
							<h2 class="cart-heading">
								<a href="#">Cart Total</a>
							</h2>
							<div class="wrap-cart">
								<!-- 								<div class="sub-total"> -->
								<!-- 									<span>SUB TOTAL</span> -->
								<!-- 									<p class="price">$320.00</p> -->
								<!-- 								</div> -->
								<!-- 								<div class="shipping"> -->
								<!-- 									<span>SHIPPING</span> -->
								<!-- 									<p class="price">Free</p> -->
								<!-- 								</div> -->
								<div class="totall">
									<span>TOTAL</span>
									<p class="price" id="total">$320.00</p>
								</div>
							</div>
							<div class="elm-btn">
								<a href="#"
									class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">PROCEED
									TO CHECK OUR</a>
							</div>
						</div>
					</div>
				</div>
				<!-- /.page-title -->

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
	let total=0;
	for ( let item of $(".subTotal")){
		total+= +item.innerHTML;
		
		}
	
	$("#total").html("$"+total)
	
	
	function deleteForm(number) {
		console.log(number);
		
		var yes = confirm("是否刪除此筆紀錄?");
		
		if(yes){document.getElementById("taskForm"+number).action = 'front/showCartList';
		
		document.getElementById("taskForm"+number).submit();}
		
	}
	
	
	</script>
</body>

</html>