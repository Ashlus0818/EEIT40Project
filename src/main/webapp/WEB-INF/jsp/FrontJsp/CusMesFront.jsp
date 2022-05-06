<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

        <head>
            <jsp:include page="IncludePage/head.jsp" />
            <title>CusMesFront</title>
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
                                        <li class="blog"><a href="#">Contact Us</a></li>
                                    </ul>
                                </div>
                                <div class="page-title-heading">
                                    <h2 class="title"><a href="#">CONTACT US</a></h2>
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
                            <div class="col-lg-12">
                                <div class="flat-map">
                                </div>
                            </div>
                        </div>
                    </div>
                </section> <!-- /flat-map-content-->
                <section class="flat-get-in">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="title-section">
                                    <h3 class="our-product-title"><a href="#"> Contact Us </a></h3>
                                    <h1 class="our-product-main"><a href="#"> Get In Touch </a></h1>
                                    <div class="our-product-image">
                                        <img src="${contextRoot}/FrontPage/image/homepage14.png" alt="image">
                                    </div>
                                </div> <!-- /title-section -->
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5">
                                <div class="information info-contact">
                                    <div class="information-address">
                                        <h2><a href="#">å°å:</a></h2>
                                        <h2 class="information-content">40 Baria Sreet 133/2, New York, US</h2>
                                    </div>
                                    <div class="flat-divider-margintop8px"></div>
                                    <div class="information-hotline information-bottom">
                                        <h2><a href="#">çæ¥­æé:</a></h2>
                                        <h2 class="information-content">Open hours: 8.00-18.00 Mon_Sat</h2>
                                    </div>
                                    <div class="flat-divider-margintop8px"></div>
                                    <div class="information-open information-bottom">
                                        <h2><a href="#">ä¿¡ç®±:</a></h2>
                                        <h2 class="information-content">info.deercreative@gmail.com</h2>
                                    </div>
                                    <div class="flat-divider-margintop8px"></div>
                                    <div class="information-open information-bottom">
                                        <h2><a href="#">é»è©±</a></h2>
                                        <h2 class="information-content">(+123) 456-789-1120</h2>
                                    </div>
                                </div> <!-- /information -->
                            </div>
                            <div class="col-lg-7 col-md-7 col-sm-7">
                                <!-- <form id="contactform" action="./contact/contact-process.php"  class="form-submit contact-form wpcf7-form">
                  <input type="text" name="name"  class="mg-bottom-33" required="" placeholder="Name*" >
                  <div class="flat-divider-margintop10px"></div>
                  <input type="email" name="email"  class="mg-bottom-33" required="" placeholder="Email" >
                  <div class="flat-divider-margintop16px"></div>
                  <input type="text" name="subject" class="mg-bottom-33" placeholder="Phone" >
                  <div class="flat-divider-margintop12px"></div>
                  <textarea name="messages"  required="" placeholder="Messages*"></textarea>
                  <p class="submit-form">
                      <button name="submit" type="submit"  class="submit btn btn-styl hvr-shutter-out-horizontal" >SUBMIT</button>
                  </p>
              </form> -->

                                <form id="contactform" action="./contact/contact-process.php" method="post"
                                    accept-charset="utf-8" class="form-submit contact-form wpcf7-form">
                                    <span class="wpcf7-form-control-wrap your-name">
                                        <input type="text" tabindex="1" id="name" name="name" value=""
                                            class="wpcf7-form-control" placeholder="å§å*" required>
                                    </span>
                                    <div class="flat-divider-margintop10px"></div>
                                    <span class="wpcf7-form-control-wrap your-email">
                                        <input type="email" tabindex="3" id="email" name="email" value=""
                                            class="wpcf7-form-control" placeholder="ä¿¡ç®±*" required>
                                    </span>
                                    <div class="flat-divider-margintop16px"></div>
                                    <span class="wpcf7-form-control-wrap your-question">
                                        <input type="text" tabindex="2" id="question" name="question" value=""
                                            class="wpcf7-form-control" placeholder="åé¡ï¼">
                                    </span>
                                    <div class="flat-divider-margintop12px"></div>
                                    <span class="wpcf7-form-control-wrap your-message">
                                        <textarea name="message" tabindex="5" cols="40" rows="10"
                                            class="wpcf7-form-control wpcf7-textarea" placeholder="çè¨åé¡*"
                                            required></textarea>
                                    </span>
                                    <span class="wrap-submit submit-form">
                                        <button name="submit" type="submit" id="submit"
                                            class="submit btn btn-styl hvr-shutter-out-horizontal wpcf7-form-control wpcf7-submit">éåº</button>
                                    </span>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div> <!-- /about -->
            
            <jsp:include page="IncludePage/footer.jsp" />

            <script>

            </script>
            <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

            <script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/owl.carousel.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/jquery-validate.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/images-loaded.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/jquery.isotope.min.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/gmap3.min.js"></script>
            <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCPH8h1UpcK01BdcvoZeOzq-_wJqRxN1Pc"></script>
            <script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
            <script src="${contextRoot}/FrontPage/javascript/main.js"></script>
        </body>

        </html>

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
  <header class="style1">
    <div id="site-header">
    <div class="container-fluid">
         <a href="${contextRoot}/FrontPage/index.html" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37" data-retina="image/logo-2x.png" data-width="147" data-height="21"></a>
         <div class="mobile-button">
            <span></span>
         </div>
         
         <div class="nav-wrap ">
            <nav id="mainnav" class="mainnav">
                <ul class="menu">
                    <li class="active">
                         <a href="${contextRoot}/FrontPage/index.html" title="">首頁</a>
                    </li>
                    <li class="active"> 
                         <a href="${contextRoot}/FrontPage/about.html" title="">預約試喝</a>
                            <ul class="sub-menu">
                                
                                <li><a href="${contextRoot}/FrontPage/Event.html" title="">Event</a></li>
                                <li><a href="${contextRoot}/FrontPage/Coming-soon.html" title="">Coming Soon</a></li>
                                <li><a href="${contextRoot}/FrontPage/404-page.html" title="">404 Page</a></li>
                                <li><a href="${contextRoot}/FrontPage/Wish-list.html" title="">Wish List</a></li>
                             </ul><!-- /.sub-menu -->
                    </li>
                    <li class="active">
                        <a href="#" title="">PRODUCTS</a>
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
                        <a href="#" title="">討論區</a>
                            <ul class="sub-menu">
                                <li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html" title="">Blog Grid 3Column</a></li>
                                <li><a href="${contextRoot}/FrontPage/Blog-grid-2column.html" title="">Blog Grid 2Column</a></li>
                                <li><a href="${contextRoot}/FrontPage/Blog-Right-Slidebar.html" title="">Blog Right Slidebar</a></li>
                                <li><a href="${contextRoot}/FrontPage/Blog-details-slidebar.html" title="">Blog Details Slidebar</a></li>
                                <li><a href="${contextRoot}/FrontPage/Blog-details-fullwidth.html" title="">Blog Details FullWidth</a></li>
                            </ul><!-- /.sub-menu -->
                    </li>
                    <li class="active a">
                        <a href="${contextRoot}/front/CusMesFront" title="">聯絡我們</a>
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
<footer class="style1">
    <div class="container">
        <div class="footer-widgets">
            <div class="widget widget-logo">
                <a href="${contextRoot}/FrontPage/index.html" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37" data-retina="image/logo-2x.png" data-width="147" data-height="21"></a>
            </div> <!-- /widget-logo --> 
            <div class="widget widget-icon">
                <ul>
                    <li class="active"><a href="#"> <i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                    <li><a href="#"> <i class="fa fa-twitter" aria-hidden="true"></i> </a></li>
                    <li><a href="#"> <i class="fa fa-instagram" aria-hidden="true"></i> </a></li>
                    <li><a href="#"> <i class="fa fa-skype" aria-hidden="true"></i> </a></li>
                    <li><a href="#"> <i class="fa fa-wordpress" aria-hidden="true"></i></a></li>
                </ul>
            </div> <!-- /widget-icon -->
            <div class="widget widget-title">
                 <h2>Get news & offers</h2>
            </div> <!-- /widget-title -->
            <div class="widget widget-contact">
                 <input type="search" id="search-footer" placeholder="Your Email" >
                 <button type="submit"><i class="fa fa-location-arrow" aria-hidden="true"></i></button>
            </div> <!-- /widget-contact -->
            <div class="widget widget-menu">
                 <ul>
                      
                     <li><a href="${contextRoot}/FrontPage/Shop-fullwidth-grid.html"> Customer Service </a></li>
                     <li><a href="${contextRoot}/FrontPage/Homepage2.html"> Terms & Conditions </a></li>
                     <li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html"> Privacy Policy </a></li>
                     <li class="contact active"><a href="${contextRoot}/FrontPage/contact-1.html"> 聯絡我們 </a></li>
                 </ul>
            </div> <!-- /widget-about -->
            <div class="widget widget-text">
                 <span>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="ï¼"></a></span>
            </div>
        </div> <!-- /footer-widgets -->
    </div> <!-- /container -->
