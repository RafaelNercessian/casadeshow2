<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
<h2>Cadastro</h2>
<br />
<form:form method="post" commandName="users" action="${s:mvcUrl('LC#adiciona').build()}">
	<p>${msg}</p>
	<div class="form-group">
		<label for="username">Username:</label> 
		<input name="username" id="username" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="nome" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="password">Senha:</label>
		<input name="password" id="password" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="descricao" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="nome">Nome completo:</label> 
		<input name="nome" id="nome" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="local" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="cpf">CPF:</label> 
		<input name="cpf" id="cpf" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="cidade" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="endereco">Endereço:</label> 
		<input name="endereco" id="endereco" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="data" class="control-label" /></span>
	</div>
	<div class="form-group ">
		<label for="cep">CEP:</label> 
		<input name="cep" id="cep" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="telefone">Telefone:</label> 
		<input name="telefone" id="telefone" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="preco" class="control-label" /></span>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form:form>
</body>
<%@include file="/WEB-INF/pages/rodape.jsp" %>
</div>