package com.casadeshow.controller;

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

	@RequestMapping("/carrinhoCompras")
	public String carrinhoCompras(Model model){
		model.addAttribute("evento", eventoComprar);
		return "comprar";
	}

	@RequestMapping(value="/comprar",method=RequestMethod.POST)
	public String comprar(HttpServletRequest request,
			@ModelAttribute("evento") Evento evento,
			BindingResult result,Model model){
		eventoComprar=evento;
		return "redirect:/carrinhoCompras";
	}
}
