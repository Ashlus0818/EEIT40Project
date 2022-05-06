<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container-fluid">
    <a href="${contextRoot}/FrontPage/index.html" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37"
        data-retina="${contextRoot}/FrontPage/image/logo.png" data-width="147" data-height="21"></a>
    <div class="mobile-button">
      <span></span>
    </div>
    <!-- /.nav-wrap -->
    <div class="nav-wrap ">
      <nav id="mainnav" class="mainnav">
        <ul class="menu">
          <li class="active a">
            <a href="${contextRoot}/FrontPage/index.html" title="">HOME</a>
          </li>
          <li class="active">
            <a href="${contextRoot}/front/Re-Order-oldVersion" title="">現場試喝</a>
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
            <a href="#" title="">聯絡我們</a>
            <ul class="sub-menu">
              <li><a href="${contextRoot}/FrontPage/contact-1.html" title="">Contact Us 1</a></li>
              <li><a href="${contextRoot}/FrontPage/Contact-2.html" title="">Contact Us 2</a></li>
            </ul><!-- /.sub-menu -->
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