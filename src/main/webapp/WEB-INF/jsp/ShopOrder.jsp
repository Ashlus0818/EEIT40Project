<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<table class="table table-striped table-bordered zero-configuration">
		<thead>
			<tr>
				<th>圖片</th>
				<th>產品名稱</th>
				<th>數量</th>
				<th>金額</th>
				<th>小計</th>
				<th>購買日期</th>
				<th>買家名稱</th>
				<th>狀態</th>
				<th>備考</th>
			</tr>
		</thead>

		<thead>
			<tr>
			<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>已出貨/沒出貨</th>
				<th><input type="button" value="更改" />|<input type="button" value="刪除" /></th>
			</tr>
		</thead>
	</table>




	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>


