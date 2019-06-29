
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Delivery</title>
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
           
           color: white;
            }
        </style>
    </head>
    <body>
    <center>
        <h1 style='opacity:0.5'>Select a Delivery Man </h1><br>
        <%@page import="java.sql.*,java.util.*"%>
        <%
        String s_email=session.getAttribute("s_email").toString();
        String  p="p";
        
        try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from d_boy where shop='" + s_email +"' ";
                ResultSet rs=stmt.executeQuery(sql);

                out.print("<form action='go.jsp' method='post' name ='f1'>");
        
               out.print("<div class='container'>");
               out.print("<select class='dropdown'  name='db'>");
  while (rs.next())
   {
       String x=rs.getString("d_phn");
       session.setAttribute("d_phone",x);
       String y=rs.getString("d_e");
       session.setAttribute("d_e",y);
        out.print("<option value=" + rs.getString("d_name").replaceAll(" ", "_") + ">" + rs.getString("d_name") + "</option>");
   }
out.print("</select><br><br> ");
out.print("<input type='number'name='t1' placeholder='Time required'>");
out.print("<select name='time'>");
out.print("<option value='Minutes'>Minutes</option>");
out.print("<option value='Hours'>Hours</option>");
out.print("</select><br><br>");
out.print("<button type='submit'>go</button>");
out.print("</form>");
        }        
catch(Exception e)
{
System.out.print(e);
out.print("<font color=red> Failed</font>");
}
        
        %>
    </center>
    </body>
</html>

