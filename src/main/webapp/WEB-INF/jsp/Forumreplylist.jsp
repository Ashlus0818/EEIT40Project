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
					最近一筆(時間)<span><fmt:formatDate
							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastreply.date}" /></span>
				</div>
				<div class="card-body">
					<p />
					內容：
					<c:out value="${lastreply.recontext}" />
				</div>
			</div>
		</div>

		<c:forEach var="reply" items="${allreply}">
			<div class="col-6">
				<div class="card">
					<div class="card-header">
						<div class="edit-link">
							<a href="${contextRoot}/EditForumreply?replyID=${reply.replyID}">編輯</a> | 
							<a onclick="return confirm('刪除')" href="${contextRoot}/DeleteForumreply?replyID=${reply.replyID}">刪除</a>
						</div>
						<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
								value="${reply.date}" />
							<p /> No： <c:out value="${reply.replyID}" />
							<p />
							<p /> 內容： <c:out value="${reply.recontext}" />
						</span>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>



	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>