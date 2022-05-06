﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

        <head>
            <jsp:include page="IncludePage/head.jsp" />
            <title>Shop-cart</title>            
        </head>

<<<<<<< HEAD
        <body>
            <div id="loading-overlay">
                <div class="loader"></div>
            </div> <!-- /.loading-overlay -->
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
                                        <li><a href="#">Product</a></li>
                                        <li class="blog"><a href="#">Shopping Cart</a></li>
                                    </ul>
                                </div>
                                <div class="page-title-heading">
                                    <h2 class="title"><a href="#">Cart</a></h2>
                                </div>
=======
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
    <div id="loading-overlay">
        <div class="loader"></div>
    </div> <!-- /.loading-overlay -->
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
    <div class="page-title parallax parallax1 ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title-content text-center">
                            <div class="breadcrumbs">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Product</a></li>
                                    <li class="blog"><a href="#">Shopping Cart</a></li>
                                </ul>
                            </div>
                            <div class="page-title-heading">
                                 <h2 class="title"><a href="#">Cart</a></h2>
>>>>>>> angus
                            </div>
                        </div>
                    </div>
                </div>
<<<<<<< HEAD
            </div> <!-- /.page-title -->
            <div class="main-shop-cart">
                <section class="flat-cart">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="woocommerce-tabs wc-tabs-wrapper">
                                    <ul class="tabs">
                                        <li><a class="tab active" data-id='#tab-description' href="#"><i
                                                    class="  icon_bag" aria-hidden="true"></i>SHOPPING CART</a></li>
                                        <li><a class="tab" data-id='#tab-reviews' href="#"><i class=" icon_ribbon"
                                                    aria-hidden="true"></i>CHECK OUT</a></li>
                                        <li><a class="tab" data-id='#tab-order' href="#"><i
                                                    class="arrow_carrot-down_alt" aria-hidden="true"></i>ORDER
                                                COMPLETE</a></li>
                                    </ul>
                                    <div class="cart-wrap">
                                        <div id="tab-description" class="tab-content">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Image</th>
                                                        <th>Product Name</th>
                                                        <th>Price</th>
                                                        <th>Quantity</th>
                                                        <th>Total</th>
                                                        <th class="delete">×</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-center image"><img
                                                                src="${contextRoot}/FrontPage/image/homepage132.png"
                                                                alt="image"></td>
                                                        <td class="list text">Bougrier Rose d'Anjou</td>
                                                        <td class="text-center list price">$34.99</td>
                                                        <td class="text-center list quantity">
                                                            <ul class="quantity-menu">
                                                                <li><i class="fa fa-minus-circle"
                                                                        aria-hidden="true"></i></li>
                                                                <li>2</li>
                                                                <li><i class="fa fa-plus-circle" aria-hidden="true"></i>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                        <td class="text-center list price">$69.98</td>
                                                        <td class="text-center delete">×</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center"><img
                                                                src="${contextRoot}/FrontPage/image/homepage133.png"
                                                                alt="image"></td>
                                                        <td class="list text">D'Autrefois Rose de Pinot Noir</td>
                                                        <td class="text-center list price">$28.99</td>
                                                        <td class="text-center list">
                                                            <ul>
                                                                <li><i class="fa fa-minus-circle"
                                                                        aria-hidden="true"></i></li>
                                                                <li>1</li>
                                                                <li><i class="fa fa-plus-circle" aria-hidden="true"></i>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                        <td class="text-center list price">$28.99</td>
                                                        <td class="text-center delete">×</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center"><img
                                                                src="${contextRoot}/FrontPage/image/homepage134.png"
                                                                alt="image"></td>
                                                        <td class="list text">Chateau Vivonne Bandol Rose</td>
                                                        <td class="text-center list price">$46.99</td>
                                                        <td class="text-center list">
                                                            <ul>
                                                                <li><i class="fa fa-minus-circle"
                                                                        aria-hidden="true"></i></li>
                                                                <li>3</li>
                                                                <li><i class="fa fa-plus-circle" aria-hidden="true"></i>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                        <td class="text-center list price">$40.97</td>
                                                        <td class="text-center delete">×</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center"><img
                                                                src="${contextRoot}/FrontPage/image/homepage135.png"
                                                                alt="image"></td>
                                                        <td class="list text">Olema Rose Cotes De</td>
                                                        <td class="text-center list price">$25.99</td>
                                                        <td class="text-center list">
                                                            <ul>
                                                                <li><i class="fa fa-minus-circle"
                                                                        aria-hidden="true"></i></li>
                                                                <li>1</li>
                                                                <li><i class="fa fa-plus-circle" aria-hidden="true"></i>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                        <td class="text-center list price">$25.99</td>
                                                        <td class="text-center delete">×</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="cart-btn">
                                                <div class="btn-continue">
                                                    <div class="elm-btn">
                                                        <a href="#"
                                                            class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">CONTINUE
                                                            SHOPPING</a>
                                                    </div>
                                                </div>
                                                <div class="btn-clear">
                                                    <ul>
                                                        <li>
                                                            <div class="elm-btn">
                                                                <a href="#"
                                                                    class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">CLEAR
                                                                    CART</a>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="elm-btn">
                                                                <a href="#"
                                                                    class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">UPDATE
                                                                    CART</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="wrap-discount-estimate-cart">
                                                    <div class="col-lg-4 col-md-4 discount">
                                                        <h2 class="discount-heading"><a href="#">Discount Codes</a></h2>
                                                        <p class="discount-text">Enter your coupin if you have one</p>
                                                        <input type="text" name="discount-codes">
                                                        <div class="elm-btn">
                                                            <a href="#"
                                                                class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">submit</a>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-4 estimate">
                                                        <h2 class="estimate-heading"><a href="#">Estimate Shipping</a>
                                                        </h2>
                                                        <p class="estimate-text">Enter your destination to get shipping
                                                        </p>
                                                        <div class="estimate-select country">
                                                            <div class="title-select">
                                                                <p>COUNTRY</p>
                                                            </div>
                                                            <div class="select">
                                                                <select>
                                                                    <option value="volvo">United States</option>
                                                                    <option value="saab">Saab</option>
                                                                    <option value="opel">Opel</option>
                                                                    <option value="audi">Audi</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="estimate-select postal">
                                                            <div class="title-select">
                                                                <p>POSTAL CODE/ZIP'</p>
                                                            </div>
                                                            <div class="selectt">
                                                                <select>
                                                                    <option value="volvo">01234567</option>
                                                                    <option value="saab">Saab</option>
                                                                    <option value="opel">Opel</option>
                                                                    <option value="audi">Audi</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="elm-btn">
                                                            <a href="#"
                                                                class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">GET
                                                                A QUOTE</a>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-4 cart">
                                                        <h2 class="cart-heading"><a href="#">Cart Total</a></h2>
                                                        <div class="wrap-cart">
                                                            <div class="sub-total">
                                                                <span>SUB TOTAL</span>
                                                                <p class="price">$320.00</p>
                                                            </div>
                                                            <div class="shipping">
                                                                <span>SHIPPING</span>
                                                                <p class="price">Free</p>
                                                            </div>
                                                            <div class="totall">
                                                                <span>TOTAL</span>
                                                                <p class="price">$320.00</p>
                                                            </div>
                                                        </div>
                                                        <div class="elm-btn">
                                                            <a href="#"
                                                                class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">PROCEED
                                                                TO CHECK OUR</a>
                                                        </div>
                                                    </div>
