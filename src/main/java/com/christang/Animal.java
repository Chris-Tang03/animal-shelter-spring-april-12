package com.christang;


public class Animal {
    Integer animal_id;
    String name;
    String species;
    String breed;
    String description;

    public Animal(Integer animal_id, String name, String species, String breed, String description) {
        this.animal_id = animal_id;
        this.name = name;
        this.species = species;
        this.breed = breed;
        this.description = description;
    }

    public Animal() {
    }

    public Animal(String name, String species, String breed, String description) {
        this.name = name;
        this.species = species;
        this.breed = breed;
        this.description = description;
    }

    public Integer getAnimal_id() {
        return animal_id;
    }

    public void setAnimal_id(Integer animal_id) {
        this.animal_id = animal_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
