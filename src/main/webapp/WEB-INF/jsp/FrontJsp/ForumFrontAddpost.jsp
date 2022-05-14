<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="IncludePage/head.jsp" />
  <jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
<title>新增文章</title>
</head>
<body>
 <header class="style1">
    <div id="site-header">
      <jsp:include page="IncludePage/topBar.jsp" />
    </div>
  </header>
<div class="container" style="background-color:	#FFE6FF">
<p />
<p />
 <div class="col-6">
  <div class="card">
  <div class="card-header">
  </div>
  <div class="card-body">
<form:form class="form" method="POST" modelAttribute="forumpost" enctype="multipart/form-data">
<form:errors path="title"/>
<form:errors path="context"/>
<div class="imput-group" style="font-size:18px;font-weight:bolder">
<br>
<p />
標題：
<p />
<form:textarea path="title" id="title" class="form-control"></form:textarea>
<p />
內容：
<p />
<form:textarea path="context" id="context" class="form-control"></form:textarea>
<p />
驗證用密碼(編輯用)：<input type="password" id="password" name="password">
<p />

</div>
<p />
<input type="submit" name="submit" value="新增文章" style="background-color:gray;font-family:新細明體;font-size:18px;font-weight:400">
</form:form>
<button id="1" style="background-color:	#FFE6FF">.</button>
</div>
</div>
</div>
</div>
  
  
  <jsp:include page="IncludePage/footer.jsp" />
  <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
  <script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/main.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>


<script>
$('#1').on("click",function () {
  $('#title').val("酒經");
  $('#context').val("宋代制曲、釀酒工藝發達");
  $('#password').val("1234");
})

  </script>
</body>
</html>