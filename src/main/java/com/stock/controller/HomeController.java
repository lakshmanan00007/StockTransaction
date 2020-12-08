package com.stock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("/home")
public class HomeController {

	@GetMapping
	public String homePage() {
		return "home";
	}
	
	@GetMapping("/popupPage")
	public String popuppage() {
		return "Popup";
	}
	
		
}
