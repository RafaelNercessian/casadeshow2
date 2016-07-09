package com.casadeshow.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.casadeshow.modelo.Carrinho;

@Controller
@Scope("session")
public class CarrinhoController {

	private List<Carrinho> lista;

	@RequestMapping("/form")
	public String form(ModelMap model) {
		model.put("carrinho", new Carrinho());
		return "form";
	}

	@RequestMapping(value = "/adicionaCarrinho", method = RequestMethod.POST)
	public String adicionaCarrinho(
			@ModelAttribute("carrinho") Carrinho carrinho,HttpSession session) {
		if (lista == null) {
			lista = new ArrayList<Carrinho>();
			lista.add(carrinho);
		} else {
			boolean flag = false;
			for (Carrinho carrinhoDaLista : lista) {
				if (carrinhoDaLista.getId() == carrinho.getId()) {
					carrinhoDaLista.setQuantidade(carrinhoDaLista
							.getQuantidade() + carrinho.getQuantidade());
					flag = true;
					break;
				}
			}

			if (flag == false) {
				lista.add(carrinho);
			}
		}
		session.setAttribute("lista", lista);
		session.setAttribute("total", getTotal(lista));
		return "carrinho";
	}

	public float getTotal(List<Carrinho> lista) {
		float total = 0;
		for (Carrinho carrinho : lista) {
			total+=(carrinho.getPreco()*carrinho.getQuantidade());
		}
		return total;
	}
}
