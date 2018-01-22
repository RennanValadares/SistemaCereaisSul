package br.com.cereaissul.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cereaissul.DAO.ContratosDao;
import br.com.cereaissul.contrato.ContratoDeCompra;

@WebServlet("/geraRelatorio")
public class GeraRelatorioServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Connection connection = (Connection) request.getAttribute("conexao");
		ContratosDao dao = new ContratosDao(connection);
		List<ContratoDeCompra> pegaLista = dao.getLista();
		out.println("<html><head><title>Lista de contratos</title><h1 align='center'>Lista de Contratos:</h1></head>");
		out.println("<body>");
		out.println("<table align='center' border=\"1\">");
		out.println(
				"<tr><th>ID</th><th>NOME DO PRODUTOR</th><th>PRODUTO</th><th>QUANTIDADE EM KG</th><th>DATA DE NEGOCIAÇÃO</th><th>VALOR</th></tr>");
		for (ContratoDeCompra contrato : pegaLista) {
			out.println("<tr align='center'><td>" + contrato.getId() + "</td><td>" + contrato.getNomeProdutor()
					+ "</td><td>" + contrato.getProduto() + "</td><td>" + contrato.getQuantidadeKg() + "</td><td>"
					+ sdf.format(contrato.getDataNegociacao().getTime()) + "</td><td>" + contrato.getValor()
					+ "</td></tr>");
		}
		out.println("</table></body></html>");

	}
}
