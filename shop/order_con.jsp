
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Confirm Order</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+QingKe+HuangYou" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Mali|Source+Code+Pro" rel="stylesheet">
    
        
        <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
        
        <style>
            body{
                padding: 40px;
             background-image: url("img/bbg.jpg");
            height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
           color: white;
            }
        </style>
    </head>
    <body>
    <center>
        <h1 style='opacity:0.5'>Please Confirm Order</h1><br>
        <%@page import="java.sql.*,java.util.*"%>
        <%
        String u_id=request.getParameter("sd");
        try
        {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from users where u_email='" + u_id +"' ";
                ResultSet rs=stmt.executeQuery(sql);

                while(rs.next())
                {
                    String u_name=rs.getString("u_name");
                    session.setAttribute("un", u_name);
                    
                    String u_email=rs.getString("u_email");
                    session.setAttribute("u_email", u_email);
                    
                    String u_phone=rs.getString("u_phn");
                    session.setAttribute("u_phone", u_phone);
                    
                    String h_no=rs.getString("house_no");
                    String st_name=rs.getString("St_name");
                    String area=rs.getString("area");
                    String pin=rs.getString("pin");
                    
                    String address=h_no + "," + st_name + "," + area + "," + pin;
                    session.setAttribute("add", address);
                    
                    out.print("<div class='container'");
                    out.print("<div class='card' style='width: 28rem;'>");
                    out.print("<div class='card-body'>");
                    out.print("<h3 class='card-title' style='opacity:0.5'>Address</h3><br>");
                    out.print("<hr>");
                    out.print("<h5 class='card-text'>" + u_name + "</h5>");
                    out.print("<p class='card-text'> email: <font color=red>" + u_email + "</font></p>");
                    out.print("<p class='card-text'> phone: <font color=red>" + u_phone + "</font></p>");
                    out.print("<p class='card-text'>Address : " + address + "</p>");
                    out.print("<hr>");
                    out.print("<button type='button'  class='btn btn-sm  btn-outline-danger card-link'><a href='cancel_order.jsp' style='text-decoration:none'>&#10006; Cancel</a></button>");
                    out.print("<button type='button' class='btn btn-sm btn-outline-success card-link'><a href='d_boy.jsp' style='text-decoration:none'>Confirm &#10004</a></button>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");  
                }
               
               
        }        
catch(Exception e)
{
System.out.print(e);
out.print("<font color=red> Failed</font>");
}
        try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from orders where U_id='" + u_id +"' ";
                ResultSet a=stmt.executeQuery(sql);

                while(a.next())
                {
                String o_id=a.getString("o_id");
                session.setAttribute("od_id", o_id);
                String f_n=a.getString("f_name");
                session.setAttribute("fn", f_n);
                String p=a.getString("p_price");
                session.setAttribute("pr", p);
                }
        }        
catch(Exception e)
{}
        
        %>
    </center>
    </body>
</html>
