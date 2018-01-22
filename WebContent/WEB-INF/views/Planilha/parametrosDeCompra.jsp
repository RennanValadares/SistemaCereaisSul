<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="campod"%>

<!DOCTYPE HTML>
<html>
<head>
<style>
.campo1 {
	float: left;
}

INPUT.MeuInput {
	width: 100px;
	height: 50px;
	font-family: verdana;
	background-color: lightgreen;
	color: black;
}
</style>



<title>Cereais Sul - SISC</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'></link>
<link rel="stylesheet" href="css/skel-noscript.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-desktop.css" />

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<script language="javascript">
	function mostra(item) {
		item.style.display = '';
	}

	function esconde(item) {
		item.style.display = 'none'
	}
</script>
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
				<h1>
					<a href="#">Informações da Compra</a>
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
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<font size="5">Selecione as informações de Compra</font> <br>
					<br><br>
					Material: 
					<select name="material">
					<option value="MILHO">MILHO</option>
					<option value="SOJA">SOJA</option>
					<option value="FEIJAO">FEIJAO</option>
					</select>


					
					<form action="adicionarNovoParamCompra" method="post">
						<br> &emsp;&emsp;&emsp;Quantidade de
						Sacos:&emsp;&emsp;&emsp;&emsp;&emsp;Estado de Saida do
						Material:&emsp;&emsp;&emsp;&emsp;&emsp;Estado da Filial:
						&emsp;&emsp;&emsp;&emsp;&emsp;Atividade:&emsp;&emsp;&emsp;&emsp;&emsp;PRO
						RURAL:&emsp;&emsp;&emsp;&emsp;&emsp;LIMINAR FUNRURAL:
						&emsp;&emsp;&emsp;&emsp;&emsp; <br>&emsp;&emsp;<input
							type="number" name="qtSacos">



						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<select
							name="estadoSaidaMaterial">
							<option value="GO">GO</option>
							<option value="DF">DF</option>
							<option value="MG">MG</option>
						</select>


						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<select
							name="estadoFilial">
							<option value="GO">GO</option>
							<option value="MG">MG</option>
						</select> &nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;<select
							name="atividadeCompra">
							<option value="PRODUTOR">PRODUTOR</option>
							<option value="COOPERATIVA">COOPERATIVA</option>
							<option value="CEREALISTA">CEREALISTA</option>
						</select> &nbsp; &nbsp;&emsp;&emsp;&emsp;<select name="proRural">
							<option value="SIM">SIM</option>
							<option value="NAO">NÃO</option>
						</select> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<select
							name="funRural">
							<option value="SIM">SIM</option>
							<option value="NAO">NÃO</option>
						</select><br>
						<br>
						<br>
						<br> Possui Frete de Compra ?
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span
							id="tst" style="display: 'none'">Valor do Frete/Tonelada
							de Compra (R$):&emsp;&emsp;&emsp;
							&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Pessoa
							Física ou Jurídica?</span> <br> &nbsp; &nbsp;&emsp;<span id="sim"
							onClick="mostra(frete);mostra(frete2);mostra(tst)"><input
							type="radio" name="tipoFreteCompra" value="SIM" checked="checked"></span>SIM


						<span id="nao"
							onClick="esconde(frete);esconde(frete2);esconde(tst);"><input
							type="radio" name="tipoFreteCompra" value="NAO"></span>NÃO


						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp; <span id="frete" style="display: 'none'">
							<input type="number" name="valorFreteCompra" size="20" value="0">
						</span>


						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp; <span
							id="frete2" style="display: 'none'"> <select
							name="pfOuPjCompra">
								<option value=""></option>
								<option value="PJ">Pessoa Jurídica</option>
								<option value="PF">Pessoa Física</option>
						</select>
						</span>

						<hr style="color: black">

						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						<font size="5">Selecione as informações de Venda</font> <br>
						<br>
						<br>
						<br>



						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Estado
						do Cliente (Venda):
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Atividade do Cliente (Venda):
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Possui
						Frete de Venda ? <br> <select name="estadoCliente">
							<option value="GO">GO</option>
							<option value="MG">MG</option>
							<option value="SUL">SUL/SUDESTE(PR, RS, RJ, SC OU SP)</option>
							<option value="EXP">EXPORTAÇÃO</option>
							<option value="OUTROS">OUTROS(AC. AL, AP, AM, BA, CE,
								DF, ES, MA, MT, MS, PA, PB, PE, PI, RN, RO, RR, SE, TO)</option>
						</select> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; <select
							name="atividadeVenda">
							<option value="PROD">PRODUTOR RURAL</option>
							<option value="RACOES">INDUSTRIAS DE RAÇÕES</option>
							<option value="GRANJA">GRANJA</option>
							<option value="HUMANO">CONSUMO HUMANO</option>
							<option value="OUTROS">OUTROS</option>
						</select>

						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

						<span id="sim" onClick="mostra(frete3);mostra(frete4);"><input
							type="radio" name="tipoFreteVenda" value="SIM" checked="checked"></span>SIM


						<span id="nao" onClick="esconde(frete3);esconde(frete4);"><input
							type="radio" name="tipoFreteVenda" value="NAO"></span>NÃO <br>
						<br>
						<br> <span id="frete3" style="display: 'none'"> <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Valor
							do Frete/Tonelada de Venda (R$):
							&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							Pessoa Física ou Jurídica? <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
							type="number" name="valorFreteVenda" size="20" value="0">
							&ensp;
						</span>


						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span
							id="frete4" style="display: 'none'"> <select
							name="pfOuPjVenda">
								<option value=""></option>
								<option value="PJ">Pessoa Jurídica</option>
								<option value="PF">Pessoa Física</option>
						</select>
						</span>



						<div style='text-align: center'>
							<br> <br> <input type="submit" value="Gravar"
								class="MeuInput">
						</div>
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