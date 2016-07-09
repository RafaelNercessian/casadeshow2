<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
<div class="row" >
<h1 style="margin-top:100px">Carrinho de compras</h1>
	<table style="margin-top: 60px;"
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
				<th>Preço Total</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="listaCompras">
				<tr>
					<td><img width="100"
						src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>'></td>
					<td>${evento.nome}</td>
					<td>${evento.local}</td>
					<td>${evento.cidade}</td>
					<td>${evento.data}</td>
					<td>${listaCompras.quantidade}</td>
					<td>${listaCompras.preco}</td>
					<td>${total}</td>
				</tr>
			</c:forEach>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><strong>Total:R$ ${total}</strong></td>
				</tr>
		</tbody>
	</table>
	<%@include file="/WEB-INF/pages/rodape.jsp"%>
</div>