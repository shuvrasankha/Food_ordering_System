<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+QingKe+HuangYou" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Mali|Source+Code+Pro" rel="stylesheet">
        
        <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">

        <title>FoodBite</title>
        
    <style type="text/css">
            body{
                
                padding-bottom: 30px;
                background-image: url("img2/dessert.jpg");
          height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
            }
            .f1{
                font-family: 'ZCOOL QingKe HuangYou', cursive;
                color: #f39c12;
            }
            
            table.hovertable {
	opacity: .8;
	font-size:18px;
	color:#333333;
	border-width: 10px;
	
	border-collapse: collapse;
}
table.hovertable th {
                 font-family: 'Source Code Pro', monospace;
	background-color:#f39c12;
                opacity: .7;
	
	padding: 8px;
	
	
                 color: white;
                 text-align: center;
}
table.hovertable tr {
	background-color:white;
                 opacity: .8;
                 border-radius: 25px;
}
table.hovertable td {
                 font-family: 'Source Code Pro', monospace;
                 font-family: 'Mali', cursive;
	border-width: 12px;
                 text-align: center;
	padding-top: 17px;
                 padding-bottom: 17px;
	padding-left: 8px;
                 padding-right: 8px;
                 color: blue;
}
.con{
    padding-left: 40px;
    padding-right: 40px
}
      .special-nav {
                   opacity: .9;
}          
.col1{
    color: white;
}
.divi{
    
    text-align: center;
}
        </style>
    </head>
    <body>
        
    <!--Start Nav -->

  <div class=" special-nav">
      <nav class="navbar navbar-expand-lg navbar-light bg-danger">
          <a class="navbar-brand" href="foodbite.jsp"><img src="img2/logo4.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="aboutus.html">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="search.jsp">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" required="" name="f">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="img2/search.png"></button>
    </form>
  </div>
</nav>
  </div><br><br><br>

  
  <!-- End Nav-->

        <div class="container">
            <center>
                 <h1 class="f1">
                     Complite your meal whit great DESSERT
                 </h1>
            </center></div><br><br>
            <center> <h3 class="f1">Order Now</h3></center><br>
            <center>
            <h4 class="col1" onclick="fun2()" onmouseover="fun()"  >Sort BY </h4><br>     
    <div class="container invisible">
        
            <div class="row" id="sort" class=" divi">
                <div class="col-md-4 col1"></div>
                <div class="col-md-4 col1">
                    <form action="sort.jsp">
                        <label  class="col1"> Veg</label>
                        <input type="radio" name="cat1" value="veg" required >
                        <label  class="col1">  Non-Veg</label>
                        <input type="radio" name="cat1" value="non-veg" >
                        <button type="submit" class="btn btn-outline-success" required >></button>
                    </form>
                </div>
              
                <div class="col-md-4 col1"></div>
                
            </div>
            </center><br>
            
           <!-- food-->
           <%@page import="java.sql.*,java.util.*"%>
         
            <center> 
                <div class="con">
             
              <%
                
            String sn="desssert";
            session.setAttribute("f" ,sn);
           String r="Rs. ";
            
       try
{
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from food where cat2='" + sn + "'";


ResultSet sr=stmt.executeQuery(sql);
        out.print("<table class=hovertable>");
        out.print("<tr> <th>Food Name</th><th>Category  </th><th>Price</th><th>Details</th><th>Restaurant</th><th>Add</th></tr>");
        while(sr.next())
            { String x;
              x =sr.getString("f_id");
                
	out.print("<tr  onmouseover=this.style.backgroundColor='#ff7979' ; onmouseout=this.style.backgroundColor='white' style='border: 2px solid hsla(0, 100%, 100%, 0.0);'; ><td>" + sr.getString("f_name").toUpperCase()  + "</td><td>" + sr.getString("cat1") + "</td><td>"+ r + sr.getInt("price") +"</td><td>" + sr.getString("description") +"</td><td>" + sr.getString("s_name") +"</td><td><a href=cart.jsp?sd=" + x + ">+</a></td></tr>");
            }
        out.print("</table>");
        }
        catch(Exception e)
                {}
                %>
       
         </div>
       
       </center>
    </body>
    <script type="text/javascript">
        function fun(){
            document.getElementById("sort").style.visibility = "visible";
        }
        function fun2(){
            document.getElementById("sort").style.visibility = "hidden";
        }
        
    </script>
</html>
