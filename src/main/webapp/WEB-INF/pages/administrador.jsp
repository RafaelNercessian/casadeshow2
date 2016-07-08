<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="container" style="margin-top:60px">
	<h2>
		Seja bem-vindo ${pageContext.request.userPrincipal.name}! 
	</h2>
	<h3>Tarefas: </h3>
	<ul>
		<li><a href="<c:url value="/admin/adicionaEvento" />">Adicionar um evento</a></li>
		<li><a href="<c:url value="/admin/listaEventosAdmin" />">Listar Eventos</a></li>
	</ul>
	<br/>
	<br/>
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	    <input type="submit" value="Logout" class="btn btn-primary pull-right" />
	</form:form>
	<br/>
	<br/>
	<br/>
<%@include file="/WEB-INF/pages/rodape.jsp"%>
</div>
