<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
    <jsp:include page="IncludePage/head.jsp" />
    <title>Event</title>
</head>
<body>
    <div id="loading-overlay">
        <div class="loader"></div>
    </div> <!--/.loading-overlay-->
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
                                    <li><a href="#">Features</a></li>
                                    <li class="blog"><a href="#">Event</a></li>
                                </ul>
                            </div>
                            <div class="page-title-heading">
                                 <h2 class="title"><a href="#">預約試飲</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div> <!-- /.page-title -->
<div class="main-event">
    <section class="flat-filter">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="filter-border">
                        <div class="filter-date">
                            <input type="search" id="searcha" placeholder="輸入日期" >
                            <i class="fa fa-calendar" aria-hidden="true"></i> <!--  這是欄位裡的icon -->
                        </div>
                        <div class="filter-location">
                            <input type="search" id="searchb" placeholder="輸入店家名" >
                            <i class="fa fa-map-marker" aria-hidden="true"></i> 
                        </div>
                        <div class="filter-keywork">
                            <input type="search" id="searchc" placeholder="輸入人數" >
                        </div>
                        <div class="elm-btn">
                                   <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">搜尋店家</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <article class="filter-content">
         <div class="container">      
                <div class="filter-post">                     
                     <div class="featured-post">
                         <img src="${contextRoot}/FrontPage/image/homepage120.png" alt="image">
                         <div class="date-time">
                            <h2>02</h2>
                            <h2>JULY</h2>
                         </div>
                     </div>                     
                     <div class="content-post">
                         <h2 class="content-title"><a href="">信義信安店</a></h2>
                         <p class="content-meta"><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i>週一至週五：9:00 ～ 18:30,週六：10:30 ～ 18:30,週日：公休</a></p>
                         <p class="content-address"><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i>台北市信義區信安街90號</a></p>
                         <div class="content-phone">
                             <ul>
                                 <li class="map"><a href=""><i class="icon_map" aria-hidden="true"></i> View Map</a></li>
                                 <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i>02-1020-3040</a></li>
                             </ul>
                          </div>
                          
                          <div>
                           <label for="" class="">選擇時段</label>
                             <select name="add1" >
                              <!-- <select name="add1" 下拉式選單 > -->
			                    <option value="">上午9:30~10:30</option>
			                    <option value="">上午10:30~11:30</option>
			                    <option value="">下午1:30~2:30</option>
			                    <option value="">下午2:30~3:30</option>
			                    <option value="">下午3:30~4:30</option>
			                    <option value="">下午4:30~5:30</option>
			                    <!-- 用option -->
			                 </select>                          
                          </div>
                          
<!--                          <h3 class="content-price"><a href="">施工中</a></h3> -->
                         <div class="elm-btn">
                                   <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">預約</a>
                        </div>
                     </div>                    
                </div>         
         </div>          
    </article>
    <article class="filter-content">
         <div class="container">      
            <div class="filter-post filter-post-second">                     
                 <div class="featured-post">
                     <img src="${contextRoot}/FrontPage/image/homepage122.png" alt="image">
                     <div class="date-time">
                        <h2>09</h2>
                        <h2>JULY</h2>
                     </div>
                 </div>                     
                 <div class="content-post">
                     <h2 class="content-title"><a href="">內湖一店</a></h2>
                     <p class="content-meta"><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 17:00 AM - 22:00 PM</a></p>
                     <p class="content-address"><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i> 40 Baria Sreet: 133/2 New York City, United State</a></p>
                     <div class="content-phone">
                         <ul>
                             <li class="map"><a href=""><i class="icon_map" aria-hidden="true"></i> View Map</a></li>
                             <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i> (+12) 345 - 678 - 910</a></li>
                         </ul>
                      </div>
                     <h3 class="content-price"><a href="">Price: $22.99</a></h3>
                     <div class="elm-btn">
                               <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">JOIN NOW</a>
                    </div>
                 </div>                    
            </div>         
         </div>          
    </article>
    <article class="filter-content">
         <div class="container">      
            <div class="filter-post filter-post-se">                     
                 <div class="featured-post">
                     <img src="${contextRoot}/FrontPage/image/homepage123.png" alt="image">
                     <div class="date-time">
                        <h2>18</h2>
                        <h2>JULY</h2>
                     </div>
                 </div>                     
                 <div class="content-post">
                     <h2 class="content-title"><a href="">Food & Wine Trip: Bordeaux, Basque France, San Sebastian & Barcelona Spain</a></h2>
                     <p class="content-meta"><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 13:00 AM - 22:00 PM</a></p>
                     <p class="content-address"><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i> 40 Baria Sreet: 133/2 New York City, United State</a></p>
                     <div class="content-phone">
                         <ul>
                             <li class="map"><a href=""><i class="icon_map" aria-hidden="true"></i> View Map</a></li>
                             <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i> (+12) 345 - 678 - 910</a></li>
                         </ul>
                      </div>
                     <h3 class="content-price"><a href="">Price: $22.99</a></h3>
                     <div class="elm-btn">
                               <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">JOIN NOW</a>
                    </div>
                 </div>                    
            </div>         
         </div>          
    </article>
    <article class="filter-content">
         <div class="container">      
            <div class="filter-post filter-post-bottom">                     
                 <div class="featured-post">
                     <img src="${contextRoot}/FrontPage/image/homepage124.png" alt="image">
                     <div class="date-time">
                        <h2>22</h2>
                        <h2>JULY</h2>
                     </div>
                 </div>                     
                 <div class="content-post">
                     <h2 class="content-title"><a href="">2018 SOMM Summit ~ International Wine & Spirits Symposium ~ Seattle, WA</a></h2>
                     <p class="content-meta"><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 17:00 AM - 22:00 PM</a></p>
                     <p class="content-address"><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i> 40 Baria Sreet: 133/2 New York City, United State</a></p>
                     <div class="content-phone">
                         <ul>
                             <li class="map"><a href=""><i class="icon_map" aria-hidden="true"></i> View Map</a></li>
                             <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i> (+12) 345 - 678 - 910</a></li>
                         </ul>
                      </div>
                     <h3 class="content-price"><a href="">Price: $22.99</a></h3>
                     <div class="elm-btn">
                               <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">JOIN NOW</a>
                    </div>
                 </div>                    
            </div>         
         </div>          
    </article>
    <section class="flat-option"> 
        <div class="container">
            <div class="blog-pagination">
                <ul class="flat-pagination">
                    <li class="prev"><a href="#" class=" hvr-shutter-out-horizontal"> <i class="fa fa-angle-left" aria-hidden="true"></i> </a></li>
                    <li><a href="#" class=" hvr-shutter-out-horizontal"> 1 </a></li>
                    <li><a href="#" class=" hvr-shutter-out-horizontal"> 2 </a></li>
                    <li><a href="#" class=" hvr-shutter-out-horizontal"> 3 </a></li>
                    <li class="next"><a href="#" class=" hvr-shutter-out-horizontal"> <i class="fa fa-angle-right" aria-hidden="true"></i> </a></li>
                </ul>
            </div>
            <div class="showing">
                <p>Showing 1-3 of 12 results</p>
                <div class="select">
                    <select>
                        <option value="volvo">Show: 04</option>
                        <option value="saab">Saab</option>
                        <option value="opel">Opel</option>
                        <option value="audi">Audi</option>
                    </select>
                </div>
            </div>
        </div>
    </section>
</div> 

<jsp:include page="IncludePage/footer.jsp" />
<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/images-loaded.js"></script>  
<script src="${contextRoot}/FrontPage/javascript/jquery.isotope.min.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script> 
<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
</body>
</html>