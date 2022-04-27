<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Quixlab - Bootstrap Admin Dashboard Template by
	Themefisher.com</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<!-- Custom Stylesheet -->
<link
	href="${contextRoot}/BackPage/css/ReservationStore/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link href="${contextRoot}/BackPage/css/ReservationStore/style.css"
	rel="stylesheet">

<jsp:include page="IncludePage/css.jsp" />

</head>

<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

	<div id="main-wrapper">

		<div class="content-body">
	
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card" style="overflow-x: scroll;">
							<div class="card-body">
								<h4 class="card-title">實體店面</h4>
								<div class="table-responsive">
								  <div>
								  
								  <form id='newData' action="" method="get">
		                         		<input class="" name="" value="" type="hidden"/>
		                         		<input id="testname" type="button" value="新增" onclick=""/> 
		                           </form>  
								  
								  <form id='delData' action="" method="get">
		                         		<input class="" name="" value="" type="hidden"/>
		                         		<input id="testname" type="button" value="刪除" onclick=""/> 
		                           </form>    
								  
								  
								  
									 <table
										class="table table-striped table-bordered zero-configuration">
										<thead>
											<tr>
												<th class="checkbox-cell">    
									                <label class="checkbox">
											            <input type="checkbox">
											                <span class="check"></span>
									                </label>
											  
							                       </th>
													<th>店家編號</th>
													<th>部門編號</th>
													<th>店家名</th>
													<th>店家電話</th>
													<th>店家地址</th>
													<th>營業時間</th>
													<th>建立日期</th>
													<th>修改日期</th>
													<th>檢視</th>
													<th>刪除</th>
												</tr>
											</thead>
			<tbody>										
					<c:forEach var="pageStore" items="${pageStore1.content}" varStatus="vs">
							<tr id="Id${pageStore.storeId}">
							
							     <td class="checkbox-cell">
							         <label class="checkbox">
											<input type="checkbox"><span class="check"></span>
									 </label>
								 </td>
		                         <td id="storeId${pageStore.storeId}"><c:out value="${pageStore.storeId}" />  </td>  
		                         <td><c:out value="${pageStore.storeDepartmentNumber}" /> </td> 
		                         <td><c:out value="${pageStore.storeName}" /> </td>
		                         <td><c:out value="${pageStore.storePhone}" /> </td> 
		                         <td><c:out value="${pageStore.storeAddress}" /> </td>
		                         <td><c:out value="${pageStore.storeOpendate}" /> </td>
		                         <td><c:out value="${pageStore.createdAt}" /> </td>
		                         <td><c:out value="${pageStore.modifiedAt}" /> </td>
		                         
<!--  storeIDnumberView和Del  連結 ReservationStoreController 第94行的getStoreById方法 -->
<%-- ${vs.count}的vs是69行varStatus="vs",count是計數,為了抓到第幾個button --%>
		                         <td><form id='formStoreID${vs.count}' action="${contextRoot}/backstage/ReservationStore/getstoreId1" method="get">
		                         		<input class="${vs.count}" name="storeIDnumberView" value="${vs.count}" type="hidden"/>
		                         		<input id="testname" type="button" value="檢視" onclick="show(${pageStore.storeId})"/> 
		                             </form>  
		                           
		                          <td><form id='formStoreID${vs.count}' action="ReservationStore/get" method="get">
		                         		<input class="${vs.count}" name="storeIDnumberDel" value="${vs.count}" type="hidden"/>
		                         		<input id="testname" type="button" value="刪除" onclick="show(${pageStore.storeId})"/> 
		                             </form>    
		                                                                                                    
							</tr>	
					</c:forEach>																																	
	        </tbody>
					  <tfoot>
								<tr>									
									<th class="checkbox-cell">    
							                <label class="checkbox">
									            <input type="checkbox">
									                <span class="check"></span>
							                </label>									  
				                            </th>
											
												<th>店家編號</th>
												<th>部門編號</th>
												<th>店家名</th>
												<th>店家電話</th>
												<th>店家地址</th>
												<th>營業時間</th>
												<th>建立日期</th>
												<th>修改日期</th>
												<th>檢視</th>
												<th>刪除</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
				
<!-- 顯示page頁數按鈕				 -->
	<div class="row totalpages">
		<div class="col-9">
		   <c:forEach var="pageNumber" begin="1" end="${pageStore1.totalPages}">
		   
		   <c:choose>
		     <c:when test="${pageStore1.number != pageNumber-1 }">
		        <a href="${contextRoot}/backstage/ReservationStore?p=${pageNumber}"><c:out value="${pageNumber}" /> </a>
		     </c:when>
		     
		     <c:otherwise>
		       <c:out value="${pageNumber}" />
		     </c:otherwise>

		   </c:choose>
		   
		   <c:if test="${pageNumber != pageStore1.totalPages}" >
		    |
		   </c:if>
		   
		   </c:forEach>
	    </div>
	</div>
				
									
		  </div>			
	 </div>		
</div>
	
    
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
<script>
// 為了在檢視或刪除時根據"id"去刪除,要先抓到storeId的前置作業
//formStoreID 連結 90行前後的form id欄位
function show(count){
	document.getElementById("formStoreID"+count).submit();
}
</script>
    
       
	<script src="${contextRoot}/BackPage/js/ReservationStore/common.min.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/custom.min.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/settings.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/gleek.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/styleSwitcher.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/jquery.dataTables.min.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/dataTables.bootstrap4.min.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/datatable-basic.min.js"></script>

</body>

</html>