<%@ page import="db.FetchingData" %>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title class="tit"></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        .body {
          background:linear-gradient(to right,black,#3D405B);
          color:#ecc18e;
        }
        .container{
        border:.5px solid gray;
        border-radius:5px;
       background:linear-gradient(to right,black,#3D405B);
        padding:10px 20px;
}
.container .con{
display:flex;

}

.container h4{
margin-left:20px;
}
.container h4:hover{
cursor: url('https://www.flaticon.com/free-icons/cursor'),pointer;
background:linear-gradient(to right,black,red);
border-radius:5px;
padding:2px;

}
.container .card{
display:flex;
justify-content:center;
align-item:center;
  background-color:transparent;
  border:transparent;
}
.details{
display:flex;
justify-content:space-around;
text-align:left;
padding:10px;
}
.cast{
display:flex;
font-size:1rem;
flex-direction:column;
justify-content:center;
align-item:center;
}

.img-src{
visibility:hidden;
}
*{
margin:0;
}
.cont{
background:linear-gradient(to right,black,#3D405B);
color:#ecc18e;
height:100%;
margin:30px;
}
body{
background:linear-gradient(to right,black,#3D405B);
}
 .bn13 {
    display: inline-block;
    padding: 0.65em 1.6em;
    border: 3px solid #ffffff;
    margin: 0 0.3em 0.3em 0;
    border-radius: 0.12em;
    box-sizing: border-box;
    text-decoration: none;
    font-family: "Roboto", sans-serif;
    font-weight: 300;
    color:black;
    text-align: center;
    transition: all 0.4s;
    animation: bn13bouncy 3s infinite linear;
    position: relative;

  }

  .bn13:hover {
    background-color: white;
    color: #000000;
  }

  @keyframes bn13bouncy {
    0% {
      top: 0em;
    }
    40% {
      top: 0em;
    }
    43% {
      top: -0.9em;
    }
    46% {
      top: 0em;
    }
    48% {
      top: -0.4em;
    }
    50% {
      top: 0em;
    }
    100% {
      top: 0em;
    }
  }
  .cent .c .bt{
  background:linear-gradient(to right,black,#3D405B);
   color:#ecc18e;

  }

      </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
 <%
    String mid = request.getParameter("mid");

    if (mid != null) {
        FetchingData fd = new FetchingData();
        Connection con = FetchingData.con();
        PreparedStatement pst = con.prepareStatement("select * from upload where mid=?");
        pst.setString(1, mid);
        ResultSet rs = pst.executeQuery();
        while(rs.next()) {
         String fname = rs.getString("fname");
          String hero = rs.getString("hero");
           String heroen = rs.getString("heroen");
            String director = rs.getString("director");

    %>

    <div class="cont">
         <div class="container mt-3">
            <div class="con"><h3>Cities</h3>
             <h4 class="location " onclick="hyder(this)">Banguluru</h4>
             <h4 class="location" onclick="hyder(this)">Hyderabad</h4>
             <h4 class="location" onclick="hyder(this)">Vijayawada</h4>
            </div>
                         <div style="margin-left:20px;"> <span id="p" name="p" ></span><span id="theater" class="theater"></span></div>
            <div class="details mt-3">
            <div class="cast">
            <h5>About Movie</h5>
            <span>Movie: <spam class="movieN"><%=rs.getString("mname")%></spam></span>
            <spam>Lang:Telugu,Hindi</spam>
            <spam>Hero:<%=rs.getString("hero")%></spam>
            <spam>Heroen:<%=rs.getString("heroen")%></spam>
            <spam>Director:<%=rs.getString("director")%></spam>

            <h5>Synopsis</h5>
            <span><%=rs.getString("synopsis")%></span>
            </div>
             <div class="col-xl-4 col-lg-4 col-md-6 col-sm-7 col-xs-6  cent  ">
               <div class="card c ">
               <img src="movies-imgs/<%=fname%>" class="card-img-top " alt="">
                <form onSubmit="return bookTicket()"  >
                  <input type="submit" class="form-control bt bn13 mt-.9 " value="BooK Ticket" >
                  </form>
                  <spam class='img-src'><%=fname%></spam>
              </div>
           </div>
         </div>
         </div>
         </div>
    <%
        }
    } else {

        // Handle case when mid parameter is not provided
    }
    %>
    <script>

      var lo; // Declare lo as a global variable
      var islogin=false;
      islogin=localStorage.getItem('isbv');

     function hyder(element) {
         lo = element.innerText; // Set the value of lo
         var pa = document.getElementById("p");
         var th = document.getElementById("theater");
         pa.innerHTML = lo;
         if (lo == "Banguluru") {
             th.innerHTML = " Mukunda Cinemas";
             const theaterinfo=document.querySelector(".theater").innerHTML;
             const loc=document.querySelector(".location").innerHTML;
             localStorage.setItem('location2',theaterinfo+','+'Banguluru');
         } else if (lo == "Hyderabad") {
             th.innerHTML = " Prasads Multiplex";
             const theaterinfo=document.querySelector(".theater").innerHTML;
             const loc=document.querySelector(".location").innerHTML;
        localStorage.setItem('location2',theaterinfo+', '+'Hyderabad');
         } else {
             th.innerHTML = " PVR Cinemas";
             const theaterinfo=document.querySelector(".theater").innerHTML;
             const loc=document.querySelector(".location").innerHTML;
             localStorage.setItem('location2',theaterinfo+', '+'Vijayawada');
         }
         var n = document.getElementById("theater").innerHTML;
         var mn=document.getElementById("mname").innerHTML;
         var fname=document.getElementById("fname").innerHTML;
         localStorage.setItem("movie", mn);
         console.log(n);
          storedLocation2 = localStorage.getItem('movie');
          console.log(fname);

     }
      function bookTicket() {
       if (islogin === 'false') {
                        alert("Please log in to book a ticket");
                        return false;
                    }
         else if (lo == null) {
              alert("Please select a location");
              console.log(typeof localStorage.getItem('islogin'));
              return false;
          }
          else {
          window.location.href = 'seatbooking2.jsp';//?location=' + encodeURIComponent(storedLocation);
          return false;
          }
      }
const imgp=document.querySelector('.img-src').innerHTML;
console.log(imgp);
localStorage.setItem('img-src',imgp);
const moviena=document.querySelector(".movieN").innerHTML;
localStorage.setItem('movieName',moviena);
console.log(moviena);
  const moviep=localStorage.getItem('movieName');
      const tit=document.querySelector('.tit');
      tit.textContent=moviep+' Movie Tickets Booking';



    </script>
<%@ include file="footer.jsp" %>
</body>
</html>