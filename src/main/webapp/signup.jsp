<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
  <title>SignUp</title>
  <style>
    .body {
      background:linear-gradient(to right,black,#4b4369 );
      color:#ecc18e;
    }
    .s {
      display: grid;
      place-items: center;
      height: 100vh;
      margin: 0;
      padding: 20px;
    }

    .sd{
      background-color: #4b4369;
      color: #ecc18e;
      border:none;
    }

    .car {

      height: 30%;
      width: 40%;
      background-color: transparent;
    }


  </style>
</head>

<body class="body">
<%@include file="navbar.jsp" %>
  <div class="s">
  <%
  String msg=(String)request.getAttribute("msg");
  String m=msg;
  %>
    <div class="car ">
    <%if(msg!=null){%>
<p><center style="color:red;"><%=m%></center></p>
<%}%>
      <div class="card-body">
        <form action="BookServlet" method="post">
          <input type="text" placeholder="Enter Phone Number" name="mno" class="form-control mb-2 mt-2" required>
          <input type="password" placeholder="Enter Password" name="password" class="form-control mt-2" id="pwd" required>
          <input type="checkbox" class="mt-1 mb-1" id="ck" ><span> Show Password</span>
          <input type="submit" value="SignUp" class="btn btn-primary form-control">
        </form>
      </div>
      <div class="mass mt-2" >
      <div><span><a href="register.jsp" target="_blank">Not Yet Register?</a></span></div>
      </div>
    </div>
  </div>
  <%@include file="footer.jsp" %>
  <script>
  var ispwd=false;
  const cd=document.getElementById("pwd");
  const ck=document.getElementById("ck");
   ck.addEventListener("change",function(){
   if(ck.checked){
   cd.type='text';
   }
   else{
   cd.type='password';
   }
   })




  </script>
</body>

</html>
