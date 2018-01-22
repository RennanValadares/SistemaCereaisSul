<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Relação de Contratos</title>

</head>
<body style='background-color: lightgray;'>
	<h2>Relação de Contratos de Compra</h2>
	<br>
	<a href="http://192.168.1.110:8080/CereaisSulWeb/"><font size="5">Voltar</font></a>
	<br>
	<br>
	<jsp:useBean id="dao" class="br.com.cereaissul.DAO.ContratosDao" />
	<table border="1">
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
					<c:when test="${empty contato.email}">
						<td>${contrato.id }</td>
					</c:when>
					<c:otherwise>
						<td>ID não preenchida</td>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty contato.nomeProdutor}">
						<td>${contrato.nomeProdutor }</td>
					</c:when>
					<c:otherwise>
						<td>Nome do produtor não preenchido</td>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty contato.produto}">
						<td>${contrato.produto }</td>
					</c:when>
					<c:otherwise>
						<td>Produto não preenchido</td>
					</c:otherwise>
				</c:choose>
				<td>${contrato.quantidadeKg}</td>
				<td><fmt:formatDate value="${contrato.dataNegociacao.time }"
						pattern="dd/MM/yyyy" />
				<td>${contrato.valor}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>