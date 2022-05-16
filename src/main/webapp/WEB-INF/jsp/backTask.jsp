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
<title>查看任務</title>
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
		<a id="insertButton" href="#"
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
					<form id='taskForm${backTaskes.id}' action="" method="post" name="page">
						<tr>
							<td><input id="task${backTaskes.id}" name="taskId"
								type="text" value="${backTaskes.id}" /></td>
							<td><input id="taskName${backTaskes.id}" name="taskName"
								type="text" value="${backTaskes.name}" /></td>
							<td><input id="taskTitle${backTaskes.id}" name="taskTitle"
								type="text" value="${backTaskes.title}" /></td>
							<td><input id="taskCreateAt${backTaskes.id}"
								name="taskCreateAt" type="text" value="${backTaskes.create_at}" /></td>
							<td><input
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="deleteButton${backTaskes.id}" type="button" value="刪除"
								onclick="deleteAlert(${backTaskes.id})"></td>
							<td><input data-toggle="modal" data-target="#logoutModal"
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="updateButton${backTaskes.id}" type="button" value="修改"
								onclick="updateBox(${backTaskes.id})"></td>
						</tr>
					</form>
				</c:forEach>
	</table>
	
	<!-- insert dialog-->
	<div id="insertDialog" hidden>
		<form id="insertForm" method="post">
			<div class="modal-body">
				Id:&nbsp <input id="dialogBodyId" name="taskId" readonly />
			</div>
			<div class="modal-body">
				發文者:&nbsp<input id="dialogBodyName" name="taskName" />
			</div>
			<div class="modal-body">
				表單名稱:&nbsp<input id="dialogBodyTitle" name="taskTitle" />
			</div>
			<div class="modal-body">
				發文時間:&nbsp<input id="dialogBodyCreate_At" name="taskCreateAt" />
			</div>
			<input type="button" id="autoinsert" value="一鍵輸入"/>
		</form>
	</div>
	<!--end of insert dialog-->

	<!-- update Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">修改資料?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">修改完請按更新</div>
				<form id="updateForm" method="post">
					<div class="modal-body">
						Id:&nbsp <input id="modalBodyId" name="taskId" readonly />
					</div>
					<div class="modal-body">
						發文者:&nbsp<input id="modalBodyName" name="taskName" />
					</div>
					<div class="modal-body">
						表單名稱:&nbsp<input id="modalBodyTitle" name="taskTitle" />
					</div>
					<div class="modal-body">
						發文時間:&nbsp<input id="modalBodyCreate_At" name="taskCreateAt" />
					</div>
				</form>

				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>

					<button id="confirmUpdateBtn" class="btn btn-primary">更新</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end of update Modal-->
	






	<jsp:include page="/WEB-INF/jsp/IncludePage/script.jsp" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script
		src="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<script>

$("input[id^='task']").prop('readonly', true);
$("#insertDialog").dialog({
		modal: true,
		title: "新增",
		buttons: {
			ok:function() {
				var yes = confirm("確認新增此筆紀錄?");
				if(yes){
					document.getElementById("insertForm").action = 'backtaskes/insert';
					document.getElementById("insertForm").submit();
				} else{}
			},
		cancle:function() {
				$(this).dialog("close");
			}
		},
		autoOpen:false
	});
$("#insertButton").click(function(){
	$("#insertDialog").removeAttr('hidden').dialog('open');

});

function deleteAlert(count){
		var form="taskForm"+count;
		var yes = confirm("確認刪除此筆紀錄?");
		if(yes){
			document.getElementById(form).action = 'backtaskes/delete';
			document.getElementById(form).submit();
		} else{}
	};

function updateBox(num){
	$("#modalBodyId").val(num);
	$("#modalBodyName").val($("#taskName"+num).val());
	$("#modalBodyTitle").val($("#taskTitle"+num).val());
	$("#modalBodyCreate_At").val($("#taskCreateAt"+num).val());	
	$("#confirmUpdateBtn").click(function(){
		var yes = confirm("確認更新此筆紀錄?");
		if(yes){
			document.getElementById("updateForm").action = 'backtaskes/update';
			document.getElementById("updateForm").submit();
		} else{}
	})
};

// 一鍵輸入
$('#autoinsert').click(function(){
	$('#dialogBodyName').val("Jenny")
	$('#dialogBodyTitle').val("成績單")
});

</script>

</body>
</html>