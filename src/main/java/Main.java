import manager.AuthorManager;
import manager.BookManager;
import model.Author;
import model.Book;

import java.sql.SQLException;
import java.util.List;

public class Main {
    public static void main(String[] args) throws SQLException {

        AuthorManager authorManager = new AuthorManager();
        BookManager bookManager = new BookManager();
        Author author = new Author("Vahan", "Teryan");
//        Book book = new Book("333", author);
//       authorManager.deleteAuthor("Vahan","Teryan");
//        authorManager.addAuthor(author);
//        bookManager.addBook(book);
//        authorManager.searchAuthor("Vahan","Teryan");
//        bookManager.deleteBook("Vahan","Teryan","333");
//        bookManager.updateBook("Hayk","Aloyan","Grigor","Ayk");
//        authorManager.updateAuthor("Hayk", "Aloyan", "Hayk", "Aloian");
        System.out.println("_________________________________________________");


        List<Author> allAuthors = authorManager.getAllAuthors();
        for (Author authors : allAuthors) {
            System.out.println(authors);
        }
        System.out.println("_________________________________________________");
        List<Book> allBook = bookManager.getAllBooks();
        for (Book books : allBook) {
            System.out.println(books);

        }

    }
}
