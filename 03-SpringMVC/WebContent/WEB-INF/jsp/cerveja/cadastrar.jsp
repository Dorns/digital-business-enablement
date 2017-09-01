<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:template title="Cadastro de Cerveja">
	<jsp:attribute name="scripts">
		<p>Aqui vão os scripts...</p>
	</jsp:attribute>
	<jsp:body>
		<h1>Cadastro de Cerveja</h1>
		<form action="cadastrar" method="post">
			<div class="form-group">
				<label for="id-nome">Nome</label> <input type="text" name="nome"
					id="id-nome" class="form-control">
			</div>
			<div class="form-group">
				<label for="id-preco">Preco</label> <input type="text" name="preco"
					id="id-preco" class="form-control">
			</div>
			<div class="form-group">
				<label for="id-tipo">Tipo</label> <input type="text" name="tipo"
					id="id-tipo" class="form-control">
			</div>
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>
	</jsp:body>
</tag:template>