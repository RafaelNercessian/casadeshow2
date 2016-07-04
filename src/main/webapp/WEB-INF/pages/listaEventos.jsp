<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ include file="/WEB-INF/pages/cabecalho.jsp"%>
<div class="container">
  <table style="margin-top:60px;" class="table table-hover table-striped">
    <thead>
      <tr>
      	<th></th>
        <th>Nome</th>
        <th>Descrição</th>
        <th>Local</th>
        <th>Cidade</th>
        <th>Data</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${eventos}" var="evento">
      <tr>
 		<td><img width="100" src='<c:url value="/resources/images/${evento.nomeDaFoto}"/>'></td>
        <td>${evento.nome}</td>
        <td>${evento.descricao}</td>
        <td>${evento.local}</td>
        <td>${evento.cidade}</td>
        <td>${evento.data}</td>
        <td><a href="${s:mvcUrl('EC#detalhe').arg(0,evento.id).build()}"><span class="glyphicon glyphicon-info-sign"/></a>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <%@include file="/WEB-INF/pages/rodape.jsp"%>
  </div>
  