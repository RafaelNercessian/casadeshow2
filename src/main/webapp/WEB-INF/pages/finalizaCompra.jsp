<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<style>
.navbar-wrapper {
	display: none;
}
</style>
<sec:authorize access="hasRole('ROLE_USER')">
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<!-- For login user -->
		<div class="container">
			<h2 style="margin-top: 80px">${pageContext.request.userPrincipal.name},
				agradecemos a sua compra!</h2>
			<table style="margin-top: 30px;"
				class="table table-hover table-striped">
				<thead>
					<tr>
						<th></th>
						<th>Nome</th>
						<th>Local</th>
						<th>Cidade</th>
						<th>Data</th>
						<th>Qtde.</th>
						<th>Preço</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lista}" var="listaCompras">
						<tr>
							<td><img width="100"
								src='<c:url value="/resources/images/${listaCompras.evento.nomeDaFoto}"/>'></td>
							<td>${listaCompras.evento.nome}</td>
							<td>${listaCompras.evento.local}</td>
							<td>${listaCompras.evento.cidade}</td>
							<td>${listaCompras.evento.data}</td>
							<td>${listaCompras.quantidade}</td>
							<td>R$ ${listaCompras.preco}</td>
						</tr>
					</c:forEach>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><strong>Total</strong></td>
						<td><strong>R$ ${total}</strong></td>
					</tr>
				</tbody>
			</table>
		</div>
			<%@include file="/WEB-INF/pages/rodape.jsp"%>
	</c:if>
</sec:authorize>
