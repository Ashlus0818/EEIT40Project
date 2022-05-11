<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

	<form:form method="post" action="" modelAttribute="bean">
	<div class="col-lg-6">
		<div class="card mb-4 py-3 border-left-secondary">
			<div class="card-body"> 
				<form:label path="userName">帳號: </form:label>
				<form:input path="userName" value="${bean.getUserName()}" type="text" />
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-success">
			<div class="card-body">
				性別: 
				<form:label path="userGender"></form:label>
				<form:input path="userGender" value="${bean.getUserGender()}" type="text" />
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-info">
			<div class="card-body">
				生日: <form:input path="userBirth" value="${bean.getUserBirth()}" type="text" />
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-warning">
			<div class="card-body">
				住址: <form:input path="userAddress" value="${bean.getUserAddress()}" type="text" />
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-danger">
			<div class="card-body">上次修改時間: ${bean.getLastModified()}
				<form:input path="lastModified" value="${bean.getUserAddress()}" type="text" />
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-dark">
			<div class="card-body">建立日期: ${bean.getCreateAt()}
			
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-secondary">
			<div class="card-body">
				輸入密碼來更新資料: <form:input path="userPwd" value="" type="text" />
			</div>
		</div>

	</div>
</form:form>

	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>