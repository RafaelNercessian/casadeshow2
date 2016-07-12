package com.casadeshow.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home(HttpSession session){
		session.setAttribute("itensNoCarrinho", 0);
		return "home";
	}
	
	@RequestMapping("/hello")
	public String hello(){
		return "hello";
	}
}
