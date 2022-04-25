<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<jsp:include page="layout/default.jsp" />


<!-- �ϥ�bootstrap�����O�o���[div�]�_�� -->
<div class="container">
	<p />
<!-- 	justify-content-center�m�� -->
<!-- class�򥻤W���Obootstrap�̪� -->
	<div class="row justify-content-center">
		<div class="col-9">
			<div class="card">
				<div class="card-header">�s�W�T��</div>
				<div class="card-body">
<!-- �e�F���post,modelAttribute�n�ΧA��bean���W��(�}�Y�n�p�g) -->
					<form:form class="form" method="POST" modelAttribute="reservationMessageTest">

						<!-- form:errors  bindingResult �^�Ǫ����� -->
						<form:errors path="text" />

						<div class="input-group">
<!-- path�N�OmodelAttribute�o�ӫ��wbean�̭����ݩ�,�N�Otext -->
							<form:textarea path="text" class="form-control"></form:textarea>
						</div>

						<input type="submit" name="submit" value="�s�W�T��">
					</form:form>


				</div>
			</div>
		</div>
	</div>

<!-- 	<div class="row justify-content-center"> -->
<!-- 		<div class="col-9"> -->
<!-- 			<div class="card"> -->
<!-- 				<div class="card-header"> -->
<%-- 					�̷s�T��(�ɶ�) <span><fmt:formatDate --%>
<%-- 							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastMessage.added}" /></span> --%>
<!-- 				</div> -->
<!-- 				<div class="card-body"> -->
<%-- 					<c:out value="${lastMessage.text}" /> --%>

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->


</div>


<!-- ps.�u�g�F�ojsp�S���gcontroller�O�]���ʪ� -->