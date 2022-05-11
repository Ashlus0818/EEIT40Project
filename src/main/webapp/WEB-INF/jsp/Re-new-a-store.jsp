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
    .st1 {
      margin: 10px;
    }

    .st2 {
      height: 40px;
      width: 800px;
    }

    .form {
      margin: 20px;
      border: 3px solid gray;
      height: 800px;
    }

    .upload {
      /*   position: absolute; */
      /*   bottom: 40%; */
      /*   right: 29.5%; */
      width: 210px;
      border: 3px solid red;
      background-color: #dfa5a5;
    }

    .button {
      margin: 10px;
    }
  </style>

  <jsp:include page="IncludePage/css.jsp" />
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
  <jsp:include page="IncludePage/sidebar.jsp" />
  <jsp:include page="IncludePage/topbar.jsp" />
  <jsp:include page="IncludePage/pageheading.jsp" />

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
      <input type="file" name="storeImg" />
    </div>



    <div class="button">
      <input id="sendBtn" type="button" onclick="insert()" value="送出" />
      <a href="${contextRoot}/backStage/CancelReturnStore"> <input type="button" value="取消"></a>
    </div>
  </form>



  <script>
  </script>
  <jsp:include page="IncludePage/script.jsp" />
  <script src="${contextRoot}/BackPage/js/jquery-3.6.0.js"></script>
  <script>
    function insert() {
      Swal.fire({
        position: 'top-end',
        icon: 'success',
        title: '新增成功',
        showConfirmButton: false,
        timer: 1500,
      }).then(
        function () {
          document.getElementById("insertForm").action = '${contextRoot}/backstage/ReservationStore/insert';
          document.getElementById("insertForm").submit();
        }

        //以下方法等於function(){}
        // ()=>{
        //   document.getElementById("insertForm").action = '${contextRoot}/backstage/ReservationStore/insert';
        //   document.getElementById("insertForm").submit();
        // }        
      )
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