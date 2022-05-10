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
      width: 750px;
      margin: 10px;
    }

    .st2 {
      width: 750px;
      height: 40px;
      width: 800px;
    }

    .form {
      margin: 20px;
      border: 3px solid gray;
      height: 800px;
    }

    .button {
      position: absolute;
      bottom: 7%;
      right: 80%;
      /* margin-top: 0px;
      margin-left: 30px; */
    }

    .upload {
      position: absolute;
      bottom: 40%;
      right: 29.5%;
      border: 3px solid red;
      /* top: 20px; */
      /*-30*/
      /* left: 950px; */
      background-color: #dfa5a5;
      width: 210px;
    }

    .divImg {
      width: 200px;
      height: 200px;
      position: absolute;
      bottom: 50%;
      right: 30%;
      /* object-fit: contain;
      margin: 0 auto;
      margin-top: 150px; */
    }

    .divImg img {
      border: 3px solid black;
      width: 100%;
      height: 100%;
    }

    /* type="text" id="name" name="name"  */
  </style>

  <jsp:include page="IncludePage/css.jsp" />
</head>

<body>
  <jsp:include page="IncludePage/sidebar.jsp" />
  <jsp:include page="IncludePage/topbar.jsp" />
  <jsp:include page="IncludePage/pageheading.jsp" />



  <form:form class="form" method="POST" enctype="multipart/form-data" modelAttribute="modAttReShowAStore">

    <fieldset class="fieldset">
      <legend>店家資訊</legend>
      <div class="st1">
        <label>店家編號:</label><br>
        <form:input name="storeId" path="storeId" />

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
        <input type="file" name="storeImgNew" /> <br>
      </div>
<!-- 顯示圖片 -->
      <div class="divImg">
        <img class="img" src="${contextRoot}/Img/${modAttReShowAStore.storeImg}">
      </div>
<!-- 若沒有上傳新圖片則走這方法上傳舊圖片 -->
      <input type="text" hidden name="storeImg" value="${modAttReShowAStore.storeImg}">


      <div class="button">
        <input type="submit" name="submit" value="送出" />

        <a href="${contextRoot}/backStage/CancelReturnStore"> <input type="button" value="取消"></a>
      </div>

    </fieldset>
  </form:form>


  <jsp:include page="IncludePage/script.jsp" />

</body>

</html>