</footer>

<script>
   $(document).ready(function () {
        $('#submitButton').click(function () {

            var inputText = document.getElementById('name').value;
            var inputText2 = document.getElementById('email').value;
            var inputText3 = document.getElementById('question').value;
            var inputText4 = document.getElementById('message').value;

            var dtoObject = {"cusname": inputText,
                             "cusemail": inputText2,
                             "cusquest": inputText3,
                             "custext": inputText4,
                            };
            var dtoJsonString = JSON.stringify(dtoObject);
            
            $.ajax({
                url: 'http://localhost:8080/myapp/cusmes',
                contentType: 'application/json; charset=UTF-8', 
                dataType: 'json',   
                method: 'post',
                data: dtoJsonString,
                success: function (result) {
                    var txt = "<tr><th>pubDate<th>title"
                    console.log("enter ajax")
                    console.log(result);
                    $("#demo").html(txt);
                },


                error: function (err) {
                    console.log("error ajax")
                    console.log(err)
                }
            })

        })
    })
</script>
<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->
 <!-- Slider -->
 <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
 <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
 <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
 
<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-validate.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/images-loaded.js"></script>  
<script src="${contextRoot}/FrontPage/javascript/jquery.isotope.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/gmap3.min.js"></script>
<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCPH8h1UpcK01BdcvoZeOzq-_wJqRxN1Pc"></script>
<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
</body>
</html>

