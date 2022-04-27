<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/jsp/IncludePage/css.jsp" />
<link href="${contextRoot}/BackPage/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/IncludePage/sidebar.jsp" />
	<jsp:include page="/WEB-INF/jsp/IncludePage/topbar.jsp" />
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
		<a href="#"
			class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
			class="fas fa-download fa-sm text-white-50"></i> 新增</a>
	</div>


	<table class="table table-bordered border-primar" border="1">
		<tr style="background-color: #a8fefa">
			<th>Id
			<th>發文者
			<th>表單名稱
			<th>發文時間 <c:forEach var="backTaskes" items="${page.content}"
					varStatus="vs">
					<form id='taskFormId${vs.count}' action="backtaskes/delete"
						method="post">
						<tr>
							<td><input id="taskId${vs.count}" name="num" type="text"
								value="${backTaskes.id}" /></td>
							<td><input type="text" value="${backTaskes.name}" /></td>
							<td><input type="text" value="${backTaskes.title}" /></td>
							<td><input type="text" value="${backTaskes.create_at}" /></td>
							<td><input
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="deleteButtonId${vs.count}" type="button" value="刪除"
								onclick="deleteAlert(${vs.count})"></td>
							<td><input
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="insertButtonId${vs.count}" type="button" value="新增"></td>
						</tr>
					</form>
				</c:forEach>
	</table>

	<div id="testdialogid"><input type="text"></div>



	<%-- <script src="${contextRoot}/BackPage/js/jquery-3.6.0.js"></script> --%>
	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script>
function deleteAlert(count){
		var formId="taskFormId"+count;
		var yes = confirm("確認刪除此筆紀錄?");
		if(yes){
			document.getElementById(formId).submit();
		} else{}
	}
$("input[id^=insertButtonId]").click(function(){
		$("#testdialogid").dialog()
	});
	
</script>

</body>
</html>