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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<link
	href="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

	<div>
		<h1>客服 留言管理</h1>
	</div>
	<table id="myTable" class="table table-sm table-dark"
		style="text-align: center">
		<tr>
			<th style="text-align: center">ID
			<th style="text-align: center">姓名
			<th style="text-align: center">信箱
			<th style="text-align: center">問題
			<th style="text-align: center">留言内容 <c:forEach
					items="${list.content}" var="backmessages" varStatus="s">
					<form id='CusFormId${backmessages.messageId}'
						action="CusMesbacks/delete" method="get">
						<tr>
							<input hidden type="text" name="messageId"
								value="${backmessages.messageId}" />
							<td id="mesId${backmessages.messageId}">${backmessages.messageId}</td>
							<td>${backmessages.messageName}</td>
							<td>${backmessages.messageEmail}</td>
							<td><input type="text" name="messageQuest"
								value="${backmessages.messageQuest}" /></td>
							<td><input type="text" name="messagetext"
								value="${backmessages.messagetext}" /></td>
							<td><input class="btn btn-danger btn-circle btn-lg"
								id="btn${s.count}" type="button" value="del" name="delebtn"
								onclick=deleteForm(${backmessages.messageId})></td>




						</tr>
					</form>
				</c:forEach>
	</table>
	<%--  onclick="return confirm('確認刪除')" href="${contextRoot}/backmessage/DeleteCusMessage?id=${CustomerMessage.messageId}" onclick="return confirm('確認刪除')" <!--  -->
 --%>
	<jsp:include page="IncludePage/script.jsp" />
	<script charset="utf8"
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script
		src="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script>
	
	
	function deleteForm(count){
		var yes = confirm("確認刪除此筆紀錄?");
		if(yes){
		   document.getElementById('CusFormId'+count).action="${contextRoot}/CusMesbacks/DeleteMessage";
 		document.getElementById('CusFormId'+count).submit();
		} else{}
 		
	}
	
     
     	
		
	</script>
	<div id="dialog-form" title="視窗">
		<p></p>
	</div>



</body>
</html>