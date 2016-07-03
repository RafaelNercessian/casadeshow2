package com.casadeshow.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.casadeshow.dao.EventoDao;
import com.casadeshow.modelo.Evento;

@Controller
public class EventoController {

	@Autowired
	private EventoDao dao;
	private byte[] bFile;
	
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
	
	@RequestMapping("/adicionaEvento")
	public String adicionaEvento(Model model){
		Evento evento = new Evento();
		model.addAttribute("evento",evento);
		return "adicionaEvento";
	}
	
	@RequestMapping(value="/adiciona",method=RequestMethod.POST)
	public String adiciona(HttpServletRequest request,
			@ModelAttribute("evento") Evento evento){
		MultipartFile multipartFile = evento.getImagem();
		String fileName = multipartFile.getOriginalFilename();
		try {
			File file = new File(request.getServletContext().getRealPath("/resources/images"), fileName);
			multipartFile.transferTo(file);
			bFile = new byte[(int) file.length()];
		     FileInputStream fileInputStream = new FileInputStream(file);
		     //convert file into array of bytes
		     fileInputStream.read(bFile);
		     fileInputStream.close();
	        } catch (Exception e) {
		     e.printStackTrace();
	        }
		evento.setBytesImagem(bFile);
		evento.setNomeDaFoto(fileName);
		dao.adiciona(evento);
		return "redirect:/listaEventos";
	}
	
}
