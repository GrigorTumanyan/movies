package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {


    private int id;
    private String name;
    private Author author;
    private int author_id;

    public Book(String name){
        this.name=name;

    }


}
