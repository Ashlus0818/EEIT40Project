<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

<head>
  <jsp:include page="IncludePage/head.jsp" />
  <title>預約</title>

  <style>
    .st1 {
      padding-top: 2%;
      width: 200px;

    }

    .st2 {
      width: 200px;
      line-height: 20px;
      padding: 1px;
      /* border: 2px green solid; */
      float: left;
    }

    .st3 {
      width: 200px;
      line-height: 20px;
      padding: 1px;
      /* border: 2px rgb(124, 128, 0) solid; */
      float: left;
    }

    .elm-btn {
      /* background-color: aqua; */
    }


    .totalpages {
      position: relative;
      bottom: 5%;
      right: 0%;
      width: 55%;
      text-align: right;
    }

    .totalpages .col-9 {
      font-size: 30px;
    }
  </style>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>
  <div id="loading-overlay">
    <div class="loader"></div>
  </div>
  <!--/.loading-overlay-->
  <header class="style1">
    <div id="site-header">

      <jsp:include page="IncludePage/topBar.jsp" />


    </div>
  </header>
  <form id="insertOrder" method="POST" enctype="multipart/form-data" class="form"
    action="${contextRoot}/front/Re-OrderByName">
    <div class="main-event">
      <section class="flat-filter">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="filter-border">
                <div class="filter-location">
                  <input type="search" id="inputName" name="orderStoreName" placeholder="輸入店家名">
                  <i class="fa fa-map-marker" aria-hidden="true"></i>
                </div>
                <div class="elm-btn">
                  <button type="submit" id="searchStore"
                    class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">查詢店家</button>
                </div>
<!--                 <div class="cancelSearch"> -->
<%--                   <a type="button" href="${contextRoot}/front/Re-Order" --%>
<!--                     class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">取消查詢</a> -->
<!--                 </div> -->

              </div><br>
              <div class="filter-border1">
                <div class="filter-date">
                  <label class="" for="inputDate">請輸入預約日期:</label>
                  <input type="date" id="inputDate" name="orderDate" placeholder="輸入日期">
                  <!-- <i class="fa fa-calendar" aria-hidden="true"></i> --> <!--   這是欄位裡的icon -->
                </div>
                <!--                 <div class="filter-location"> -->
                <!--                   <input type="search" id="inputName" name="orderStoreName" placeholder="輸入店家名"> -->
                <!--                   <i class="fa fa-map-marker" aria-hidden="true"></i> -->
                <!--                 </div> -->
                <div class="filter-keywork">
                  <label class="" for="inputDate">請輸入人數:</label>
                  <input type="text" id="inputNumber" name="orderStorePop" placeholder="輸入人數">
                </div>
                <!--                 <div class="elm-btn"> -->
                <!--                   <button type="submit" id="searchStore" -->
                <!--                     class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">查詢店家</button> -->
                <!--                 </div> -->
                 <div class="cancelSearch">
                  <a type="button" href="${contextRoot}/front/Re-Order"
                    class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">取消查詢</a>
                </div> 
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--   </div> -->
      <!-- </form> -->
      <article class="filter-content">
        <c:forEach var="pageOrder" items="${pageOrder1.content}" varStatus="vs">
          <div class="container">
            <div class="filter-post">
              <div class="featured-post">
                <img src="${contextRoot}/Img/${pageOrder.storeImg}" alt="image">
                <%--            ${contextRoot}/FrontPage/image/homepage120.png --%>

              </div>
              <div class="content-post">
                <h2 class="content-title">
                  <a>
                    <span id="storeName${pageOrder.storeId}">${pageOrder.storeName}</span>
                  </a>
                </h2>
                <p class="content-meta">
                  <a>
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    ${pageOrder.storeOpendate}
                  </a>
                </p>
                <p class="content-address">
                  <a>
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                    <c:out value="${pageOrder.storeAddress}" />
                  </a>
                </p>
                <div class="content-phone">
                  <ul>
                    <li class="map"><a href=""><i class="icon_map" aria-hidden="true"></i> View Map</a></li>
                    <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i>
                        <c:out value="${pageOrder.storePhone}" /></a></li>
                  </ul>
                </div>
                <div class="st1">
                  <label for="" class="">選擇時段</label>
                  <select name="selectTime">
                    <!-- <select 下拉式選單 > -->
                    <!-- <option value="0930">9:30~10:30</option>
                    <option value="1030">10:30~11:30</option>
                    <option value="1330">13:30~14:30</option>
                    <option value="1430">14:30~15:30</option>
                    <option value="1530">15:30~16:30</option>
                    <option value="1630">16:30~17:30</option> -->
                    <!-- 用option -->
                  </select>
                </div>

                <div class="elm-btn">
                  <button type="button" name="reservation"
                    class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">預約</button>
                </div>
                <!-- </form> -->

              </div>
            </div>
          </div>
        </c:forEach>
      </article>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <!--     不加上面這段會出403的原因->https://www.cnblogs.com/midworld/p/10996850.html ->SecurityConfig.java ->原因註解掉http.csrf().disable(); -->
  </form>

  <!-- 顯示page頁數按鈕 -->
  <div class="row totalpages">
    <div class="col-9">
      <c:forEach var="pageNumber" begin="1" end="${pageOrder1.totalPages}">

        <c:choose>
          <c:when test="${pageOrder1.number != pageNumber-1 }">
            <a href="${contextRoot}/front/Re-Order?p=${pageNumber}">
              <c:out value="${pageNumber}" /> </a>
          </c:when>

          <c:otherwise>
            <c:out value="${pageNumber}" />
          </c:otherwise>

        </c:choose>

        <c:if test="${pageNumber != pageOrder1.totalPages}">
          |
        </c:if>

      </c:forEach>
    </div>
  </div>



  <jsp:include page="IncludePage/footer.jsp" />
  <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

  <script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/owl.carousel.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/images-loaded.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery.isotope.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/main.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="${contextRoot}/FrontPage/javascript/re-order.js"></script>
  <!--   上面本jsp跟Re-OrderByName.jsp兩個有相通的js都放在一起 -->



</body>

</html>