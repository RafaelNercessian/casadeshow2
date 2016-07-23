<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<div class="container center_div">
	<form id="formularioLogin" class="form-signin" name='loginForm'
		action="<c:url value='/j_spring_security_check' />" method='POST'>
		<h2 class="form-signin-heading">Login</h2>
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="error">${msg}</div>
		</c:if>
		<label for="inputEmail" class="sr-only">Login</label> <input
			style="margin-top: 15px; margin-bottom: 15px;" type='text'
			name='username' id="inputEmail" class="form-control"
			placeholder="Login" required autofocus> <label
			for="inputPassword" class="sr-only">Senha</label> <input
			style="margin-top: 15px; margin-bottom: 15px;" input type='password'
			name='password' id="inputPassword" class="form-control"
			placeholder="Senha" required>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
	</form>
</div>
<!-- /container -->

</body>
</html>