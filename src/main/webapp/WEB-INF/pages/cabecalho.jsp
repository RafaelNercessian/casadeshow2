<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Casa de show</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/carousel.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/datepicker.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
	<div class="navbar-wrapper">
		<nav class="navbar navbar-inverse navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<c:url value="/"/>" /><strong>Home</strong></a></li>
						<li><a href='<c:url value="/listaEventos"/>' /><strong>Eventos</strong></a></li>
						<li><a href='<c:url value="/login"/>' /><strong><span class="glyphicon glyphicon-log-in"></span> Login</strong></a></li>
						<li><a href='<c:url value="/cadastro"/>' /><strong><span class="glyphicon glyphicon-pencil"></span> Cadastro</strong></a></li>
						<li style="position: absolute;left: 85%"><a href='<c:url value="/carrinhoDeCompras"/>' /><span
							class="glyphicon glyphicon-shopping-cart" style="font-size: 20px"><span
								style="font-family: Helvetica;"> (${itensNoCarrinho})</span></span></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>