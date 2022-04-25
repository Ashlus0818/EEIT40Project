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
	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">

			<!-- row -->

			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card" style="overflow-x: scroll;">
							<div class="card-body">
								<h4 class="card-title">實體店面</h4>
								<div class="table-responsive">
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
											</tr>
										</thead>
										<tbody>
										
						<c:forEach var="pageStore" items="${pageStore1.content}">
					<tr>
					
					     <td class="checkbox-cell">
					         <label class="checkbox">
									<input type="checkbox"><span class="check"></span>
							 </label>
						 </td>

                         <td><c:out value="${pageStore.storeId}" />  </td>  
                         <td><c:out value="${pageStore.storeDepartmentNumber}" /> </td> 
                         <td><c:out value="${pageStore.storeName}" /> </td>
                         <td><c:out value="${pageStore.storePhone}" /> </td> 
                         <td><c:out value="${pageStore.storeAddress}" /> </td>
                         <td><c:out value="${pageStore.storeOpendate}" /> </td>
                         <td><c:out value="${pageStore.createdAt}" /> </td>
                         <td><c:out value="${pageStore.modifiedAt}" /> </td>
                                                     
					</tr>	
						 </c:forEach>
							
																	
<!-- 											<tr> -->
<!-- 												<td>Airi Satou</td> -->
<!-- 												<td>Accountant</td> -->
<!-- 												<td>Tokyo</td> -->
<!-- 												<td>33</td> -->
<!-- 												<td><div class="date-new">2012/03/29</div></td> -->
<!-- 												<td>$162,700</td> -->
<!-- 											</tr> -->
										
										</tbody>
										<tfoot>
											<tr>
												<th>店家編號</th>
												<th>部門編號</th>
												<th>店家名</th>
												<th>店家電話</th>
												<th>店家地址</th>
												<th>營業時間</th>
												<th>建立日期</th>
												<th>修改日期</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
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
			<!-- #/ container -->
		</div>
		<!--**********************************
            Content body end
        ***********************************-->

	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<script src="${contextRoot}/BackPage/js/ReservationStore/common.min.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/custom.min.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/settings.js"></script>
	<script src="${contextRoot}/BackPage/js/ReservationStore/gleek.js"></script>
	<script
		src="${contextRoot}/BackPage/js/ReservationStore/styleSwitcher.js"></script>

	<script
		src="${contextRoot}/BackPage/js/ReservationStore/jquery.dataTables.min.js"></script>
	<script
		src="${contextRoot}/BackPage/js/ReservationStore/dataTables.bootstrap4.min.js"></script>
	<script
		src="${contextRoot}/BackPage/js/ReservationStore/datatable-basic.min.js"></script>

</body>

</html>