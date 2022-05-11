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
		<c:forEach items="${allpost}" varStatus="theCount"
			var="post">
			<div class="col-6" id="${post.postID}">
				<div class="card">
					<div class="card-header">
						<div class="edit-link">						 
						    <a href="${contextRoot}/ForumFrontEditpost?postID=${post.postID}">編輯</a> |
							<a href="${contextRoot}/ForumFrontAddreply?postID=${post.postID}">回應</a> |
							<a href="${contextRoot}/ForumFrontAddreport?postID=${post.postID}">檢舉</a> |
							<a href="${contextRoot}/ForumFrontOnepost?postID=${post.postID}">只看NO：${post.postID}的文及回應</a> |	
						</div>
						<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE"
								value="${post.date}" />
								 <br>
								 No： <c:out value="${post.postID}" />
								 <br>
					----------------------------------------------------------------------
								  <br> 
								 標題：
								  <br> <c:out value="${post.title}" />
								  <br>
								  <br>
								 內容： 
								  <br><c:out value="${post.context}" />
						</span>
					</div>
				</div>
			</div>
			<br>
		</c:forEach>
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