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
					<a class="collapse-item" href="${contextRoot}/backTask">查看任務</a> 
<!-- 					<a class="collapse-item" href="cards.html">無</a> -->

				</div>
			</div></li>
<%-- 			${contextRoot}/ShopCart/findPostById --%>
		<li class="nav-item"><a class="nav-link" href="*"
		data-toggle="collapse" data-target="#ShopCart"
			aria-expanded="true" aria-controls="ShopCart">
			 <i class="fas fa-fw fa-chart-area"></i> <span>購物車</span></a>
			 <div id="ShopCart" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="${contextRoot}/addShopCart">購物車管理</a>
				<a class="collapse-item" href="${contextRoot}/addShopOrder">客戶訂單</a>
				<a class="collapse-item" href="${contextRoot}/addShopLiquor">產品管理</a>
				<a class="collapse-item" href="${contextRoot}/addShopInventory">庫存管理</a>
				</div>
				</div>
			 </li>


		<li class="nav-item"><a class="nav-link" href="${contextRoot}/backstage/ReservationStore"> <i
				class="fas fa-fw fa-table"></i> <span>實體店面</span></a></li>

		
	<li class="nav-item"><a class="nav-link collapsed" href="*"
			data-toggle="collapse" data-target="#backmes"
			aria-expanded="true" aria-controls="backmes"> 
				<i class="fas fa-fw fa-wrench"></i> <span>客服</span></a>
			<div id="backmes" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Components:</h6>
					<a class="collapse-item" href="${contextRoot}/CusMesbacks/findByPage">查看留言</a>
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
					<a class="collapse-item" href="${contextRoot}/ForumAddpost">新增文章</a>
					<a class="collapse-item" href="${contextRoot}/ForumPostlist">文章列表</a>
					<a class="collapse-item" href="${contextRoot}/ForumReplylist">回應列表</a>
					<a class="collapse-item" href="${contextRoot}/ForumReportlist">檢舉區</a> 
				</div>
			</div></li>

<!-- 原本備用的地方 -->

<!-- 備用的結尾 -->


		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->