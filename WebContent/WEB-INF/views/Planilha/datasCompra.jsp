<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="campod"%>

<%-- ${novoParamCompra.tipoFreteCompra} --%>
<!DOCTYPE HTML>
<html>
<head>
<style>
p.indent {
	padding-left: 20em
}
</style>
<style>
.campo1 {
	float: left;
}
</style>

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
					<li><a href="/CereaisSulWeb/inicial">Página Inicial</a></li>
					<!-- 					<li><a href="/CereaisSulWeb/novoContratoDeCompra">Contrato de Compra</a></li> -->
					<!-- 					<li><a href="/CereaisSulWeb/novoContratoDeVenda">Contrato de Venda</a></li> -->
					<!-- 					<li><a href="/CereaisSulWeb/relatorios">Relatórios</a></li> -->
					<li><a href="logout">Logout</a></li>

				</ul>
			</nav>
		</div>
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">Datas de Embarque de Compra</a>
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
					<form action="enviaDatasDeEmbarque" method="post">
						<p class="campo1">
							Data do 1º Carregamento: <br>
							<campod:campoData id="data1" />
							<br> Qt do 1º Carregamento: <br> <input type="number"
								name="qt1" /><br>
							<br>
							<br> Data do 2º Carregamento: <br>
							<campod:campoData id="data2" />
							<br> Qt do 2º Carregamento: <br> <input type="number"
								name="qt2" /><br>
							<br>
							<br> Data do 3º Carregamento: <br>
							<campod:campoData id="data3" />
							<br> Qt do 3º Carregamento: <br> <input type="number"
								name="qt3" />
						</p>

						<p class="indent">
							Data do 4º Carregamento: <br>
							<campod:campoData id="data4" />
							<br> Qt do 4º Carregamento: <br> <input type="number"
								name="qt4" /><br>
							<br>
							<br> Data do 5º Carregamento: <br>
							<campod:campoData id="data5" />
							<br> Qt do 5º Carregamento: <br> <input type="number"
								name="qt5" /><br>
							<br>
							<br> Data do 6º Carregamento: <br>
							<campod:campoData id="data6" />
							<br> Qt do 6º Carregamento: <br> <input type="number"
								name="qt6" /><br>
							<br>
						</p>





						<br>
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
							type="submit" value="Enviar" />
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