package com.srs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @PostMapping("/submitMeal")
    public String createUser(@ModelAttribute Cart cart, RedirectAttributes redirectAttributes) {
        User user = cartService.findingUser(cart.getUserName());
        if (user == null) {
            return "redirect:/signin";
        } else {
            cart.setUser(user);
            cartService.saveCart(cart);
            redirectAttributes.addFlashAttribute("message", "Cart booked successfully!");
            return "redirect:/index";
        }
    }

    @GetMapping("/userDetails")
    public String getUserDetails(String username, Model model) {
        User user = cartService.findingUser(username);
        model.addAttribute("user", user);
        System.out.println(user.toString());
        return "userDetails";
    }
}
