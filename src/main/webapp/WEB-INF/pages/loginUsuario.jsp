<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/pages/cabecalho.jsp"%>
<sec:authorize access="hasRole('ROLE_USER')">
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<div class="container">
			<h2 style="margin-top: 70px">Olá
				${pageContext.request.userPrincipal.name}!</h2>
		</div>
	</c:if>
</sec:authorize>
<%@ include file="/WEB-INF/pages/rodape.jsp"%>