<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
<h2>Adicionar um evento</h2>
<br />
<form:form method="post" commandName="evento" action="${s:mvcUrl('EAC#adiciona').build()}" enctype="multipart/form-data">
	<div class="form-group">
		<label for="nome">Nome:</label> 
		<form:input path="nome" id="nome" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="nome" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="descricao">Descrição:</label>
		<form:textarea path="descricao" rows="5" cols="12" id="descricao" class="form-control"/> 
		<span style="color:red;font-weight:bold"><form:errors path="descricao" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="local">Local:</label> 
		<form:input path="local" id="local" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="local" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="cidade">Cidade:</label> 
		<form:input path="cidade" id="cidade" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="cidade" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="data">Data:</label> 
		<form:input path="data" id="data" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="data" class="control-label" /></span>
	</div>
	<div class="form-group ">
		<label for="imagem">Imagem:</label> 
		<input type="file" name="imagem" required="true" title="Por favor insira a imagem."/>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form:form>
</body>
<%@include file="/WEB-INF/pages/rodape.jsp" %>
</div>
