<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<c:if test="${not empty msg}">
	<span id="mensagem" style="color: green"><strong>Seja
			bem-vindo!</strong></span>
</c:if>
<!-- csrt for log out-->
<form action="${logoutUrl}" method="post" id="logoutForm">
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
</form>


<c:if test="${pageContext.request.userPrincipal.name != null}">
	<h2>
		Welcome : ${pageContext.request.userPrincipal.name} | <a
			href="javascript:formSubmit()"> Logout</a>
	</h2>
</c:if>

</body>
</html>