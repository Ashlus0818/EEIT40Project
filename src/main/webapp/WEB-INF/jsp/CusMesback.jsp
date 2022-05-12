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
<script src="https://smtpjs.com/v3/smtp.js"></script>
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
			<th hidden style="text-align: center">ID
			<th>姓名
			<th>信箱
			<th style="text-align: center">問題
			<th style="text-align: center">留言内容 <c:forEach
					items="${list.content}" var="backmessages" varStatus="s">
					<form id='CusFormId${backmessages.messageId}'
						action="CusMesbacks/delete" method="get">
						<tr>
							<input hidden type="text" name="messageId"
								value="${backmessages.messageId}" />
							<td hidden id="mesId${backmessages.messageId}">${backmessages.messageId}</td>

							<td>${backmessages.messageName}</td>


							<td><input hidden type="text" name="messageEmail"
								value="${backmessages.messageEmail}" /><a href="mailto:${backmessages.messageEmail}">${backmessages.messageEmail}</a></td>
							<td><input hidden type="text" name="messageQuest"
								value="${backmessages.messageQuest}" />${backmessages.messageQuest}</td>
							<td><input hidden type="text" name="messagetext"
								value="${backmessages.messagetext}" />${backmessages.messagetext}</td>
							<td><input class="row justify-content-center"
								id="btn${s.count}" type="button" value="刪除" name="delebtn"
								onclick=deleteForm(${backmessages.messageId})></td>
							<td><input class="d-sm-flex align-items-center justify-content-between mb-4"
								id="ReplyBtn" type="button" value="回覆" name="ansbtn"
								onclick="sendEmail()"></td>
	


						</tr>
					</form>
				</c:forEach> <!-- update Modal-->
	<div id="insertDialog" hidden>
		<form id="ReplyForm" method="post">
			<div class="modal-body">
				寄件人:&nbsp<input id="dialogformEmail" name="formEmail" />
			</div>
			<div class="modal-body">
				收信人:&nbsp<input id="dialogtoEmail" name="toEmail" />
			</div>
			<div class="modal-body">
				回覆訊息:&nbsp<textarea rows="10" cols="20" id="dialogReplyMes" name="ReplyMes" /></textarea>
			</div>
		</form>
	</div>
	</table>

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
	};	

  

  $("#insertDialog").dialog({
		modal: true,
		title: "ReplyEmail",
		buttons: {
			ok:function() {
				var yes = confirm("確認傳送郵件?");
				if(yes){
					document.getElementById("ReplyForm").action = 'backtaskes/insert';
					document.getElementById("ReplyForm").submit();
				} else{}
			},
		cancle:function() {
				$(this).dialog("close");
			}
		},
		autoOpen:false
	});
  $("#ReplyBtn").click(function(){
		$("#insertDialog").removeAttr('hidden').dialog('open');

	});	

  
  
  
  
	</script>
</body>
</html>