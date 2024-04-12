<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catch My Show</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .body {
            background: linear-gradient(to right, black, #4b4369);
            color: #ecc18e;
        }
    </style>
</head>

<body class="body">
    <%@ include file="navbar.jsp" %>

    <%
        String mid = request.getParameter("mid");

        // Check if mid is not null before redirecting
        if (mid != null && !mid.isEmpty()) {
           response.sendRedirect("TheaterBody.jsp?mid=" + mid);
        } else {
            response.sendRedirect("index.jsp"); // Removed unnecessary parameter in the else block
        }
    %>

    <%@ include file="footer.jsp" %>
</body>

</html>
