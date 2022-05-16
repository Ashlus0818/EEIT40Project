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
<title>商品</title>
<jsp:include page="IncludePage/css.jsp" />


</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />
	
	
	<div id="" >
	<h3>產品管理</h3>
	<table class="table table-striped table-bordered zero-configuration">
	
		
<thead>
			<tr>
				<th>圖片</th>
				<th>產品名稱</th>
				<th>詳細介紹</th>
				<th>產地</th>
				<th>價錢</th>
				<th></th>
			</tr>
		</thead>

		<thead>
			<tr>
			<form action="${contextRoot}/AddLiquor" method="get" >
			<th><input type="file" placeholder="載入圖片" ></input></th>
				<th><input name="t1" type="text" placeholder="輸入產品名稱" value=""></input></th>
				<th><input name="t2" type="text" placeholder="詳細介紹" value=""></input></th>
				<th><input name="t3" type="text" placeholder="輸入產地" value=""></input></th>
				<th><input name="t4" type="text" placeholder="輸入價錢" value=""></input></th>
				<th><input name="t5" type="submit" name="AAA" value="確定"/>
				<input name="t6" type="reset" name="BBB" value="清空"/></th>
			</form>
			</tr>
		</thead>

		
	
	</table>
	


	<div class="row justify-content-center">
		<input href="${contextRoot}/ShopCart" type="button" value="新增商品" />
	</div>
	</div>
	


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>


