package fr.yannhodiesne.bank.controller;

import fr.yannhodiesne.bank.model.Compte;
import fr.yannhodiesne.bank.repository.CompteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/compte")
public class CompteController {
    @Autowired
    private CompteRepository compteRepository;

    @GetMapping
    public String listAll(Model model) {
        List<Compte> comptes = compteRepository.findAll();
        model.addAttribute("comptes", comptes );

        return "compte/seeAll";
    }

    @GetMapping("/create")
    public String create(Model model) {
        model.addAttribute("compte", new Compte());

        return "compte/createAccount";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute Compte compte) {
        compteRepository.save(compte);

        return "redirect:/compte";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        compteRepository.delete(id);

        return "redirect:/compte";
    }
}
