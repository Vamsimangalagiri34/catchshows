<%@ page import="db.Checkingft" %>
<%@ page import="db.FetchingData" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Table Existence</title>
</head>
<body>

<%
    Checkingft chk = new Checkingft();
    String dloc = request.getParameter("dloc");
    String lm1 = request.getParameter("lm1");
    String lm2 = request.getParameter("lm2");
    String mov2=request.getParameter("mov2");
    String tableName =mov2+ dloc + lm1 + lm2;
    String upString = tableName.toUpperCase();
    Connection con = FetchingData.con();
    PreparedStatement pst = null;
    ResultSet rst = null;
    LinkedList<String> ll = new LinkedList<String>();
    try {
        if (chk.isvalid(upString)) {
            String query = "select seats from " + upString;
            pst = con.prepareStatement(query);
            rst = pst.executeQuery();
            while (rst.next()) {
                System.out.println(rst.getString("seats"));
                ll.add(rst.getString("seats"));
            }

            // Convert the LinkedList to a comma-separated string
            String seatsParam = String.join(",", ll);

            // Encode the parameter to ensure proper URL encoding
            seatsParam = URLEncoder.encode(seatsParam, "UTF-8");

            // Create the URL with the parameter
            String redirectURL = "seatbooking2.jsp?isdir=true&seatsD=" + seatsParam;

            response.sendRedirect(redirectURL);
        } else {
             String redirectURL = "seatbooking2.jsp?isdir=true";
              response.sendRedirect(redirectURL);
        }
    } catch (Exception e) {
        out.println("<p>An error occurred: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } finally {
        // Close resources if necessary
    }
%>
<script>
localStorage.setItem('timeDa','vamsi');
localStorage.setItem('dayDa',localStorage.getItem());

</script>
</body>
</html>
