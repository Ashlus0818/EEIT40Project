<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/pageheading.jsp" />

	<table class="table table-bordered border-primar" border="1">
		<tr style="background-color: #a8fefa">
			<th>員工編號
			<th>姓名
			<th>到職日
			<th>薪水
			<th>部門編號
			<th>職稱
				
		<tr>
			<form method="post" action="Eip">
			<td><input type="text" disabled value="" />
			<td><input type="text" disabled value="" />
			<td><input type="text" disabled value="" />
			<td><input type="text" disabled value="" />
			<td><input type="text" disabled value="" />
			<td><input type="text" disabled value="" />
			<td><a href="<c:out value="${Eip}"/>">更新</a>
			<td><a href="<c:out value="${Eip}"/>">刪除</a>
			<td><a href="<c:out value="${Eip}"/>">新增</a>
			</form>
	</table>

	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>