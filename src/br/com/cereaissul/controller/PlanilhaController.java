package br.com.cereaissul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.cereaissul.sisc.parametros.ParamCompra;

@Controller
public class PlanilhaController {
	@RequestMapping("adicionarNovoParamCompra")
	public ModelAndView novoParamCompra(@ModelAttribute("novoParamCompra") ParamCompra novoParamCompra) {
		ModelAndView mv = new ModelAndView("Planilha/datasCompra");
		mv.addObject("novoParamCompra", novoParamCompra);
		return mv;
	}
	@RequestMapping("parametrosDeCompra")
	public String parametrosDeCompra() {
		return "Planilha/parametrosDeCompra";
	}
}
