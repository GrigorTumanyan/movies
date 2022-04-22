package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Movie {
    private int id;
    private String name;
    private String[] genres;
    private int productYear;
    private String url;

    public Movie(String name, String[] genres, int productYear, String url) {
        this.name = name;
        this.genres = genres;
        this.productYear = productYear;
        this.url = url;
    }
}

