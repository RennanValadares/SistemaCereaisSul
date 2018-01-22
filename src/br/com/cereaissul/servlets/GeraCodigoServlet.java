package br.com.cereaissul.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.cereaissul.DAO.ContratosDao;
import br.com.cereaissul.contrato.ContratoDeCompra;

//@WebServlet("/geraCodigo")
public class GeraCodigoServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String nomeProdutor = request.getParameter("nomeProdutor");
		String produto = request.getParameter("produto");
		long quantidadeKg = Long.parseLong(request.getParameter("quantidadeKg"));
		String dataEmTexto = request.getParameter("dataNegociacao");
		Calendar dataNegociacao = null;
		
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNegociacao = Calendar.getInstance();
			dataNegociacao.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de Conversão de Data");
			return;
		}
		
		double valor = Double.parseDouble(request.getParameter("valor"));
		
		ContratoDeCompra contrato = new ContratoDeCompra();
		contrato.setDataNegociacao(dataNegociacao);
		contrato.setNomeProdutor(nomeProdutor);
		contrato.setProduto(produto);
		contrato.setQuantidadeKg(quantidadeKg);
		contrato.setValor(valor);
		
		Connection connection = (Connection) request.getAttribute("conexao");
		ContratosDao dao = new ContratosDao(connection);
		dao.adiciona(contrato);
		
		out.println("<html> <head> <title> Numero de contrato </title> </head> <body>");
		out.println("O número de contrato é: " + dao.retornaMaior().getId() + " para o produtor " + dao.retornaMaior().getNomeProdutor() + "</body> </html>");
//		HttpSession session = request.getSession();
//		session.setAttribute("id", contrato.getId());
//		RequestDispatcher rd = request.getRequestDispatcher("/codigoGerado.jsp");
//		rd.forward(request, response);
	}
}
