<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
	<form:form method="post" commandName="evento"
		action="${s:mvcUrl('CCC#adicionaCarrinho').build()}">
		<div style="margin-top: 100px" class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 style="margin-top: 0 !important;" class="featurette-heading">${evento.nome}</h2>
				<p>${evento.local}</p>
				<p>${evento.cidade}</p>
				<p>${evento.data}</p>
				<p>R$ ${evento.preco}</p>
				<span>Quantidade: <input type="text" name="quantidade" required="required"/></span>
				<br/>
				<br/>
				<button type="submit" class="btn btn-success">
					<span class="glyphicon glyphicon-shopping-cart" style="font-size: 20px;font-weight:bold;"> <span
						style="font-size: 20px; font-family: Helvetica;">Comprar</span></span>
				</button>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>'
					alt="Generic placeholder image">
			</div>
			<div class="col-md-12">
				<p>${evento.descricao}</p>
			</div>
		</div>

		<input type="hidden" name="id" value="${evento.id}">
		<input type="hidden" name="nome" value="${evento.nome}">
		<input type="hidden" name="local" value="${evento.local}">
		<input type="hidden" name="cidade" value="${evento.cidade}">
		<input type="hidden" name="data" value="${evento.data}">
		<input type="hidden" name="preco" value="${evento.preco}">
		<input type="hidden" name="nomeDaFoto" value="${evento.nomeDaFoto}">
	</form:form>
</div>
	<%@include file="/WEB-INF/pages/rodape.jsp"%>