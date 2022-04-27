<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!-- Page Wrapper -->
<div id="wrapper">
	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="${contextRoot}/">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">
				EEIT40<sup>2</sup>
			</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item active"><a class="nav-link" href="${contextRoot}/">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
		</a></li>

		<!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

<!-- data-target 和 aria-controls 和 一個div 改名就能閉合-->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#backtask"
			aria-expanded="true" aria-controls="backtask"> <i
				class="fas fa-fw fa-cog"></i> <span>後台功能</span></a>
			<div id="backtask" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Components:</h6>

					<a class="collapse-item" href="${contextRoot}/BackInsert">新增任務</a>
					 <a class="collapse-item" href="cards.html">無</a>

					<a class="collapse-item" href="${contextRoot}/backTask">查看任務</a> <a
						class="collapse-item" href="cards.html">無</a>

				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link" href="#"> <i
				class="fas fa-fw fa-chart-area"></i> <span>購物車</span></a></li>

		<li class="nav-item"><a class="nav-link" href="#"> <i
				class="fas fa-fw fa-chart-area"></i> <span>會員</span></a></li>

		<li class="nav-item"><a class="nav-link" href="${contextRoot}/backstage/ReservationStore"> <i
				class="fas fa-fw fa-chart-area"></i> <span>實體店面</span></a></li>

		
	<li class="nav-item"><a class="nav-link collapsed" href="*"
			data-toggle="collapse" data-target="#backmes"
			aria-expanded="true" aria-controls="backmes"> 
				<i class="fas fa-fw fa-cog"></i> <span>客服</span></a>
			<div id="backmes" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Components:</h6>
					<a class="collapse-item" href="${contextRoot}/addMessage">新增留言</a>
					<a class="collapse-item" href="${contextRoot}/backmessage/findByPage">留言管理</a>
				</div>
			</div></li>
	
				<li class="nav-item"><a class="nav-link collapsed" href="*"
			data-toggle="collapse" data-target="#forum"
			aria-expanded="true" aria-controls="forum"> <i
				class="fas fa-fw fa-cog"></i> <span>討論區</span></a>
			<div id="forum" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Components:</h6>
					<a class="collapse-item" href="${contextRoot}/AddForumpost">新增文章</a>
					<a class="collapse-item" href="${contextRoot}/Forumpostlist">文章列表</a>
				    <a class="collapse-item" href="${contextRoot}/AddForumreply">新增回應</a>
					<a class="collapse-item" href="${contextRoot}/Forumreplylist">回應列表</a>
					<a class="collapse-item" href="${contextRoot}/AddForumreport">新增檢舉</a> 
					<a class="collapse-item" href="${contextRoot}/Forumreportlist">檢舉區</a> 
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link" href="#"> <i
				class="fas fa-fw fa-chart-area"></i> <span>這下面先留著備用</span></a></li>
		<!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------->


		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Interface</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseTwo"
			aria-expanded="true" aria-controls="collapseTwo"> <i
				class="fas fa-fw fa-cog"></i> <span>Components</span>
		</a>
			<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Components:</h6>
					<a class="collapse-item" href="buttons.html">Buttons</a> <a
						class="collapse-item" href="cards.html">Cards</a>
				</div>
			</div></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseUtilities"
			aria-expanded="true" aria-controls="collapseUtilities"> <i
				class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
		</a>
			<div id="collapseUtilities" class="collapse"
				aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Utilities:</h6>
					<a class="collapse-item" href="utilities-color.html">Colors</a> <a
						class="collapse-item" href="utilities-border.html">Borders</a> <a
						class="collapse-item" href="utilities-animation.html">Animations</a>
					<a class="collapse-item" href="utilities-other.html">Other</a>
				</div>
			</div></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Addons</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapsePages"
			aria-expanded="true" aria-controls="collapsePages"> <i
				class="fas fa-fw fa-folder"></i> <span>Pages</span>
		</a>
			<div id="collapsePages" class="collapse"
				aria-labelledby="headingPages" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Login Screens:</h6>
					<a class="collapse-item" href="login.html">Login</a> <a
						class="collapse-item" href="register.html">Register</a> <a
						class="collapse-item" href="forgot-password.html">Forgot
						Password</a>
					<div class="collapse-divider"></div>
					<h6 class="collapse-header">Other Pages:</h6>
					<a class="collapse-item" href="404.html">404 Page</a> <a
						class="collapse-item" href="blank.html">Blank Page</a>
				</div>
			</div></li>

		<!-- Nav Item - Charts -->
		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
		</a></li>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link" href="tables.html">
				<i class="fas fa-fw fa-table"></i> <span>Tables</span>
		</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->