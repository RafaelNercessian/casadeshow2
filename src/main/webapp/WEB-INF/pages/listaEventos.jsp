<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
	<div style="margin-top: 100px">
		<c:if test="${not empty msg}">
			<span id="mensagem" style="color: green"><strong>${msg}</strong></span>
		</c:if>
	</div>
	<table style="margin-top: 20px;"
		class="table table-hover table-striped">
		<thead>
			<tr>
				<th></th>
				<th>Nome</th>
				<th>Local</th>
				<th>Cidade</th>
				<th>Data</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${eventos}" var="evento">
				<tr>
					<td><img width="100"
						src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>'></td>
					<td>${evento.nome}</td>
					<td>${evento.local}</td>
					<td>${evento.cidade}</td>
					<td>${evento.data}</td>
					<td><a
						href="${s:mvcUrl('EC#detalhe').arg(0,evento.id).build()}"><span
							class="glyphicon glyphicon-info-sign" /></a></td>
					<td><a href="${s:mvcUrl('EAC#edita').arg(0,evento.id).build()}"><span
							class="glyphicon glyphicon-pencil" /></a></td>
					<td><a href="${s:mvcUrl('EAC#remove').arg(0,evento.id).build()}"><span
							class="glyphicon glyphicon-remove" /></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<%@include file="/WEB-INF/pages/rodape.jsp"%>
</div>
