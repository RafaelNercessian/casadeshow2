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
				<tr>
					<td><img width="100"
						src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>'></td>
					<td>${evento.nome}</td>
					<td>${evento.local}</td>
					<td>${evento.cidade}</td>
					<td>${evento.data}</td>
					<td>${evento.quantidade}</td>
					<td>${evento.preco}</td>
					<td>${evento.precoTotal}</td>
				</tr>
		</tbody>
	</table>
	<%@include file="/WEB-INF/pages/rodape.jsp"%>
</div>