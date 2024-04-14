
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="icon" href="animal.jpeg" type="image/jpeg">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: black;

        }

        .row1 a {
            text-decoration: none;
            color: #ecc18e;
        }
        .isb{

      display:none;

        }

        .row1 .cd {
            color: #ecc18e;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-left: 10%;
        }

        /* ... (your existing styles) */

        .sbw label #suggestions {
            position: absolute;
            background: linear-gradient(to left, #4b4369, black);
            border-radius: 5px;
            z-index: 1;
            width: 21.8%; /* Adjust width as needed */
            display: none;
            padding: 20px;

        }

        .s-bar {
            height: 45px;
        }

        .sbw label #suggestions div:hover {
            cursor: pointer;
            border-radius: 5px;
        }

        label::placeholder {
            color: #ecc18e;
        }

        .location-select select option {
            background-color: black;
        }

        .location span {
            color: #ecc18e;
            margin-left: 10px;
            padding: 10px 10px;
        }

        .location span a {
            color: #ecc18e;
            margin-left: 10px;
            text-decoration: none;
        }

        #suggestions {
            display: none;
            position: absolute;
            background-color: #333;
            color: #ecc18e;
            padding: 5px;
            width:100%;
            z-index: 1;
        }
        .datai{
        width:300px;
        height:50px;
        }
        .datai input{
        width:100%;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        color: #ecc18e;

        }
        .df{
        display:flex;

        }
        .bn{
        width:20%;
        height:50%;
        margin-left:0;
        border-top-right-radius:7px;
        border-bottom-right-radius:7px;
       background: linear-gradient(to left, #4b4369, black);
       color: #ecc18e;
       font-size:15px;
       font-weight:500;
        }
       .row1{
       margin-top:2%
       }
       .row1{
       margin-bottom:2%;
       }
     .row1 #show {
         font-size: 25.2px;
         font-family: 'Parisienne', cursive;
     }
     .nav_ba{
     }

#plh::placeholder{
  color: #ecc18e;
}
.otherdata .dtl{
font-size:14px;
font-weight:400px;
border-radius:5px;
border:2px solid black;
padding:6px;
}
    </style>
    <title>Movie Navbar</title>
</head>
<body class="body">

    <nav class="nav_ba">
        <div class="row1">
            <div class='cd'> <a href="index.jsp"><span class="logo">Catch My <span id="show">show</span> </span></a></div>
            <div class="sbd">
                <div class="sbw">

                    <form action="SearchBar" method="post" onsubmit="validate()">
                    <div class="df">

                        <label class="datai">
                            <input type="text" name="data" oninput="showSuggestions(this.value)"  spellcheck="none" id="plh" required  >
                            <div id="suggestions"></div> <!-- Suggestions will be displayed here -->
                        </label>
                        <button type="submit" id="btn" class="bn">search</button>
                        </div>
                    </form>
                </div>


            </div>
    <%
        boolean isboln = false; // Default value, assuming false
        if (session.getAttribute("mobile") == null) {
    %>
            <div class="otherdata">
                <a href="signup.jsp" target="_blank">Sign Up</a>
                <a href="register.jsp" target="_blank">Register</a>
            </div>
    <%
        } else {
            // If the "mobile" attribute is not null, retrieve its value
            String mobile = (String) session.getAttribute("mobile");
            isboln = true; // Set isboln to true
    %>
            <div class="otherdata">
                <a href="logout.jsp">Logout <%= mobile %></a>
                <a href="account.jsp">My Orders</a>
                <p class='isboln'></p>
                <!-- Note: The variable "isloked" is not defined in the provided code. Make sure it's defined elsewhere. -->
            </div>
    <%
        }
    %>

    <div>

        <p class="isb"><%= isboln %></p>

    </nav>
    <script src="location.js"></script>

                <script>
                window.onload=function(){
localStorage.setItem('isbv',document.querySelector(".isb").innerHTML);
}

                    var arr = ["MAD", "JAWAN", "Salaar", "Bhagavanth Kesari", "ANIMAL", "F2", "HINANA", "KGF2", "Bhahubali", "RRR","KALKI2829AD",'DEVARA',"HANUMAN"]; // Array of suggestions

                         function showSuggestions(input) {
                             const suggestionBox = document.getElementById("suggestions");
                             suggestionBox.innerHTML = ''; // Clear previous suggestions

                             if (input.length === 0) {
                                 suggestionBox.style.display = 'none'; // Hide suggestion box if input is empty
                                 return;
                             }

                             const matchingSuggestions = arr.filter(item => item.toLowerCase().includes(input.toLowerCase()));

                             if (matchingSuggestions.length === 0) {
                                 const div = document.createElement('div');
                                 div.innerHTML = 'no data catched';
                                 suggestionBox.appendChild(div);
                             } else {
                                 matchingSuggestions.forEach(suggestion => {
                                     const div = document.createElement('div');
                                     div.innerHTML = suggestion;
                                     div.addEventListener('click', () => {
                                         document.getElementsByName("data")[0].value = suggestion;
                                         suggestionBox.style.display = 'none';
                                     });
                                     suggestionBox.appendChild(div);
                                 });
                             }

                             suggestionBox.style.display = 'block'; // Show suggestion box
                         }

                         function validate() {
                             const d = document.getElementsByName("data")[0].value;
                             console.log(d);
                         }

                     function canI() {
                               let i = 0;
                               setInterval(() => {
                                   const pl = document.getElementById("plh").placeholder ="  Search "+ ` ${arr[i]} `;
                                   i = (i + 1) % arr.length; // Move to the next element in the array
                               }, 2000);
                           }

                               canI();

                               var dtl = document.querySelector('.otherdata .dtl');

                               dtl.style.cursor='pointer';
                               const bd = document.querySelector('body');
                               var isdark=false;


                </script>
</body>

</html>
