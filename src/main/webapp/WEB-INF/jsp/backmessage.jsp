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
	
	<div>
		<h1>留言管理kkkkkkk</h1>

		<h2>this is test ting1</h2>
	</div>
		<table class="table table-hover" style="text-align: center">
        <thead>
            <tr>
                <th  style="text-align: center"> <input id="selectAll" type="checkbox" onclick="seltAll()"></th>
                <th style="text-align: center">ID</th>
                <th style="text-align: center">用户名</th>
                <th style="text-align: center">留言内容</th>
            </tr>
        </thead>
 </table>


	<jsp:include page="IncludePage/script.jsp" />
</body>
</html>