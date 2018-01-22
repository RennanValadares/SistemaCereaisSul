<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="campod"%>

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
</head>
<body>

	<!-- Header -->
	<div id="header">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="contrato-de-compra.jsp">Contrato de Compra</a></li>
					<li><a href="contrato-de-venda.jsp">Contrato de Venda</a></li>
					<li><a href="relatorios.jsp">Relatórios</a></li>

				</ul>
			</nav>
		</div>
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">Contrato de Venda</a>
				</h1>
				<span class="tag">Cereais Sul</span>
			</div>
		</div>
	</div>
	<!-- Header -->

	<!-- Main -->
	<div id="main">
		<div id="content" class="container">
			<section>
				<header>
					<form action="geraCodigo" method="post">
						<label for="nomeCliente">Nome do Cliente: </label><br> <input
							type="text" name="nomeCliente" /><br> Produto: <br> <input
							type="text" name="produto" /><br> Quantidade em Kilos: <br>
						<input type="text" name="quantidadeKg" /><br> Data da
						Negociação : <br>
						<campod:campoData id="dataNegociacao" />
						<br> Valor (Liquido): <br> <input type="text"
							name="valor" /><br> <br> <input type="submit"
							value="Gerar Contrato" />
					</form>
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