package com.srs;

import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserProfileController {

    @Autowired
    private UserService userService;
    @GetMapping("/profile")
    public String viewProfile(Principal principal, Model model) {
        if (principal == null) {
            System.out.println("User not authenticated");
            return "redirect:/signin";
        }

        String username = principal.getName();
        System.out.println("Username: " + username);
        User user = userService.findByUsername(username);
        model.addAttribute("user", user);

        return "profile";
    }

}
