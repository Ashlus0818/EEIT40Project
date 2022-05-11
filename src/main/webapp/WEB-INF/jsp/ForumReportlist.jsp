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
		<div class="col-6">
				<div class="card">
					<div class="card-header">
						最近的檢舉(時間)>><span>
						<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastreport.date}" /></span>
					</div>
					<div class="card-body">
						<a href="${contextRoot}/ForumOnepost?postID=${lastreport.postID}">看NO：${lastreport.postID}的文</a>
						<p />
						<p />
						理由：
						<p />
						<c:out value="${lastreport.reportReason}" />
					</div>
				</div>
			</div>
			<br>
            <a onclick="return confirm('確定刪除?')" href="${contextRoot}/DeleteForumAllreport">刪除全部檢舉</a> 
            <br> 
            <br>
			<c:forEach var="report" items="${allreport}">
				<div class="col-6" id="${report.postID}">
					<div class="card">
						<div class="card-header">
							檢舉時間>><span>
							<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${report.date}" /></span>
						</div>
						<div class="card-body">
					<div class="edit-link">
						<a href="${contextRoot}/ForumOnepost?postID=${report.postID}">看NO：${report.postID}的文</a>|
						<a onclick="return confirm('刪除')"
							href="${contextRoot}/DeleteForumreport?reportID=${report.reportID}">刪除</a>
					</div>
					<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
							value="${report.date}" /> <br> <br> 理由： <c:out
							value="${report.reportReason}" />
					</span>
				</div>
				</div>
				</div>
			</c:forEach>
		</div>
	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>