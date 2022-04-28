<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<table class="row justify-content-center">
	<tr><td>圖片</td><td>資訊</td><td>數量</td><td>金額</td><td>小計</td></tr>
			
	</table>
<div class="row justify-content-center">

<input  href="${contextRoot}/ShopCart" type="button" value="新增商品" />

<input value="刪除" type="button"/>
</div>


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>