=======
            </div>
    </div> <!-- /.page-title -->
<div class="main-shop-cart">
    <section class="flat-cart">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="woocommerce-tabs wc-tabs-wrapper">
                        <ul class="tabs">
                            <li><a class="tab active" data-id ='#tab-description' href="#"><i class="  icon_bag" aria-hidden="true"></i>SHOPPING CART</a></li>
                            <li><a class="tab" data-id ='#tab-reviews' href="#"><i class=" icon_ribbon" aria-hidden="true"></i>CHECK OUT</a></li>
                            <li><a class="tab" data-id ='#tab-order' href="#"><i class="arrow_carrot-down_alt" aria-hidden="true"></i>ORDER COMPLETE</a></li>
                        </ul>
                        <div class="cart-wrap">
                            <div id="tab-description" class="tab-content">
                                <table class="table table-bordered">
                                    <thead>
                                      <tr>
                                        <th>Image</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th class="delete">×</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td class="text-center image"><img src="${contextRoot}/FrontPage/image/homepage132.png" alt="image"></td>
                                        <td class="list text">Bougrier Rose d'Anjou</td>
                                        <td class="text-center list price">$34.99</td>
                                        <td class="text-center list quantity">
                                            <ul class="quantity-menu">
                                                <li><i class="fa fa-minus-circle" aria-hidden="true"></i></li>
                                                <li>2</li>
                                                <li><i class="fa fa-plus-circle" aria-hidden="true"></i></li>
                                            </ul>
                                        </td>
                                        <td class="text-center list price">$69.98</td>
                                        <td class="text-center delete">×</td>
                                      </tr>
                                      <tr>
                                            <td class="text-center"><img src="${contextRoot}/FrontPage/image/homepage133.png" alt="image"></td>
                                            <td class="list text">D'Autrefois Rose de Pinot Noir</td>
                                            <td class="text-center list price">$28.99</td>
                                            <td class="text-center list">
                                            <ul>
                                                <li><i class="fa fa-minus-circle" aria-hidden="true"></i></li>
                                                <li>1</li>
                                                <li><i class="fa fa-plus-circle" aria-hidden="true"></i></li>
                                            </ul>
                                        </td>
                                        <td class="text-center list price">$28.99</td>
                                        <td class="text-center delete">×</td>
                                      </tr>
                                      <tr>
                                            <td class="text-center"><img src="${contextRoot}/FrontPage/image/homepage134.png" alt="image"></td>
                                            <td class="list text">Chateau Vivonne Bandol Rose</td>
                                            <td class="text-center list price">$46.99</td>
                                            <td class="text-center list">
                                                <ul>
                                                    <li><i class="fa fa-minus-circle" aria-hidden="true"></i></li>
                                                    <li>3</li>
                                                    <li><i class="fa fa-plus-circle" aria-hidden="true"></i></li>
                                                </ul>
                                            </td>
                                            <td class="text-center list price">$40.97</td>
                                            <td class="text-center delete">×</td>
                                      </tr>
                                      <tr>
                                            <td class="text-center"><img src="${contextRoot}/FrontPage/image/homepage135.png" alt="image"></td>
                                            <td class="list text">Olema Rose Cotes De</td>
                                            <td class="text-center list price">$25.99</td>
                                            <td class="text-center list">
                                                <ul>
                                                    <li><i class="fa fa-minus-circle" aria-hidden="true"></i></li>
                                                    <li>1</li>
                                                    <li><i class="fa fa-plus-circle" aria-hidden="true"></i></li>
                                                </ul>
                                            </td>
                                            <td class="text-center list price">$25.99</td>
                                            <td class="text-center delete">×</td>
                                      </tr>
                                    </tbody>
                                </table>
                                <div class="cart-btn">
                                    <div class="btn-continue">
                                        <div class="elm-btn">
                                                <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">繼續購買</a>
                                        </div>
                                    </div>
                                    <div class="btn-clear">
                                        <ul>
                                            <li>
                                                <div class="elm-btn">
                                                    <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">刪除商品</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="elm-btn">
                                                    <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">新增商品</a>
