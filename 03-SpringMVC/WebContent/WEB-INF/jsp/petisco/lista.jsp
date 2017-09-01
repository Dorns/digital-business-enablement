<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:template title="Petiscos">
	<h1>Lista de Petiscos</h1>
	<table class="table">
		<tr>
			<th>Nome</th>
			<th>Valor</th>
		</tr>
		<c:forEach items="${lista }" var="l">
			<tr>
				<td>${l.nome}</td>
				<td>${l.valor}</td>
			</tr>
		</c:forEach>
	</table>
</tag:template>