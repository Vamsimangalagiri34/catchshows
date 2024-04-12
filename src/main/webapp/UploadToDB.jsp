<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uploading Data...</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link style="icon" href="space.jpg">
    <!-- Bootstrap JavaScript (including Popper.js) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
    .bg-dark{
    display:flex;
    justify-content:center;
    align-item:center;
    margin:0;
    top:0;left:0;right:0;bottom:0;
    position:relative;
    }
   .dv{
   margin-top:100px;
   background: linear-gradient(to left, #4b4369, black);
   }
   .form-control{
   background: linear-gradient(to left, #4b4369, black);
   }
   .ret{
   color:white;
background: linear-gradient(to right, #4b4369, black);
   font-size:18px;
   }
   .ret2 .form-control{
  color:#ecc18e;
   }
   .ret2 input::placeholder{
                 color:#ecc18e;
}
.msgs{
color:transparent;
}
.dia{
 border: none;
            color:green;
            font-size: 25px;
            border-radius:5px;
}
 .dia .cont{
            display: flex;
            align-items: center;
            justify-content: space-around;
        }
    </style>
</head>
<%
    // Retrieve request attribute
    String message = (String) request.getAttribute("masg");
%>
<body class="bg-dark dv">
<dialog class="dia">
    <div><h4>hey  data submitted successfully !</h4></div>
    <div class="cont">
            <button class="btn btn-danger">close</button>

        </div>
</dialog>
 <p class="msgs"><%=message%></p>
    <div class="col-xl-4 col-sm-4 col-lg-4 col-md-4 ">
        <div class="form-control ret2">
            <div class="alert   text-center ret">Admin Panel</div>
            <form action="UploadToDb" method="post" enctype="multipart/form-data" onsubmit="return validate()">
                <input type="text" class="form-control mt-3 mb-3 color-white ibm" placeholder="enter movie id" name="mid" required>
                <input type="text" name="mname" class="form-control mb-3 mnam" placeholder="enter movie name" required>
                <input type="text" name="hero" class="form-control mb-3 he" placeholder="Enter Hero name" required>
                <input type="text" name="heroen" class="form-control mb-3 hern" placeholder="enter Heroen name" required>
                <input type="text" name="director" class="form-control mb-3 dnam" placeholder="enter Director name" required>
                <input type="text" name="description" class="form-control desc " placeholder="enter description" required>
                <input type="text" name="synopsis" class="form-control mt-3 sys" placeholder="enter Synopsis" required>
                <input type="file" name="pnme" class="form-control mb-3 mt-3 im" placeholder="select an image" required>

                <input type="submit" value="submit" class="form-control">

            </form>
        </div>
    </div>

    <script>
        function validate() {
            const mid = document.querySelector(".ibm").value;
            const name = document.querySelector(".mnam").value;
            const he = document.querySelector(".he").value;
            const hern = document.querySelector('.hern').value;
            const dnam = document.querySelector(".dnam").value;
            const desc = document.querySelector(".desc").value;
            const sys = document.querySelector(".sys").value;
            const im = document.querySelector(".im").value;

            if (mid !== '' && name !== '' && he !== '' && hern !== '' && dnam !== '' && desc !== '' && sys !== '' && im !== '') {
                return true;
            }

            // Provide feedback to the user (you can customize this based on your UI)
            alert('Please fill in all required fields.');
            return false;
        }

       const dat = document.querySelector('.msgs').innerHTML; // Use textContent to get the content
           console.log(dat);

           if (dat==='success' ) {
               console.log(dat);
               const dia = document.querySelector(".dia");
               dia.showModal(); // Fix: change showModel to showModal
               var bc = document.querySelector('.btn');
               bc.addEventListener('click', () => {
                dia.close();
                   location.reload();
               });
           }
           else if(dat==null){
           alert('failed');
           }
    </script>
</body>
</html>