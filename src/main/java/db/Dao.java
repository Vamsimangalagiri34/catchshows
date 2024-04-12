package db;
import java.io.PrintWriter;
import java.sql.*;
import java.util.HashSet;
import java.util.Set;

public class Dao {
    public Connection con;

    public Dao() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vamsi", "vamsi123");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public boolean signup(String pno, String password) {
        boolean flag = false;

        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM ticketb WHERE pno = ? AND password = ?");
            pst.setString(1, pno);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) { // Check if there are matching records
                flag = true;
            }

            pst.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    public boolean admins(String mno, String password) {
        if ("p734".equals(mno) && "projectv".equals(password)) {
            return true;
        } else {
            return false;
        }
    }
    public boolean register(String pno, String name, String password, String address) {
        boolean flag = false;

        try {
            PreparedStatement pst = con.prepareStatement("INSERT INTO ticketb VALUES (?, ?, ?, ?)");
            pst.setString(1, pno);
            pst.setString(2, name);
            pst.setString(3, password);
            pst.setString(4, address);

            int rowsInserted = pst.executeUpdate(); // Use executeUpdate for INSERT operations

            if (rowsInserted > 0) {
                flag = true;
            }

            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public String getData(String tid) {
        try {
            PreparedStatement pst = con.prepareStatement("select * from Theater where tid= ?");
            pst.setString(1, "tid");
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                return tid;
            }

        } catch (SQLException e) {

        }
        return tid;
    }

    public boolean upLoad(String mid, String mname, String hero, String heroen, String director, String description,String pnme,String synopsis) {
        {
            boolean flag=false;
            try {
                PreparedStatement pst = con.prepareStatement("insert into upload values(?,?,?,?,?,?,?,?)");
                pst.setString(1, mid);
                pst.setString(2,mname);
                pst.setString(3, hero);
                pst.setString(4, heroen);
                pst.setString(5, director);
                pst.setString(6, description);
                pst.setString(7,pnme);
                pst.setString(8,synopsis);
                int rs = pst.executeUpdate();
                if (rs > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
       System.out.print(e);
            }
            return flag;
        }
    }

    public String searchBar(String mname) {
        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM upload WHERE mname = ?");
            pst.setString(1, mname);  // Use the actual parameter 'mname' here
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String mid = rs.getString("mid");
                System.out.println(mid);  // You might want to log the mid instead of mname

                return mid;
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Handle exceptions appropriately (logging or rethrowing)
        }
        return null;  // Return null or handle the case when no match is found
    }
    public boolean booked(String dataToSend){
        boolean isbooked=false;
        if(dataToSend!=null){
            isbooked=true;
        }
        return isbooked;
    }

public boolean isTableExists(String tableName) {

                 try {
                     DatabaseMetaData metaData = con.getMetaData();
                     String tableNam = tableName;
                     ResultSet tables = metaData.getTables(null, null, tableNam, null);
                     boolean tableExist = tables.next();
                     return tableExist;
                 } catch (SQLException e) {
                 return  false;
                 }
             }

}

