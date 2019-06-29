
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
         <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
          <style type="text/css">
        body{
             
            padding-bottom: 30px;
                      background-image: url("img2/bbg.jpg");
          height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
            
        }
        
        .bor{
            padding: 10px;
        }
        .f1{
            font-family: 'ZCOOL QingKe HuangYou', cursive;
            font-family: 'Roboto Mono', monospace;
            color: #00a8ff;
        }
          .f2{
            font-family: 'ZCOOL QingKe HuangYou', cursive;
            font-family: 'Roboto Mono', monospace;
            color: white;
        }
               .special-card {
                   opacity: .8;
}
        .special-nav {
                   opacity: .8;
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
        
   <center>
        <%
        String f_id=request.getParameter("sd");
        session.setAttribute("f_id" , f_id);
        String u_id=session.getAttribute("ob").toString();       
 try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
Statement stmt=conn.createStatement();
String sql="select * from food where f_id='" + f_id + "'";
ResultSet rs=stmt.executeQuery(sql);
        while(rs.next())
            {
               String s_name=rs.getString("s_name");
               int price=rs.getInt("price");
               session.setAttribute("price", price);
               String f_name=rs.getString("f_name");
               session.setAttribute("s1" , s_name);
               session.setAttribute("f2" , f_name);
            }
        }
        catch(Exception e)
                {}
 String s_name=session.getAttribute("s1").toString();
 String f_name=session.getAttribute("f2").toString();
out.print("<h1 class='f2'>" + s_name + "</h1><br>");
out.print("<h3 class='f2'>" + f_name + "</h3><br>");


        %>
    </center>
         
        
    <center>
        <div class="container">
            
            <div class="card text-white bg-warning mb-3 special-card" style="max-width: 35rem;">
                <div class="card-header"><h4>Quantity</h4></div>
                   <div class="card-body">
                       <form action="order_con.jsp" method="post">
                           <button type="text" class="btn btn-outline-danger"><a href="foodbite.jsp">&#10007cancel </a></button>
                           <div class="custom-control custom-radio custom-control-inline">
                               <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input" value="1" required >
                                  <label class="custom-control-label" for="customRadioInline1">1</label>
                           </div>
                           <div class="custom-control custom-radio custom-control-inline">
                                  <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input" value="2" required>
                                  <label class="custom-control-label" for="customRadioInline2">2</label>
                           </div>
                           <div class="custom-control custom-radio custom-control-inline">
                                  <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input" value="3" required>
                                  <label class="custom-control-label" for="customRadioInline3">3</label>
                           </div>
                           <div class="custom-control custom-radio custom-control-inline">
                                  <input type="radio" id="customRadioInline4" name="customRadioInline1" class="custom-control-input" value="4" required>
                                  <label class="custom-control-label" for="customRadioInline4">4</label>
                           </div>
                           <div class="custom-control custom-radio custom-control-inline">
                                  <input type="radio" id="customRadioInline5" name="customRadioInline1" class="custom-control-input" value="5" required>
                                  <label class="custom-control-label" for="customRadioInline5">5</label>
                           </div>
                           <button type="submit" class="btn btn-outline-success">confirm &#10003</button>
                       </form>
                   </div>
             </div>
        </div>
    </center>
    </body>
</html>
