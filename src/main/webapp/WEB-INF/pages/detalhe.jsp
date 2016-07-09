<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
	<div style="margin-top:100px" class="row featurette">
	        <div class="col-md-7 col-md-push-5">
	          <h2 style="margin-top:0!important;" class="featurette-heading">${evento.nome}</h2>
	          <p class="lead">${evento.local}</p>
	          <p class="lead">${evento.cidade}</p>
	          <p class="lead">${evento.data}</p>
	          <p class="lead">R$ ${evento.preco}</p>
	          <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"> <span style="font-size:20px;font-family:Helvetica;">Comprar</span></span></button>
	        </div>
	        <div class="col-md-5 col-md-pull-7">
	          <img class="featurette-image img-responsive center-block" src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>' alt="Generic placeholder image">
	        </div>
	        <div class="col-md-12">
	        	<p>${evento.descricao}</p>
	        </div>
	      </div>
<%@include file="/WEB-INF/pages/rodape.jsp"%>
</div>