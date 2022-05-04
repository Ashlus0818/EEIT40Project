<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<footer class="style1">
    <div class="container">
      <div class="footer-widgets">
        <div class="widget widget-logo">
          <a href="index.html" class="logo"><img src="${contextRoot}/FrontPage/image/logo.png" alt="image" width="129" height="37"
              data-retina="image/logo-2x.png" data-width="147" data-height="21"></a>
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
          <input type="search" id="search-footer" placeholder="Your Email">
          <button type="submit"><i class="fa fa-location-arrow" aria-hidden="true"></i></button>
        </div> <!-- /widget-contact -->
        <div class="widget widget-menu">
          <ul>
            <li class="active"><a href="About.html"> About Us </a></li>
            <li><a href="${contextRoot}/FrontPage/Shop-fullwidth-grid.html"> Customer Service </a></li>
            <li><a href="${contextRoot}/FrontPage/Homepage2.html"> Terms & Conditions </a></li>
            <li><a href="${contextRoot}/FrontPage/Blog-grid-3column.html"> Privacy Policy </a></li>
            <li class="contact"><a href="${contextRoot}/FrontPage/contact-1.html"> Contact </a></li>
          </ul>
        </div> <!-- /widget-about -->
        <div class="widget widget-text">
          <span>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank"
              href="https://shop194286523.taobao.com/">狮王素材-淘宝店xxxxxx</a></span>
        </div>
      </div> <!-- /footer-widgets -->
    </div> <!-- /container -->
  </footer>