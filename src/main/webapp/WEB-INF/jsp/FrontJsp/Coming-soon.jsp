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