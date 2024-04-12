package db2;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class Dao {
    public static void main(String[] args) {
        Connection connection = null;

        try {
            // Load the Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish a connection
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vamsi", "vamsi123");

            System.out.println("Connected successfully");
        } catch (ClassNotFoundException e) {
            System.err.println("Failed to load Oracle JDBC driver: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Connection failed: " + e.getMessage());
        } finally {
            // Close the connection in the finally block to ensure it's always closed
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Failed to close the connection: " + e.getMessage());
            }
        }
    }
}
