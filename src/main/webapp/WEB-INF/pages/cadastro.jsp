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
		<label for="username">Nome de usuário:</label> 
		<form:input path="username" id="username" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="username" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="password">Senha:</label>
		<form:input path="password" name="password" id="password" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="password" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="email">E-mail:</label>
		<input type="email" name="email" id="email" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="email" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="nome">Nome:</label> 
		<form:input path="nome" id="nome" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="nome" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="sobrenome">Sobrenome:</label> 
		<form:input path="sobrenome" id="sobrenome" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="sobrenome" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="cpf">CPF:</label> 
		<form:input path="cpf" id="cpf" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="cpf" class="control-label" /></span>
	</div>
	<div class="form-group col-md-9">
		<label for="endereco">Endereço:</label> 
		<form:input path="endereco" id="endereco" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="endereco" class="control-label" /></span>
	</div>
	<div class="form-group col-md-3">
		<label for="numero">Nº:</label> 
		<form:input path="numero" id="numero" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="numero" class="control-label" /></span>
	</div>
	<div class="form-group ">
		<label for="cep">CEP:</label> 
		<form:input path="cep" id="cep" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="cep" class="control-label" /></span>
	</div>
	<div class="form-group">
		<label for="telefone">Telefone:</label> 
		<form:input path="telefone" id="telefone" class="form-control"/>
		<span style="color:red;font-weight:bold"><form:errors path="telefone" class="control-label" /></span>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form:form>
</body>
<%@include file="/WEB-INF/pages/rodape.jsp" %>
</div>