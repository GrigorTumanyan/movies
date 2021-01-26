package manager;

import com.mysql.cj.protocol.Resultset;
import db.DBConnectionProvider;
import model.Author;
import servlets.authormodel.UpdateAuthorServlet;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public  class  AuthorManager  {
    private Connection connection;

    public AuthorManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addAuthor(Author author) throws SQLException {
        if (checkIfExist(author)) return;

        PreparedStatement statement = connection.prepareStatement("Insert into authors(name, surname) VALUES (?,?)", Statement.RETURN_GENERATED_KEYS);
        statement.setString(1, author.getName());
        statement.setString(2, author.getSurname());
        statement.executeUpdate();

        ResultSet resultSetKeys = statement.getGeneratedKeys();

        if (resultSetKeys.next()) {
            int id = resultSetKeys.getInt(1);
            author.setId(id);
        }


    }

    private boolean checkIfExist(Author author) throws SQLException {
        List<Author> allAuthors = getAllAuthors();
        for (Author authors : allAuthors) {
            if (authors.getName().equals(author.getName()) && authors.getSurname().equals(author.getSurname())) {
                System.out.println("ka");
                return true;
            }
        }
        return false;
    }

    public List<Author> getAllAuthors() throws SQLException {

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select*FROM authors");
        List<Author> authors = new LinkedList<>();
        while (resultSet.next()) {
            Author author = new Author();
            author.setId(resultSet.getInt("id"));
            author.setName(resultSet.getString("name"));
            author.setSurname(resultSet.getString("surname"));
            authors.add(author);
        }


        return authors;
    }

    public void deleteAuthor(String name, String surname) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("DELETE FROM authors WHERE name = ? AND surname = ?");
        statement.setString(1, name);
        statement.setString(2, surname);
        statement.executeUpdate();

    }

    public void deleteAuthor(int id) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("DELETE FROM authors WHERE id = ?");
        statement.setInt(1, id);
        statement.executeUpdate();

    }

    public Author searchAuthor(String name, String surname) throws SQLException {
        List<Author> authors = getAllAuthors();
        for (Author author : authors) {
            if (name.equals(author.getName()) && surname.equals(author.getSurname())) {
                return author;
            }
        }
        return null;
    }

    public void updateAuthor(int authorId,int lastAuthorId, String authorName, String authorSurName) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE authors SET id = ?, name = ?, surname = ?   WHERE  id = ? ");
       statement.setInt(1,lastAuthorId);
        statement.setString(2, authorName);
        statement.setString(3, authorSurName);
        statement.setInt(4, authorId);
        statement.executeUpdate();
    }

    public Author getAuthorById(int authorId) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM authors WHERE id = ?");
            statement.setInt(1, authorId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Author author = new Author();
                author.setId(resultSet.getInt("id"));
                author.setName(resultSet.getString("name"));
                author.setSurname(resultSet.getString("surname"));
                return author;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
