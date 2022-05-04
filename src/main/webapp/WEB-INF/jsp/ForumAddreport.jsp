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
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/pageheading.jsp" />
	<div class="container">
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header">
					<span><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
							value="${post.date}" /></span>
				</div>
				<div class="card-body">
					標題：
					<c:out value="${post.title}" />
					<p />
					<p />
					內容：
					<c:out value="${post.context}" />
				</div>
			</div>
		</div>
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header">發布文章</div>
				<div class="card-body">
					<form:form class="form" method="POST" modelAttribute="forumreport">
						<form:errors path="reportReason" />
						<form:input type="hidden" path="postID"
							value="${forumReport.postID}" />
						<div class="imput-group">
							檢舉原因：
							<form:textarea path="reportReason" class="form-control"/>
						</div>
						<input type="submit" name="submit" value="檢舉">
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>