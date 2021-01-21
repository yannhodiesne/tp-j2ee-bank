package fr.yannhodiesne.bank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/")
public class HomeController {
    @GetMapping
    public RedirectView redirect() {
        return new RedirectView("compte");
    }
}
