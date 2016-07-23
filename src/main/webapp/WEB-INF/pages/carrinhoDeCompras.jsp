<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
	<div class="row">
		<h1 style="margin-top: 100px; text-decoration: underline">Carrinho
			de compras</h1>

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
					<th>Ações</th>
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
						<td><form:form method="post" modelAttribute="carrinho"
								action="${s:mvcUrl('CCC#deleta').build()}">
								<input type="hidden" name="id" value="${listaCompras.evento.id}" />
								<button type="submit" class="btn btn-xs btn-default">
									<span class="glyphicon glyphicon-trash"></span>&nbsp;
								</button>
							</form:form></td>
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



		<form:form
			action="${s:mvcUrl('CCC#finalizaCompra').arg(0,itensNoCarrinho).build()}">
			<button type="submit" class="btn btn-success pull-right">Finalizar
				Compra</button>
		</form:form>
	</div>
</div>
<%@include file="/WEB-INF/pages/rodape.jsp"%>