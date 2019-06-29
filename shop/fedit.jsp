<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>food edit</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
    <!-- Main style sheet -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Kodchasan" rel="stylesheet">
    
    <!--bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    
    <style type="text/css">
        body{
             padding-top: 30px;
            padding-bottom: 30px;
                      background-image: url("img/background1.jpg");
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
  
  
  
  <!--edit-->
         <%@page import="java.sql.*,java.util.*"%>
            <center> 
                <div class="con">
             
              <%   
           String f_id=request.getParameter("sd");
             session.setAttribute("f_id", f_id);
       try
{
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from food where f_id='" + f_id + "'";
ResultSet sr=stmt.executeQuery(sql);



while(sr.next())
            {
                
	out.print("<center>");
out.print("<div class='card border-success mb-3 special-card' style='max-width: 40rem;'>");
out.print("<div class='card-header bg-transparent border-success'><h3 class='f1'>" + sr.getString("f_name") +"</h3></div>");  
out.print("<div class='card-body text-success'>");
out.print(" <h5 class='card-title'>Edit Food Details</h5>");
out.print("<p class='card-text'></p><br>");    
out.print("<form action='food_edit.jsp'>");     
  
out.print("<div class='form-group row'>");
    out.print("<label for='staticEmail' class='col-sm-2 col-form-label'>food name</label>");
    out.print("<div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='fn' value=" + sr.getString("f_name").replaceAll(" ", "_") +">");
    out.print("</div>");
  out.print("</div>");
  
  out.print("<div class='form-group row'>");
    out.print("<label for='staticEmail' class='col-sm-2 col-form-label'>cat1</label>");
    out.print("<div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='c1' value=" + sr.getString("cat1").replaceAll(" ", "_") +">");
    out.print("</div>");
  out.print("</div>");
  
  out.print("<div class='form-group row'>");
    out.print("<label for='staticEmail' class='col-sm-2 col-form-label'>cat2</label>");
    out.print("<div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='c2' value=" + sr.getString("cat2").replaceAll(" ", "_") +">");
    out.print("</div>");
  out.print("</div>");

  out.print("<div class='form-group row'>");
    out.print("<label for='inputPassword' class='col-sm-2 col-form-label'>Price</label>");
   out.print(" <div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='price' value=" + sr.getString("price") +">");
    out.print("</div>");
  out.print("</div>");
  
    out.print("<div class='form-group row'>");
    out.print("<label for='inputPassword' class='col-sm-2 col-form-label'>description</label>");
   out.print(" <div class='col-sm-10'>");
      out.print("<input type='text' class='form-control' name='desc' value=" + sr.getString("description") +">");
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
  
  