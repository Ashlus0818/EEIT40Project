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
<title>新增回應(後台)</title>
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

					NO：${forumReply.postID}

				<!--	NO.${forumReply.postID} -->

					<p />
					<p />
					文章標題：
					<p />
					<p />
					<c:out value="${post.title}" />
					<p />
					<p />
					----------------------------------------------------------------------
					文章內容：
					<p />
					<c:out value="${post.context}" />
				</div>
			</div>
		</div>
		<p/>
		<div class="col-6">
			<div class="card">
				<div class="card-header">回覆文章</div>
				<div class="card-body">
					<form:form class="form" method="POST" modelAttribute="forumReply">
						<form:errors path="recontext" />
						<form:input type="hidden" path="postID"
							value="${forumReply.postID}" />
						<div class="imput-group">

						<!--		>> NO：${forumReply.postID} -->

						>> NO.${forumReply.postID}  

							<p />
							<p />
							回覆內容：
							<p />
							<form:textarea path="recontext" class="form-control" />
						</div>
						<p />
						<input type="submit" name="submit" value="新增回覆">
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>