>>>>>>> angus
                                                </div>
                                            </div>
                                        </div>
                                        <div id="tab-reviews" class="tab-content">
                                            <div class="check-out">
                                                <h3 class="heading-check">Billing Address</h3>
                                                <form class="form-checkout ">
                                                    <div class="row-input-wrap clearfix">
                                                        <div class="input-wrap float-left-50 pd-right-10">
                                                            <label>First name<span> *</span></label>
                                                            <input type="text" name="name" required=""
                                                                class="width-100">
                                                        </div>
                                                        <div class="input-wrap float-right-50 pd-left-10">
                                                            <label>Last name<span> *</span></label>
                                                            <input type="text" name="name" required=""
                                                                class="width-100">
                                                        </div>
                                                    </div>
                                                    <div class="input-wrap">
                                                        <label>Company Name <span> *</span></label>
                                                        <input type="text" required="" class="width-100">
                                                    </div>
                                                    <div class="input-wrap">
                                                        <label>Country<span> *</span></label>
                                                        <input type="text" required="" placeholder="United States"
                                                            class="width-100">
                                                    </div>
                                                    <div class="input-wrap">
                                                        <label>Address<span> *</span></label>
                                                        <input type="text" class="mg-bottom-25 width-100" required=""
                                                            placeholder="100A 8th St, Los Angeles, CA 90014">
                                                    </div>
                                                    <div class="input-wrap">
                                                        <label>POSTCODE/ZIP<span> *</span></label>
                                                        <input type="text" class="mg-bottom-25 width-100" required="">
                                                    </div>
                                                    <div class="input-wrap">
                                                        <label>TOWN/CITY<span> *</span></label>
                                                        <input type="text" class="mg-bottom-25 width-100" required="">
                                                    </div>
                                                    <div class="row-input-wrap clearfix">
                                                        <div class="input-wrap float-left-50 pd-right-10">
                                                            <label>Email Address <span> *</span></label>
                                                            <input type="text" class="mg-bottom-25 width-100"
                                                                required="">
                                                        </div>
                                                        <div class="input-wrap float-right-50 pd-left-10">
                                                            <label>Phone Number <span> *</span></label>
                                                            <input type="text" class="mg-bottom-25 width-100"
                                                                required="">
                                                        </div>
                                                    </div>
                                                    <div class="row-check clearfix">
                                                        <div class="input-wrap ">
                                                            <input type="checkbox" name="check-ship"
                                                                class="mg-right-15">Create an account?
                                                        </div>
                                                        <div class="input-wrap ">
                                                            <input type="checkbox" name="check-create"
                                                                class="mg-right-15"> Ship to different address?
                                                        </div>
                                                    </div>
                                                    <div class="input-wrap ">
                                                        <label>Order note <span> *</span></label>
                                                        <textarea name="messages" required=""></textarea>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="review-order">
                                                <h3>Your Order</h3>
                                                <table class="order-table">
                                                    <tbody>
                                                        <tr class="cart-subtotal cart-title-details">
                                                            <td class="product-name">Product</td>
                                                            <td class="total" data-title="Subtotal"><span
                                                                    class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol"></span>Total</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="cart-subtotal">
                                                            <td class="product-name">Bougrier Rose d'Anjou</td>
                                                            <td class="total" data-title="Subtotal"><span
                                                                    class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol">$</span>29.99</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="order-total">
                                                            <td class="product-name">Olema Rose Cotes De</td>
                                                            <td class="total" data-title="Total"> <span
                                                                    class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol">$</span>36.89</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="order-total">
                                                            <td class="product-name">Total </td>
                                                            <td class="total text-d90000 font-weight-500"
                                                                data-title="Total"> <span
                                                                    class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol ">$</span>66.88</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="order-total">
                                                            <td class="product-name">Shipping</td>
                                                            <td class="total" data-title="Total"> Free Shipping</td>
                                                        </tr>
                                                        <tr class="order-total">
                                                            <td class="title product-name">ORDER TOTAL </td>
                                                            <td class="total text-d90000 font-weight-500"
                                                                data-title="Total"> <span
                                                                    class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol">$</span>66.88</span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="wrap-check mg-top-20">
                                                    <div class="input-wrap mg-bottom-15">
                                                        <input type="checkbox" name="bank"> DIRECT BANK TRANSFER
                                                    </div>
                                                    <div class="wrap-check-text">
                                                        <p>Make your payment directly into our bank account. Please use
                                                            your Order ID as the pay ments reference. Your order will
                                                            not be shipped until the funds have cleared in our account.
                                                        </p>
                                                    </div>
                                                    <div class="input-wrap mg-bottom-15 ">
                                                        <input type="checkbox" name="payment"> CHECK PAYMENTS
                                                    </div>
                                                    <div class="input-wrap mg-bottom-15">
                                                        <input type="checkbox" name="paypal"> PAYPAL<img
                                                            src="${contextRoot}/FrontPage/image/homepage136.png"
                                                            alt="image">
                                                    </div>

                                                    <div class="wc-proceed-to-checkout text-center pd-top-20">
                                                        <div class="elm-btn">
                                                            <a href="#"
                                                                class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">PROCEED
                                                                TO CHECK OUR</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="tab-order" class="tab-content">
                                            <div class="order-complete">
                                                <p class="heading-order">Thank you. Your order has been received</p>
                                                <div class="order-wrap">
                                                    <ul class="order-menu">
                                                        <li>
                                                            <h3>Order number:</h3>
                                                            <p>1599</p>
                                                        </li>
                                                        <li>
                                                            <h3>Date:</h3>
                                                            <p>December 11, 2018</p>
                                                        </li>
                                                        <li>
                                                            <h3>Total:</h3>
                                                            <p>$88.95</p>
                                                        </li>
                                                        <li>
                                                            <h3>Payment methob:</h3>
                                                            <p>Cash on delivery</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-details">
                                                    <h1><a href="#">Order details</a></h1>
                                                    <div class="order-table">
                                                        <table class="order-table">
                                                            <tbody>
                                                                <tr class="cart-subtotal">
                                                                    <td class="product-name">PRODUCT</td>
                                                                    <td class="total" data-title="Subtotal"><span
                                                                            class="woocommerce-Price-amount amount"><span
                                                                                class="woocommerce-Price-currencySymbol">$</span>TOTAL</span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="cart-subtotal">
                                                                    <td class="product-name">Bougrier Rose dAnjou</td>
                                                                    <td class="total" data-title="Subtotal"><span
                                                                            class="woocommerce-Price-amount amount"><span
                                                                                class="woocommerce-Price-currencySymbol">$</span>29.99</span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <td class="product-name">Olema Rose Cotes De</td>
                                                                    <td class="total" data-title="Total"> <span
                                                                            class="woocommerce-Price-amount amount"><span
                                                                                class="woocommerce-Price-currencySymbol">$</span>36.89</span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <td class="product-name">Total </td>
                                                                    <td class="total text-d90000 font-weight-500"
                                                                        data-title="Total"> <span
                                                                            class="woocommerce-Price-amount amount"><span
                                                                                class="woocommerce-Price-currencySymbol ">$</span>66.88</span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <td class="product-name">Shipping</td>
                                                                    <td class="total" data-title="Total"> Free Shipping
                                                                    </td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <td class="product-name">Payment methob:</td>
                                                                    <td class="total" data-title="Total"> Cash on
                                                                        delivery</td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <td class="title product-name">ORDER TOTAL </td>
                                                                    <td class="total text-d90000 font-weight-500"
                                                                        data-title="Total"> <span
                                                                            class="woocommerce-Price-amount amount"><span
                                                                                class="woocommerce-Price-currencySymbol">$</span>69.99</span>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div> <!-- /main-order-tracking -->
            
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