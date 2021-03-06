package com.casadeshow.controller;

import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.casadeshow.dao.EventoDao;
import com.casadeshow.modelo.Evento;

@Controller
public class EventoController {

	@Autowired
	private EventoDao dao;
	
	
	@RequestMapping("/listaEventos")
	public String evento(Model model){
		List<Evento> eventos = dao.listaEventos();
		for (Evento evento : eventos) {
			 byte[] bAvatar = evento.getBytesImagem();
		       try{
		            FileOutputStream fos = new FileOutputStream("C:\\Users\\Rafael\\workspace\\casadeshow2\\src\\main\\webapp\\resources\\images\\"+evento.getNomeDaFoto()); 
		            fos.write(bAvatar);
		            fos.close();
		        }catch(Exception e){
		            e.printStackTrace();
		        }
		}
		model.addAttribute("eventos",eventos);
		return "listaEventos";
	}
	
	@RequestMapping("/listaEventos/detalhe/{id}")
	public String detalhe(@PathVariable Integer id,Model model){
		Evento buscaEvento = dao.buscaEvento(id);
		model.addAttribute("evento", buscaEvento);
		return "detalhe";
	}
	
	@RequestMapping(value="/listaEventos",method=RequestMethod.POST)
	public String pesquisaEventos(HttpServletRequest request,
			@ModelAttribute("evento") Evento evento,
			BindingResult result,Model model){
		List<Evento> eventos = dao.procuraEventos(evento.getNome());
		for (Evento eventoDoFor : eventos) {
			 byte[] bAvatar = evento.getBytesImagem();
		       try{
		            FileOutputStream fos = new FileOutputStream("C:\\Users\\Rafael\\workspace\\casadeshow2\\src\\main\\webapp\\resources\\images\\"+eventoDoFor.getNomeDaFoto()); 
		            fos.write(bAvatar);
		            fos.close();
		        }catch(Exception e){
		            e.printStackTrace();
		        }
		}
		model.addAttribute("eventos",eventos);
		return "listaEventos";
	}
	
	

}
