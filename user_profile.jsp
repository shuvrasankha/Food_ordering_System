

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Profile</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
    <!-- Main style sheet -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Kodchasan" rel="stylesheet">
    
    <!--bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    
    <style type="text/css">
        body{
             padding-top: 30px;
            padding-bottom: 30px;
                      background-image: url("img2/food.jpg");
          height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
            
        }
        
        
        
               .special-card {
                   opacity: .8;
}
        .special-nav {
                   opacity: .8;
}
.f1{
    color: #e74c3c;
    font-family: 'Kodchasan', sans-serif;
    }
    </style>
    

  </head>
  <body>  
  
  
  <!--Start Nav -->

      

  <div class="container special-nav ">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="foodbite.jsp"><img src="img2/logo4.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="order_status.jsp">Your Orders</a>
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
        <a class="nav-link " href="user_profile.jsp" tabindex="-1" aria-disabled="true">Profile</a>
      </li>
    </ul>
      <form class="form-inline my-2 my-lg-0" action="search.jsp">
          <input class="form-control mr-sm-2" name="f" type="search" placeholder="Search" aria-label="Search" required="">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="img2/search.png"></button>
    </form>
  </div>
</nav>
  </div><br><br><br>

  
  <!-- End Nav-->

  <!--edit-->
         <%@page import="java.sql.*,java.util.*"%>
            <center> 
                <div class="con">
             
              <%   
            String u_id=session.getAttribute("ob").toString();  
       try
{
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from users where u_email='" + u_id + "'";
ResultSet sr=stmt.executeQuery(sql);



while(sr.next())
            {
                
	out.print("<center>");
out.print("<div class='card border-success mb-3 special-card' style='max-width: 40rem;'>");
out.print("<div class='card-header bg-transparent border-success'><h3 class='f1'>" + sr.getString("u_name") +"</h3></div>");  
out.print("<div class='card-body text-success'>");
out.print(" <h5 class='card-title'>Edit Address</h5>");
out.print("<p class='card-text'></p><br>");    
out.print("<form action='u_add_edit.jsp'>");     
  
out.print("<div class='form-group row'>");
    out.print("<label for='staticEmail' class='col-sm-2 col-form-label'>House No</label>");
    out.print("<div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='hn' value=" + sr.getString("house_no").replaceAll(" ", "_") +">");
    out.print("</div>");
  out.print("</div>");
  
  out.print("<div class='form-group row'>");
    out.print("<label for='staticEmail' class='col-sm-2 col-form-label'>Street </label>");
    out.print("<div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='sn' value=" + sr.getString("st_name").replaceAll(" ", "_") +">");
    out.print("</div>");
  out.print("</div>");
  
  out.print("<div class='form-group row'>");
    out.print("<label for='staticEmail' class='col-sm-2 col-form-label'>Area</label>");
    out.print("<div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='an' value=" + sr.getString("area").replaceAll(" ", "_") +">");
    out.print("</div>");
  out.print("</div>");

  out.print("<div class='form-group row'>");
    out.print("<label for='inputPassword' class='col-sm-2 col-form-label'>PIN</label>");
   out.print(" <div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='pin' value=" + sr.getString("pin") +">");
    out.print("</div>");
  out.print("</div>");
  
  
    
    out.print("<div class='col-sm-10'>");
      out.print("<center><button type='submit' class='btn btn-success'>Update</button></center>");
    out.print("</div>");
 
out.print("</form>");
  out.print("</div>");
  out.print("<div class='card-footer bg-transparent border-success'><button class='btn btn-danger'><a href='index.html'>LogOut</a></button></div>");
out.print("</div>");
out.print("</center>");


            }

}
        catch(Exception e)
                {}
                %>
       
         </div>
       
       </center>
  
  
  </body>
</html>  
  
  
  
  
  
