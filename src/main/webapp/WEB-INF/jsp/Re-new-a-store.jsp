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


</style>

<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />
	
<<<<<<< HEAD
<form:form class="form" method="POST" action="" modelAttribute="modAtt-Re-new-a-store">	
		
		
<!-- 			<div class="st1"> -->
<!-- 				<label >店家編號:</label><br> -->
<%-- 				<form:input name="storeId" path="storeId" />  --%>
			
<!-- 			</div> -->
=======
<form id="insertForm" method="POST" action="">	
			<div class="st1">
				<label >店家編號:</label><br>
<!-- 				<input id="storeId" name="storeId" class="st2"/> -->
			</div>
>>>>>>> b1312ed8ea7c072f206c01785fcd6b127ac4fd3f

			<div class="st1">
				<label >店家部門編號:</label><br>
				<input id="storeDepartmentNumber" name="storeDepartmentNumber"  class="st2"/>

			</div>

			<div class="st1">
				<label >店家名稱:</label><br>
				<input id="storeName" name="storeName" value="" class="st2"/>
			</div>

			<div class="st1">
				<label >店家電話:</label><br>
				<input id="storePhone" name="storePhone" value="" class="st2"/> 
			</div>
			
			
			<div class="st1">
				<label >店家地址:</label><br>
				<input id="storeAddress" name="storeAddress" value="" class="st2"/>
			</div>
			
			<div class="st1">
				<label >店家營業時間:</label><br>
				<input id="storeOpendate" name="storeOpendate" value="" class="st2"/> 
			</div>

			<div class="st1">
				<label >建立日期:</label><br>
<<<<<<< HEAD
<%-- 				<form:input name="createdAt" path="createdAt"  class="st2"/>			 --%>
			</div>
	
<!-- 			<div class="st1"> -->
<!-- 				<label >修改日期:</label><br> -->
<%-- 				<form:input name="modifiedAt" path="modifiedAt"  class="st2"/>   --%>
<!-- 			</div> -->
=======
<!-- 				<input id="createdAt" name="createdAt" value="" class="st2"/>			 -->
			</div>
	
			<div class="st1">
				<label >修改日期:</label><br>
<!-- 				<input id="modifiedAt" name="modifiedAt" value="" class="st2"/>   -->
			</div>
>>>>>>> b1312ed8ea7c072f206c01785fcd6b127ac4fd3f


			<div class="st1">
				<input id="sendBtn" type="button" value="送出"/>
			</div>
</form>
	
	
	
<script>

</script>
	<jsp:include page="IncludePage/script.jsp" />
	
<script>
	$("#sendBtn").click(function(){
		console.log($("#modifiedAt").val());
// 		$("#insertForm").attr("action", "/backstage/ReservationStore/insert");
// 		$("insertForm").submit();
		document.getElementById("insertForm").action = '${contextRoot}/backstage/ReservationStore/insert';
		document.getElementById("insertForm").submit();
	})
</script>

</body>
</html>