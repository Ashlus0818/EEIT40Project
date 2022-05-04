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
.st1 {
margin: 10px;

}


.st2 {
height:40px ;
width:800px;
}

.form{
  margin: 20px;
  border:3px solid gray;	
  height:800px ;
}

.button{
  margin: 10px;
}


</style>

<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />
	
<form id="insertForm" method="POST" action=""  class="form">	
<!-- 			<div class="st1"> -->
<!-- 				<label >店家編號:</label><br> -->
<!-- 				<input id="storeId" name="storeId" class="st2"  /> -->
<!-- 			</div> -->

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

			<!-- <div class="st1">
				<label >建立日期:</label><br>
				<input id="createdAt" name="createdAt" value="" class="st2"/>			
			</div> -->
	
			<!-- <div class="st1">
				<label >修改日期:</label><br>
				<input id="modifiedAt" name="modifiedAt" value="" class="st2"/>  
			</div> -->


			<div class="button">
				<input id="sendBtn" type="button" value="送出"/>
				
				<a href="${contextRoot}/backStage/CancelReturnStore"> <input type="button" value="取消"></a>
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