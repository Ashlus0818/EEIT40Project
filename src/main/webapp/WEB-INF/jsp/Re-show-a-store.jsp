<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store Form</title>
<style>
.st2 {
height:40px ;
width:600px;
}


/* type="text" id="name" name="name"  */

</style>

<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

		
		<fieldset class="fieldset">
			<legend>店家資訊</legend>
			<div class="st1">
				<label >店家編號:</label><br>
				<input value=<c:out value="${foreachAstore.get().storeId}" /> class="st2"/>
			
			</div>

			<div class="st1">
				<label >店家部門編號:</label><br>
				<input value=<c:out value="${foreachAstore.get().storeDepartmentNumber}" /> class="st2"/>

			</div>

			<div class="st1">
				<label >店家名稱:</label><br>
				<input value=<c:out value="${foreachAstore.get().storeName}" /> class="st2"/>
			</div>

			<div class="st1">
				<label >店家電話:</label><br>
				<input value=<c:out value="${foreachAstore.get().storePhone}" /> class="st2"/>
			</div>
			
			
			<div class="st1">
				<label >店家地址:</label><br>
				<input value=<c:out value="${foreachAstore.get().storeAddress}" /> class="st2"/>
			</div>
			
			<div class="st1">
				<label >店家營業時間:</label><br>
				<input value=<c:out value="${foreachAstore.get().storeOpendate}" /> class="st2"/>
			</div>

	

			<div class="st1">
				<button value="send">submit</button>
			</div>

		</fieldset>
		


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>