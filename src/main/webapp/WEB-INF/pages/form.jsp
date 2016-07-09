<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="carrinho" action="${s:mvcUrl('CC#adicionaCarrinho').build()}" method="post">
		ID: <form:input path="id"/><br>
		Nome: <form:input path="nome"/><br>
		Preço: <form:input path="preco"/><br>
		Quantidade: <form:input path="quantidade"/><br>
		<input type="submit" value="Add to Cart"> 
	</form:form>
</body>
</html>