<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="IncludePage/css.jsp" />


</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />
	
	
	<div id="" >
	<h3>購物車管理</h3>
	<table class="table table-striped table-bordered zero-configuration">
		<form:form class="form" method="POST" modelAttribute="liquor"></form:form>
		<thead>
			<tr>
				<th>圖片</th>
				<th>產品名稱</th>
				<th>數量</th>
				<th>金額</th>
				<th>小計</th>
				<th></th>
			</tr>
		</thead>

		<thead>
			<tr>
			<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th><input type="button" value="更改"/>|<input type="button" value="刪除"/></th>

			</tr>
		</thead>
	</table>
	


	<div class="row justify-content-center">
		<input href="${contextRoot}/ShopCart" type="button" value="新增商品" />
	</div>
	</div>
	


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>


