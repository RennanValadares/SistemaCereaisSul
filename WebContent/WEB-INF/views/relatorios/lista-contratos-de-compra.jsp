<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="campod"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>

<title>Cereais Sul - SISC</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-desktop.css" />
</noscript>
<style>
table, th, td {
	border: 1px solid black;
}

th, td {
	padding: 10px;
}
</style>
</head>
<body>

	<!-- Header -->
	<div id="header">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="/CereaisSulWeb/inicial">Página Inicial</a></li>
<!-- 					<li><a href="/CereaisSulWeb/novoContratoDeCompra">Contrato -->
<!-- 							de Compra</a></li> -->
<!-- 					<li><a href="/CereaisSulWeb/novoContratoDeVenda">Contrato -->
<!-- 							de Venda</a></li> -->
<!-- 					<li><a href="/CereaisSulWeb/relatorios">Relatórios</a></li> -->
					<li><a href="logout">Logout</a></li>
				</ul>
			</nav>
		</div>
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h2>
					<a href="#">Relatório de Contratos de Compra</a>
				</h2>

			</div>
		</div>
	</div>
	<!-- Header -->

	<!-- Main -->
	<div id="main">
		<div id="content" class="container">
			<section>
				<header>
					<jsp:useBean id="dao"
						class="br.com.cereaissul.DAO.ContratosDeCompraDao" />
					<table>
						<tr>
							<th>Numero de Contrato</th>
							<th>Nome do Produtor</th>
							<th>Produto</th>
							<th>Quantidade (KG)</th>
							<th>Data da Negociação</th>
							<th>Valor Total do Contrato</th>
						</tr>

						<c:forEach var="contrato" items="${dao.lista}" varStatus="id">
							<tr bgcolor="#${id.count % 2 == 0 ? 'aaee80' : 'ffffff' }">
								<c:choose>
									<c:when test="${not empty contrato.id}">
										<td>${contrato.id }</td>
									</c:when>
									<c:otherwise>
										<td>ID não preenchida</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${not empty contrato.nomeProdutor}">
										<td>${contrato.nomeProdutor }</td>
									</c:when>
									<c:otherwise>
										<td>Nome do produtor não preenchido</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${not empty contrato.produto}">
										<td>${contrato.produto }</td>
									</c:when>
									<c:otherwise>
										<td>Produto não preenchido</td>
									</c:otherwise>
								</c:choose>
								<td>${contrato.quantidadeKg}</td>
								<td><fmt:formatDate
										value="${contrato.dataNegociacao.time }" pattern="dd/MM/yyyy" />
								<td>${contrato.valor}</td>
							</tr>
						</c:forEach>

					</table>




				</header>
			</section>
		</div>
	</div>
	<!-- /Main -->

	<!-- Tweet -->
	<div id="tweet">
		<div class="container">
			<section>
				<blockquote>&ldquo;Com filiais em Minas e Goias a
					Cereais Sul vem crescendo em busca de se tornar uma das maiores
					tradings do Brasil !&rdquo;</blockquote>
			</section>
		</div>
	</div>
	<!-- /Tweet -->

	<!-- Footer -->
	<div id="footer">
		<div class="container">
			<section>
				<header>
					<h2>Entre em Contato !</h2>
					<span class="byline">Avenida Circular n° 209 ,<br>
						Formosinha, Formosa - GO CEP: 73.813-170<br> Unidade 2:
						Rodovida Buritis/Serra Bonita km 65<br> CEP: 38.660-000 Zona
						Rual - Buritis - MG <br> Telefone: (61) 3642-2600

					</span>
				</header>
			</section>
		</div>
	</div>
	<!-- /Footer -->

	<!-- Copyright -->
	<div id="copyright">
		<div class="container">Design by Rennan Valadares</div>
	</div>


</body>
</html>