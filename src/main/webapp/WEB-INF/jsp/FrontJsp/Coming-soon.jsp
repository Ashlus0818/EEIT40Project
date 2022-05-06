<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
    <jsp:include page="IncludePage/head.jsp" />
    <title>Coming-soon</title>
</head>
<body>
<!--     <div id="loading-overlay"> -->
<!--         <div class="loader"></div> -->
<!--     </div> /.loading-overlay -->
    <header class="style1">
        <div id="site-header">
            <jsp:include page="IncludePage/topBar.jsp" />
        <div class="container-fluid">
             <a href="${contextRoot}/FrontPage/index.html" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37" data-retina="image/logo-2x.png" data-width="147" data-height="21"></a>
             <div class="mobile-button">
                <span></span>
             </div>
             <div class="nav-wrap ">
                <nav id="mainnav" class="mainnav">
                    <ul class="menu">
                        <li class="active">
                             <a href="${contextRoot}/FrontPage/index.html" title="">HOME</a>
                        </li>
                        <li class="active a"> 
                             <a href="${contextRoot}/FrontPage/about.html" title="">FEATURES</a>
                                <ul class="sub-menu">
                                    
                                    <li><a href="${contextRoot}/FrontPage/Event.html" title="">Event</a></li>
                                    <li class="active"><a href="${contextRoot}/FrontPage/Coming-soon.html" title="">Coming Soon</a></li>
                                    <li><a href="${contextRoot}/FrontPage/404-page.html" title="">404 Page</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Wish-list.html" title="">Wish List</a></li>
                                 </ul><!-- /.sub-menu -->
                        </li>
                        <li class="active">
                            <a href="#" title="">商品</a>
                                <ul class="sub-menu">
                              <li><a href="${contextRoot}/FrontPage/Shop-fullwidth-grid.jsp" title="">商品總覽</a></li>
                                 <li><a href="${contextRoot}/FrontPage/Shop-details.jsp" title="">商品詳細 </a></li>
                                 <li><a href="${contextRoot}/FrontPage/Shop-order-tracking.jsp" title="">訂單追蹤</a></li>
                                 <li><a href="${contextRoot}/FrontPage/Shop-cart.jsp" title="">購物車</a></li>
                                </ul><!-- /.sub-menu -->
                        </li>
                        <li class="active">
                            <a href="#" title="">BLOG</a>
                                <ul class="sub-menu">
                                    <li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html" title="">Blog Grid 3Column</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-grid-2column.html" title="">Blog Grid 2Column</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-Right-Slidebar.html" title="">Blog Right Slidebar</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-details-slidebar.html" title="">Blog Details Slidebar</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-details-fullwidth.html" title="">Blog Details FullWidth</a></li>
                                </ul><!-- /.sub-menu -->
                        </li>
                        <li class="active">
                            <a href="#" title="">CONTACT US</a>
                                <ul class="sub-menu">
                                    <li><a href="${contextRoot}/FrontPage/contact-1.html" title="">Contact Us 1</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Contact-2.html" title="">Contact Us 2</a></li>
                                </ul><!-- /.sub-menu -->
                         </li>
                    </ul>
                </nav>
             </div><!-- /.nav-wrap -->
             <div class="search clearfix"> 
                 <ul>
                     <li><input type="search" id="search" placeholder="Search..." ></li>
                     <li><a href="#" class="header-search-icon"><i class="ti-search" aria-hidden="true"></i></a></li>       
                     <li><a href="#"> <i class="ti-align-justify" aria-hidden="true"></i> </a>
                        <ul class="sub-menu">
                            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">Login/ Register</a></li>
                            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Account</a></li>
                            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Wishlist</a></li>
                            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Cart</a></li>
                            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">Tracking Orders</a></li>
                            <li class="language"><a href="${contextRoot}/FrontPage/projects1.html" title="">LANGUAGE</a></li>
                            <li class="flag"><a href="${contextRoot}/FrontPage/projects1.html" title="">
                                <span><img src="${contextRoot}/FrontPage/image/flash3.png" alt="image"></span>
                                <span><img src="${contextRoot}/FrontPage/image/flash1.png" alt="image"></span>
                                <span><img src="${contextRoot}/FrontPage/image/flash2.png" alt="image"></span>
                            </a></li>
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
<div class="coming-soon">                      
    <section class="flat-our-website">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wrap-our-website">
                        <h1><a href="#">Our Website Is Under Construction</a></h1>
                        <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore.</p>
                        <div class="flat-counter count-time" data-day="20" data-month="3" data-year="2019" data-hour="12" data-minute="12" data-second="12">
                            <div class="counter">
                                 <ul>
                                     <li class="content-counter">
                                        <div class="wrap-bg">
                                            <div class="inner-bg days">
                                                 <div class="numb-count numb" data-from="0" data-to="18" data-speed="2000" data-inviewport="yes">18</div>
                                                 <div class="name-count">Day</div>
                                            </div>
                                        </div>
                                     </li>
                                     <li class="content-counter">
                                        <div class="wrap-bg">
                                            <div class="inner-bg hours">
                                                 <div class="numb-count numb" data-from="0" data-to="11" data-speed="2000" data-inviewport="yes">11</div>
                                                 <div class="name-count">Hour</div>
                                            </div>
                                        </div>
                                     </li>
                                     <li class="content-counter">
                                        <div class="wrap-bg">
                                            <div class="inner-bg minutes">
                                                 <div class="numb-count numb" data-from="0" data-to="14" data-speed="2000" data-inviewport="yes">14</div>
                                                 <div class="name-count">Min</div>
                                            </div>
                                        </div>
                                     </li>
                                     <li class="content-counter">
                                        <div class="wrap-bg numb">
                                            <div class="inner-bg seconds">
                                                 <div class="numb-count numb" data-from="0" data-to="47" data-speed="2000" data-inviewport="yes">47</div>
                                                 <div class="name-count">Sec</div>
                                            </div>
                                        </div>
                                     </li>
                                 </ul>
                            </div> <!-- /counter -->
                        </div> <!-- /flat-counter -->
                        <div class="our-website-input">
                            <input type="search" id="search-coming" placeholder="Please, enter your email address..." >
                            <button type="submit"><i class="fa fa-location-arrow" aria-hidden="true"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>  
<jsp:include page="IncludePage/footer.jsp" />
<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/images-loaded.js"></script>  
<script src="${contextRoot}/FrontPage/javascript/jquery.isotope.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
<script src="${contextRoot}/FrontPage/avascript/main.js"></script>
</body>
</html>