<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
<div class="row" >
		<form:form id="expenseView" method="post" commandName="evento" action="${s:mvcUrl('EC#pesquisaEventos').build()}">
        <div style="margin-top:100px" class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                   <input name="nome" class="form-control" placeholder="Buscar evento">
                    <span class="input-group-addon">
                        <button type="submit" id="busca">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
            </div>
        </div>
		</form:form>
	
	</div>
	<table style="margin-top: 60px;"
		class="table table-hover table-striped">
		<thead>
			<tr>
				<th></th>
				<th>Nome</th>
				<th>Local</th>
				<th>Cidade</th>
				<th>Data</th>
				<th>Preço</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${eventos}" var="evento">
				<tr>
					<td><img width="100"
						src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>'></td>
					<td>${evento.nome}</td>
					<td>${evento.local}</td>
					<td>${evento.cidade}</td>
					<td>${evento.data}</td>
					<td><strong>R$ ${evento.preco}</strong></td>
					<td><a
						href="${s:mvcUrl('EC#detalhe').arg(0,evento.id).build()}"><span
							class="glyphicon glyphicon-info-sign" /></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
	<%@include file="/WEB-INF/pages/rodape.jsp"%>
