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
			<th hidden style="text-align: center">ID
			<th >姓名
			<th >信箱
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
							
							
							<td>${backmessages.messageEmail}</td>
							<td><input hidden type="text" name="messageQuest"
								value="${backmessages.messageQuest}" />${backmessages.messageQuest}</td>
							<td><input hidden type="text" name="messagetext"
								value="${backmessages.messagetext}" />${backmessages.messagetext}</td>
							<td><input class="row justify-content-center"
								id="btn${s.count}" type="button" value="刪除" name="delebtn"
								onclick=deleteForm(${backmessages.messageId})></td>
             <%--  <td><input class="row justify-content-center"
                id="btn${s.count}" type="button" value="回覆" name="ansbtn"
                onclick=answerquest(${backmessages.messageId})></td> --%>



						</tr>
					</form>
				</c:forEach>
				<!-- update Modal-->
        <div id="insertDialog" hidden>
          <form id="DialogForm" method="post">
            <div class="modal-body">
              Id:&nbsp <input id="dialogId" name="cusmesId" readonly />
            </div>
            <div class="modal-body">
              姓名:&nbsp <input id="dialogname" name="cusmesname" />
            </div>
            <div class="modal-body">
              信箱:&nbsp<input id="dialogemail" name="cusmesemail" />
            </div>
            <div class="modal-body">
              問題:&nbsp<input id="dialogquest" name="cusmesquest" />
            </div>
            <div class="modal-body">
              留言內容:&nbsp<input id="dialogtext" name="cusmestext" />
            </div>
          </form>
        </div>
        <!--end of update Modal-->

        <!-- update Modal-->
        <div class="modal fade" id="triggerModal" tabindex="-1" role="dialog"
aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">請選擇欲更改的欄位</h5>
                <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">Select "Logout" below if you are
                ready to end your current session.</div>
              <form id="ansForm" method="post">
                <div class="modal-body">
                  Id:&nbsp <input id="modalId" name="cusmesId" readonly />
                </div>
                <div class="modal-body">
                  姓名:&nbsp<input id="modalName" name="cusmesname" />
                </div>
                <div class="modal-body">
                  信箱:&nbsp<input id="modalemail" name="cusmesemail" type="file" />
                </div>
                <div class="modal-body">
                  問題:&nbsp<input id="modalquest" name="cusmesquest" />
                </div>
                <div class="modal-body">
                  留言內容:&nbsp<input id="modaltext" name="cusmestext" />
                </div>
                
              </form>

              <div class="modal-footer">
                <button class="btn btn-secondary" type="button"
                  data-dismiss="modal">取消</button>

                <button id="confirmUpdateBtn" class="btn btn-primary">更新</button>
              </div>
            </div>
          </div>
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

  function answerquest(count){
    $("#modalId").val(count);
		$("#modalName").val($("#cusmesname"+count).val());
		$("#modalemail").val($("#cusmesemail"+count).val());
		$("#modalquest").val($("#cusmesquest"+count).val());	
		$("#modaltext").val($("#cusmestext"+count).val());
		$("#confirmUpdateBtn").click(function(){
			var yes = confirm("確認更新此筆紀錄?");
			if(yes){
				document.getElementById("ansForm").action = '';
				document.getElementById("ansForm").submit();
			} else{}
		})

  }
 		
	

	
   
		
	</script>
	<div id="dialog-form" title="視窗">
		<p></p>
	</div>



</body>
</html>