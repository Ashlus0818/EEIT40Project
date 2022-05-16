<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員資料</title>
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/pageheading.jsp" />

	<form:form method="post" action="${contextRoot}/back/updateAppUser" modelAttribute="bean">
	<div class="col-lg-6">
				<form:label path="id">Id: </form:label>
				<form:input path="id" value="${bean.getId()}" type="text" />
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
<%-- 				<form:input path="lastModified" value="" type="text" /> --%>
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-dark">
			<div class="card-body">建立日期: ${bean.getCreateAt()}
			
			</div>
		</div>

		<div class="card mb-4 py-3 border-left-secondary">
			<div class="card-body">
				權限: <form:input path="appUserAuthority" value="${bean.getAppUserAuthority().getAuthority()}" type="text" />
				<form:input path="userPwd" value="1234" type="text" />
<input type="submit">
<!-- 圖片 -->
<input data-toggle="modal" data-target="#testmod"
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="" type="button" value="圖片"
								onclick="">
<div class="modal fade" id="testmod" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">圖片</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<form id="updateForm" method="post">
					<div class="modal-body">
						<img src="${contextRoot}/BackPage/img/HintPic1.png" style="width: 465px;height: 138px;"/>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- 圖片 -->
			</div>
		</div>

	</div>
</form:form>

	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>