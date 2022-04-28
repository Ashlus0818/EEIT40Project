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
<jsp:include page="IncludePage/css.jsp" />


</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

	<div class="container">
		<p />
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header">新增產品</div>
				<div class="card-body">
					<form:form class="form" method="POST" modelAttribute="shopliquor">
						<form:errors path="title" />
						<form:errors path="context" />
						<div class="imput-group">
							圖片:
							<form:textarea path="context" class="form-control"></form:textarea>
							產品名稱:
							<form:textarea path="context" class="form-control"></form:textarea>
							詳細介紹:
							<form:textarea path="context" class="form-control"></form:textarea>
							產地:
							<form:textarea path="context" class="form-control"></form:textarea>
							價錢:
							<form:textarea path="context" class="form-control"></form:textarea>
						</div>
						<input type="submit" name="submit" value="新增產品">
					</form:form>

				</div>
			</div>

		</div>
	</div>








	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>


