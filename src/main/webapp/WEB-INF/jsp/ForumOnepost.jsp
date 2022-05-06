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
				<div class="edit-link">
							<a href="${contextRoot}/ForumPostlist">回文章列表</a> |
							<a href="${contextRoot}/ForumReportlist">回檢舉列表</a> 
						</div>
						<br>
					<span><fmt:formatDate
							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${post.date}" /></span>
				</div>
				<div class="card-body">
				No.${post.postID}
				<p />
				<p />
					標題：
					<p/>
					<p/>
				<!--	<p />-->
				<!--	<p />-->
				<!--	<p />-->
					<c:out value="${post.title}" />
					<p />
										----------------------------------------------------------------------
					<p />
					內容：
					<p/>
					<p/>
				<!--	<p />-->
					<c:out value="${post.context}" />
					<p />
				</div>
			</div>
		</div>
		<br>
		<c:forEach var="getreply" items="${getreply}">
			<div class="col-6">
				<div class="card">			
					<div class="card-header">			
						<div class="edit-link">
						</div>
						<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
								value="${getreply.date}" />
							<br>
							內容： <c:out value="${getreply.recontext}" />
						</span>
					</div>
				</div>
			</div>
		</c:forEach>

		
</div>



	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>