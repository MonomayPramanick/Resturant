package com.srs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

	@RequestMapping("/index")
	public String showindex() {
		return "index";
	}
	
	
	@RequestMapping("/about")
	public String showabout() {
		
		return "about";
	}
	
	@RequestMapping("/contact")
	public String showcontact() {
		
		return "contact";
	}
	
	
}
