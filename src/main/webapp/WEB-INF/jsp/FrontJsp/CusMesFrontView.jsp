<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<jsp:include page="IncludePage/head.jsp" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
<title>Insert title here</title>
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
								<li><a href="${contextRoot}/front">首頁</a></li>
								<li><a href="${contextRoot}/front/CusMesFront">聯絡我們</a></li>
								<li class="blog"><a href="#">查看留言</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.page-title -->
	<div class="main-contact-1">
		<section class="flat-map-content">
			<div class="container">
				<div class="row">
					<img src="${contextRoot}/FrontPage/image/cus01.jpeg" alt=""
						data-bgposition="center center" data-no-retina>
				</div>
			</div>
		</section>
	</div>
	<!-- /flat-map-content-->
	<section class="flat-get-in">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-section">
						<h3 class="our-product-title">
							<a href="#"> Contact Us (View)</a>
						</h3>
						<div class="our-product-image">
							<img src="${contextRoot}/FrontPage/image/homepage14.png"
								alt="image">
						</div>
					</div>
					

					<!-- /title-section -->
				</div>
			</div>
		</div>
	</section>
	<div class="">
						<c:forEach var="cusMes" items="${page.content}">
							<div class="card-header">
								新增訊息的時間
							</div>
						</c:forEach>
					</div>


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
	<script charset="utf8"
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
</body>
<script>
	function deleteForm(count) {
		var yes = confirm("確認刪除此筆紀錄?");
		if (yes) {
			document.getElementById('CusFormId' + count).action = "${contextRoot}/CusMesbacks/DeleteMessage";
			document.getElementById('CusFormId' + count).submit();
		} else {
		}

	};
</script>
</html>