	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<div class="container-fluid">
    <a href="${contextRoot}/front" class="logo"><img id="logoimg" src="${contextRoot}/FrontPage/image/1logo.png" alt="image" width="129" height="37"
        data-retina="${contextRoot}/FrontPage/image/logo.png" data-width="147" data-height="21"></a>
    <div class="mobile-button">
      <span></span>
    </div>
    <!-- /.nav-wrap -->
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
                <li><a href="${contextRoot}/front/Shop-fullwidth-grid" title="">全部商品</a></li>
                <li><a href="${contextRoot}/front/Shop-details" title="">商品詳細</a></li>
              <li><a href="${contextRoot}/front/Shop-order-tracking" title="">客戶訂單</a></li>
              <li><a href="${contextRoot}/front/showCartList" title="">購物車</a></li>
            </ul><!-- /.sub-menu -->
          </li>
          <li class="active">
            <a href="${contextRoot}/ForumFrontPostlist" title="">討論區</a>
            <ul class="sub-menu">
              <li><a href="${contextRoot}/ForumFrontAddpost" title="">新增文章</a></li>
              <li><a href="${contextRoot}/ForumFrontPostlist" title="">文章列表</a></li>
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
      <li><sec:authorize access="authenticated" var="authenticated">
							<c:choose>
								<c:when test="${authenticated}">
									Hi, <sec:authentication property="name" />
								</c:when>
							</c:choose>
						</sec:authorize></li>
        <li><a href="${contextRoot}/"><button type="button" class=""
						value="後台" 
						>後台&nbsp;&nbsp;</button></a></li>
        <li><a href="#" class="header-search-icon"><i class="ti-search" aria-hidden="true"></i></a></li>
        <li><a href="#"> <i class="ti-align-justify" aria-hidden="true"></i> </a>
          <ul class="sub-menu">
            <li><a id="LoginRegister" href="${contextRoot}/FrontPage/projects1.html" title="">Login/ Register</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Account</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Wishlist</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">My Cart</a></li>
            <li><a href="${contextRoot}/FrontPage/projects1.html" title="">Tracking Orders</a></li>
          </ul><!-- /.sub-menu -->
        </li>
      </ul>
    </div>
  </div>


