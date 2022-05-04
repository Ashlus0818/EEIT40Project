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