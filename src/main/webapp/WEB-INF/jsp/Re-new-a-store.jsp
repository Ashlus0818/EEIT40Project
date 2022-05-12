<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Store Form</title>
  <style>
    .body {
      width: 950px;
      height: 915px;
      margin: auto;
    }

    .st1 {
      margin: 10px;
    }

    .st2 {
      height: 40px;
      width: 800px;
    }

    .form {
      margin: 20px;
      border: 1px solid gray;
      height: 800px;
    }

    .upload {
      position: absolute;
      bottom: 40%;
      right: 71%;
      width: 210px;
      /*  border: 3px solid red; */
      /* background-color: #dfa5a5; */
    }

    .button {
      position: absolute;
      bottom: 30%;
      right: 82%;
      margin: 10px;
    }
  </style>

  <link href="${contextRoot}/BackPage/css/bootstrap.min.css" rel="stylesheet" />
  <jsp:include page="IncludePage/css.jsp" />
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
  <jsp:include page="IncludePage/sidebar.jsp" />
  <jsp:include page="IncludePage/topbar.jsp" />
  <jsp:include page="IncludePage/pageheading.jsp" />

  <div class="body">
    <div id="main-wrapper">

      <div class="content-body">

        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <form id="insertForm" method="POST" action="" enctype="multipart/form-data" class="form">
                    <!-- 			<div class="st1"> -->
                    <!-- 				<label >店家編號:</label><br> -->
                    <!-- 				<input id="storeId" name="storeId" class="st2"  /> -->
                    <!-- 			</div> -->

                    <div class="st1">
                      <label>店家部門編號:</label><br>
                      <input id="storeDepartmentNumber" name="storeDepartmentNumber" class="st2" />

                    </div>

                    <div class="st1">
                      <label>店家名稱:</label><br>
                      <input id="storeName" name="storeName" value="" class="st2" />
                    </div>

                    <div class="st1">
                      <label>店家電話:</label><br>
                      <input id="storePhone" name="storePhone" value="" class="st2" />
                    </div>


                    <div class="st1">
                      <label>店家地址:</label><br>
                      <input id="storeAddress" name="storeAddress" value="" class="st2" />
                    </div>

                    <div class="st1">
                      <label>店家營業時間:</label><br>
                      <input id="storeOpendate" name="storeOpendate" value="" class="st2" />
                    </div>

                    <!-- <div class="st1">
				<label >建立日期:</label><br>
				<input id="createdAt" name="createdAt" value="" class="st2"/>			
			</div> -->

                    <!-- <div class="st1">
				<label >修改日期:</label><br>
				<input id="modifiedAt" name="modifiedAt" value="" class="st2"/>  
			</div> -->


                    <div class="upload">
                      <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="file"
                        name="storeImg" />
                    </div>



                    <div class="button">
                      <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" id="sendBtn"
                        type="button" onclick="insert()" value="送出" />
                      <a href="${contextRoot}/backStage/CancelReturnStore"> <input
                          class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button"
                          value="取消"></a>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
  </script>
  <jsp:include page="IncludePage/script.jsp" />
  <script src="${contextRoot}/BackPage/js/jquery-3.6.0.js"></script>
  <script>
    //以下方法等於function(){}
    // ()=>{
    //   document.getElementById("insertForm").action = '${contextRoot}/backstage/ReservationStore/insert';
    //   document.getElementById("insertForm").submit();
    // }            

    function insert() {
      Swal.fire({
        title: '確定新增?',
        showDenyButton: true,
        showCancelButton: true,
        confirmButtonText: 'Save',
        denyButtonText: `Don't save`,
      }).then((result) => {
        if (result.isConfirmed) {
          Swal.fire('新增成功!', '', 'success')
            .then(function () {
              document.getElementById("insertForm").action = '${contextRoot}/backstage/ReservationStore/insert';
              document.getElementById("insertForm").submit();
            })
        } else if (result.isDenied) {
          Swal.fire('未完成修改', '', 'info')
        }
      })
    }


    //不使用sweatalert2方法 使用input id="sendBtn" id去接
    // $("#sendBtn").click(function () {
    //           //		console.log($("#modifiedAt").val());
    //           // 		$("#insertForm").attr("action", "/backstage/ReservationStore/insert");
    //           // 		$("insertForm").submit();
    //           document.getElementById("insertForm").action = '${contextRoot}/backstage/ReservationStore/insert';
    //           document.getElementById("insertForm").submit();
    //         })
  </script>

</body>

</html>