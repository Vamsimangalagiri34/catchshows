<%@ page import="java.sql.*" %>
<%@ page import="db.Dao"%>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="" %>

<%
    Connection con = null;
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vamsi", "vamsi123");
        String seats = request.getParameter("dataToSend");
          Dao dao=new Dao();
          if(dao.booked(seats)){
       String mobile = (String) session.getAttribute("mobile");
          PreparedStatement pst = con.prepareStatement("INSERT INTO bookingdb VALUES (?, ?)");
            pst.setString(1, mobile);
              pst.setString(2, seats); // Replace with your actual second value
                pst.executeUpdate();
          response.sendRedirect("seatbooking2.jsp");
          }
          else{
          response.sendRedirect("#");
          }


    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
