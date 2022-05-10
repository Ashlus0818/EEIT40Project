<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
	  <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Wizym-Templae</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="${contextRoot}/FrontPage/stylesheets/bootstrap.css" >

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="${contextRoot}/FrontPage/stylesheets/style.css">

    <!-- Responsive -->
    <link rel="stylesheet" type="text/css" href="${contextRoot}/FrontPage/stylesheets/responsive.css">

    <!-- Colors -->
    <link rel="stylesheet" type="text/css" href="${contextRoot}/FrontPage/stylesheets/colors/color1.css" id="colors">

    <!-- Animation Style -->
    <link rel="stylesheet" type="text/css" href="${contextRoot}/FrontPage/stylesheets/animate.css">

    <!-- Favicon and touch icons  -->
    <link href="${contextRoot}/FrontPage/icon/icon.png" rel="apple-touch-icon-precomposed" sizes="48x48">
    <link href="${contextRoot}/FrontPage/icon/icon.png" rel="apple-touch-icon-precomposed">
    <link href="${contextRoot}/FrontPage/icon/icon.png" rel="shortcut icon">
</head>
<body>
    <div id="loading-overlay">
        <div class="loader"></div>
    </div> <!-- /.loading-overlay -->
    <header class="style1">
        <div id="site-header">
        <div class="container-fluid">
             <a href="${contextRoot}/front" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37" data-retina="${contextRoot}/FrontPage/image/logo-2x.png" data-width="147" data-height="21"></a>
             <div class="mobile-button">
                                <span></span>
             </div>

            <div class="nav-wrap ">
      <nav id="mainnav" class="mainnav">
        <ul class="menu">
          <li class="active a">
            <a href="${contextRoot}/front" title="">HOME</a>
          </li>
          <li class="active">
            <a href="${contextRoot}/front/Re-Order" title="">現場試喝</a>
            <ul class="sub-menu">

              <li><a href="${contextRoot}/FrontPage/Event.html" title="">Event</a></li>
              <li><a href="${contextRoot}/FrontPage/Coming-soon.html" title="">Coming Soon</a></li>
              <li><a href="${contextRoot}/FrontPage/404-page.html" title="">404 Page</a></li>
              <li><a href="${contextRoot}/FrontPage/Wish-list.html" title="">Wish List</a></li>
            </ul><!-- /.sub-menu -->
          </li>
          <li class="active">
            <a href="#" title="">商品</a>
            <ul class="sub-menu">
              <li><a href="${contextRoot}/FrontPage/Shop-fullwidth-list.html" title="">Shop Full Width List</a></li>
              <li><a href="${contextRoot}/FrontPage/Shop-fullwidth-grid.html" title="">Shop Full Width Grid</a></li>
              <li><a href="${contextRoot}/FrontPage/Shop-right-slidebar-list.html" title="">Shop Right Slidebar List</a></li>
              <li><a href="${contextRoot}/FrontPage/Shop-right-slidebar-grid.html" title="">Shop Right Slidebar Grid</a></li>

              <li><a href="${contextRoot}/FrontPage/Shop-details-slidebar.html" title="">Shop Details Slidebar</a></li>
              <li><a href="${contextRoot}/FrontPage/Shop-details.html" title="">Shop Details </a></li>
              <li><a href="${contextRoot}/FrontPage/Shop-order-tracking.html" title="">Shop Order Tracking</a></li>
              <li><a href="${contextRoot}/FrontPage/Shop-cart.html" title="">Shop Cart</a></li>
            </ul><!-- /.sub-menu -->
          </li>
          <li class="active">
            <a href="#" title="">討稐/交流</a>
            <ul class="sub-menu">
              <li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html" title="">Blog Grid 3Column</a></li>
              <li><a href="${contextRoot}/FrontPage/Blog-grid-2column.html" title="">Blog Grid 2Column</a></li>
              <li><a href="${contextRoot}/FrontPage/Blog-Right-Slidebar.html" title="">Blog Right Slidebar</a></li>
              <li><a href="${contextRoot}/FrontPage/Blog-details-slidebar.html" title="">Blog Details Slidebar</a></li>
              <li><a href="${contextRoot}/FrontPage/Blog-details-fullwidth.html" title="">Blog Details FullWidth</a></li>
            </ul><!-- /.sub-menu -->
          </li>
          <li class="active">
            <a href="${contextRoot}/front/CusMesFront" title="">聯絡我們</a>
            <ul class="sub-menu">
            	 <li><a href="${contextRoot}/front/CusMesFrontView" title="">查看留言</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
    <div class="search clearfix">
      <ul>
        <li><input type="search" id="search" placeholder="Search..."></li>
        <li><a href="#" class="header-search-icon"><i class="ti-search" aria-hidden="true"></i></a></li>
        <li><a href="#"> <i class="ti-align-justify" aria-hidden="true"></i> </a>
          <ul class="sub-menu">
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">Login/ Register</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Account</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Wishlist</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Cart</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">Tracking Orders</a></li>
          </ul><!-- /.sub-menu -->
        </li>
      </ul>
      <form class="header-search-form" role="search" method="get" action="#">
        <input type="text" value="" name="#" class="header-search-field" placeholder="Search...">
        <button type="submit" class="header-search-submit" title="Search"><i class="fa fa-search"></i></button>
      </form>
    </div>
  </div><!-- /container -->
        </div>
    </header>
<div class="404-page">                      
    <section class="flat-error">
        <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div class="wrap-error text-center">
                        <h1 class="heading-error"><i class="fa fa-exclamation-circle" aria-hidden="true"></i>404</h1>
                        <h1 class="title-error">Opps! page not found</h1>

                        <p>It looks like nothing was found at this location. Click the link to return <span class="link"><a href="${contextRoot}/FrontPage/index.html">Home</a></span></p>
                        <input type="search" id="search-bug" placeholder="Search..." >
                        <br/><c:out value="${message}"></c:out>

                        <p><span class="link"><a href="${contextRoot}/front">返回首頁</a></span></p>

                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>
        </div>
    </section>
</div>  
<footer class="style1">
    <div class="container">
        <div class="footer-widgets">
            <div class="widget widget-logo">
                        <a href="${contextRoot}/front" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37" data-retina="image/logo-2x.png" data-width="147" data-height="21"></a>
            </div> <!-- /widget-logo --> 
       <div class="widget widget-title">
          <h2>Get news & offers</h2>
        </div> <!-- /widget-title -->


        <div class="widget widget-text">
          <span>Copyright &copy; 2019.Company name All rights reserved.</span>
        </div>
      </div> <!-- /footer-widgets -->
    </div> <!-- /container -->
  </footer>
 <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/images-loaded.js"></script>  
<script src="${contextRoot}/FrontPage/javascript/jquery.isotope.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
</body>
</html>