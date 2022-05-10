<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.* ,com.eeit40.springbootproject.model.CustomerMessage"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<jsp:include page="IncludePage/head.jsp" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
<title>聯絡我們</title>
</head>
<body>
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
								<li><a href="${contextRoot}/front">首頁</a></li>
								<li><a href="${contextRoot}/front/CusMesFront">聯絡我們</a></li>
								<li class="blog"><a href="#">查看留言</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.page-title -->
	<div class="main-contact-1">
		<section class="flat-map-content">
			<div class="container">
				<div class="row">
					<img src="${contextRoot}/FrontPage/image/cus01.jpeg" alt=""
						data-bgposition="center center" data-no-retina>
				</div>
			</div>
		</section>
	</div>
	<!-- /flat-map-content-->
	<section class="flat-get-in">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-section">
						<h3 class="our-product-title">
							<a href="#"> Contact Us (View)</a>
						</h3>
						<div class="our-product-image">
							<img src="${contextRoot}/FrontPage/image/homepage14.png"
								alt="image">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<table id="myTable" class="table table-sm table-dark"
		style="text-align: center">
		<tr>
			<th style="text-align: center">ID
			<th style="text-align: center">姓名
			<th style="text-align: center">信箱
			<th style="text-align: center">問題
			<th style="text-align: center">留言内容
		</tr>
		<c:forEach items="${cpage.content}" var="cpage" varStatus="s">
			<form id='CusFormId${cpage.messageId}' action=""
				method="post">
				<tr>
					<td name="messageId" value="${cpage.messageId}"
						id="mesId${cpage.messageId}">${cpage.messageId}</td>



					<td>${cpage.messageName}</td>
					<td>${cpage.messageEmail}</td>
					<td><input disabled="disabled" type="text"
						id="mesId${cpage.messageId}" value="${cpage.messageQuest}"
						name="messageQuest" /></td>
					<td><input disabled="disabled" type="text"
						id="mesId${cpage.messageId}" value="${cpage.messagetext}"
						name="messagetext" /></td>
					<td><input data-toggle="modal" data-target="#logoutModal"
						class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
						id="updateButton${cpage.messageId}" type="button" value="修改"
						onclick="updateBox(${cpage.messageId})"></td>
				</tr>
			</form>
		</c:forEach>



	</table>


	<!-- update Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<form id="updateForm" method="post">
					<div class="modal-body">
						Id:&nbsp <input id="modalBodyId" name="messageId" readonly />
					</div>
					<div class="modal-body">
						姓名:&nbsp<input id="modalBodyName" name="messageName" />
					</div>
					<div class="modal-body">
						信箱:&nbsp<input id="modalBodyEmail" name="messageEmail" />
					</div>
					<div class="modal-body">
						問題:&nbsp<input id="modalBodyQuest" name="messageQuest" />
					</div>
					<div class="modal-body">
						留言:&nbsp<input id="modalBodytext" name="messagetext" />
					</div>
				</form>

				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>

					<button id="confirmUpdateBtn" class="btn btn-primary">更新</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="IncludePage/footer.jsp" />
	<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
	<!-- /#scroll-top -->

	<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/main.js"></script>

	<!-- Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading -->
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>
	<script charset="utf8"
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script
		src="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<script>



function deleteAlert(count){
		var form="taskForm"+count;
		var yes = confirm("確認刪除此筆紀錄?");
		if(yes){
			document.getElementById(form).action = 'backtaskes/delete';
			document.getElementById(form).submit();
		} else{}
	};

function updateBox(num){
	$("#modalBodyId").val(num);
	$("#modalBodyName").val($("#messageName"+num).val());
	$("#modalBodyEmail").val($("#messageEmail"+num).val());
	$("#modalBodyQuest").val($("#messageQuest"+num).val());
	$("#modalBodytext").val($("#messagetext"+num).val());	
	$("#confirmUpdateBtn").click(function(){
		var yes = confirm("確認更新此筆紀錄?");
		if(yes){
			document.getElementById("updateForm").action = 'CusMesfronts/update';
			document.getElementById("updateForm").submit();
		} else{}
	})
}; 

	
</script>
</body>
</html>