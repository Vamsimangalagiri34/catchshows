<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="db.FetchingData" %>
<%@ page import="db.Checkingft" %>

<%
    try {
        Connection connection = FetchingData.con(); // Get a database connection
        Checkingft ck = new Checkingft();

        if (connection != null) {
            DatabaseMetaData metaData = connection.getMetaData();
             String dayis = request.getParameter("dayis");
            String mixd = request.getParameter("timeis");
            String mov=request.getParameter("mov");
             String count=request.getParameter("count");
             String location="Movie "+mov+" "+request.getParameter("location");
            String mdt=mov+dayis+mixd;
            String tableName = mdt;
            ResultSet tables = metaData.getTables(null, null, tableName, null);

            boolean tableExists = tables.next();
               String mobile = (String) session.getAttribute("mobile");
                  String seats = request.getParameter("dataToSend");

            if (tableExists) {

                if (ck.inserted(tableName, mobile, seats)) {
%>
                    <p>Data inserted successfully</p>
<%
                } else {
%>
                    <p>Data insertion failed. Please check your data and try again.</p>
<%
                }
            } else {
                // Table does not exist, create the table
                String pstQuery = "CREATE TABLE " + tableName + " (mno VARCHAR(12), seats VARCHAR(75))";
                try (PreparedStatement pst = connection.prepareStatement(pstQuery)) {
                    pst.executeUpdate();
%>
                    <p>Table created successfully</p>
<%
                    // After creating the table, try to insert data
                    if (ck.inserted(tableName, mobile, seats)) {
                       if(ck.inserted2(mobile,seats,count,location)){
                        response.sendRedirect("index.jsp");
%>
                        <p>Data inserted successfully</p>
<%
}
                    } else {
%>
                        <p>Data insertion failed. Please check your data and try again.</p>
<%
                    }
                } catch (SQLException ex) {
                    // Handle specific exception for ORA-00955 (Table already exists)
                    if (ex.getErrorCode() == 955) {
                    if (ck.inserted(tableName, mobile, seats)) {
                       if(ck.inserted2(mobile,seats,count,location)){
                    %>
                                            <p>Data inserted successfully2</p>

                    <%  response.sendRedirect("index.jsp");
                    }
                                        }
%>
                        <p>Tableddd already exists. Data insertion failed. Please check your data and try again.</p>
<%
                    } else {
                        throw ex;
                    }
                }
            }

            tables.close();
            connection.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
%>
        <p>Error checking table existence or performing database operations: <%= e.getMessage() %></p>
<%
    }
%>
