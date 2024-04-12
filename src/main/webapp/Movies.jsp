<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.servlet.http.HttpSession" %>
<%@ page import="db.FetchingData"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Catch My show</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .card {
      border: none;
      background:linear-gradient(to left, #4b4369,black);
      color: #ecc18e;
      width: 100%; /* Default width for small screens */
      transition:1s;
    }
    .card:hover{
      transform:scale(1.05);
    }
    
    .t {
      line-height: 30px;
      margin-left: 25px;
      background:linear-gradient(to right #e8e8e8 40%, black );
      display: inline;
      border-radius: 2px;
    }
    .card a{
    color: #ecc18e;
    text-decoration:none;
    }
    .card-img-top {
      width: 110px;
      height: 200px; /* Fixed height */
      object-fit: cover;
    }

    @media (min-width: 576px) {
      .card {
        width: 80%;
        font-size:10px;
      }

    }

    @media (min-width: 768px) {
      .card {
        width: 80%;
        font-size:10px;
      }
    }

    @media (min-width: 992px) {
      .card {
       width: 80%;
       font-size:10px;
      }
      .card img{
      height:350px;
      max-width:100%;
      }
    }

    @media (min-width: 1200px) {
      .card {
        width: 100%;
        height:75%;
        font-size:10px;
      }
    }
   .container .row{
   display:flex;

   }
  </style>
</head>
<body>
    <div class="container">
        <div class=" row ">
            <%
                try {
                    FetchingData fd = new FetchingData();
                    Connection con = FetchingData.con();//by defalutly it give data by ascending order so when we want from last as first we can use  ORDER BY mid DESC
                    try (PreparedStatement pst = con.prepareStatement("select * from upload  ")){
                        ResultSet rs = pst.executeQuery();
                        while (rs.next()){
                            String fname = rs.getString("fname");
                            String mname=rs.getString("mname");
                            String mid=rs.getString("mid");
            %>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-xs-3 mt-3 mb-3 cb">
                                <div class="card">
                                    <a href='theater.jsp?mid=<%= mid%>' target="_blank">
                                        <img src="movies-imgs/<%=fname%>" class="card-img-top" alt="...">
                                        <h5 class="card-title"><center><%=mname%></center></h5>
                                    </a>
                                </div>
                            </div>

            <%
                        }
                    }
                } catch (SQLException e) {
                    e.printStackTrace(); // Handling the exception: printing the stack trace for debugging purposes
                }
            %>
        </div>
    </div>
</body>

</html>
