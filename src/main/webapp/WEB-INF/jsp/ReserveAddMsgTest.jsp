<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<jsp:include page="layout/default.jsp" />


<!-- 使用bootstrap的版記得先加div包起來 -->
<div class="container">
	<p />
<!-- 	justify-content-center置中 -->
<!-- class基本上都是bootstrap裡的 -->
	<div class="row justify-content-center">
		<div class="col-9">
			<div class="card">
				<div class="card-header">新增訊息</div>
				<div class="card-body">
<!-- 送東西用post,modelAttribute要用你的bean的名稱(開頭要小寫) -->
					<form:form class="form" method="POST" modelAttribute="reservationMessageTest">

						<!-- form:errors  bindingResult 回傳的物件 -->
						<form:errors path="text" />

						<div class="input-group">
<!-- path就是modelAttribute這個指定bean裡面的屬性,就是text -->
							<form:textarea path="text" class="form-control"></form:textarea>
						</div>

						<input type="submit" name="submit" value="新增訊息">
					</form:form>


				</div>
			</div>
		</div>
	</div>

<!-- 	<div class="row justify-content-center"> -->
<!-- 		<div class="col-9"> -->
<!-- 			<div class="card"> -->
<!-- 				<div class="card-header"> -->
<%-- 					最新訊息(時間) <span><fmt:formatDate --%>
<%-- 							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastMessage.added}" /></span> --%>
<!-- 				</div> -->
<!-- 				<div class="card-body"> -->
<%-- 					<c:out value="${lastMessage.text}" /> --%>

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->


</div>


<!-- ps.只寫了這jsp沒有寫controller是跑不動的 -->