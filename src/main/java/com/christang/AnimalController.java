package com.christang;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AnimalController {

    @Autowired
    AnimalRepo animalRepo;

    @RequestMapping ("/")
    public String viewHomePage() {
        return "index";
    }

    @RequestMapping ("/newAnimal")
    public String createAnimal(Model model, String search){
        model.addAttribute("animal", animalRepo.listAnimals(search));
        model.addAttribute("search", search);
        return "newAnimal";
    }

}
