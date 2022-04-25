<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
<link href="${contextRoot}/BackPage/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
		<a href="#"
			class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
			class="fas fa-download fa-sm text-white-50"></i> 新增</a>
	</div>

	<table class="table table-bordered border-primar" border="1">
		<tr style="background-color: #a8fefa">
			<th>Id
			<th>發文者
			<th>表單名稱
			<th>發文時間

		
		<c:forEach var="backTaskes" items="${page.content}">
		<tr>
		<td><input id = "btn" type="text" disabled value="${backTaskes.id}" />
		<td><input type="text" disabled value="${backTaskes.name}" />
		<td><input type="text" disabled value="${backTaskes.title}" />
		<td><input type="text" disabled value="${backTaskes.create_at}" />
		</c:forEach>
		
		
		
			<tr><form method="post" action="Eip">
				<td><input type="text" disabled value="" />
				<td><input type="text" disabled value="" />
				<td><input type="text" disabled value="" />
				<td><input type="text" disabled value="" />
				<td><a id="update" href="<c:out value="${Eip}"/>">更新</a>
				<td><button>刪除</button>
				<td><a href="<c:out value="${Eip}"/>">新增</a>
			</form>
	</table>


	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />

</body>
</html>