package com.srs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public ModelAndView getAllUsers() {
        List<User> users = userService.getAllUsers();
        return new ModelAndView("userList", "users", users);
    }

    @GetMapping("/{id}")
    public ModelAndView getUserById(@PathVariable Long id) {
        User user = userService.getUserById(id);
        return new ModelAndView("userDetails", "user", user);
    }

    
    @PostMapping("/submitForm")
    public String createUser(@ModelAttribute User user, Model model) {
        userService.saveUser(user);
        return "redirect:/index"; // Redirects to the index page
    }

    @PutMapping("/{id}")
    public void updateUser(@PathVariable Long id, @RequestBody User user) {
        user.setId(id);
        userService.saveUser(user);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
    }
    // Add login method
    @PostMapping("/login")
    public String login(@ModelAttribute User user, Model model) {
        boolean isValidUser = userService.validateUser(user.getUsername(), user.getPassword());

        if (isValidUser) {
            return "redirect:/index";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "redirect:/signin";
        }
    }
}
