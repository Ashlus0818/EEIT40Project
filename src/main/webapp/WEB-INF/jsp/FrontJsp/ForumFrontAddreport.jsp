<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="IncludePage/head.jsp" />
  <jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
<title>新增檢舉</title>
</head>
<body>
 <header class="style1">
    <div id="site-header">
      <jsp:include page="IncludePage/topBar.jsp" />
    </div>
  </header>
<div class="container" style="background-color:#FFE6FF">
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header" style="font-style:italic">
				<br>
					<span><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
							value="${post.date}" /></span>
				</div>
				<br>
				<div class="card-body" style="font-weight:bolder">
					NO.${forumReport.postID}
					<p />
					<p />
					文章標題：
					<c:out value="${post.title}" />
					<p />
					<p />
					------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
					<br>
					文章內容：
					<p />
					<c:out value="${post.context}" />
				</div>
			</div>
		</div>
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header"></div>
				<div class="card-body">
					<form:form class="form" method="POST" modelAttribute="forumReport">
						<form:errors path="reportReason" />
						<form:input type="hidden" path="postID"
							value="${forumReport.postID}" />
						<div class="imput-group" style="font-size:18px;font-weight:bolder">
						<br>
							<p />
							<p />
							檢舉原因：
							<p />
							<p />
							<form:textarea path="reportReason" id="reportReason" class="form-control" />
						</div>
						<input type="submit" name="submit" value="新增檢舉" style="background-color:gray;font-family:新細明體;font-size:18px;font-weight:400">
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
  $('#reportReason').val("朋酒斯饗，曰殺羔羊");
})

  </script>
</body>
</html>