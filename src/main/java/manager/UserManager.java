package manager;

import db.DBConnectionProvider;
import model.Author;
import model.User;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
public class UserManager {
    private Connection connection;

    public UserManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void userRegister(User user) throws SQLException {

        PreparedStatement statement = connection.prepareStatement("Insert into user(name, surname, email, password) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
        statement.setString(1, user.getName());
        statement.setString(2, user.getSurname());
        statement.setString(3, user.getEmail());
        statement.setString(4, user.getPassword());
        statement.executeUpdate();

        ResultSet resultSetKeys = statement.getGeneratedKeys();

        if (resultSetKeys.next()) {
            int id = resultSetKeys.getInt(1);
            user.setId(id);
        }

    }

    public User userLogin(String email, String password) throws SQLException {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select*FROM user");
        while (resultSet.next()) {
            if (resultSet.getString("email").equals(email) &&
                    resultSet.getString("password").equals(password)) {
                return new User (resultSet.getString("name"),resultSet.getString("surname"), resultSet.getString("email"));
            }

        }
        return null;
    }
}
