<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
  
  <jsp:include page="IncludePage/footer.jsp" />
  <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

  <script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/main.js"></script>

  <!-- Slider -->
  <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
  <!-- Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading -->
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>
</body>
</html>