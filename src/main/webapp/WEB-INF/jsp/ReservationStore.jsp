<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Quixlab - Bootstrap Admin Dashboard Template by
    Themefisher.com</title>
    
    <style>
    
    .newSrore{
      width: 90px;
      /* position:absolute;
      top: 80px;
      left: 150px; */
      border:3px solid green;	
    }
    
    .delAll{
      width: 90px;
        /* position:absolute;
        top: 20px;
        left: 30px; */
      border:3px solid yellow;
    }
    
    </style>
    
    
    
  <!-- Favicon icon -->
  <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
  <!-- Custom Stylesheet -->
  <link href="${contextRoot}/BackPage/css/ReservationStore/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="${contextRoot}/BackPage/css/ReservationStore/style.css" rel="stylesheet">

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
            <div class="card">
              <!-- 						<div class="card" style="overflow-x: scroll;">						 -->
              <div class="card-body">
                <h4 class="card-title">實體店面</h4>
                <div class="table-responsive">
                  <div>

                    <div class="newSrore">
                      <a href="${contextRoot}/backstage/ReservationStore/addAStore"> <input type="button"
                          value="新增一筆"></a>
                    </div><br>

                    <form id='delData' action="" method="get" class="delAll" >
                      <input class="" name="" value="" type="hidden" />
                      <input id="testname" type="button" value="整筆刪除" onclick="return confirm('確認刪除?')" />
                    </form>



                    <table class="table table-striped table-bordered zero-configuration">
                      <thead>
                        <tr>
                          <th class="checkbox-cell">
                            <label class="checkbox">
                              <input type="checkbox" name="CheckAll" value="核取方塊" id="check_all">
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
                        <!-- 	pageStore是var值	//pageStore1連到PageController								 -->
                        <%-- var的值把${pageStore1.content}的物件塞進去   ${pageStore1.content}來自PageController的page物件 --%>
                        <c:forEach var="pageStore" items="${pageStore1.content}" varStatus="vs">
                          <tr id="Id${pageStore.storeId}">

                            <td class="checkbox-cell">
                              <label class="checkbox">
                                <input type="checkbox" name="Checkbox[]" value="" id=""><span class="check"></span>
                              </label>
                            </td>
                            <td id="storeId${pageStore.storeId}"> <c:out value="${pageStore.storeId}" /> </td>
                            <td> <c:out value="${pageStore.storeDepartmentNumber}" /> </td>
                            <td> <c:out value="${pageStore.storeName}" /> </td>
                            <td> <c:out value="${pageStore.storePhone}" /> </td>
                            <td> <c:out value="${pageStore.storeAddress}" /> </td>
                            <td> <c:out value="${pageStore.storeOpendate}" /> </td>
                            <td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${pageStore.createdAt}" /> </td>
                            <td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${pageStore.modifiedAt}" /> </td>

                            <!--  storeIDnumberView和Del  連結 ReservationStoreController 第94行的getStoreById方法 -->
                            <%-- ${vs.count}的vs是69行varStatus="vs",count是計數,為了抓到第幾筆資料,但不是抓到id,只有ASC排序適用,因為是根據抓到的第幾筆代入storeId去找整筆資料 --%>
                            <%-- ${pageStore.storeId}就可以直接抓到該筆的id --%>
                            <td>
                              <form id='formStoreID${pageStore.storeId}'
                                action="${contextRoot}/backstage/ReservationStore/editStore" method="get">
                                <input class="${pageStore.storeId}" name="storeIDnumberView"
                                  value="${pageStore.storeId}" type="hidden" />
                                <input id="testname" type="button" value="檢視" onclick="show(${pageStore.storeId})" />
                              </form>

                            <td>
                              <form id='formStoreID1${pageStore.storeId}'
                                action="${contextRoot}/backstage/ReservationStore/delAStore" method="get">
                                <input class="${pageStore.storeId}" name="storeIDnumberDel" value="${pageStore.storeId}"
                                  type="hidden" />
                                <input id="deleteButton${pageStore.storeId}" type="button" value="刪除" onclick="del(${pageStore.storeId})" />
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
                  <a href="${contextRoot}/backstage/ReservationStore?p=${pageNumber}">
                    <c:out value="${pageNumber}" /> </a>
                </c:when>

                <c:otherwise>
                  <c:out value="${pageNumber}" />
                </c:otherwise>

              </c:choose>

              <c:if test="${pageNumber != pageStore1.totalPages}">
                |
              </c:if>

            </c:forEach>
          </div>
        </div>


      </div>
    </div>
  </div>


  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

  <script>
    // 為了在檢視或刪除時根據"id"去刪除,要先抓到storeId的前置作業
    //formStoreID 連結 90行前後的form id欄位
    function show(count) {
      document.getElementById("formStoreID" + count).submit();
      
      function del(${pageStore.storeId}) {
            Swal.fire(
                "查詢作業失敗", //標題 
                "您所輸入的序號不存在或是系統被玩壞了!", //訊息內容(可省略)
                "error" //圖示(可省略) success/info/warning/error/question
                //圖示範例：https://sweetalert2.github.io/#icons
            );
        }
      
    }


    function del(count) {
      document.getElementById("formStoreID1" + count).submit();
    }

    // //全選功能
    // $("#check_all").click(function (){
    // 	$(".check_item").prop("checked",$(this).prop("checked"));
    // });	

    // $(document).on("click",".check_item",function(){
    // 	var flag = $(".check_item:checked").length == $(".check_item").length;
    // 	$("#check_all").prop("checked",false);
    // });

    //找到被勾選的checkbox
    // var store_list = "";
    // var checkboxes = document.querySelectorAll('input[type=checkbox]:checked')

    // for (var i=1; i < checkboxes.length;i++){
    //   store_list += "," + checkboxes[i].value;
    //   //,123,456
    //   console.log(checkboxes[i].value);
    // }


    //checkbox全選功能
    $(document).ready(function () {
      $("#check_all").click(function () {
        if ($("#check_all").prop("checked")) { //如果全選按鈕有被選擇的話（被選擇是true）
          $("input[name='Checkbox[]']").each(function () {
            $(this).prop("checked", true); //把所有的核取方框的property都變成勾選
          })
        } else {
          $("input[name='Checkbox[]']").each(function () {
            $(this).prop("checked", false); //把所有的核方框的property都取消勾選
          })
        }
      })
    })


    $('input:CheckAll').each(function() {
if ($(this).attr('checked') ==true) {
alert($(this).val());
console.log($(this).val());
}
});




    // 參考資料checkbox:https://pjchender.blogspot.com/2015/04/jquery_29.html
    //jquery基本用法:https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/270914/
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