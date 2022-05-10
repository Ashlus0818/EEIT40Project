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

		<c:forEach var="reply" items="${allreply}">
			<div class="col-6" id="${reply.postID}">
				<div class="card">
					<div class="card-header">
						<div class="edit-link">
							<a href="${contextRoot}/ForumEditreply?replyID=${reply.replyID}">編輯</a> | 
							<a onclick="return confirm('刪除')" href="${contextRoot}/DeleteForumreply?replyID=${reply.replyID}">刪除</a> | 
							<a href="${contextRoot}/ForumOnepost?postID=${reply.postID}">看NO.${reply.postID}的文</a> 
						</div>
						<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
								value="${reply.date}" />
							<br> 
							No： <c:out value="${reply.replyID}" />
							<br>
							內容： <c:out value="${reply.recontext}" />
						</span>
					</div>
				</div>
			</div>
			<br>
		</c:forEach>
		
	</div>

	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>