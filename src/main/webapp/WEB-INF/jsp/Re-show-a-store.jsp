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




</style>

<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />


	<!-- 	action:送到目標網址 // modelAttribute:跟bean結合的model屬性 -->
	<form action="#" method="post" modelAttribute="storeOne">

		<fieldset class="fieldset">
			<legend>店家資訊</legend>
			<div class="st1">
				<label path="storeId">店家編號:</label><br>
				<input path="storeId"  class="st2"/>
				<!--              path="xxx" 等於bean的名稱             -->
			</div>

			<div class="st1">
				<label path="storeDepartmentNumber">店家部門編號:</label><br>
				<input path="storeDepartmentNumber" class="st2"/>

			</div>

			<div class="st1">
				<label path="storeName">店家名稱:</label><br>
				<input path="storeName" class="st2"/>
			</div>

			<div class="st1">
				<label path="storePhone">店家電話:</label><br>
				<input path="storePhone" class="st2"/>
			</div>
			
			
			<div class="st1">
				<label path="storeAddress">店家地址:</label><br>
				<input path="storeAddress" class="st2"/>
			</div>
			
			<div class="st1">
				<label path="storeOpendate">店家營業時間:</label><br>
				<input path="storeOpendate" class="st2"/>
			</div>



			<div class="st1">
				<button value="send">submit</button>
			</div>

		</fieldset>
	</form>
	<!-- form:from一定要透過controller return回來才能用 -->


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>