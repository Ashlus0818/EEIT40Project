<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>後台首頁</title>
<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />

	<div>
		<h1>Index page</h1>
<!-- 圖片 -->
<input data-toggle="modal" data-target="#testmod"
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
								id="" type="button" value="圖片"
								onclick="">
<div class="modal fade" id="testmod" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">圖片</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<form id="updateForm" method="post">
					<div class="modal-body">
						<img src="${contextRoot}/BackPage/img/HintPic1.png" style="width: 465px;height: 138px;"/>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- 圖片 -->
	</div>
<input id="qqq1" value="${pieNum1}" type="hidden"/>
<input id="qqq2" value="${pieNum2}" type="hidden"/>
<input id="qqq3" value="${pieNum3}" type="hidden"/>
	

		<!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                管理員</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${authorityNum1}人</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                經理</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${authorityNum2}人</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">客戶(目標10人)
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${authorityNum3}人</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: ${authorityNum3}0%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                    </div>


<!-- Page Wrapper -->
	<div id="wrapper">

<!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">客服問題種類</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

		<!-- Pie Chart -->
		<div class="col-xl-4 col-lg-5">
			<div class="card shadow mb-4">
				<!-- Card Header - Dropdown -->
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary">商店分布</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<div class="dropdown-header">Dropdown Header:</div>
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4 pb-2">
						<canvas id="myPieChart"></canvas>
					</div>
					<div class="mt-4 text-center small">
						<span class="mr-2"> <i class="fas fa-circle text-primary"></i>
							台北市
						</span> <span class="mr-2"> <i class="fas fa-circle text-success"></i>
							新北市
						</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
							其他
						</span>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- End of Content Wrapper -->
 <!-- Content Column --> 
<!--                         <div class="col-lg-6 mb-4"> -->

<!--                             Project Card Example -->
<!--                             <div class="card shadow mb-4"> -->
<!--                                 <div class="card-header py-3"> -->
<!--                                     <h6 class="m-0 font-weight-bold text-primary">Projects</h6> -->
<!--                                 </div> -->
<!--                                 <div class="card-body"> -->
<!--                                     <h4 class="small font-weight-bold">Server Migration <span -->
<!--                                             class="float-right">20%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" -->
<!--                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Sales Tracking <span -->
<!--                                             class="float-right">40%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" -->
<!--                                             aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Customer Database <span -->
<!--                                             class="float-right">60%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar" role="progressbar" style="width: 60%" -->
<!--                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Payout Details <span -->
<!--                                             class="float-right">80%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar bg-info" role="progressbar" style="width: 80%" -->
<!--                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Account Setup <span -->
<!--                                             class="float-right">Complete!</span></h4> -->
<!--                                     <div class="progress"> -->
<!--                                         <div class="progress-bar bg-success" role="progressbar" style="width: 100%" -->
<!--                                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->

                            

<!--                         </div> -->
 <!-- Color System -->
<!--                             <div class="row"> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-primary text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Primary -->
<!--                                             <div class="text-white-50 small">#4e73df</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-success text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Success -->
<!--                                             <div class="text-white-50 small">#1cc88a</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-info text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Info -->
<!--                                             <div class="text-white-50 small">#36b9cc</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-warning text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Warning -->
<!--                                             <div class="text-white-50 small">#f6c23e</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-danger text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Danger -->
<!--                                             <div class="text-white-50 small">#e74a3b</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-secondary text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Secondary -->
<!--                                             <div class="text-white-50 small">#858796</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-light text-black shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Light -->
<!--                                             <div class="text-black-50 small">#f8f9fc</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-lg-6 mb-4"> -->
<!--                                     <div class="card bg-dark text-white shadow"> -->
<!--                                         <div class="card-body"> -->
<!--                                             Dark -->
<!--                                             <div class="text-white-50 small">#5a5c69</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
	<jsp:include page="IncludePage/script.jsp" />
	<script>

var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["台北市", "新北市", "無"],
    datasets: [{
      data: [${storeNum1}, ${storeNum2}, 0],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});
</script>
</body>
</html>