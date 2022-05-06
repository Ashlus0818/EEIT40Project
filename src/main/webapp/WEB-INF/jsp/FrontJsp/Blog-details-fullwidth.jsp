<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
    <jsp:include page="IncludePage/head.jsp" />
    <title>Blog-details-fullwidth</title>
</head>
<body>
    <div id="loading-overlay">
        <div class="loader"></div>
    </div> <!-- /.loading-overlay -->
    <header class="style1">
        <div id="site-header">
<<<<<<< HEAD
            <jsp:include page="IncludePage/topBar.jsp" />
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
                        <li class="active a">
                            <a href="#" title="">BLOG</a>
                                <ul class="sub-menu">
                                    <li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html" title="">Blog Grid 3Column</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-grid-2column.html" title="">Blog Grid 2Column</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-Right-Slidebar.html" title="">Blog Right Slidebar</a></li>
                                    <li><a href="${contextRoot}/FrontPage/Blog-details-slidebar.html" title="">Blog Details Slidebar</a></li>
                                    <li class="active"><a href="${contextRoot}/FrontPage/Blog-details-fullwidth.html" title="">Blog Details FullWidth</a></li>
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
                            <li class="flag">
                                <a href="${contextRoot}/FrontPage/projects1.html" title="">
                                    <span><img src="${contextRoot}/FrontPage/image/flash3.png" alt="image"></span>
                                    <span><img src="${contextRoot}/FrontPage/image/flash1.png" alt="image"></span>
                                    <span><img src="${contextRoot}/FrontPage/image/flash2.png" alt="image"></span>
                                </a>
                            </li>
                        </ul><!-- /.sub-menu -->
                      </li>
                 </ul>  
                 <form class="header-search-form" role="search" method="get" action="#">
                        <input type="text" value="" name="#" class="header-search-field" placeholder="Search...">
                        <button type="submit" class="header-search-submit" title="Search"><i class="fa fa-search"></i></button>
                 </form>              
             </div>
        </div><!-- /container -->
>>>>>>> angus
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
                                    <li><a href="#">Blog</a></li>
                                    <li class="blog"><a href="#">Blog Details</a></li>
                                </ul>
                            </div>
                            <div class="page-title-heading">
                                 <h2 class="title"><a href="#">BLOG</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div> <!-- /.page-title -->
