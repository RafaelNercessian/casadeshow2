package com.casadeshow.controller;

import java.math.BigDecimal;
import java.math.RoundingMode;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.casadeshow.modelo.Evento;

@Controller
public class CarrinhoComprasContoller {

	private Evento eventoComprar;
	private BigDecimal precoTotal;

	@RequestMapping("/carrinhoCompras")
	public String carrinhoCompras(Model model) {
		int quantidadeInt = Integer.parseInt(eventoComprar.getQuantidade());
		BigDecimal quantidade = new BigDecimal(quantidadeInt);
		int i = eventoComprar.getPreco().indexOf(",");
		StringBuilder precoSemVirgula = new StringBuilder(
				eventoComprar.getPreco());
		precoSemVirgula.setCharAt(i, '.');

		float precoInt = Float.parseFloat(precoSemVirgula.toString());
		BigDecimal preco = new BigDecimal(precoInt);
		precoTotal = preco.multiply(quantidade);
		BigDecimal precoTotalArredondado = precoTotal.setScale(2, RoundingMode.CEILING);
		eventoComprar.setPrecoTotal(precoTotalArredondado);
		model.addAttribute("evento", eventoComprar);
		return "comprar";
	}

	@RequestMapping(value = "/comprar", method = RequestMethod.POST)
	public String comprar(HttpServletRequest request,
			@ModelAttribute("evento") Evento evento, BindingResult result,
			Model model) {
		eventoComprar = evento;
		return "redirect:/carrinhoCompras";
	}
}
