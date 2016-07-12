package com.casadeshow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.casadeshow.dao.UserRolesDao;
import com.casadeshow.dao.UsersDao;
import com.casadeshow.modelo.UserRoles;
import com.casadeshow.modelo.Users;

@Controller
public class LoginController {
	
	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private UserRolesDao userRolesDao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
		@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Usuário e senha inválidos!");
		}

		if (logout != null) {
			model.addObject("msg", "Você foi deslogado!");
		}
		model.setViewName("login");

		return model;

	}
	
	@RequestMapping("/cadastro")
	public String cadastro(){
		return "cadastro";
	}
	
	@Transactional
	@RequestMapping(value = "/cadastro", method = RequestMethod.POST)
	public String adiciona(@ModelAttribute("users") Users users,BindingResult result,RedirectAttributes redirectAttributes) {
		usersDao.adiciona(users);
		UserRoles userRoles = new UserRoles();
		userRoles.setUsers(users);
		userRoles.setRole("ROLE_USER");
		userRolesDao.adiciona(userRoles);
		redirectAttributes.addFlashAttribute("msg", "Usuário cadastrado com sucesso!");
		return "redirect:/cadastro";
	}
}
