package db;

import java.lang.invoke.SwitchPoint;
import java.sql.*;

public class Checkingft {
    public Connection con = FetchingData.con();
    public boolean isvalid(String query) {
        try {

            String quer = query;

            if (con != null) {
                DatabaseMetaData metaData = con.getMetaData();
                ResultSet tables = metaData.getTables(null, null, quer, null);
                boolean tableExists = tables.next();
                    System.out.println(tableExists);
                // Close resources
                tables.close();
                con.close();

                return tableExists;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately (logging or rethrowing)
        }

        return false; // Return false if an exception occurs or connection is null
    }
    public boolean inserted(String tabl,  String mno, String seats) {
        boolean flag=false;
        String queryi = "INSERT INTO "+tabl+"  VALUES (?, ?)";

        try {
            PreparedStatement pst = con.prepareStatement(queryi);

            pst.setString(1, mno);
            pst.setString(2, seats);

            int rs = pst.executeUpdate();

            if (rs > 0) {
                flag=true;
            }
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately (logging or rethrowing)
        }
        return flag;
    }
    public boolean inserted2(String mno,String seats,String count,String location){
        boolean flag2=false;
        try{
            PreparedStatement pst=con.prepareStatement("insert into seatsdata values(?,?,?,?)");
            pst.setString(1,mno);
            pst.setString(2,seats);
            pst.setString(3,count);
            pst.setString(4,location);
            int rs=pst.executeUpdate();
            if(rs>0){
                flag2=true;
            }
            pst.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return  flag2;
    }
}
