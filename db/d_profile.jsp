<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
          <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
          <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
        <title>Orders</title>
        
         <style type="text/css">
            body{
                padding-top: 30px;
                padding-bottom: 30px;
                   background: #ad5389;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #3c1053, #ad5389);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #3c1053, #ad5389); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */}          
        
     
        </style>
    </head>
    <body>
        <center>
            <h1 class="h display-4 h"><b>Pending Orders </b></h1><br><br><br>
         <%@page import="java.sql.*,java.util.*"%>
         <div class="container">
              <%
                
            String de=session.getAttribute("db").toString();
           
            
       try
{
    {
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from d_order where d_e='" + de + "'";


ResultSet rs=stmt.executeQuery(sql);
     
      
      
        while(rs.next())
            {
              String u_n=rs.getString("u_id");
              String u_e=rs.getString("u_e");
              String u_p=rs.getString("u_p");
              String u_a=rs.getString("u_add");
              String p=rs.getString("f_price");
              String f_n=rs.getString("f_name");
              
             session .setAttribute("u_n",u_e);
             session .setAttribute("f_n",f_n);
             session .setAttribute("price",p);
      
      out.print("<center>");
      out.print("<div>");
      out.print("<h3>" + u_n + "</h3><br>");
      out.print("<h3>" + u_p + "</h3><br>");
      out.print("<h4>Address : </h4><p>" + u_a + "</p><br>");
      out.print("<h3> Price : &#x20b9 " + p + "</h3><br><br>");
      out.print("");
      out.print("<a href='out_delivery.jsp'>out for delivery </a>");
      out.print("</div>");
      out.print("</center>");
            }
        }
       
}
        catch(Exception e)
                {}
                %>
       
         </div>
       
       </center>
       
    </body>
</html>
