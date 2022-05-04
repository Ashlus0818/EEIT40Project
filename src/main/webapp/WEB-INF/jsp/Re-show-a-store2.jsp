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
      margin-top: -30px;
      margin-left: 50px;
    }

    .upload {
      position: relative;
      border: 3px solid red;
      top: 20px;
      /*-30*/
      left: 950px;
      background-color: #dfa5a5;
      width: 500px;

    }

    /* type="text" id="name" name="name"  */
  </style>

  <jsp:include page="IncludePage/css.jsp" />
</head>

<body>
  <jsp:include page="IncludePage/sidebar.jsp" />
  <jsp:include page="IncludePage/topbar.jsp" />
  <jsp:include page="IncludePage/pageheading.jsp" />



  <form:form class="form" method="POST" modelAttribute="modAtt-Re-show-a-store1">

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


      <div class="upload">
        <form action="upload" method="post" enctype="multipart/form-data">
          選擇圖片:<input type="file" name="file" accept="image/*" /> <br>
          <input type="submit" value="立刻上傳">

        </form>
      </div>



      <div class="button">
        <input type="submit" name="submit" value="送出" />

        <a href="${contextRoot}/backStage/CancelReturnStore"> <input type="button" value="取消"></a>
      </div>

    </fieldset>
  </form:form>


  <jsp:include page="IncludePage/script.jsp" />
</body>

</html>