<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.* ,com.eeit40.springbootproject.model.CustomerMessage"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="IncludePage/css.jsp" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

	<div>
		<h1>客服 留言管理</h1>
	</div>
	<table  id="myTable" class="table table-hover" style="text-align: center">
		<tr>
			<th style="text-align: center">ID</th>
			<th style="text-align: center">姓名</th>
			<th style="text-align: center">信箱</th>
			<th style="text-align: center">問題</th>
			<th style="text-align: center">留言内容</th>
		</tr>

		<c:forEach items="${list.content}" var="backmessages" varStatus="s">
		
			<tr>
				<td id="mesId${s.count}">${backmessages.messageId}</td>
				<td>${backmessages.messageName}</td>
				<td>${backmessages.messageEmail}</td>
				<td><input type="text" disabled
					value="${backmessages.messageQuest}" /></td>
				<td><input type="text" disabled
					value="${backmessages.messagetext}" /></td>
				<td ><input class=".btn-circle" id="btn${s.count}" type="button" value="刪除" ></td>
			</tr>

		</c:forEach>
		
	</table>
	<%--  onclick="return confirm('確認刪除')" href="${contextRoot}/backmessage/DeleteCusMessage?id=${CustomerMessage.messageId}" onclick="return confirm('確認刪除')" <!--  -->
 --%>
	<jsp:include page="IncludePage/script.jsp" />
	<script charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"></script>
	<script>
	function btn(count){
		var mesId="mesFormId"+count;
		var yes = confirm("確認刪除此筆紀錄?");
		if(yes){
			document.getElementById(mesId).submit();
		} else{}
	}
		$(document).ready(function(){
	        $('#myTable').DataTable();
	    });
	</script>



	</script>
</body>
</html>