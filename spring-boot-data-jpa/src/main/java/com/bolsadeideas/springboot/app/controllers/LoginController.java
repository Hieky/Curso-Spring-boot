package com.bolsadeideas.springboot.app.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String Login(Model model, Principal principal) {
		
		if (principal != null)
			return "redirect:/";
		
		return "login";
		
	}
	
}
