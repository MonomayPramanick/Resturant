package com.srs;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SigninController {

    @GetMapping("/signin")
    public String showSignInForm() {
        return "form";
    }
}
