package hcmute.edu.vn.webexercise13v2.chapter12.ex2.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// This class can be used to initialize the database connection
public class DatabaseConnection {
    protected static Connection initializeDatabase() throws SQLException, ClassNotFoundException
    {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql://db4free.net:3306/";
        // Database name to access
        String dbName = "murach_db";
        String dbUsername = "thuthaocute";
        String dbPassword = "thuthaocute";

        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword);
        return con;
    }
}