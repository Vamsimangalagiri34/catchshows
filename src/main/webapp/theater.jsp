<%@ page import="db.FetchingData" %>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title class="tit"></title>
    <style>
    .tit{
     text-transform: uppercase;
    }
    </style>
</head>
<body>
   <%@ include file="TheaterBody.jsp"%>
  <script>
    const moviep = localStorage.getItem('movieName');
    const tit = document.querySelector('.tit');
    tit.textContent = moviep.toUpperCase() + ' Movie Tickets Booking';
  </script>

</body>
</html>
