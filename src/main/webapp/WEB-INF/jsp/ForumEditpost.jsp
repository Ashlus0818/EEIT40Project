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
<title>編輯文章(後台)</title>
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/pageheading.jsp" />
	<div class="container">
		<p />
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header">編輯文章</div>
				<div class="card-body">
					<form:form class="form" method="POST" modelAttribute="forumpost">
						<form:errors path="title" />
						<form:errors path="context" />
						<form:input type="hidden" path="postID" />
						<form:input type="hidden" path="userID" />
						<form:input type="hidden" path="date" />
						<form:input type="hidden" path="password" />
						<div class="imput-group">
						<p />
							標題：
							<p />
							<p />
							<form:textarea path="title" class="form-control"></form:textarea>
							<p />
							<p />
							內容：
							<p />
							<form:textarea path="context" class="form-control"></form:textarea>
						</div>
						<p />
						<input type="submit" name="submit" value="修改">
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>