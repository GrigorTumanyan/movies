package manager;

import db.DBConnectionProvider;
import model.Author;
import model.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class BookManager {
    private Connection connection;
    MoviesManager moviesManager = new MoviesManager();
    ResultSet resultSetKeys;

    public BookManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addBook(Book book, int authorId) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("Insert into books(name,author_id) VALUES (?,?)", Statement.RETURN_GENERATED_KEYS);
        statement.setString(1, book.getName());
        statement.setInt(2, authorId);
        statement.executeUpdate();
        resultSetKeys = statement.getGeneratedKeys();
        if (resultSetKeys.next()) {
            int id = resultSetKeys.getInt(1);
            book.setId(id);
        }


    }

    public List<Book> getAllBooks() throws SQLException {

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select*FROM books");
        List<Book> books = new LinkedList<>();
        while (resultSet.next()) {
            Book book = new Book();
            book.setId(resultSet.getInt("id"));
            book.setName(resultSet.getString("name"));
            book.setAuthor_id(resultSet.getInt("author_id"));
            List<Author> allAuthors = moviesManager.getAllAuthors();
            for (Author authors : allAuthors) {
                if (authors.getId() == resultSet.getInt("author_id")) {
                    book.setAuthor(authors);
                }

            }
            books.add(book);
        }


        return books;
    }


    public void deleteBook(int bookId) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("DELETE FROM books WHERE id = ?");
        statement.setInt(1, bookId);
        statement.executeUpdate();

    }

    public void updateBook(String authorName, String authorSurName, String oldBookName, String newBookName) throws SQLException {
        Author author = moviesManager.searchAuthor(authorName, authorSurName);
        List<Book> books = getAllBooks();
        for (Book book : books) {
            if (oldBookName.equals(book.getName()) && author != null) {
                PreparedStatement statement = connection.prepareStatement("UPDATE books SET name = ?  WHERE  author_id = ? AND name = ? ");
                statement.setString(1, newBookName);
                statement.setInt(2, author.getId());
                statement.setString(3, oldBookName);
                statement.executeUpdate();
                System.out.println("Book is updated");
                return;
            }
        }
        System.out.println("Book is not updated");
    }

    public List<Book> searchBook(String bookName, int authorId) throws SQLException {
        List<Book> books = getAllBooks();
        List<Book> bookList = new ArrayList<>();
        for (Book book : books) {
            if ( !bookName.equals("")) {
                if (authorId == book.getAuthor_id() && bookName.equals(book.getName())) {
                    bookList.add(book);
                }
            } else {

                if (authorId == book.getAuthor_id()) {
                    bookList.add(book);
                }
            }
        }
        return bookList;
    }

}
