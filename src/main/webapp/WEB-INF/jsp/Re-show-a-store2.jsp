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

	
	
<form:form class="form" method="POST" modelAttribute="modAtt-Re-show-a-store1">	
		
		<fieldset class="fieldset">
			<legend>店家資訊</legend>
			<div class="st1">
				<label >店家編號:</label><br>
				<form:input name="storeId" path="storeId" /> 
			
			</div>

			<div class="st1">
				<label >店家部門編號:</label><br>
				<form:input name="storeDepartmentNumber" path="storeDepartmentNumber"  class="st2" />

			</div>

			<div class="st1">
				<label >店家名稱:</label><br>
				<form:input name="storeName" path="storeName"  class="st2" />
			</div>

			<div class="st1">
				<label >店家電話:</label><br>
				<form:input name="storePhone" path="storePhone"  class="st2" /> 
			</div>
			
			
			<div class="st1">
				<label >店家地址:</label><br>
				<form:input name="storeAddress" path="storeAddress"   class="st2"/>
			</div>
			
			<div class="st1">
				<label >店家營業時間:</label><br>
				<form:input name="storeOpendate" path="storeOpendate"  class="st2"/> 
			</div>

			<div class="st1">
				<label >建立日期:</label><br>
				<form:input name="createdAt" path="createdAt" class="st2" /> 
			</div>
	
			<div class="st1">
				<label >修改日期:</label><br>
				<form:input name="modifiedAt"  path="modifiedAt"  class="st2"/>  
			</div>


			<div class="st1">
				<form action="upload" method="post" enctype="multipart/form-data">
					選擇圖片:<input type="file" name="file" accept="image/*" /> <br>
					<input type="submit" value="立刻上傳">

				</form>


			</div><br><br><br><br>



			<div class="st1">
				<input type="submit" name="submit" value="送出"/>
				
				<a href="${contextRoot}/backStage/CancelReturnStore"> <input type="button" value="取消"></a>
			</div>

		</fieldset>
</form:form>		


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>