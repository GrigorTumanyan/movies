package manager;

import com.mysql.cj.protocol.Resultset;
import db.DBConnectionProvider;
import model.Author;
import model.Movie;
import servlets.authormodel.UpdateAuthorServlet;

import java.sql.*;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;


public class MoviesManager {
    private Connection connection;

    public MoviesManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addMovie(String name, String genres, int productYear, String url) throws SQLException {
//        if (checkIfExist(movie)) return;

        PreparedStatement statement = connection.prepareStatement("Insert into movie(genres,name,productYear,url) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);

        statement.setString(1, genres);
        statement.setString(2, name);
        statement.setInt(3, productYear);
        statement.setString(4, url);
        statement.executeUpdate();

        ResultSet resultSetKeys = statement.getGeneratedKeys();
        Movie movie = new Movie();
        if (resultSetKeys.next()) {
            int id = resultSetKeys.getInt(1);
            movie.setId(id);
        }


    }


    public List<Movie> getAllMovie() throws SQLException {

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select*FROM movie");
        List<Movie> allMovie = new LinkedList<>();
        while (resultSet.next()) {
            Movie movie = new Movie();
            movie.setId(resultSet.getInt("id"));
            String genres = resultSet.getString("genres");
            String[] genresArray = genres.split(",");
            movie.setGenres(genresArray);
            movie.setName(resultSet.getString("name"));
            movie.setProductYear(resultSet.getInt("productYear"));
            movie.setUrl(resultSet.getString("url"));
            allMovie.add(movie);
//            movie.setIdMovie(Integer.parseInt(resultSet.getString("idMovie")));
//            movie.setMovieName(resultSet.getString("movieName"));
        }
        return allMovie;
    }

    public List<Movie> upNextMovie(String idMovie) throws SQLException {
        Movie movieById = getMovieById(Integer.parseInt(idMovie));
        List<Movie> allMovie = getAllMovie();
        List<Movie> upNext = new LinkedList<>();
        if (allMovie.size() >= Integer.parseInt(idMovie) + 5) {
            for (int i = Integer.parseInt(idMovie); i < allMovie.size(); i++) {
                if (allMovie.get(i).getId() != movieById.getId() && upNext.size() < 5) {
                    upNext.add(allMovie.get(i));
                }
            }
        } else {
            for (int i = allMovie.size() - 1; i > Integer.parseInt(idMovie) - 7; i--) {
                if (allMovie.get(i).getId() != movieById.getId() && upNext.size() < 5) {
                    upNext.add(allMovie.get(i));
                }
            }
        }
        return upNext;
    }

    public List<Movie> descMovie() throws SQLException {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM  movies.movie ORDER BY id DESC LIMIT 7 ");
        List<Movie> descMovie = new LinkedList<>();
        while (resultSet.next()) {
            Movie movie = new Movie();
            movie.setId(resultSet.getInt("id"));
            String genres = resultSet.getString("genres");
            String[] genresArray = genres.split(",");
            movie.setGenres(genresArray);
            movie.setName(resultSet.getString("name"));
            movie.setProductYear(resultSet.getInt("productYear"));
            movie.setUrl(resultSet.getString("url"));
            descMovie.add(movie);
        }
        return descMovie;
    }



public List<Movie> searchMovie(String movieName) throws SQLException {
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT * FROM movie WHERE name LIKE '%"+movieName+"%'; ");
    List<Movie> searchMovies = new LinkedList<>();
    while (resultSet.next()) {
        Movie movie = new Movie();
        movie.setId(resultSet.getInt("id"));
        String genres = resultSet.getString("genres");
        String[] genresArray = genres.split(",");
        movie.setGenres(genresArray);
        movie.setName(resultSet.getString("name"));
        movie.setProductYear(resultSet.getInt("productYear"));
        movie.setUrl(resultSet.getString("url"));
        searchMovies.add(movie);
    }
    return searchMovies;
}
//        PreparedStatement preparedStatement = connection.prepareStatement("SELECT name FROM movie LIKE ?%", Statement.RETURN_GENERATED_KEYS);
//        preparedStatement.setString(1, moviesName);
//        ResultSet resultSetKeys = preparedStatement.getGeneratedKeys();
//        Movie movie = new Movie();
//        if (resultSetKeys.next()) {
//            int id = resultSetKeys.getInt(1);
//            movie.setId(id);
//        }
//        System.out.println(movie);
//        return null;
//    }

//        ResultSet resultSet = preparedStatement.executeQuery("SELECT name FROM movie LIKE ?%");
//        List<String> searchName = new LinkedList<>();
//        Movie movie = new Movie();
//        while (resultSet.next()){
//            movie.setName(resultSet.getString("name"));
//            searchName.add(movie.getName());
//        }


//        Statement statement = connection.createStatement();
//        ResultSet resultSet = statement.executeQuery("SELECT name FROM movie");
//        String newMoviesName = moviesName + "%";
//        List<String> searchName = new LinkedList<>();
//        Movie movie = new Movie();
//        while (resultSet.next()) {
//            movie.setName(resultSet.getString("name"));
//            if (newMoviesName.equals(movie.getName())){
//                searchName.add(movie.getName());
//            }
//        }
//        System.out.println(searchName);


//        List<String> a = new LinkedList<>();
//        Statement statement = connection.createStatement();
//        ResultSet resultSet = statement.executeQuery("SELECT name FROM movie");
//        if (resultSet.next()) {
//            a.add(String.valueOf(resultSet));
//        }
//        System.out.println(a.toString());


//        PreparedStatement ps = connection.prepareStatement("SELECT * FROM movie WHERE name LIKE ' ("moviesName")%'");{
//            a.add(String.valueOf(ps));
//        }
//        System.out.println(a);


//        while (resultSet.next()){
//          Movie movie = new Movie();
//          movie.setName(resultSet.getString("name"));
//          a.add(String.valueOf(resultSet));
//        }

//        for (String  b : a) {
//            if (b.equals(movieName)) {
//                a.add(b);
//            }
//        }


    public Movie getMovieById(int movieId) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM movie WHERE id = ?");
            statement.setInt(1, movieId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Movie movie = new Movie();
                movie.setId(resultSet.getInt("id"));
                movie.setName(resultSet.getString("name"));
                movie.setGenres(new String[]{resultSet.getString("genres")});
                movie.setProductYear(resultSet.getInt("productYear"));
                movie.setUrl(resultSet.getString("url"));
                return movie;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    //     --------------------------------------------------------------------------------------------------
//    ------------------------------------------------------------------------------------------------

    //    private boolean checkIfExist(Movie movie) throws SQLException {
//        List<Author> allAuthors = getAllGenres();
//        for (Author authors : allAuthors) {
//            if (authors.getName().equals(author.getName()) && authors.getSurname().equals(author.getSurname())) {
//                System.out.println("ka");
//                return true;
//            }
//        }
//        return false;
//    }

//     --------------------------------------------------------------------------------------------------
//    --------------------------------------------------------------------------------------------------

    // for (int i = 0; i < allMovie.size(); i++) {
//            if (allMovie.get(i).getId() != movieById.getId() && upNext.size() != 7) {
//                upNext.add(allMovie.get(i));
//    public List<Movie> upNext(int movieId) throws SQLException {
//
//        Statement statement = connection.createStatement();
//        ResultSet resultSet = statement.executeQuery("select*FROM movie");
//        List<Movie> allMovie = new LinkedList<>();
//        while (resultSet.next()) {
//            Movie movie = new Movie();
//            movie.setId(resultSet.getInt("id"));
//            String genres = resultSet.getString("genres");
//            String[] genresArray = genres.split(",");
//            movie.setGenres(genresArray);
//            movie.setName(resultSet.getString("name"));
//            movie.setProductYear(resultSet.getInt("productYear"));
//            movie.setUrl(resultSet.getString("url"));
//            if (movieId !=movie.())
//            allMovie.add(movie);
//        }
//        return allMovie;
//    }

//     --------------------------------------------------------------------------------------------------
//    --------------------------------------------------------------------------------------------------

//
//    public void deleteAuthor(String name, String surname) throws SQLException {
//
//        PreparedStatement statement = connection.prepareStatement("DELETE FROM authors WHERE name = ? AND surname = ?");
//        statement.setString(1, name);
//        statement.setString(2, surname);
//        statement.executeUpdate();
//
//    }

//     --------------------------------------------------------------------------------------------------
//    --------------------------------------------------------------------------------------------------

//    public void deleteAuthor(int id) throws SQLException {
//
//        PreparedStatement statement = connection.prepareStatement("DELETE FROM authors WHERE id = ?");
//        statement.setInt(1, id);
//        statement.executeUpdate();
//
//    }

//    --------------------------------------------------------------------------------------------------
//    --------------------------------------------------------------------------------------------------

//    public void updateAuthor(int authorId, int lastAuthorId, String authorName, String authorSurName) throws SQLException {
//        PreparedStatement statement = connection.prepareStatement("UPDATE authors SET id = ?, name = ?, surname = ?   WHERE  id = ? ");
//        statement.setInt(1, lastAuthorId);
//        statement.setString(2, authorName);
//        statement.setString(3, authorSurName);
//        statement.setInt(4, authorId);
//        statement.executeUpdate();
//    }
}
