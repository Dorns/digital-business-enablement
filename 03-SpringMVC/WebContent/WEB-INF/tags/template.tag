<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="scripts" fragment="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title }</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="#">Spring MVC</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="<c:url value="/"></c:url>">Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/cerveja/cadastrar"></c:url>">Cadastro</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/cerveja/listar"></c:url>">Lista</a></li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<jsp:doBody />
	</div>
	<p class="text-center">Todos os direitos reservados.</p>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>">
		
	</script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js"/>">
		
	</script>
	<jsp:invoke fragment="scripts"></jsp:invoke>
</body>
</html>