<div class="main-blog-detail">
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
            <article class="post content-wrap">
                <div class="content-wrap-title">
                     <h1><a href="#"> Brexit and Gls: Erode protected names at your peril, says Andrew Jefford</a></h1>
                </div>
                <ul class="meta-post">
                    <li class="title-meta"><a href="#">May 28, 2018</a></li>
                    <li class="title-heading"><a href="#">Post by Leona Lewis</a> </li>
                </ul>
                <div class="divider31"></div>
                <div class="featured-post">
                   <img src="${contextRoot}/FrontPage/image/whisky.jpg" alt="image">
                </div>
                <div class="content-post">
                    <div class="social-share">
                        <ul>
                            <li class="social-title"><a href="#">Share</a></li>
                            <li class="facebook social"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li class="twitter social"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li class="google social"><a href="#"><i class=" social_googleplus" aria-hidden="true"></i></a></li>
                            <li class="instagram social"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> </a></li>
                            <li class="thumb-tack social"><a href="#"><i class="fa fa-thumb-tack" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="post-text">
                        <div class="post-text-title">
                            <span>European chefs made their mark in the top rankings of The World's 50 Best Restaurants 2018, which were revealed at an awards ceremony in Bilbao. Taking the top honours was Italian chef Massimo Bottura, whose restaurant, Osteria Francescana, was awarded the number one spot for the second time.</span>
                        </div>  
                        <div class="post-text-between">
                            <span>Osteria Franescana joined restaurants from Spain (last year's number one, El Cellar de Can Roca in Girona) and France (Mirazur in Paris) in second and third place respectively, with a total of six European eateries ranking in the top 10: Arpège in Paris (number eight), Mugaritz in San Sebastián (nine) and Asador Etxebarri in Axpe (10).</span>
                        </div>
                        <div class="post-text-bottom">
                            <span class="post-text-bottom">In order to decide the winners, more than 1,000 restaurant owners, chefs, writers and critics voted for their favourite venues, according to awards organiser William Reed</span>
                        </div>
                        <div class="post-main">
                            <div class="social">
                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                            </div>
                            <div class="main-text">            
                               <blockquote> “Speaking at a press conference after winning his award, Bottura explained why his Modena restaurant deserved to reclaim its number one ranking.”</blockquote>
                               <span><a href="#"> Ollie Schneider </a></span>
                            </div>
                        </div>
                        <div class="post-bottom-text">
                            <div class="text-title">       
                                <h2><a href="#">Best famale chef</a></h2>
                            </div>
                            <div class="text-top">
                                <span>
                                    This year was the 17th edition of the annual global awards, dubbed the ‘foodie Oscars’, which celebrate outstanding chefs and restaurants, while highlighting the world’s diverse and innovative gastronomy. The results are based on votes from over 1,000 chefs, restaurateurs, food writers and well-travelled gourmets from all around the world.
                                </span>
                            </div>
                            <div class="text-bottom">
                                <span>
                                    Event partners included the Italian sparkling wine producer, Ferrari Trento, which sponsors an Art of Hospitality Award to pay tribute to the restaurant that offers outstanding hospitality and provides the most memorable experience for diners. This year the award was presented to Geranium in Copenhagen.
                                </span>
                            </div>
                            <div class="text-button">
                                <ul>
                                    <li class="popular-content"><a href="#" class="hvr-shutter-out-horizontal">Red</a></li>
                                    <li class="popular-inner"><a href="#" class="hvr-shutter-out-horizontal">Champagne</a></li>
                                </ul>
                            </div>
                        </div><!-- /post-bottom-text --> 
                        <img src="${contextRoot}/FrontPage/image/xoan.jpg" alt="image">
                    </div> <!-- /post-text -->     
                </div>    <!-- /content-post --> 
            </article>
            <div class="relatest">
                  <h2><a href="#">Relatest News</a></h2>
                   <article class="post author-wrap clearfix">
                        <div class="author-info author-avatar">
                              <div class="featured-post">
                                  <img src="${contextRoot}/FrontPage/image/wine.jpg" alt="image">
                              </div>
                              <span class="author-title"><a href="#"> Restaurant, The Wines </a></span>
                              <span class="author-content"><a href="#">French officials threaten to deport japanese winemaker couple</a></span>
                              <span class="author-meta"><a href="#">May 28, 2018</a></span>
                        </div>
                    </article>
                    <article class="post author-wrap wrap clearfix">
                        <div class="author-info author-details">
                              <div class="featured-post">
                                  <img src="${contextRoot}/FrontPage/image/wine1.jpg" alt="image">
                              </div>
                               <span class="author-title"><a href="#"> Restaurant, The Wines </a></span>
                              <span class="author-content"><a href="#">Vasse Felix buys Watershed vineyard to increase Chardonnay production</a></span>
                              <span class="author-meta"><a href="#">May 28, 2018</a></span>
                        </div>
                    </article>
                    <img class="image" src="${contextRoot}/FrontPage/image/xoan.jpg" alt="image">
            </div> <!-- /relatest -->
            <div class="post-bottom">
                <h2><a href="#"> 12 Comment </a></h2>
                <div class="avatar">
                        <img src="${contextRoot}/FrontPage/image/comment1.jpg" alt="image">
                </div>
                <div class="post-comment">
                    <span class="comment-meta comment"><a href="#"> May 28, 2018</a></span>
                    <span class="comment-title comment"><a href="#">Brandon Kelley</a></span>
                    <span class="comment-text comment">
                    <a href="#">Vasse Felix chief executive, Paul Holmes a Court said no plans have yet been made for the buildings on the property</a>
                    </span>
                        <ul>
                            <li><a href="#" class="button-like hvr-shutter-out-horizontal">LIKE</a></li>
                            <li><a href="#" class="button-reply hvr-shutter-out-horizontal">REPLY</a></li>
                        </ul>
                    <div class="post-bottom-child">
                        <div class="avatar-bottom">
                                <img src="${contextRoot}/FrontPage/image/comment2.jpg" alt="image">
                        </div>
                        <div class="post-comment">
                            <span class="comment-meta comment"><a href="#"> May 28, 2018</a></span>
                            <span class="comment-title comment"><a href="#">John Doe</a></span>
                            <span class="comment-text comment">
                                <a href="#">Vasse Felix chief executive, Paul Holmes a Court said no plans have yet been made for the buildings on the property</a>
                            </span>
                                 <ul>
                                    <li><a href="#" class="button-like hvr-shutter-out-horizontal">LIKE</a></li>
                                    <li><a href="#" class="button-reply hvr-shutter-out-horizontal">REPLY</a></li>
                                 </ul>
                        </div>
                    </div>
                </div>
            </div> <!-- /post-bottom --> 
            <div class="post-bottom-second post-bottom">
                <div class="avatar">
                    <img src="${contextRoot}/FrontPage/image/comment3.jpg" alt="image">
                </div>
                <div class="post-comment">
                    <span class="comment-meta comment"><a href="#"> May 28, 2018</a></span>
                    <span class="comment-title comment"><a href="#">Michen Jason</a></span>
                    <span class="comment-text comment">
                    <a href="#">Vasse Felix chief executive, Paul Holmes a Court said no plans have yet been made for the buildings on the property</a>
                    </span>
                    <ul>
                        <li><a href="#" class="button-like hvr-shutter-out-horizontal">LIKE</a></li>
                        <li><a href="#" class="button-reply hvr-shutter-out-horizontal">REPLY</a></li>
                    </ul>
                </div>
            </div> <!-- /post-bottom-second --> 
            <div class="comment-respond">
                <h2><a href="#">Leave A Comment</a> </h2>
                <form class="comment-form">
                    <p class="comment-form-author">
                        <!-- <label>Name *</label> -->
                        <input  name="author" type="text" placeholder="Name" required="required">
                    </p>
                    <p class="comment-form-email">
                        <!-- <label>Email *</label> -->
                        <input  name="email" type="email" placeholder="Email" required="required">
                    </p>
                    <div class="clearfix"></div>
                    <p class="comment-form-comment">
                        <!-- <label>Comment</label>  -->
                        <textarea  name="comment" placeholder="Comment" required="required"></textarea>
                    </p>
                    <p class="submit-form">
                        <button name="submit" type="submit"  class="submit btn btn-styl hvr-shutter-out-horizontal" >POST COMMENT</button>
                    </p>
                </form>
            </div>  <!-- /comment-respond --> 
        </div>
        <div class="col-lg-1"></div>
        </div> <!-- /row --> 
    </div> <!-- /container --> 
</div> <!-- /main-blog-detail --> 

<jsp:include page="IncludePage/footer.jsp" />
 <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
</body>
</html>