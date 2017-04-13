package com.christang;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;


@Component
public class AnimalRepo {

    @Autowired
    JdbcTemplate template;

    public List<Animal> listAnimals(String search){
        return template.query("SELECT * FROM animal",
                (rs, row) -> new Animal(
                rs.getString("name"),
                rs.getString("species"),
                rs.getString("breed"),
                rs.getString("description")
            )
        );
    }

    public void insertAnimal(Animal animal) throws SQLException {
        template.execute("INSERT INTO animal" +
                "name, species, breed, description " +
                "VALUES " +
                "animal.getName(), animal.getSpecies(), animal.getBreed, player.getDescription");
    }

}
