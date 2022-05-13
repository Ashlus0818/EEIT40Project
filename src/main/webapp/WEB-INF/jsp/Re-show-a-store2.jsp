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
/* .st1disable {
  
    position: relative; unselectable ="on";
    -webkit-user-select: none;
    -moz-user-select: none;
    visibility: visible !important;
}

.st1disable input {
    background-color: #dfeef8;
    border: none;
}

.st1disable::after {
    position: absolute;
    content: "";
    top: 0;
    left: 0;
   
    height: 100%;
    background-color: transparent;
} */



    .body {
      width: 1150px;
      height: 915px;
      margin: auto;
    }

    .st1 {
      width: 750px;
      margin: 10px;
    }

    .st2 {
      width: 750px;
      height: 40px;
      width: 470px;
    }

    .form {
      margin: 20px;
      border: 1px solid gray;
      height: 800px;
    }

    .button {
      position: absolute;
      bottom: 10%;
      right: 86%;
      /* margin-top: 0px;
      margin-left: 30px; */
    }

    .upload {
      position: absolute;
      bottom: 20%;
      right: 20%;
      /*       border: 3px solid red; */
      /* top: 20px; */
      /*-30*/
      /* left: 950px; */
      /*       background-color: #dfa5a5; */
      width: 210px;
    }

    .divImg {
      width: 400px;
      height: 400px;
      position: absolute;
      bottom: 35%;
      right: 10%;
      /* object-fit: contain;
      margin: 0 auto;
      margin-top: 150px; */
    }

    .divImg img {
      border: 1px solid black;
      width: 100%;
      height: 100%;
    }

    /* type="text" id="name" name="name"  */
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


                  <form:form id="updateForm" class="form" method="POST" enctype="multipart/form-data"
                    modelAttribute="modAttReShowAStore">

                    <fieldset class="fieldset">
                      <legend>店家資訊</legend>

                      <div class="st1">
                        <label>店家編號:</label><br>
                        <form:input name="storeId" path="storeId"  />
                      </div>

                      <div class="st1">
                        <label>店家部門編號:</label><br>
                        <form:input name="storeDepartmentNumber" path="storeDepartmentNumber" class="st2" />

                      </div>

                      <div class="st1">
                        <label>店家名稱:</label><br>
                        <form:input name="storeName" path="storeName" class="st2" />
                      </div>

                      <div class="st1">
                        <label>店家電話:</label><br>
                        <form:input name="storePhone" path="storePhone" class="st2" />
                      </div>


                      <div class="st1">
                        <label>店家地址:</label><br>
                        <form:input name="storeAddress" path="storeAddress" class="st2" />
                      </div>

                      <div class="st1">
                        <label>店家營業時間:</label><br>
                        <form:input name="storeOpendate" path="storeOpendate" class="st2" />
                      </div>

                      <div class="st1">
                        <label>建立日期:</label><br>
                        <form:input name="createdAt" path="createdAt" class="st2" />
                      </div>

                      <div class="st1">
                        <label>修改日期:</label><br>
                        <form:input name="modifiedAt" path="modifiedAt" class="st2" />
                      </div>

                      <!-- 上傳圖片 -->
                      <div class="upload">
                        <!-- 選擇圖片: -->
                        <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="file"
                          name="storeImgNew" /> <br>
                      </div>
                      <!-- 顯示圖片 -->
                      <div class="divImg">
                        <img class="img" src="${contextRoot}/Img/${modAttReShowAStore.storeImg}">
                      </div>
                      <!-- 若沒有上傳新圖片則走這方法上傳舊圖片 -->
                      <input type="text" hidden name="storeImg" value="${modAttReShowAStore.storeImg}">


                      <div class="button">
                        <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button"
                          onclick="update()" name="" value="送出" />
                        <!--         <input type="submit"  name="" value="送出" /> -->

                        <a href="${contextRoot}/backStage/CancelReturnStore"> <input
                            class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button"
                            value="取消"></a>
                      </div>

                    </fieldset>
                  </form:form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="IncludePage/script.jsp" />

  <script src="${contextRoot}/BackPage/js/jquery-3.6.0.js"></script>
  <script>
    function update() {
      Swal.fire({
        title: '確定更改?',
        showDenyButton: true,
        showCancelButton: true,
        confirmButtonText: 'Save',
        denyButtonText: `Don't save`,
      }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
          //console.log(document.getElementById('updateForm'));
          //console.log($('#updateForm'))
          Swal.fire('修改成功!', '', 'success').then(function () {
            document.getElementById("updateForm").submit();
          })
        } else if (result.isDenied) {
          Swal.fire('未完成修改', '', 'info')
        }
      })
    }
  </script>

</body>

</html>