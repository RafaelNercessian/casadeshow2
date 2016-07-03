<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
<h2>Adicione um evento</h2>
<br />
<form:form method="post" commandName="evento" action="${s:mvcUrl('EC#adiciona').build()}" enctype="multipart/form-data">
	<div class="form-group">
		<label for="nome">Nome:</label> 
		<form:input path="nome" id="nome" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="descricao">Descrição:</label>
		<form:textarea path="descricao" rows="5" cols="12" id="descricao" class="form-control"/> 
	</div>
	<div class="form-group">
		<label for="local">Local:</label> 
		<form:input path="local" id="local" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="cidade">Cidade:</label> 
		<form:input path="cidade" id="cidade" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="data">Data:</label> 
		<form:input path="data" id="data" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="imagem">Imagem:</label> 
		<input type="file" name="imagem"/>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form:form>
</body>
<%@include file="/WEB-INF/pages/rodape.jsp" %>
</div>
