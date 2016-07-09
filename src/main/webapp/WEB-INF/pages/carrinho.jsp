<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Your cart</h1>
	<table border="1" cellpadding="10px" width="100%" style="border-collapse: collapse;">
		<c:forEach items="${lista}" var="c">
			<tr>
				<td>${c.id}</td>
				<td>${c.nome}</td>
				<td>${c.preco}</td>
				<td>${c.quantidade}</td>
				<td>Remove</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan="5">
					Total: R$ <%= request.getSession().getAttribute("total") %>
				</td>
			</tr>
	</table>
</body>
</html>