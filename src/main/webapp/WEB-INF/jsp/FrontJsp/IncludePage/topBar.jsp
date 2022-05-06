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

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
	<!-- Main Content -->
	<div id="content">
		<!-- Topbar -->
		<nav
			class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

			<!-- Sidebar Toggle (Topbar) -->
			<button id="sidebarToggleTop"
				class="btn btn-link d-md-none rounded-circle mr-3">
				<i class="fa fa-bars"></i>
			</button>

			<!-- Topbar Search -->
			<form
				class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control bg-light border-0 small"
						placeholder="Search for..." aria-label="Search"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search fa-sm"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Topbar Navbar -->
			<ul class="navbar-nav ml-auto">

				<!-- Nav Item - Search Dropdown (Visible Only XS) -->
				<li class="nav-item dropdown no-arrow d-sm-none"><a
					class="nav-link dropdown-toggle" href="#" id="searchDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
				</a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
						aria-labelledby="searchDropdown">
						<form class="form-inline mr-auto w-100 navbar-search">
							<div class="input-group">
								<input type="text" class="form-control bg-light border-0 small"
									placeholder="Search for..." aria-label="Search"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-primary" type="button">
										<i class="fas fa-search fa-sm"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<!-- Nav Item - Alerts -->
				<li class="nav-item dropdown no-arrow mx-1"><a
					class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
						<span class="badge badge-danger badge-counter">3+</span>
				</a> <!-- Dropdown - Alerts -->
					<div
						class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="alertsDropdown">
						<h6 class="dropdown-header">Alerts Center</h6>
						<a class="dropdown-item d-flex align-items-center" href="#">
							<div class="mr-3">
								<div class="icon-circle bg-primary">
									<i class="fas fa-file-alt text-white"></i>
								</div>
							</div>
							<div>
								<div class="small text-gray-500">December 12, 2019</div>
								<span class="font-weight-bold">A new monthly report is
									ready to download!</span>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="mr-3">
								<div class="icon-circle bg-success">
									<i class="fas fa-donate text-white"></i>
								</div>
							</div>
							<div>
								<div class="small text-gray-500">December 7, 2019</div>
								$290.29 has been deposited into your account!
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="mr-3">
								<div class="icon-circle bg-warning">
									<i class="fas fa-exclamation-triangle text-white"></i>
								</div>
							</div>
							<div>
								<div class="small text-gray-500">December 2, 2019</div>
								Spending Alert: We've noticed unusually high spending for your
								account.
							</div>
						</a> <a class="dropdown-item text-center small text-gray-500" href="#">Show
							All Alerts</a>
					</div></li>

				<!-- Nav Item - Messages -->
				<li class="nav-item dropdown no-arrow mx-1"><a
					class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i> <!-- Counter - Messages -->
						<span class="badge badge-danger badge-counter">7</span>
				</a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="messagesDropdown">
						<h6 class="dropdown-header">Message Center</h6>
						<a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle" src="${contextRoot}/BackPage/img/undraw_profile_1.svg"
									alt="...">
								<div class="status-indicator bg-success"></div>
							</div>
							<div class="font-weight-bold">
								<div class="text-truncate">Hi there! I am wondering if you
									can help me with a problem I've been having.</div>
								<div class="small text-gray-500">Emily Fowler · 58m</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle" src="${contextRoot}/BackPage/img/undraw_profile_2.svg"
									alt="...">
								<div class="status-indicator"></div>
							</div>
							<div>
								<div class="text-truncate">I have the photos that you
									ordered last month, how would you like them sent to you?</div>
								<div class="small text-gray-500">Jae Chun · 1d</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle" src="${contextRoot}/BackPage/img/undraw_profile_3.svg"
									alt="...">
								<div class="status-indicator bg-warning"></div>
							</div>
							<div>
								<div class="text-truncate">Last month's report looks
									great, I am very happy with the progress so far, keep up the
									good work!</div>
								<div class="small text-gray-500">Morgan Alvarez · 2d</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
								<div class="status-indicator bg-success"></div>
							</div>
							<div>
								<div class="text-truncate">Am I a good boy? The reason I
									ask is because someone told me that people say this to all
									dogs, even if they aren't good...</div>
								<div class="small text-gray-500">Chicken the Dog · 2w</div>
							</div>
						</a> <a class="dropdown-item text-center small text-gray-500" href="#">Read
							More Messages</a>
					</div></li>

				<div class="topbar-divider d-none d-sm-block"></div>

				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas
							McGee</span> <img class="img-profile rounded-circle"
						src="${contextRoot}/BackPage/img/undraw_profile.svg">
				</a> <!-- Dropdown - User Information -->
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
						<a class="dropdown-item" href="#"> <i
							class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
							Log
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#" data-toggle="modal"
							data-target="#logoutModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Logout
						</a>
					</div></li>

			</ul>

		</nav>
		<!-- End of Topbar -->
