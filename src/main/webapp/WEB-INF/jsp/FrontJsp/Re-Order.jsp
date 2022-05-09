<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">

<head>
  <jsp:include page="IncludePage/head.jsp" />
  <title>Event</title>

  <style>
    .st1 {
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

    /* 調整ReservationStore的page頁數顯示 */
    .totalpages {
      position: relative;
      bottom: 5%;
      right: 0%;
      width: 55%;
      text-align: right;
    }

    .totalpages .col-9 {
      font-size: 20px;
    }
  </style>

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

  <div class="main-event">
    <section class="flat-filter">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="filter-border">
              <div class="filter-date">
                <input type="search" id="searcha" placeholder="輸入日期">
                <i class="fa fa-calendar" aria-hidden="true"></i> <!--   這是欄位裡的icon -->
              </div>
              <div class="filter-location">
                <input type="search" id="searchb" placeholder="輸入店家名">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
              </div>
              <div class="filter-keywork">
                <input type="search" id="searchc" placeholder="輸入人數">
              </div>
              <div class="elm-btn">
                <a href="#"
                  class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">搜尋店家</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <article class="filter-content">
      <c:forEach var="pageOrder" items="${pageOrder1.content}" varStatus="vs">
        <div class="container">
          <div class="filter-post">
            <div class="featured-post">
              <img src="${contextRoot}/FrontPage/image/homepage120.png" alt="image">
<!--               <div class="date-time"> -->
<!--                 <h2>02</h2> -->
<!--                 <h2>JULY</h2> -->
<!--               </div> -->
            </div>
            <div class="content-post">
              <h2 class="content-title"><a href="">
                  <c:out value="${pageOrder.storeName}" /></a></h2>
              <p class="content-meta"><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i>
                  <c:out value="${pageOrder.storeOpendate}" /></a></p>
              <p class="content-address"><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i>
                  <c:out value="${pageOrder.storeAddress}" /></a>
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
                <select name="">
                  <!-- <select 下拉式選單 > -->
                  <option value="">9:30~10:30</option>
                  <option value="">10:30~11:30</option>
                  <option value="">13:30~14:30</option>
                  <option value="">14:30~15:30</option>
                  <option value="">15:30~16:30</option>
                  <option value="">16:30~17:30</option>
                  <!-- 用option -->
                </select>
              </div>

              <div>選擇預約酒類</div>

              <div class="st2">
                <label for="">產地</label>
                <select name="">
                  <option value="">英國</option>
                  <option value="">美國</option>
                  <option value="">日本</option>
                  <option value="">台灣</option>
                  <option value="">愛爾蘭</option>
                </select>
              </div>
              <div class="st3">
                <label for="">價格區間</label>
                <select name="">
                  <option value="">蘇格蘭</option>
                  <option value="">英格蘭</option>
                  <option value="">愛爾蘭</option>
                  <option value="">xxx</option>
                </select>
              </div>
               <div class="st3">
                <label for="">選擇酒</label>
                <select name="">
                  <option value="">x</option>
                  <option value="">xx</option>
                  <option value="">xxx</option>
                  <option value="">xxxx</option>
                </select>
              </div>


              <!--                          <h3 class="content-price"><a href="">施工中</a></h3> -->
              <div class="elm-btn">
                <a href="#" class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">預約</a>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
    </article>
  </div>
    <!-- 顯示page頁數按鈕				 -->
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
</body>

</html>