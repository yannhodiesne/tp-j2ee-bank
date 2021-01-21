package fr.yannhodiesne.bank.controller;

import fr.yannhodiesne.bank.model.Compte;
import fr.yannhodiesne.bank.model.Operations;
import fr.yannhodiesne.bank.repository.CompteRepository;
import fr.yannhodiesne.bank.repository.OperationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/operation")
public class OperationController {
    @Autowired
    private CompteRepository compteRepository;
    @Autowired
    private OperationsRepository operationsRepository;

    @GetMapping
    public String listAll(Model model) {
        List<Operations> operations = operationsRepository.findAll();
        model.addAttribute("operations", operations );
        return "operation/seeAll";
    }

    @GetMapping("/create")
    public String create(Model model) {
        List<Compte> comptes = compteRepository.findAll();
        model.addAttribute("comptes", comptes);
        model.addAttribute("operation", new Operations());

        return "operation/createOperation";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute Operations operation) {
        Compte compte = compteRepository.findOne(operation.getCompte().getId());

        if (compte == null)
            return "redirect:/compte";

        int solde = operation.getType().equals("Depot") ? compte.getSolde() + operation.getMontant() : compte.getSolde() - operation.getMontant();

        compte.setSolde(solde);
        compteRepository.save(compte);

        operationsRepository.save(operation);

        return "redirect:/compte";
    }
}
