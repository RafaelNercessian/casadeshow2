<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/cabecalho.jsp" %>
 <div class="container">

      <form class="form-signin" name='loginForm'
		  action="<c:url value='/j_spring_security_check' />" method='POST'>
        <h2 class="form-signin-heading">Please sign in</h2>
        <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type='text' name='username' id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input input type='password' name='password' id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
<%@include file="/WEB-INF/pages/rodape.jsp" %>
    </div> <!-- /container -->

</body>
</html>