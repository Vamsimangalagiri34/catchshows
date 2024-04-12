package db;
import java.sql.*;
public class FetchingData {
    private Connection con;
     public static Connection con(){
         try{
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vamsi","vamsi123");
             return  con;
         }
         catch(SQLException | ClassNotFoundException e){
             e.printStackTrace();
         }
         return null;
     }
}
