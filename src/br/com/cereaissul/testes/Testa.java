package br.com.cereaissul.testes;

import java.util.Calendar;

import br.com.cereaissul.DAO.ContratosDao;
import br.com.cereaissul.contrato.ContratoDeCompra;

public class Testa {
	public static void main(String[] args) {

		ContratosDao dao = new ContratosDao();
		ContratoDeCompra contrato = new ContratoDeCompra();
		contrato.setDataNegociacao(Calendar.getInstance());
		contrato.setNomeProdutor("Teste");
		contrato.setProduto("s");
		contrato.setQuantidadeKg(1000);
		contrato.setValor(22.5);
		dao.adiciona(contrato);
		System.out.println("Contrato adicionado !");
		System.out.println(dao.retornaMaior());
	}
}
