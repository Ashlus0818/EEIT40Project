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
  <title>實體店面</title>

  <style>
    .newData {
      width: 90px;
      position: absolute;
      top: 60px;
      left: 170px;
      /* border: 3px solid green; */
    }

    .deleteBatch {
      width: 90px;
      position: absolute;
      top: 60px;
      left: 65px;
      /* border: 3px solid yellow; */
    }

    /* .title{
      width: 150px;
      position:absolute;
      top: 30px;
      left: 650px;
      border: 3px solid yellow;
    } */

    /* .newData {
      width: 100px;
      line-height: 20px;
      padding: 1px;
      float: left;
      border: 3px solid green;
    }

    .deleteBatch {
      width: 100px;
      line-height: 20px;
      padding: 1px;
      float: left;
      border: 3px solid yellow;
    } */
  </style>



  <!-- Favicon icon -->
  <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
  <!-- Custom Stylesheet -->
  <link href="${contextRoot}/BackPage/css/ReservationStore/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="${contextRoot}/BackPage/css/ReservationStore/style.css" rel="stylesheet">
  <link href="${contextRoot}/BackPage/css/bootstrap.min.css" rel="stylesheet" />

  <jsp:include page="IncludePage/css.jsp" />
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
                <!-- <h3 class="title">實體店面</h3> -->
                <div class="table-responsive">
                  <div>

                    <div class="newData">
                      <a href="${contextRoot}/backstage/ReservationStore/addAStore"> <input
                          class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button"
                          value="新增一筆"></a>
                    </div><br>

                    <div class="deleteBatch">
                      <form id='delData' action="" method="get">
                        <input class="" name="" value="" type="hidden" />
                        <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" id="deleteBatchBtn"
                          type="button" value="批次刪除" />
                      </form>
                    </div>



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
                                <input type="checkbox" name="Checkbox[]" value="" id="check${pageStore.storeId}"><span
                                  class="check"></span>
                              </label>
                            </td>
                            <td id="storeId${pageStore.storeId}">
                              <c:out value="${pageStore.storeId}" />
                            </td>
                            <td>
                              <c:out value="${pageStore.storeDepartmentNumber}" />
                            </td>
                            <td>
                              <c:out value="${pageStore.storeName}" />
                            </td>
                            <td>
                              <c:out value="${pageStore.storePhone}" />
                            </td>
                            <td>
                              <c:out value="${pageStore.storeAddress}" />
                            </td>
                            <td>
                              <c:out value="${pageStore.storeOpendate}" />
                            </td>
                            <td>
                              <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${pageStore.createdAt}" />
                            </td>
                            <td>
                              <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${pageStore.modifiedAt}" />
                            </td>

                            <!--  storeIDnumberView和Del  連結 ReservationStoreController 第94行的getStoreById方法 -->
                            <%-- ${vs.count}的vs是69行varStatus="vs",count是計數,為了抓到第幾筆資料,但不是抓到id,只有ASC排序適用,因為是根據抓到的第幾筆代入storeId去找整筆資料 --%>
                            <%-- ${pageStore.storeId}就可以直接抓到該筆的id --%>
                            <td>
                              <form id='formStoreID${pageStore.storeId}'
                                action="${contextRoot}/backstage/ReservationStore/editStore" method="get">
                                <input class="" name="storeIDnumberView" value="${pageStore.storeId}" type="hidden" />
                                <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" id=""
                                  type="button" value="檢視" onclick="show(${pageStore.storeId})" />
                              </form>

                            <td>
                              <form id='formStoreID1${pageStore.storeId}'
                                action="${contextRoot}/backstage/ReservationStore/delAStore" method="get">
                                <input class="" name="storeIDnumberDel" value="${pageStore.storeId}" type="hidden" />
                                <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" id=""
                                  type="button" value="刪除" onclick="del(${pageStore.storeId})" />
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

    //批次刪除
    $('#deleteBatchBtn').on('click', function () {
      let dataList = []; //先給一個空的陣列，之後給裡面塞值

      $("input[name='Checkbox[]']:checked").each(function () {
        // $("input[name='Checkbox[]']:checked")是找到已勾選的，然後foreach到datalist裡面
        // console.log($(this).attr('id'));
        let id = $(this).attr('id').split("check")[1]; //attr找到id屬性的屬性值
        console.log(id);
        //如未加split會出現-> ['check38'] -> check字樣+38是抓到的id, 用split拆開check38 變成[check,38]然後只留38就是[1]位置的元素   
        dataList.push(id);
      });
      console.log(dataList);



      Swal.fire({
        title: '確定刪除?',
        text: "此動作將無法復原!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '刪除!'
      }).then((result) => {
        if (result.isConfirmed) {

          $.ajax({
            url: "/myapp/backstage/ReservationStore/deleteBatch",
            type: "POST",
            data: {
              list: dataList //把dataList(裡面放勾選的id陣列)放到list 然後傳到controller的@RequestParam("list")
            },
            traditional: true, //因為ajax傳過去會加上{},加這段可以避免加上{}只傳[](陣列)過去 controller的程式才會認得陣列      
            success: function (res) { //設定res會抓到controller return的物件
              console.log(res); //放sweetalert2的防呆

              Swal.fire({
                title: '已成功刪除!',
                icon: 'success',
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'OK!'
              }).then(() => {
                location.reload()
              })
            },
            error: function (err) {}
          });
        }
      })
    });


    // Swal.fire({
    //   title: '確定刪除?',
    //   text: "此動作將無法復原!",
    //   icon: 'warning',
    //   showCancelButton: true,
    //   confirmButtonColor: '#3085d6',
    //   cancelButtonColor: '#d33',
    //   confirmButtonText: '刪除!'
    // }).then((result) => {
    //   if (result.isConfirmed) {
    //     Swal.fire('刪除成功!', '', 'success').then(function () {
    //       // action = '${contextRoot}/backstage/ReservationStore';
    //     })
    //   }
    // })

    //單筆刪除
    function del(count) {

      Swal.fire({
        title: '確定刪除?',
        text: "此動作將無法復原!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '刪除!'
      }).then((result) => {
        if (result.isConfirmed) {
          Swal.fire('刪除成功!', '', 'success').then(function () {
            document.getElementById("formStoreID1" + count).submit()
          })
        }
      })
    }
    //注意! 要用then接下段要跑的程式 要先用function包起來,也就是要 .then(function(){要跑的程式})


    //檢視單筆
    function show(count) {
      document.getElementById("formStoreID" + count).submit();
    }


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

    //未完成的checkall
    //     $('input:CheckAll').each(function () {
    //       if ($(this).attr('checked') == true) {
    //         alert($(this).val());
    //         console.log($(this).val());
    //       }
    //     });

    //////////////////////////////////
    //舊del 方法
    // function del(count) {
    //   document.getElementById("formStoreID1" + count).submit();
    // }


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
    /////////////////////////////


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