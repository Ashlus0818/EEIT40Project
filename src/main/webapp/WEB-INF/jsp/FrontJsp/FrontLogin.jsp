<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>

<jsp:include page="IncludePage/head.jsp" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
   <jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>前台登入</title>

</head>

<body>
	<header class="style1">
		<div id="site-header">
			<jsp:include page="IncludePage/topBar.jsp" />
		</div>
	</header>


		<div class="container">
		
		<br/>
		<h1>Login in Page</h1><br>
			<form class="user" method="post" action="${contextRoot}/login">
				<div class="form-group">
					<input name="username" type="text"
						class="form-control form-control-user" id="exampleInputEmail"
						aria-describedby="emailHelp" placeholder="username">
				</div>
				<div class="form-group">
					<input name="password" type="password" class=""
						id="exampleInputPassword" placeholder="Password">
				</div>
				<div class="form-group">
					<div class="custom-control custom-checkbox small">
						<input type="checkbox" class="custom-control-input"
							id="customCheck"> <label class="custom-control-label"
							for="customCheck">Remember Me</label>
					</div>
          
				</div>
<!-- 				<div class="elm-btn"> -->
<!-- 				<input type="submit" value="Login" -->
<!-- 					class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal"> -->
<!-- 				</div> -->

			<div class="main-event">
				<section class="flat-filter">

					<div class="Login">
						<button type="submit" value="Login"
							class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">Login</button>
					</div>

					<div class="oneclickLogin">
						<button type="submit" value="一鍵登入"
							class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">一鍵輸入</button>
					</div>
				</section>
			</div>

			<hr>
				
			</form>
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
	<script>
		const link = document.getElementById("LoginRegister")
	console.log(link.textContent = 'Replacement link text')
	link.remove()
	
	Swal.fire({
		  icon: 'error',
		  title: '權限不足',
		  text: '請先登入',
// 		  footer: '<a href="">Why do I have this issue?</a>'
		})
	</script>

</body>

</html>