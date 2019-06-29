<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Your Orders</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
    <!-- Main style sheet -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Kodchasan" rel="stylesheet">
    
    <!--bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    
    <style type="text/css">
        body{
             
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

      

  <div class=" special-nav ">
      <nav class="navbar navbar-expand-lg navbar-light bg-danger">
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
        <a class="nav-link" href="record.jsp">Your Orders</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="record.jsp">orders</a>
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
  

  
  <%
     
  String o_id=session.getAttribute("oid").toString();  
       try
{
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from d_order where o_id='" + o_id + "'";
ResultSet rs=stmt.executeQuery(sql);



while(rs.next())
            {
int con=rs.getInt("con");
String d_name=rs.getString("d_name");
String d_p=rs.getString("d_phn");
String t=rs.getString("time");

if(con==1)
{
    out.print("<center><h1 style='color:white'>Order Is Confirmed</h1><br><br>");
    out.print("<h4 style='color:white'>Delivery Man : " + d_name + "</h4><br>");
    out.print("<h4 style='color:white'>phone : " + d_p + "</h4><br>");
    out.print("<h4 style='color:white'>estimated time : " + t + "</h4>");
    out.print("</center>");
}

else if(con==0)
{
out.print("<center><h1 style='color:white' > Order Is Cancel</h1></center>");
}
            }




}
        catch(Exception e)
                {}
  %>
  </body>

</html>