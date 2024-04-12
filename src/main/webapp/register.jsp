<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link style="icon" href="space.jpg">
    <!-- Bootstrap JavaScript (including Popper.js) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        .container{
            border: 2px solid black;
            padding:5px;
            border-radius: 7px;
            backdrop-filter:blur(7px);
            border:transparent;
        }

       .body {
     color:#ecc18e;
     background:linear-gradient(to right,black,#4b4369 );
}

        .container .t input,.form-group .t1,.w{
            background-color:transparent;
        }
        .container:hover{
            box-shadow:0 0  19px white;
        }
        .com{
            display:flex;
            flex-direction:row;
            justify-content: space-between;
        }
        .com .logb{
            margin-top:20px;
        }
        .com .logb a{
            text-decoration:none;
             color:#ecc18e;
        }
         .com .logb a:hover{

            text-decoration:underline;
        }
        *{
             color:#ecc18e;
        }
        .container .col-lg input{
         color:#ecc18e;
        }
        .container .col-lg input::placeholder{
        color:#ecc18e;
        }
        .container .col-lg .w {
        }
        .vb .t .t1{
        background:transparent;
        border-style:;
         color:#ecc18e;
        }
        .vb .t .t1 input{
        color::#ecc18e;
        }
        .notify{
        color:red;
        }
    </style>
    <script type="text/javascript">
    </script>
</head>
<body class="body">
<%@include file="navbar.jsp" %>
    <div class="container col-lg-5 mt-5 mb-5 p-3 vb">
    <% String msg=(String) request.getAttribute("masg2");
    if(msg!=null){%>
    <p class="notify"><center style="color:red;font-size:17px;font-weight:550;"><%=msg%></center></p>
    <%}
    %>
        <form action="BookServlet2" method="post" onsubmit='valid()'>
            <div class="alert bg-dark  text-center">
                Registeration
            </div>
             <div class="col-lg mb-3 t">
                <input type="text" class="form-control" placeholder="Enter mobile number" required name="pno" minlength="10" maxlength="10">
            </div>
            <div class="col-lg mb-3 t">
                <input type="text" class="form-control" placeholder="Enter name" required name="name">
            </div>
            <div class="col-lg mb-2 t">
                <input type="password" class="form-control" id='pwd' placeholder="Enter password" required name="password" maxlength="8">
            </div>
<div class="col-lg">
<input type="checkbox" class="mt-1 mb-2" id="ck" ><span> Show Password</span>
</div>
            <div class="col-lg mb-3 t w" >
                <input type='textarea' class="form-control t1 " rows="2" name="Enter address" placeholder="address">
            </div>
            <div class="com">
            <div class="form-group mt-3 ">
                <button class="btn btn-primary  " type="submit">submit</button>
                <button class="btn bg-danger " type="reset">Reset</button>
            </div>
            <div class="logb">
                <span ><a href="signup.jsp" target="_blank">Back to login</a></span>
            </div>
            </div>
    </form>

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