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
							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastpost.date}" /></span>
				</div>
				<div class="card-body">
					標題：
					<c:out value="${lastpost.title}" />
					<p />
					<p />
					內容：
					<c:out value="${lastpost.context}" />
				</div>
			</div>
		</div>

		<c:forEach items="${allpost}" varStatus="theCount"
			var="post">
			<div class="col-6" id="${post.postID}">
				<div class="card">
					<div class="card-header">
						<div class="edit-link">
							<a href="${contextRoot}/ForumEditpost?postID=${post.postID}">編輯</a>
							| <a onclick="return confirm('刪除')" href="${contextRoot}/DeleteForumpost?postID=${post.postID}">刪除</a>
							<a href="${contextRoot}/ForumAddreply?replyID=${post.postID}">回應</a>	
						</div>
						<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
								value="${post.date}" /> <br> No： <c:out
								value="${post.postID}" /> <br> <br> 標題： <c:out
								value="${post.title}" /> <br> <br> 內容： <c:out
								value="${post.context}" />
						</span>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>



	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>