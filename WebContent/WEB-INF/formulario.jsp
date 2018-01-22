<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="campod"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulário SISC Cereais</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body style="background-color: lightgray;">
	

	<h2>GERAR CONTRATO DE COMPRA</h2>
	<form action="geraCodigo">
		Nome do Produtor: <br> <input type="text" name="nomeProdutor" /><br>
		Produto: <br> <input type="text" name="produto" /><br>
		Quantidade em Kilos: <br> <input type="text" name="quantidadeKg" /><br>
		Data da Negociação (DD/MM/YYYY): <br>
		<campod:campoData id="dataNegociacao" />
		<br> Valor (Total): <br> <input type="text" name="valor" /><br>
		<br> <input type="submit" value="Gerar Contrato" />
	</form>
	<br>
	<h4>Clique abaixo para gerar o relatório de Contratos !</h4>
	<form action="lista-contratos.jsp">
		<input type="submit" value="Gerar Relatório de Contratos">
	</form>
	
</body>
</html>