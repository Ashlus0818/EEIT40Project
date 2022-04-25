<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/pageheading.jsp" />
	
<div class="container">

<p />

<a href="http://localhost:8080/myapp/Forumpostlist">文章列表</a>

<p />

 <div class="col-6">
  <div class="card">
  <div class="card-header">
   發布文章
  </div>
  <div class="card-body">
<form:form class="form" method="POST" modelAttribute="forumpost">
<div class="imput-group">
標題：
<form:textarea path="title" class="form-control"></form:textarea>
內容：
<form:textarea path="context" class="form-control"></form:textarea>
</div>
<input type="submit" name="submit" value="新增訊息">
</form:form>
  </div>
</div>
</div>
</div>



	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
</body>
</html>