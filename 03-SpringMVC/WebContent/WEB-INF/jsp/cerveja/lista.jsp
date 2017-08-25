<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:template title="Tipo de Cerveja">
	<h1>Lista de Cervejas</h1>
	<table class="table">
		<tr>
			<th>Nome</th>
			<th>Preço</th>
			<th>Tipo</th>
		</tr>
		<c:forEach items="${lista }" var="l">
			<tr>
				<td>${l.nome}</td>
				<td>${l.preco}</td>
				<td>${l.tipo}</td>
			</tr>
		</c:forEach>
	</table>
</tag:template>