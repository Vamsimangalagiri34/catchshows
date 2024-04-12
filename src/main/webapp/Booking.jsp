<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catch My Show</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .body {
          color:#ecc18e;
        }
        .d{
        border:1px solid gray;
        border-radius:5px;
        font-size:19px;
        display:block;
        }
        .d p{
        display:inline;
        background:linear-gradient(to right,black,red);
        padding-right:10px;
        border-radius:5px;
        }
      </style>
</head>
<body>
<%@include file="navbar.jsp" %>
    <% String locationValue = request.getParameter("location"); %>
    <div class="container d">
    <p> <%= locationValue %></p>
    </div>

    <%@include file="footer.jsp" %>
</body>
</html>
