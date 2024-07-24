package com.srs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller

public class ContactController {

    @Autowired
    private Contactservice contactservice;

    @PostMapping("/submitContactForm")
    public String createUser(@ModelAttribute Problem prob, RedirectAttributes redirectAttributes) {
        contactservice.saveUser(prob);
        redirectAttributes.addFlashAttribute("message", "User created successfully!");
        return "redirect:/index"; 
    }
    @RequestMapping("/form2")
    public String showform2() {
    	return "form2";
    }
    @RequestMapping("/cart")
    public String showCart() {
    	return "cart";
    }
}
