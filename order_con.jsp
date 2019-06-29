<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order</title>
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

  <div class="special-nav ">
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
  String u_id=session.getAttribute("ob").toString(); 
  String f_id=session.getAttribute("f_id").toString();
  String f_name=session.getAttribute("f2").toString().toUpperCase();
  String s_name=session.getAttribute("s1").toString();
  
   
  int qu = Integer.parseInt(request.getParameter("customRadioInline1"));
  session.setAttribute("quantity", qu);
  int price = (Integer) session.getAttribute("price");
  int t_price=(qu * price);
  int d_charge=30;
  int pay_price=t_price + d_charge;
  session.setAttribute("pay_price", pay_price);


out.print("<center>");
out.print("<div class='container'>");
out.print("<div class='row'>");
out.print("<div class='col-md-4'>");
out.print("</div>");
out.print("<div class='col-md-4'>");

out.print(" <div class='card special-card ' style='width:24rem;'>");
out.print("<div class='card-body '>");
out.print("<h3><b>" + s_name + "</b></h3>");
out.print("<hr>");
out.print("<h4>" + f_name + "</h4>");
out.print("<hr>");
out.print("<h6 class='card-subtitle mb-2 text-muted'>Price : <font color=red>&#x20b9 " + price + "</font></h6>");
out.print("<h6 class='card-subtitle mb-2 text-muted'>Quantity : <font color=blue> " + qu + "</font></h6>");
out.print("<h6 class='card-subtitle mb-2 text-muted'>Total Price : <font color=red>&#x20b9 " + t_price + "</font> </h6>");
out.print("<h6 class='card-subtitle mb-2 text-muted'>Dalivery Charge :<font color=red> &#x20b9  " + d_charge + "</font></h6><br>");
out.print("<h4>You have to pay : <font color=red>&#x20b9 " + pay_price + "</font> </h4><br>");
out.print("<hr>");
out.print("<center>");

out.print("<button type='button'  class='btn btn-sm  btn-outline-danger card-link'><a href='foodbite.jsp'>&#10006; Go Back</a></button>");
out.print("<button type='button' class='btn btn-sm btn-outline-success card-link'><a href='order_place.jsp'>Confirm &#10004</a></button>");

out.print("");

out.print("</center");

out.print("</div>");
out.print("</div>");
out.print("<div>");

out.print("<div class='col-md-4'>");
out.print("</div>");
out.print("</div>");
out.print("</div>");
out.print("</center>");


  %>
    </body>
</html>
