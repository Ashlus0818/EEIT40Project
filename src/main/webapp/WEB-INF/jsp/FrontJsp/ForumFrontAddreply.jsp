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
<title>Insert title here</title>
</head>
<body>
 <header class="style1">
    <div id="site-header">
      <jsp:include page="IncludePage/topBar.jsp" />
    </div>
  </header>
	<div class="container">
		<p />
		<div class="col-6">
			<div class="card">
				<div class="card-header">
					<span><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
							value="${post.date}" /></span>
				</div>
				<div class="card-body">
					NO.${forumReply.postID}
					<p />
					<p />
					文章標題：
					<p />
					<p />
					<c:out value="${post.title}" />
					<p />
					<p />
					----------------------------------------------------------------------
					文章內容：
					<p />
					<c:out value="${post.context}" />
				</div>
			</div>
		</div>
		<p/>
		<div class="col-6">
			<div class="card">
				<div class="card-header">回覆文章</div>
				<div class="card-body">
					<form:form class="form" method="POST" modelAttribute="forumReply">
						<form:errors path="recontext" />
						<form:input type="hidden" path="postID"
							value="${forumReply.postID}" />
						<div class="imput-group">
							>> NO.${forumReply.postID}
							<p />
							<p />
							回覆內容：
							<p />
							<form:textarea path="recontext" class="form-control" />
						</div>
						<p />
						<input type="submit" name="submit" value="新增回覆">
					</form:form>
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
</body>
</html>