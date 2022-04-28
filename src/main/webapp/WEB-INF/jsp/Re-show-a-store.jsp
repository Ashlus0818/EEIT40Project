<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store Form</title>
<style>
.st2 {
height:40px ;
width:800px;
}


/* type="text" id="name" name="name"  */

</style>

<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

	
	
<%-- 	<form:form class="form" method="POST" modelAttribute="workMessage"> --%>
					
<%-- 					 <form:input type="hidden" path="id" /> --%>
<%-- 					 <form:input type="hidden" path="added" /> --%>

<!-- 						form:errors  bindingResult 回傳的物件 -->
<%-- 						<form:errors path="text" /> --%>

<!-- 						<div class="input-group"> -->
<%-- 							<form:textarea path="text" class="form-control"></form:textarea> --%>
<!-- 						</div> -->

<!-- 						<input type="submit" name="submit" value="送出"> -->
<%-- 		</form:form> --%>
	
	
	
	
	
	
	
	
	
<form:form class="form" method="POST" modelAttribute="modAtt-Re-show-a-store">	
		
		<fieldset class="fieldset">
			<legend>店家資訊</legend>
			<div class="st1">
				<label >店家編號:</label><br>
				<input name="storeId" value=<c:out value="${foreachAstore.get().storeId}" /> class="st2"/>
			
			</div>

			<div class="st1">
				<label >店家部門編號:</label><br>
				<input name="storeDepartmentNumber" value=<c:out value="${foreachAstore.get().storeDepartmentNumber}" /> class="st2"/>

			</div>

			<div class="st1">
				<label >店家名稱:</label><br>
				<input name="storeName" value=<c:out value="${foreachAstore.get().storeName}" /> class="st2"/>
			</div>

			<div class="st1">
				<label >店家電話:</label><br>
				<input name="storePhone" value=<c:out value="${foreachAstore.get().storePhone}" /> class="st2"/>
			</div>
			
			
			<div class="st1">
				<label >店家地址:</label><br>
				<input name="storeAddress" value=<c:out value="${foreachAstore.get().storeAddress}" /> class="st2"/>
			</div>
			
			<div class="st1">
				<label >店家營業時間:</label><br>
				<input name="storeOpendate"  class="st2" value=<c:out value="${foreachAstore.get().storeOpendate}" /> />
			</div>

<!-- 			<div class="st1"> -->
<!-- 				<label >建立日期:</label><br> -->
<%-- 				<input name="createdAt" value=<c:out value="${foreachAstore.get().createdAt}" /> class="st2"/> --%>
<!-- 			</div> -->
	
<!-- 			<div class="st1"> -->
<!-- 				<label >修改日期:</label><br> -->
<%-- 				<input name="modifiedAt"  value=<c:out value="${foreachAstore.get().modifiedAt}" />  class="st2"/> --%>
<!-- 			</div> -->


			<div class="st1">
				<input type="submit" name="submit" value="送出"/>
			</div>

		</fieldset>
</form:form>		


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>