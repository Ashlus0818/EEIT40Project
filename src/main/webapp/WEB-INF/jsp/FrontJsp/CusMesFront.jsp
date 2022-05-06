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
<title>Insert title here</title>
</head>
<body>
 <header class="style1">
    <div id="site-header">
<<<<<<< HEAD
=======
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
                    <li class="active"> 
                         <a href="${contextRoot}/FrontPage/about.html" title="">FEATURES</a>
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
                    <li class="active a">
                        <a href="#" title="">CONTACT US</a>
                            <ul class="sub-menu">
                                <li class="active"><a href="${contextRoot}/FrontPage/contact-1.html" title="">Contact Us 1</a></li>
                                <li><a href="${contextRoot}/FrontPage/Contact-2.html" title="">Contact Us 2</a></li>
                            </ul><!-- /.sub-menu -->
                     </li>
                </ul>
            </nav>
         </div><!-- /.nav-wrap -->
>>>>>>> angus

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
                                <li><a href="#">首頁</a></li>     
                                <li class="blog"><a href="#">聯絡我們</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div> <!-- /.page-title -->
<div class="main-contact-1">
<section class="flat-map-content">
    <div class="container">
        <div class="row">
          <img src="${contextRoot}/FrontPage/image/cus01.jpeg" alt="" data-bgposition="center center" data-no-retina>   
        </div>
    </div>
</section> <!-- /flat-map-content-->
<section class="flat-get-in">
  <div class="container">
      <div class="row">
          <div class="col-lg-12">
              <div class="title-section">
                  <h3 class="our-product-title"><a href="#"> Contact Us </a></h3>
                  <div class="our-product-image">
                       <img src="${contextRoot}/FrontPage/image/homepage14.png" alt="image">
                  </div>
              </div> <!-- /title-section -->
         
               <form id="contactform" action="./contact/contact-process.php" method="post" accept-charset="utf-8" class="form-submit contact-form wpcf7-form">
                  <span class="wpcf7-form-control-wrap your-name">
                      <input type="text" tabindex="1" id="name" name="name" value="" class="wpcf7-form-control" placeholder="姓名" required>
                  </span>
                  <div class="flat-divider-margintop10px"></div>                                                           
                  <span class="wpcf7-form-control-wrap your-email">
                      <input type="email" tabindex="3" id="email" name="email" value="" class="wpcf7-form-control" placeholder="信箱" required>
                  </span>
                  <div class="flat-divider-margintop16px"></div>
                  <span class="wpcf7-form-control-wrap your-question">
                      <input type="text" tabindex="2" id="question" name="question" value="" class="wpcf7-form-control" placeholder="問題">
                  </span> 
                  <div class="flat-divider-margintop12px"></div>
                  <span class="wpcf7-form-control-wrap your-message">
                     <textarea name="message" tabindex="5" cols="40" rows="10" id="message" class="wpcf7-form-control wpcf7-textarea" placeholder="留言" required ></textarea>
                  </span>                                                             
                  <span class="wrap-submit submit-form">
                      <button name="submit" type="submit" id="submitButton" class="submit btn btn-styl hvr-shutter-out-horizontal wpcf7-form-control wpcf7-submit" >提交</button>
                  </span>                                                        
              </form>
          </div>
      </div>
  </div>
</section> 
</div> <!-- /about --> 
  
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