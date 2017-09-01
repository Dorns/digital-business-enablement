<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:template title="Cadastro de Petiscos">
	<h1>Cadastro de Petisco</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if>
	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="id-nome">Nome</label> <input type="text" name="nome"
				id="id-nome" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-valor">Valor</label> <input type="text" name="valor"
				id="id-valor" class="form-control">
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form>
</tag:template>