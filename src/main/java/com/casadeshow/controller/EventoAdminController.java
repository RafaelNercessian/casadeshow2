package com.casadeshow.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.casadeshow.dao.EventoDao;
import com.casadeshow.modelo.Evento;
import com.casadeshow.validator.EventoValidator;

@Controller
public class EventoAdminController {

	@Autowired
	private EventoDao dao;
	private byte[] bFile;

	@Autowired
	private EventoValidator validator;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}

	@RequestMapping("/admin/listaEventosAdmin")
	public String evento(Model model) {
		List<Evento> eventos = dao.listaEventos();
		for (Evento evento : eventos) {
			byte[] bAvatar = evento.getBytesImagem();
			try {
				FileOutputStream fos = new FileOutputStream(
						"C:\\Users\\Rafael\\workspace\\casadeshow2\\src\\main\\webapp\\resources\\images\\"
								+ evento.getNomeDaFoto());
				fos.write(bAvatar);
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("eventos", eventos);
		return "listaEventosAdmin";
	}

	@RequestMapping("/admin/adicionaEvento")
	public String adicionaEvento(Model model) {
		Evento evento = new Evento();
		model.addAttribute("evento", evento);
		return "adicionaEvento";
	}

	@RequestMapping(value = "/admin/adiciona", method = RequestMethod.POST)
	public String adiciona(HttpServletRequest request,
			@ModelAttribute("evento") @Validated Evento evento,
			BindingResult result, RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			return "adicionaEvento";
		}

		MultipartFile multipartFile = evento.getImagem();
		String fileName = multipartFile.getOriginalFilename();
		try {
			File file = new File(request.getServletContext().getRealPath(
					"/resources/images"), fileName);
			multipartFile.transferTo(file);
			bFile = new byte[(int) file.length()];
			FileInputStream fileInputStream = new FileInputStream(file);
			fileInputStream.read(bFile);
			fileInputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("msg",
				"Evento adicionado com sucesso!");
		evento.setBytesImagem(bFile);
		evento.setNomeDaFoto(fileName);
		dao.adiciona(evento);
		return "redirect:/listaEventos";
	}

	@RequestMapping("/admin/detalheEvento/{id}")
	public String edita(@PathVariable Integer id, Model model) {
		Evento buscaEvento = dao.buscaEvento(id);
		model.addAttribute("evento", buscaEvento);
		return "editaEvento";
	}

	@RequestMapping("/admin/deletaEvento/{id}")
	public String remove(@PathVariable Integer id) {
		dao.remove(id);
		return "redirect:/listaEventos";
	}
	
	@RequestMapping("/administrador")
	public String administrador(){
		return "administrador";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
	    return "login";
	}
	 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/login?logout";
	}

}
