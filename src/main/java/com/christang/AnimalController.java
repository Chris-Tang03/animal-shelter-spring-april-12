package com.christang;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnimalController {

    @Autowired
    AnimalRepo animalRepo;

    @RequestMapping ("/")
    public String viewHomePage(Model model) {
        model.addAttribute("animals", animalRepo.listAnimals());
        return "index";
    }

    @RequestMapping ("/editAnimal")
    public String editAnimal(Model model, String name, String breed, String description){
        model.addAttribute("name",name);
        model.addAttribute("description",description);
        model.addAttribute("breed", breed);
        model.addAttribute("animals", animalRepo.listAnimals());
        return "editAnimal";
    }

}
