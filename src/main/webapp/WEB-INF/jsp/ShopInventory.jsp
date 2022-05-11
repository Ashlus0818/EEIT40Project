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
<title>庫存管理</title>
<jsp:include page="IncludePage/css.jsp" />
<link
	href="${contextRoot}/BackPage/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet" />

</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />


	<div id="">
		<h3>庫存管理</h3>
		<table class="table table-striped table-bordered zero-configuration">
			<thead>
				<tr>

					<th>ID</th>
					<th>產品名稱</th>
					<th>圖片</th>
					<th>產地</th>
					<th>價錢</th>
					<th>分類</th>
					
				</tr>
			</thead>

			<thead>

				<c:forEach var="Product" items="${page.content}" varStatus="vs">
					<form id='taskForm${Product.id}' action="" method="post">
						<tr>
							<td><input id="task${Product.id}" name="Inventoryid"
								type="text" value="${Product.id}" /></td>

							<td><input id="taskName${Product.id}" name="InventoryName"
								type="text" value="${Product.iName}" /></td>

							<td><input id="taskTitle${Product.id}" name="InventoryImg"
								type="text" value="${Product.iImg}" /></td>

							<td><input id="taskCreateAt${Product.id}"
								name="InventoryPlace" type="text" value="${Product.iPlace}" /></td>

							<td><input id="taskCreateAt${Product.id}"
								name="InventoryPrice" type="text" value="${Product.iprice}" /></td>
								
							<td><input id="taskCategory${Product.id}"
								name="InventoryCategory" type="text" value="${Product.category}" /></td>

							<td><input
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="deleteButton${Product.id}" type="button" value="刪除"
								onclick="deleteForm(${Product.id})"></td>
								<td><input data-toggle="modal" data-target="#triggerModal"
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="updateButton${Product.id}" type="button" value="更新"
								onclick="updateBox(${Product.id})"></td>
								</tr>
								</form>
								</c:forEach>

							<!-- update Modal-->
							<div id="insertDialog" hidden>
								<form id="insertForm" method="post">
									<div class="modal-body">
										Id:&nbsp <input id="dialogBodyId" name="InventoryId" readonly />
									</div>
									<div class="modal-body">
										產品名稱:&nbsp <input id="dialogBodyImg" name="InventoryName" />
									</div>
									<div class="modal-body">
										圖片:&nbsp<input id="dialogBodyName" name="InventoryImg" />
									</div>
									<div class="modal-body">
										產地:&nbsp<input id="dialogBodyPlace" name="InventoryPlace" />
									</div>
									<div class="modal-body">
										價錢:&nbsp<input id="dialogBodyPrice" name="InventoryPrice" />
									</div>
									<div class="modal-body">
										分類:&nbsp<input id="dialogBodyCategory" name="InventoryCategory" />
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
										<form id="updateForm" method="post">
											<div class="modal-body">
												Id:&nbsp <input id="modalBodyId" name="InventoryId" readonly />
											</div>
											<div class="modal-body">
												產品名稱:&nbsp<input id="modalBodyName" name="InventoryName" />
											</div>
											<div class="modal-body">
												圖片:&nbsp<input id="modalBodyImg" name="InventoryImg" type="file" />
											</div>
											<div class="modal-body">
												產地:&nbsp<input id="modalBodyPlace" name="InventoryPlace" />
											</div>
											<div class="modal-body">
												價錢:&nbsp<input id="modalBodyPrice" name="InventoryPrice" />
											</div>
											<div class="modal-body">
												分類:&nbsp<input id="modalBodyCategory" name="InventoryCategory" />
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





				
			</thead>
				
		</table >
		<table class="table table-striped table-bordered zero-configuration">
		<h3>商品新增</h3>
		<thead>
			<tr>
			<form action="${contextRoot}/insertInventory" method="get" >
			<th><input type="text" placeholder="會自動載入ID"  readonly></input></th>
				<th><input name="t1" type="text" placeholder="請輸入產品名稱" value=""></input></th>
				<th><input name="t2" type="file" placeholder="請選擇要載入的圖片" value=""></input></th>
				<th><input name="t3" type="text" placeholder="輸入產地" value=""></input></th>
				<th><input name="t4" type="text" placeholder="輸入價錢" value=""></input></th>
				<th><input name="t5" type="text" placeholder="增加分類" value=""></input></th>
				<th><input name="t6" type="submit" name="AAA" value="新增" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"/></th>
				<th><input name="t7" type="reset" name="BBB" value="清空" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"/></th>
			</form>
			</tr>
		</thead>
		
		</table>	
		
<!-- 		分頁 -->
		<div class="row justify-content-center">
		<div class="col-9">
		<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
		<a class=" hvr-shutter-out-horizontal" href="${contextRoot}/addShopInventory?p=${pageNumber}"><c:out value="${pageNumber}" /></a>
		</c:forEach>	
		
		</div>
		</div>			
	</div>
	
	<jsp:include page="IncludePage/script.jsp" />
	

	
	<script>
	function deleteForm(number) {
		console.log(number);
		var yes = confirm("是否刪除此筆紀錄?");
		if(yes){document.getElementById("taskForm"+number).action = 'ShopInventory/delete';
		document.getElementById("taskForm"+number).submit();}
		
	}
	
	function updateBox(num){
		console.log(num);
		console.log($("#modalBodyId").val(num));
		$("#modalBodyId").val(num);
		$("#modalBodyName").val($("#InventoryName"+num).val());
		$("#modalBodyImg").val($("#InventoryImg"+num).val());
		$("#modalBodyPlace").val($("#InventoryPlace"+num).val());	
		$("#modalBodyPrice").val($("#InventoryPrice"+num).val());
		$("#modalBodyPrice").val($("#InventoryPrice"+num).val());
		$("#confirmUpdateBtn").click(function(){
			var yes = confirm("確認更新此筆紀錄?");
			if(yes){
				document.getElementById("updateForm").action = 'ShopInventoey/update';
				document.getElementById("updateForm").submit();
			} else{}
		})
	};
	
	</script>
</body>
</html>